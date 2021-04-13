/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "xgpio.h"
#include "xparameters.h"
#include "led_axi_ip.h"

void print(char *str);

int main(){
	XGpio dip;
	XStatus status;
	int dip_state;

	// print("Hello World! \n\r");

	// GPIO init
	status = XGpio_Initialize(&dip, XPAR_AXI_GPIO_0_DEVICE_ID);
	if(status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	while(1) {
		XGpio_SetDataDirection(&dip, 1, 0xFF);		// Input
		dip_state = XGpio_DiscreteRead(&dip, 1);
		LED_AXI_IP_mWriteReg(XPAR_LED_AXI_IP_0_BASEADDR, 0, dip_state);
	}

	return 0;
}

int main_former()
{
    init_platform();

    print("Hello World\n\r");

    return 0;
}
