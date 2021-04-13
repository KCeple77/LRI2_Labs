/*
 * main.c
 *
 *  Created on: Apr 12, 2021
 *      Author: Kristijan Ceple
 */

#include "xgpio.h"
#include "xparameters.h"
#include "led_axi_ip.h"

// Xilinx software is awesome -  NOOOOT

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

