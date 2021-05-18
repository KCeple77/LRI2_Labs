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

/*      clock.c
 *      Simple clock functionality using an interrupt of frequency 1 Hz.
 */

#include "xmk.h"
#include <os_config.h>
#include <stdio.h>
#include <xparameters.h>
#include <xtmrctr_l.h>
#include <xstatus.h>
#include <pthread.h>
#include <semaphore.h>
#include <sys/intr.h>

#define TIMER_COUNTER_ID        0

static sem_t intr;
volatile unsigned int mins, hrs, secs, tot_secs = 0;

void interval_timer_initialize ()
{
    print ("CLOCK: Configuring extra timer to generate one interrupt per second..\r\n");
    XTmrCtr_WriteReg (XPAR_AXI_TIMER_0_BASEADDR, TIMER_COUNTER_ID,
                       XTC_TLR_OFFSET, 50000000);

    // reset the timers, and clear interrupts
    XTmrCtr_SetControlStatusReg (XPAR_AXI_TIMER_0_BASEADDR, TIMER_COUNTER_ID,
				  XTC_CSR_INT_OCCURED_MASK | XTC_CSR_LOAD_MASK );

    // start the timer
    XTmrCtr_SetControlStatusReg (XPAR_AXI_TIMER_0_BASEADDR, 0,
                                  XTC_CSR_ENABLE_TMR_MASK | XTC_CSR_ENABLE_INT_MASK |
                                  XTC_CSR_AUTO_RELOAD_MASK | XTC_CSR_DOWN_COUNT_MASK );
}

void extra_timer_int_handler ()
{
    unsigned int control_reg;

    control_reg = XTimerCtr_ReadReg (XPAR_AXI_TIMER_0_BASEADDR, TIMER_COUNTER_ID, XTC_TCSR_OFFSET);
    // reset the timer counter such that it reloads from the compare register
    // and the interrupt is cleared simultaneously, the interrupt can only be
    // cleared after reset such that the interrupt condition is cleared
    XTmrCtr_WriteReg (XPAR_AXI_TIMER_0_BASEADDR, TIMER_COUNTER_ID,
                       XTC_TCSR_OFFSET,
                       XTC_CSR_LOAD_MASK | XTC_CSR_INT_OCCURED_MASK);

    // remove the reset condition such that the timer counter starts running
    // with the value loaded from the compare register
    XTmrCtr_WriteReg (XPAR_AXI_TIMER_0_BASEADDR, TIMER_COUNTER_ID,
                       XTC_TCSR_OFFSET,
                       control_reg | XTC_CSR_ENABLE_TMR_MASK);

    sem_post (&intr);

}

void clock_set_time (unsigned int time)
{
    int hrs, mins;

    if (time > 2359)
        return;

    hrs = time/100;
    mins = time%100;

    tot_secs = (((hrs * 60) + mins) * 60);
}

void* clock_main (void *arg)
{
    int_id_t id = XPAR_AXI_INTC_0_AXI_TIMER_0_INTERRUPT_INTR;
    int a = 0;
    XStatus status;

    if ((status = register_int_handler(id, extra_timer_int_handler, NULL)) != XST_SUCCESS) {
	xil_printf ("CLOCK: Unable to register handler. Error code: %d.\r\n", status);
	goto err;

    }
    else print ("CLOCK: Successfully registered a handler for extra timer interrupts.\r\n");

    sem_init (&intr, 0, 0);

    interval_timer_initialize ();

    print ("CLOCK: Enabling the interval timer interrupt...\r\n");
    enable_interrupt (id);

    while (1) {
        sem_wait (&intr);

        tot_secs++;
        
        if (tot_secs == 86400)
            tot_secs = 0;
        
        secs = tot_secs % 60;
        mins = tot_secs / 60;
        hrs = mins / 60;
        mins = mins % 60;
        
    }

 err:
    xil_printf ("CLOCK: Clock functions unavailable...\r\n");
    return NULL;
}
