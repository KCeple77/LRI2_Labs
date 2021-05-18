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

/*      mutexdemo.c
 *      Pthread mutex example, illustrating the use of the mutex API to show multiple threads contending
 *      for a critical section.
 */

#include "xmk.h"
#include <stdio.h>
#include <pthread.h>
#include <errno.h>

#define N_THREADS 3

static volatile int thread_flag[3] = {0,0,0};
static volatile int thread_count = 0;
static volatile int alldone;
static pthread_mutex_t  mutex, rmutex;
static pthread_attr_t attr;
static pthread_t thread[10];
static int arg[10] = {0,1,2,3,4,5,6,7,8,9};
static int dosomething;
static int lock_count;
static int bad_thread_done;

void* m_thread_func (void* arg)
{
    int retval;
    volatile int delay;
    
    xil_printf ("MUTEXDEMO: Thread(%d) starting...\r\n",(*(int*)arg));

    while (thread_flag[*(int*)arg] != 1) {
	xil_printf ("MUTEXDEMO: Thread(%d) waiting for indication from main.\r\n",(*(int*)arg));
    }

    xil_printf ("MUTEXDEMO: Thread(%d) contending...\r\n",(*(int*)arg));
    
    if ((retval=pthread_mutex_lock(&mutex)) != 0) {
	xil_printf ("MUTEXDEMO: Thread(%d) mutex lock error. Retval: %d\r\n",(*(int*)arg), retval);
	goto thread_done;
    }
    xil_printf ("MUTEXDEMO: Thread(%d) in critical section..Will spend some time here.\r\n",(*(int*)arg));
    thread_count++;
    for (delay=0; delay<0xfffff; delay++ ) {
	dosomething++;
    }

    if ((retval=pthread_mutex_unlock(&mutex)) != 0) {
	xil_printf ("MUTEXDEMO: Thread(%d) mutex unlock error. Retval: %d\r\n",(*(int*)arg), retval);
	goto thread_done;
    }

thread_done: 
    xil_printf ("MUTEXDEMO: Thread(%d) mutex done...\r\n",(*(int*)arg));
    pthread_exit (NULL);
}

void* bad_thread (void *args) 
{
    int retval;

    xil_printf ("MUTEXDEMO: BAD_THREAD: Starting..\r\n");
    xil_printf ("MUTEXDEMO: I am going to try to unlock a mutex I don't own and force an error.\r\n");

    retval = pthread_mutex_unlock (&rmutex);
    if (retval != EPERM)
        xil_printf ("MUTEXDEMO: ERROR. I did not face an error condition !\r\n");
    else {
        xil_printf ("MUTEXDEMO: Good! I got the right error!\r\n");
        bad_thread_done = 1;
    }
    xil_printf ("MUTEXDEMO: BAD_THREAD Done.\r\n");
}

void* main_thread (void *args) 
{
    int retval, i;
    volatile int delay;
    pthread_mutexattr_t   mattr;

    pthread_attr_init (&attr);
    pthread_attr_setdetachstate (&attr, PTHREAD_CREATE_JOINABLE);
    if ((retval = pthread_mutexattr_init (&mattr)) != 0) {
	xil_printf ("MUTEXDEMO: Error during pthread_mutex_init: %d.\r\n", retval);
	goto err_done;        
    }

    if ((retval=pthread_mutex_init (&mutex, &mattr)) != 0) {
	xil_printf ("MUTEXDEMO: Error during pthread_mutex_init 1: %d.\r\n", retval);
	goto err_done;
    }

    pthread_mutexattr_settype (&mattr, PTHREAD_MUTEX_RECURSIVE);

    if ((retval=pthread_mutex_init (&rmutex, &mattr)) != 0) {
	xil_printf ("MUTEXDEMO: Error during pthread_mutex_init 2: %d.\r\n", retval);
	goto err_done;
    }

    for (i=0; i<N_THREADS; i++) {
	thread_flag[i] = 0;
    }

    xil_printf ("MUTEXDEMO: Launching %d contending threads..\r\n", N_THREADS);
    for (i=0; i < N_THREADS; i++) {
        if ((retval = pthread_create (&thread[i], &attr, m_thread_func, &arg[i])) != 0) {
	    xil_printf ("MUTEXDEMO: Error during pthread_create. Retval: %d.\r\n", retval);
	    goto err_done;
	}
    }

    xil_printf ("\r\nMUTEXDEMO: Providing indication to waiting threads to start contending...\r\n");
    for (i=0; i<N_THREADS; i++) {
	thread_flag[i] = 1;
    }

    
    while ((thread_count != N_THREADS)) {
	xil_printf ("MUTEXDEMO: Waiting for threads to get past critical section...\r\n");
	for (delay=0; delay<0xfffff;)
	    delay++;
    }
    
    
    for (i=0; i<N_THREADS; i++) {
	if ((retval=pthread_join(thread[i], NULL)) != 0) {
	    xil_printf ("MUTEXDEMO: Error during pthread_join. Retval: %d.\r\n", retval);
	    goto err_done;
	}
    }

    if ((retval = pthread_create (&thread[0], &attr, bad_thread, &arg[i])) != 0) {
        xil_printf ("MUTEXDEMO: Error during pthread_create of bad_thread. Retval: %d.\r\n", retval);
        goto err_done;
    }

    while (!bad_thread_done) {
        xil_printf ("MUTEXDEMO: Recursively locking my mutex..");
        if ((retval = pthread_mutex_lock (&rmutex)) != 0) {
            xil_printf ("FAILED - Retval: %d!\r\n", retval);
            goto err_done;
        }
        else xil_printf ("SUCCESS!\r\n");
        lock_count++;
    }
    
    for (i=0; i<lock_count; i++) {
        if ((retval = pthread_mutex_unlock (&rmutex)) != 0) {
            xil_printf ("MUTEXDEMO: Error during pthread_mutex_unlock. Retval: %d!\r\n", retval);
            goto err_done;
        }
    }

    if ((retval=pthread_join(thread[0], NULL)) != 0) {
        xil_printf ("MUTEXDEMO: Error during pthread_join with bad_thread. Retval: %d.\r\n", retval);
        goto err_done;
    }
 done:
    print ("MUTEXDEMO: Destroying mutex locks...\r\n");
    if ((retval = pthread_mutex_destroy(&mutex))!=0) {
	xil_printf ("MUTEXDEMO: Error during pthread_mutex_destroy 1. Retval: %d.\r\n", retval);
    }

    if ((retval = pthread_mutex_destroy(&rmutex))!=0) {
	xil_printf ("MUTEXDEMO: Error during pthread_mutex_destroy 2. Retval: %d.\r\n", retval);
    }


 err_done:
    alldone = 1;
    pthread_exit (NULL);
} 

void* mutex_main (void* param)
{
    pthread_t main_tid;
    int retval;

    print ("MUTEXDEMO: Starting..\r\n");

    thread_count = 0;
    alldone = 0;
    bad_thread_done = 0;
    lock_count = 0;

    if ((retval = pthread_create(&main_tid, NULL, main_thread, NULL)) != 0) 
        xil_printf ("MUTEXDEMO: Error during pthread_create. Retval: %d.\r\n", retval);
        
    while (!alldone)
        ;

    print ("MUTEXDEMO: Done. Good Bye !\r\n");
    pthread_exit (NULL);
}
