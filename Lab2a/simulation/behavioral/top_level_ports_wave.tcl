#  Simulation Model Generator
#  Xilinx EDK 14.7 EDK_P.20131013
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     top_level_ports_wave.tcl (Wed Apr 14 03:42:42 2021)
#
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

wave add $tbpath${ps}RESET -into $id 
wave add $tbpath${ps}CLK_P -into $id 
wave add $tbpath${ps}CLK_N -into $id 
wave add $tbpath${ps}axi_gpio_0_GPIO_IO_pin -into $id 
wave add $tbpath${ps}led_axi_ip_0_LED_pin -into $id 
wave add $tbpath${ps}uart_cntrl_0_RX_pin -into $id 
wave add $tbpath${ps}uart_cntrl_0_TX_pin -into $id 

