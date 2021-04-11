##############################################################################
## Filename:          E:\FaksHub\2020_2021\2.Semester_2020_2021\LRI2\Labs\LRI2_Labs\Lab2a/drivers/uart_controller_v1_00_a/data/uart_controller_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Sun Apr 11 16:45:08 2021 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "uart_controller" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
