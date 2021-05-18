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

/*      sem.c
 *      Semaphore example, with two threads using semaphores to synchronize. Uses two semaphores to rendezvous with created threads.
 *      Uses one semaphore as the protection semaphore. 
 */

#include "xmk.h"
#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>

static pthread_t tid1, tid2;
static int arg1, arg2;
static int retval;
static pthread_attr_t attr;
static int ret;
static void *retptr;
static struct sched_param spar;

static sem_t protect, rzvous_1, rzvous_2;

void* thread_func1 ( void *arg )
{
    int i;
    int count = 2;

    sem_wait(&rzvous_1);
    while(count--) {
	print("SEM: Thread 1: Doing sem_wait.\r\n");
	if( sem_wait(&protect) < 0 ) {
	    print("SEM: Thread 1: sem_wait error.\r\n");
	    goto err;
	}
	/* Critical Section Start */

	for( i = 0; i < 10; i++) {
	    print("SEM: Thread 1: ");
	    putnum(i);
	    print("\r\n");
	}
	print("SEM: Thread 1: Doing sem_post.\r\n");
	if( sem_post(&protect) < 0 ) {
	    print("SEM: Thread 1: sem_post error.\r\n");
	    goto err;
	}

	/* Delay */
	for(i=0; i< 0xffff; i++) 
	    ;
    }

    ret = 100;
err:
    sem_post (&rzvous_1);
    pthread_exit(&ret);
}

void* thread_func2 (void *arg)
{
    int i;
    int count = 2;

    sem_wait(&rzvous_2);

    while(count--) {
	print("SEM: Thread 2: Doing sem_wait.\r\n");
	if( sem_wait(&protect) < 0 ) {
	    print("SEM: Thread 2: sem_wait error.\r\n");
	    goto err;
	}
	/* Critical Section */
	for( i = 0; i < 10; i++) {
	    print("SEM: Thread 2: ");
	    putnum(i);
	    print("\r\n");
	}
	print("SEM: Thread 2: Doing sem_post.\r\n");
	if( sem_post(&protect) < 0 ) {
	    print("SEM: Thread 2: sem_post error.\r\n");
	    goto err;
	}

	/* Delay */
	for(i=0; i< 0xffff; i++) 
	    ;
    }

    ret = 200;
err:
    sem_post (&rzvous_2);
    pthread_exit(&ret);
}

void* sem_main (void* param)
{
    int dummy;
    arg1 = 4;
    arg2 = 6;

    print("SEM: Starting...\r\n");

    if( sem_init(&protect, 1, 1) < 0 ) {
	print("SEM: Error while initializing semaphore 1.\r\n");
	goto err;
    }

    if( sem_init(&rzvous_1, 1, 0) < 0 ) {
	print("SEM: Error while initializing semaphore 2.\r\n");
	goto err;
    }

    if( sem_init(&rzvous_2, 1, 0) < 0 ) {
	print("SEM: Error while initializing semaphore 3.\r\n");
	goto err;
    }


    retval = pthread_attr_init(&attr);
    if( retval != 0 ) {
	print("SEM: Error while initializing pthread attributes. Error code: ");
	putnum(retval);
	print("\r\n");
	goto err;
    }

    pthread_attr_setdetachstate(&attr,PTHREAD_CREATE_JOINABLE); // Initially creating the thread to be joinable

    print("SEM: Spawning 1...\r\n");
   
    retval = pthread_create(&tid1,&attr,thread_func1,&arg1);
    if( retval != 0  ) {
	print("pthread_create 1 failed. Error code: ");
	putnum(retval);
	print("\r\n");
	goto err;
    }
    else { 
	print("SEM: Returned TID: ");
	putnum(tid1);
	print("\r\n");
    }

    print("SEM: Spawning 2..\r\n");

    retval = pthread_create(&tid2,&attr,thread_func2,&arg2);
    if( retval != 0  ) {
	print("pthread_create 2 failed. Error code: ");
	putnum(retval);
	print("\r\n");
	goto err;
    } else {
	print("SEM: Returned TID: ");
	putnum(tid2);
	print("\r\n");
    }

    print("SEM: Rendezvousing with 1.\r\n");
    sem_post(&rzvous_1);
    print("SEM: Rendezvousing with 2.\r\n");
    sem_post(&rzvous_2);

    retval = pthread_join(tid1,&retptr);

    if( retval != 0 ) {
	print("SEM: pthread_join with thread 1 failed. Error code: ");
	putnum(retval);
	print("\r\n");
	goto err;
    }
    else {
	print("SEM: Successfully joined with thread 1. Return value of terminated thread: ");
	putnum(*((int*)retptr));
	print("\r\n");
    }

    retval = pthread_join(tid2,NULL);

    if( retval != 0 ) {
	print("SEM: pthread_join with thread 2 failed. Error code: ");
	putnum(retval);
	print("\r\n");
	goto err;
    }
    else {
	print("SEM: Successfully joined with thread 2. Return value of terminated thread: ");
	putnum(*((int*)retptr));
	print("\r\n");
    }

    print ("SEM: Releasing misc resources..\r\n");
    if ((sem_destroy (&protect) != 0) || (sem_destroy (&rzvous_1) !=0) || (sem_destroy (&rzvous_2) !=0))
	print ("SEM: Error while releasing resources.\r\n");

    print("SEM: Good bye !\r\n");
 err:
 done:
    pthread_exit(0);
    // End main thread here.
}

