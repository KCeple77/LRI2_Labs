/*
 * main.c
 *
 *  Created on: May 18, 2021
 *      Author: Kristijan Ceple
 */

/*
 * appa.c - Contains Appendix A Code Demo
 *
 *  Created on: May 18, 2021
 *      Author: Kristijan Ceple
 */
#include "xmk.h"
#include "sys/init.h"
#include "xgpio.h"
#include <pthread.h>
#include "xuartlite.h"
#include "xparameters.h"
#include <sys/timer.h> //for using sleep. need to set config_time to true
#include <sys/intr.h> //xilkernel api for interrupts
#include <sys/process.h>
#include <stdio.h>
#define XST_SUCCESS 0L
#define XST_FAILURE 1L
#define true 1
#define false 0
typedef unsigned char bool;
#define TASK_THREADS_NUM 8
#define TASK_THREADS_PERIODIC_NUM 3
#define TASK_THREADS_NONPERIODIC_NUM 5


bool task_threads_activity[TASK_THREADS_NUM];
pthread_t task_threads_pids[TASK_THREADS_NUM];
XGpio gpDIP, gpPUSH, gpLED; //PB device instance.

pthread_t tid1, tid2;
extern void* clock_main (void *);

static pid_t spid;
static pthread_t tid;
static pthread_attr_t attr;
static p_stat shell_ps;
static struct sched_param spar;
extern volatile int hrs, mins, secs, tot_secs;



static void gpDIPIntHandler(void *arg) //Should be very short (in time). In a practical program, don't print etc.
{
	unsigned char val;
//clear the interrupt flag. if this is not done, gpio will keep interrupting the microblaze.--
	XGpio_InterruptClear(&gpDIP, 1);
	val = XGpio_DiscreteRead(&gpDIP, 1);
	xil_printf("Gpio Interrupt Test PASSED %d. \r\n", val);
	XGpio_DiscreteWrite(&gpLED, 1, val);
}

static void gpPUSHIntHandler(void *arg) //Should be very short (in time). In a practical program, don't print etc.
{
	unsigned char val;
//clear the interrupt flag. if this is not done, gpio will keep interrupting the microblaze.--
	XGpio_InterruptClear(&gpPUSH, 1);
	val = XGpio_DiscreteRead(&gpPUSH, 1);
	xil_printf("Gpio Interrupt Test PASSED %d. \r\n", val);
	XGpio_DiscreteWrite(&gpLED, 1, val);
}

void* periodic_thread() {
	int i;
	while (1) {
		// First check if I am active?



	}
}

void* thread_tut_func_1() {
	int i;
	while (1) {
		xil_printf("crta---------------------------------------\r\n");
		for (i = 0; i < 10000; i++);
		sys_sleep(4000);
	}
}

void start_clock()
{
    int ret;

    pthread_attr_init(&attr);                                                          /* Need to launch a thread */
    spar.sched_priority = 0;
    pthread_attr_setschedparam(&attr,&spar);

    ret = pthread_create(&tid, &attr, (void*)clock_main, NULL);

    if (ret != 0) {
        xil_printf ("-- ERROR (%d) launching clock thread. Clock services unavailable...\r\n", ret);
    }

}

void shell_main(void* arg) {
	print("SHELL: Starting clock...\r\n");
	start_clock();
	print("\r\n\r\n");
	clear();

	unsigned char val;
	int Status;
	int ret;

	// Initialise LED
	Status = XGpio_Initialize(&gpLED, XPAR_LED_GPIO_DEVICE_ID);
	XGpio_SetDataDirection(&gpLED, 1, 0x00000000);
	XGpio_DiscreteWrite(&gpLED, 1, 0x00);
	print("Initializing DIP\r\n");

	// Initialise the DIP instance & PUSH
	Status = XGpio_Initialize(&gpDIP, XPAR_DIP_GPIO_DEVICE_ID);
	Status = XGpio_Initialize(&gpPUSH, XPAR_PUSH_GPIO_DEVICE_ID);

	// set DP & PUSH gpio direction to input.
	XGpio_SetDataDirection(&gpDIP, 1, 0x000000FF);
	XGpio_SetDataDirection(&gpPUSH, 1, 0x000000FF);

	print("Enabling DIP interrupts\r\n");
	//global enable
	XGpio_InterruptGlobalEnable(&gpDIP);
	// interrupt enable. both global enable and this function should be called to enable gpio interrupts.
	XGpio_InterruptEnable(&gpDIP, 1);
	//register the handler with xilkernel
	register_int_handler(XPAR_AXI_INTC_0_DIP_GPIO_IP2INTC_IRPT_INTR,
			gpDIPIntHandler, &gpDIP);
	//enable the interrupt in xilkernel
	enable_interrupt(XPAR_AXI_INTC_0_DIP_GPIO_IP2INTC_IRPT_INTR);
	print("DIP int enabled\r\n");
	print("Enabling PUSH interrupts\r\n");
	//global enable
	XGpio_InterruptGlobalEnable(&gpPUSH);

	// interrupt enable. both global enable and this function should be called to enable gpio interrupts.
	XGpio_InterruptEnable(&gpPUSH, 1);
	//register the handler with xilkernel
	register_int_handler(XPAR_AXI_INTC_0_PUSH_GPIO_IP2INTC_IRPT_INTR,
			gpPUSHIntHandler, &gpPUSH);
	//enable the interrupt in xilkernel
	enable_interrupt(XPAR_AXI_INTC_0_PUSH_GPIO_IP2INTC_IRPT_INTR);
	print("PUSH int enabled\r\n");

	val = XGpio_DiscreteRead(&gpDIP, 1);
	XGpio_DiscreteWrite(&gpLED, 1, val);

	//start thread 1
	ret = pthread_create(&tid1, NULL, (void*) thread_tut_func_1, NULL );
	if (ret != 0) {
		xil_printf("-- ERROR (%d) launching thread_tut_func_1...\r\n", ret);
	} else {
		xil_printf("Thread 1 launched with ID %d \r\n", tid1);
	}

	//start thread 2
	ret = pthread_create(&tid2, NULL, (void*) thread_tut_func_2, NULL );
	if (ret != 0) {
		xil_printf("-- ERROR (%d) launching thread_tut_func_2...\r\n", ret);
	} else {
		xil_printf("Thread 2 launched with ID %d \r\n", tid2);
	}

	return 0;
}

void clear()
{
    int i = 0 ;
    for(; i < 80; i++ ) {
	outbyte('\r') ; outbyte('\n') ;
    }
}

int main ()
{
	xil_printf("Main started!\r\n");
    xilkernel_main ();
}

//int main_example() {
//	print("-- Entering main() --\r\n");
////Initialize Xilkernel
//	xilkernel_init();
////Add main_prog as the static thread that will be invoked by Xilkernel
//	xmk_add_static_thread(main_prog, 0);
////Start Xilkernel
//	xilkernel_start();
//	/* Never reached */
//	return 0;
//}