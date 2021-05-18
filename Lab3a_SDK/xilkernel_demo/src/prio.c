////////////////////////////////////////////////////////////////////////////
//
// Copyright (c) 2002 Xilinx, Inc.  All rights reserved.
//
// Xilinx, Inc.
// XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
// COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
// ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
// STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
// IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
// FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  
// XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
// THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
// ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
// FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
// AND FITNESS FOR A PARTICULAR PURPOSE.
// 
//////////////////////////////////////////////////////////////////////////////

/*      priotest.c
 *      Tests priority queues in the system when scheduling is priority driven. 
 *      1. Creates a bunch of threads with different priority ordering.
 *      2. All the threads block on a single semaphore which is initialized to 0
 *      3. The main thread, unblocks one single thread by doing a sem_post
 *      4. Subsequently, threads need to be unblocked in priority order. This should be confirmed by the output issued.
 *      5. One single LOW prio thread also tests the sem_timedwait API by repeatedly trying to acquire the semaphore with a timeout specified
 *         This thread should be the last thread that acquires the semaphore, but should have timedout umpteen times in between.
 *      6. The main thread joins with all the threads and terminates this portion of the test.
 *      7. In the second stage of the test, the main thread creates another thread at highest priority. Then it plays with this thread,
 *         by changing its priority at regular intervals and sleeping in the intervals. This should be confirmed by the puppet thread
 *         not producing any output in the intervals that the main thread sleeps. The main thread then kills this puppet thread with the
 *         kill system call.
 */ 

#include "xmk.h"
#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <config/config_param.h>
#include <errno.h>

#define TIMED_WAIT_MS   25
#define NAP_TIME        400
#define NUM_THREADS     2
#define NUM_PUPPET_THREADS 2

static pthread_t tid[NUM_THREADS], lowpriotid, puppet_tid[NUM_PUPPET_THREADS];
static int arg[NUM_THREADS];
static int prio[NUM_THREADS] = {3,2};
static int retval;
static pthread_attr_t attr;
static int ret;
static void *retptr;
static struct sched_param spar;
static sem_t barrier, semf;
static pid_t main_thread_pid;

void* thread_func ( void *arg )
{
    int id = *(int*)arg;
    int i;

    xil_printf ("Thread(%d): Starting...\r\n", id);

    sem_wait (&barrier);

    xil_printf ("Thread(%d): Acquired sem. Doing some processing...\r\n", id);
    for (i=0; i<0xfffff; i++)
	;
    xil_printf ("Thread(%d): Done...\r\n", id);
    ret = 0;
    pthread_exit(&ret);
}

void* low_prio_thread_func (void *arg)
{
    int id = *(int*)arg;
    int i;

    print ("Thread(LOWPRIO): Starting. I should be the lowest priority of them all...\r\n");
    
    while (1) {
        i = sem_timedwait (&barrier, TIMED_WAIT_MS);               /* Try to acquire the semaphore within 5 ticks. If not return */
        if (!i)
            break;
        print ("Thread(LOWPRIO): TIMEDOUT while trying to acquire sem.\r\n");
    }
    print ("Thread(LOWPRIO): Acquired sem. Doing some processing...\r\n");

    for (i=0; i<0xfffff; i++)
	;
    print ("Thread(LOWPRIO): Done...\r\n");
    sem_post (&barrier);
    ret = 0;
    pthread_exit(&ret);
}

void* puppet_thread_func (void *arg)
{
    int id = *(int*)arg;

    xil_printf ("PUPPET(%d): Starting...\r\n", id);
    xil_printf ("PUPPET(%d): Blocking on semaphore...\r\n", id);
    sem_wait (&semf);
    xil_printf ("PUPPET(%d): Got semaphore...\r\n", id);
    xil_printf ("PUPPET(%d): Releasing semaphore...\r\n", id);
    sem_post (&semf);

    if (id == 0) {                                                      /* I just won't die till I have my revenge */
        xil_printf ("PUPPET(%d): GRR Taking revenge for being demoted in priority..\r\n", id);
        xil_printf ("PUPPET(%d): Killing main thread before I die...\r\n", id);
        if (kill (main_thread_pid) != 0) {
            xil_printf ("PUPPET(%d): Error during kill operation...\r\n", id);
        }
        xil_printf ("PUPPET(%d): SUCCESS.\r\n", id);


        if ((sem_destroy (&barrier) != 0) || (sem_destroy (&semf) != 0))
            print ("PRIOTEST: Error while releasing resources.\r\n");
    }
    xil_printf ("PUPPET(%d): DONE...\r\n", id);
}

void delay (int ticks)
{
    int tickstart = xget_clock_ticks ();

    while ((ticks < (xget_clock_ticks () - tickstart)))
        ;
}

void* prio_main (void *a)
{
    int dummy, i;

    print ("PRIOTEST: Starting...\r\n");

    main_thread_pid = get_currentPID ();
    if (sem_init(&barrier, 1, 0) < 0) {
	print ("SEMATEST: Error while initializing semaphore barrier.\r\n");
	goto err;
    }

    retval = pthread_attr_init (&attr);

    if( retval != 0 ) {
	xil_printf ("PRIOTEST: Error while initializing pthread attributes. Error code: %d.r\n", retval);
	goto err;
    }

    pthread_attr_setdetachstate (&attr, PTHREAD_CREATE_JOINABLE);                       // Initially creating the thread to be joinable
    for (i = 0; i < NUM_THREADS; i++) {
	arg[i] = i;
	xil_printf ("PRIOTEST: Spawning: %d.\r\n", i);
	spar.sched_priority = prio[i];
	pthread_attr_setschedparam(&attr,&spar);

	retval = pthread_create(&tid[i],&attr,thread_func,&arg[i]);
	if( retval != 0  ) {
            xil_printf ("PRIOTEST: pthread_create(%d) failed. Error code: %d.\r\n", i, retval);
	    goto err;
	}
	else  
	    xil_printf ("PRIOTEST: Returned TID: %d.\r\n", tid[i]);
	
    }
    
    spar.sched_priority = PRIO_LOWEST;
    pthread_attr_setschedparam(&attr,&spar);

    retval = pthread_create(&lowpriotid, &attr, low_prio_thread_func, NULL);
    if (retval != 0 ) {
        xil_printf ("PRIOTEST: pthread_create(LOWPRIO) failed while creating low_prio thread. Error code: %d.\r\n", retval);
        goto err;
    }
    else  
        xil_printf ("PRIOTEST: Returned TID: %d.\r\n", lowpriotid);

    print ("PRIOTEST: Yawn..sleeping for a while (400 ms)\r\n");
    sleep (NAP_TIME);

    print ("PRIOTEST: Time to wake up the sleeping threads...\r\n");
    for (i=0; i<NUM_THREADS; i++)
	sem_post (&barrier);
    
    print ("PRIOTEST: Joining with threads...\r\n");

    for (i=0; i<NUM_THREADS; i++) {
	retval = pthread_join(tid[i],NULL);

	if( retval != 0 ) {
	    xil_printf ("PRIOTEST: pthread_join(%d) FAILED. Error code: %d.\r\n", i, retval);
	    goto err;
	}
    }

    print ("PRIOTEST: Allowing the LOWPRIO thread to finish...\r\n");
    sem_post (&barrier);
    print ("PRIOTEST: Joining with LOWPRIO thread...\r\n");
	
    retval = pthread_join (lowpriotid,NULL);
    if( retval != 0 ) {
        xil_printf ("PRIOTEST: pthread_join(LOWPRIO) FAILED. Error code: %d.\r\n", retval);
        goto err;
    }


    print ("PRIOTEST: Dynamic priority test phase starting !\r\n");
    print ("PRIOTEST: Initializing barrier semaphore to value 0...\r\n");
    if (sem_init(&semf, 1, 0) < 0) {
	xil_printf ("SEMATEST: Error while initializing semaphore barrier. Error code: %d\r\n", errno);
	goto err;
    }
    
    print ("PRIOTEST: Creating puppet threads...\r\n");
    attr.detachstate = PTHREAD_CREATE_DETACHED;
    for (i = 0; i < NUM_PUPPET_THREADS; i++) {
        spar.sched_priority = i;
        pthread_attr_setschedparam (&attr, &spar);
        retval = pthread_create(&puppet_tid[i], &attr, puppet_thread_func, &arg[i]);
        if (retval != 0 ) {
            xil_printf ("PRIOTEST: pthread_create of PUPPET(%d) FAILED. Error code: %d.\r\n", i, retval);
            goto err;
        }
/*        else  
            xil_printf ("PRIOTEST: Returned TID: %d.\r\n", puppet_tid[i]);
*/
    }
    

    xil_printf ("PRIOTEST: Now I am flipping the priorities of all the blocked puppet threads.\r\n");
    for (i = 0; i < NUM_PUPPET_THREADS; i++) {    
        spar.sched_priority = (NUM_PUPPET_THREADS - 1) - i;
        if ((retval = pthread_setschedparam (puppet_tid[i], 0, &spar)) != 0) {
            xil_printf ("PRIOTEST: pthread_setschedparam ERROR: %d.\r\n", retval);
            goto err;
        }
    }

    xil_printf ("PRIOTEST: Now I am posting to the semaphores and releasing all the puppets.\r\n");
    for (i = 0; i < NUM_PUPPET_THREADS; i++) {    
        sem_post (&semf);
    }

 err:
    print("PRIOTEST: Terminating !\r\n");
    pthread_exit(0);
}



