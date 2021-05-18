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

/*      timertest.c
 *      Timer example, illustrating software timers. Different threads sleep for different amounts of time (specified in some time unit).
 *      They also dump the value of the kernel tick at different times.
 */

#include "xmk.h"
#include <stdio.h>
#include <pthread.h>
#include <sys/timer.h>

#define N_THREADS 3

pthread_mutex_t  mutex;
pthread_attr_t attr;
pthread_t tid[3];
int arg[3] = {0,1,2};


void* thread_func_0 (void* arg)
{
    int ticks;
    print ("Thread 0 starting..\r\n");
    ticks = xget_clock_ticks ();
    
    print ("Thread 0 clock ticks currently: ");
    putnum (ticks);
    print (". Sleeping for 6 seconds\r\n");
    sleep (6000);
    print ("Thread 0 done.\r\n");
}

void* thread_func_1 (void* arg)
{
    int ticks;
    print ("Thread 1 starting..\r\n");
    ticks = xget_clock_ticks ();
    
    print ("Thread 1 clock ticks currently: ");
    putnum (ticks);
    print (". Sleeping for 1 second\r\n");
    sleep (1000);
    print ("Thread 1 done.\r\n");
}

void* thread_func_2 (void* arg)
{
    int ticks;
    print ("Thread 2 starting..\r\n");
    ticks = xget_clock_ticks ();
    
    print ("Thread 2 clock ticks currently: ");
    putnum (ticks);
    print (". Sleeping for 2 seconds\r\n");
    sleep (2000);
    print ("Thread 2 done.\r\n");
}

void* timertest_main (void *param) 
{
    int i, retval;
    int mticks;

    pthread_attr_init (&attr);
    pthread_attr_setdetachstate (&attr, PTHREAD_CREATE_JOINABLE);

    xil_printf ("TIMER_TEST: Starting...\r\n");
    xil_printf ("TIMER_TEST: Creating 3 threads...\r\n");

    if ((retval = pthread_create (&tid[0], &attr, thread_func_0, NULL)) != 0) {
	xil_printf ("pthread_create error: %d.\r\n", retval);
	goto out;
    }

    if ((retval = pthread_create (&tid[1], &attr, thread_func_1, NULL)) != 0) {
	xil_printf ("pthread_create error: %d.\r\n", retval);
	goto out;
    }

    if ((retval = pthread_create (&tid[2], &attr, thread_func_2, NULL)) != 0) {
	xil_printf ("pthread_create error: %d.\r\n", retval);
	goto out;
    }


    mticks = xget_clock_ticks ();
    xil_printf ("TIMER_TEST: Clock ticks before: %d.\r\n", mticks);

    if ((retval=pthread_join (tid[1], NULL)) != 0) {
	xil_printf ("pthread_join error: %d.\r\n",retval);
	goto out;
    }
    

    mticks = xget_clock_ticks ();
    xil_printf ("TIMER_TEST: Clock ticks after: %d.\r\n",mticks);

    mticks = xget_clock_ticks ();
    xil_printf ("TIMER_TEST: Clock ticks before: %d.\r\n", mticks);

    xil_printf ("TIMER_TEST: Creating 1 threads...\r\n");

    if ((retval = pthread_create (&tid[1], &attr, thread_func_1, NULL)) != 0) {
	xil_printf ("pthread_create error: %d.\r\n", retval);
	goto out;
    }

    for (i=0; i<3; i++) {
	if ((retval=pthread_join (tid[i], NULL)) != 0) {
	    xil_printf ("pthread_join error: %d.\r\n",retval);
	    goto out;
	}
    }

    mticks = xget_clock_ticks ();
    xil_printf ("TIMER_TEST: Clock ticks after: %d.\r\n", mticks);

 out:
    xil_printf ("TIMER_TEST: End demo...\r\n");
    pthread_exit (NULL);
} 

