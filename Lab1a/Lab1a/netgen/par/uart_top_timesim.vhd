--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: uart_top_timesim.vhd
-- /___/   /\     Timestamp: Thu Apr 08 18:49:26 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2 -pcf uart_top.pcf -rpw 100 -tpw 0 -ar Structure -tm uart_top -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim uart_top.ncd uart_top_timesim.vhd 
-- Device	: 6slx45fgg676-2 (PRODUCTION 1.23 2013-10-13)
-- Input file	: uart_top.ncd
-- Output file	: E:\FaksHub\2020_2021\2.Semester_2020_2021\LRI2\Labs\LRI2_Labs\Lab1a\Lab1a\netgen\par\uart_top_timesim.vhd
-- # of Entities	: 1
-- Design Name	: uart_top
-- Xilinx	: E:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity uart_top is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    rx : in STD_LOGIC := 'X'; 
    tx : out STD_LOGIC 
  );
end uart_top;

architecture Structure of uart_top is
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_l1_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_reg_rx_1819 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_31_GND_6_o_LessThan_17_o_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_reg_rst_inv : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_cr_brg_1822 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_reg_rst_1823 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_ticked_1824 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_s_tick_1826 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Result_31_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_cr_brg_1832 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_ticked_1834 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Result_31_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_0_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_1_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_2_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_3_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_4_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_5_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_6_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_7_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_8_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_9_0 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_4_0 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_6_0 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_5_0 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_3_0 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_7_0 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal echo_device_instance_rst_inv : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_n0129_inv : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_reg_d_in_4_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_reg_d_in_5_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_reg_d_in_6_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_reg_d_in_7_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_10_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_11_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_12_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_20_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_13_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_21_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_14_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_22_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_30_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_15_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_23_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_16_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_24_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_17_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_25_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_18_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_26_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_19_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_27_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_28_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_29_0 : STD_LOGIC; 
  signal tx_OBUF_1929 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_tx_1930 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_2_0 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_1_0 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_0_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_s3_0 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_s31_0 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_s32_0 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_s33_0 : STD_LOGIC; 
  signal N24_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o : STD_LOGIC; 
  signal reg_rst_1959 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o : STD_LOGIC; 
  signal reg_rx_1963 : STD_LOGIC; 
  signal echo_device_instance_w_start_1964 : STD_LOGIC; 
  signal echo_device_instance_reg_w_start_1965 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal rx_IBUF_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_LD_1970 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_1972 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_dpot_1973 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_P_31_1974 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_rx_done_1977 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_reg_rx_done_1978 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_1_1980 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_2_1981 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_3_1982 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_4_1983 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_5_0 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_tx_done_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_Q_2003 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_Q_2020 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_Q_2036 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_3_Q_2049 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_7_Q_2050 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_11_Q_2051 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_15_Q_2052 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_19_Q_2053 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_23_Q_2054 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_27_Q_2055 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_3_Q_2059 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_7_Q_2061 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_11_Q_2062 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_15_Q_2063 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_19_Q_2064 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_23_Q_2065 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_27_Q_2066 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_cy_3_Q_2070 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_Q_2072 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_Q_2073 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_Q_2074 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_Q_2075 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_Q_2076 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_Q_2077 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_Q_2078 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_Q_2079 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal echo_device_instance_currentState_2089 : STD_LOGIC; 
  signal echo_device_instance_nextState_2090 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_GND_9_o_counter_31_equal_2_o : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_0_Q_91 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_1_Q_83 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_2_Q_78 : STD_LOGIC; 
  signal ProtoComp39_CYINITVCC_1 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lutdi_67 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_3_Q_66 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_4_Q_60 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi5_59 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi4_58 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_lut_45 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_31_GND_6_o_LessThan_17_o : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_lut1_41 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_5_Q_39 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_0_Q_28 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi_23 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi2_20 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi1_18 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_2_Q_12 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi3_10 : STD_LOGIC; 
  signal ProtoComp37_CYINITVCC_1 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_1_Q_4 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_3_Q_2 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_5_Q_122 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_6_Q_109 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_l1 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_4_Q_102 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_lut_101 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_3CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_2CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_1CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_0CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_1_rt_210 : STD_LOGIC; 
  signal ProtoComp43_CYINITGND_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_2_rt_198 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_3_rt_196 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi_156 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi2_144 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi1_137 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi3_132 : STD_LOGIC; 
  signal ProtoComp41_CYINITGND_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi4_186 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_lut_183 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_lut1_170 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi5_169 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_currentState_1_X_7_o_wide_mux_20_OUT_1_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_7CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_6CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_5CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_4CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_5_rt_247 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_4_rt_245 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_6_rt_231 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_7_rt_228 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_11CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_10CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_9CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_8CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_9_rt_276 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_8_rt_274 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_10_rt_260 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_11_rt_257 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_15CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_14CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_13CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_12CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_13_rt_305 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_12_rt_303 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_14_rt_289 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_15_rt_286 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_30_INV_uart_controller_instance_uart_receiver_instance_c_brg_30CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_30_INV_uart_controller_instance_uart_receiver_instance_c_brg_29CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_30_INV_uart_controller_instance_uart_receiver_instance_c_brg_28CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_29_rt_412 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_30_rt_410 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_28_rt_409 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_31_rt_406 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_27CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_26CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_25CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_24CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_25_rt_392 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_24_rt_390 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_26_rt_376 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_27_rt_373 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_19CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_18CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_17CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_16CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_17_rt_334 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_16_rt_332 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_18_rt_318 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_19_rt_315 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_23CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_22CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_21CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_20CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_21_rt_363 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_20_rt_361 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_22_rt_347 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_23_rt_344 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_3CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_2CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_1CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_0CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_1_rt_438 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_3_ProtoComp43_CYINITGND_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_2_rt_426 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_3_rt_424 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_19CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_18CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_17CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_16CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_17_rt_562 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_16_rt_560 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_18_rt_546 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_19_rt_543 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_15CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_14CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_13CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_12CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_13_rt_533 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_12_rt_531 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_14_rt_517 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_15_rt_514 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_11CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_10CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_9CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_8CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_9_rt_504 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_8_rt_502 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_10_rt_488 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_11_rt_485 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_7CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_6CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_5CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_4CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_5_rt_475 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_4_rt_473 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_6_rt_459 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_7_rt_456 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_1_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_lut_0_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_2_Q : STD_LOGIC; 
  signal ProtoComp51_CYINITGND_0 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_2_rt_760 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_0_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_1_rt_757 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_3_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_3_rt_755 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_4_Q_740 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_6_Q_737 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_Q_736 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_5_Q_734 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_4_rt_792 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_5_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_6_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_7_rt_788 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_4_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_5_rt_786 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_6_rt_785 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_7_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_20_rt_880 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_21_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_22_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_23_rt_876 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_20_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_21_rt_874 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_22_rt_873 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_23_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_8_rt_814 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_9_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_10_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_11_rt_810 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_8_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_9_rt_808 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_10_rt_807 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_11_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_12_rt_836 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_13_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_14_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_15_rt_832 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_12_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_13_rt_830 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_14_rt_829 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_15_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_16_rt_858 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_17_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_18_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_19_rt_854 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_16_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_17_rt_852 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_18_rt_851 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_19_Q : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_1_rt_673 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_lut_0_Q : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_3_Q : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_0_Q : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_1_Q : STD_LOGIC; 
  signal ProtoComp46_CYINITGND_0 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_3_rt_657 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_2_Q : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_2_rt_651 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_30_INV_uart_controller_instance_uart_transmitter_instance_c_brg_30CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_30_INV_uart_controller_instance_uart_transmitter_instance_c_brg_29CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_30_INV_uart_controller_instance_uart_transmitter_instance_c_brg_28CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_29_rt_640 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_30_rt_638 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_28_rt_637 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_31_rt_634 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_5_rt_691 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_4_Q : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_4_rt_687 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_6_rt_685 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_5_Q : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_6_Q : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_7_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_27CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_26CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_25CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_24CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_25_rt_620 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_24_rt_618 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_26_rt_604 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_27_rt_601 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_23CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_22CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_21CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_20CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_21_rt_591 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_20_rt_589 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_22_rt_575 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_23_rt_572 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lutdi_725 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_2_Q_721 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_0_Q_720 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_1_Q_710 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_3_Q_707 : STD_LOGIC; 
  signal ProtoComp49_CYINITVCC_1 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_24_dpot_1188 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_26_dpot_1182 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_25_dpot_1175 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_27_dpot_1162 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_tx_rstpot_1260 : STD_LOGIC; 
  signal N28_pack_4 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_currentState_1_X_7_o_wide_mux_20_OUT_0_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_currentState_1_X_7_o_Mux_17_o : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_20_dpot_1153 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_22_dpot_1147 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_21_dpot_1140 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_23_dpot_1127 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_28_dpot_1216 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_30_dpot_1210 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_29_dpot_1194 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_8_dpot_1048 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_10_dpot_1042 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_9_dpot_1035 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_11_dpot_1022 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_4_dpot_1013 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_6_dpot_1007 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_5_dpot_1000 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_7_dpot_987 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_940 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_30_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_29_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_29_rt_927 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_30_rt_924 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_28_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_28_rt_916 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_5_913 : STD_LOGIC; 
  signal rst_IBUF_943 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_24_rt_902 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_25_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_26_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_27_rt_898 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_24_Q : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_25_rt_896 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_26_rt_895 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_27_Q : STD_LOGIC; 
  signal rx_IBUF_937 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_0_dpot_978 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_2_dpot_972 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_1_dpot_965 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_3_dpot_952 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_12_dpot_1083 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_14_dpot_1077 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_13_dpot_1070 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_15_dpot_1057 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_16_dpot_1118 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_18_dpot_1112 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_17_dpot_1105 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_conv_19_dpot_1092 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_shift_reg_0_rstpot_1503 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_shift_reg_2_rstpot_1497 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_shift_reg_1_rstpot_1491 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_shift_reg_3_rstpot_1479 : STD_LOGIC; 
  signal echo_device_instance_nextState_pack_3 : STD_LOGIC; 
  signal echo_device_instance_nextState_rstpot_1432 : STD_LOGIC; 
  signal echo_device_instance_GND_10_o_r_done_MUX_116_o : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_31_INV_uart_controller_instance_uart_transmitter_instance_c_brg_31CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_c_brg_31_glue_rst_1324 : STD_LOGIC; 
  signal s_dr_out_5_rt_1452 : STD_LOGIC; 
  signal s_dr_out_7_rt_1448 : STD_LOGIC; 
  signal s_dr_out_4_rt_1441 : STD_LOGIC; 
  signal s_dr_out_6_rt_1440 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o_INV_uart_controller_instance_uart_transmitter_instance_tickedCLK : STD_LOGIC;
 
  signal uart_controller_instance_uart_transmitter_instance_ticked_pack_1 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_ticked_rstpot_1345 : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_GND_7_o_c_brg_31_MUX_110_o : STD_LOGIC; 
  signal uart_controller_instance_uart_transmitter_instance_tx_done_1334 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_31_INV_uart_controller_instance_uart_receiver_instance_tickedCLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_31_INV_uart_controller_instance_uart_receiver_instance_c_brg_31CLK : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_brg_31_glue_rst_1647 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_ticked_pack_5 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_ticked_rstpot_1637 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_currentState_1_nextState_1_wide_mux_19_OUT_1_Q : STD_LOGIC; 
  signal N13_pack_7 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_currentState_1_nextState_1_wide_mux_19_OUT_0_Q : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_shift_reg_4_rstpot_1548 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_shift_reg_5_rstpot_1545 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_shift_reg_6_rstpot_1529 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_shift_reg_7_rstpot_1524 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_s3_2_dpot_1569 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_s3_3_dpot_1560 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_s3 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_s32 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_s31 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_s33 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_s_tick_pack_2 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_s_tick_rstpot_1733 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_s3_0_dpot_1688 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_c_s3_1_dpot_1685 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal uart_controller_instance_brg_instance_counter_31_GND_9_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_cr_brg_rstpot_1758 : STD_LOGIC; 
  signal N8_pack_4 : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_reg_rx_done_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_nextState_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_brg_instance_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_brg_instance_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_brg_instance_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_brg_instance_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_tx_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_nextState_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_cr_brg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_LD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_P_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tx_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_echo_device_instance_w_start_CLK : STD_LOGIC; 
  signal NlwBufferSignal_echo_device_instance_w_start_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_echo_device_instance_reg_w_start_CLK : STD_LOGIC; 
  signal NlwBufferSignal_echo_device_instance_nextState_CLK : STD_LOGIC; 
  signal NlwBufferSignal_echo_device_instance_currentState_CLK : STD_LOGIC; 
  signal NlwBufferSignal_echo_device_instance_currentState_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_ticked_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_tx_done_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_tx_start_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_tx_start_IN : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_ticked_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_nextState_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_nextState_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_rst_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_rst_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tx_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tx_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_rx_done_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_rx_done_IN : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_s_dr_out_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_brg_instance_s_tick_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_reg_rx_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_reg_rx_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_rst_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_rst_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_rx_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_rx_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_brg_instance_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_brg_instance_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_brg_instance_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_controller_instance_uart_receiver_instance_cr_brg_CLK : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_100_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_101_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_102_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_N1_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_121_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_122_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_98_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_99_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_93_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_94_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_95_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_8_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_120_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_89_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_90_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_91_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_92_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_85_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_86_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_87_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_88_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_81_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_82_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_83_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_84_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_66_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_67_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_68_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_69_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_70_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_71_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_72_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_77_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_78_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_79_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_80_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_73_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_74_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_75_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_76_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_28_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_29_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_30_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_12_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_13_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_14_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_15_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_16_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_17_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_18_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_19_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_20_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_21_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_22_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_23_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_24_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_25_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_26_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_27_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_61_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_62_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_63_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_103_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_104_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_57_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_58_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_59_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_60_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_41_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_42_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_43_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_44_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_53_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_54_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_55_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_56_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_49_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_50_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_51_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_52_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_45_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_46_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_47_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_48_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_115_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_116_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_117_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_2_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_111_D6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_112_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_113_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_114_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_4_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_5_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_6_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_8_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_9_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_10_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_11_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_105_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_106_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_107_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_34_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_35_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_36_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_37_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_38_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_39_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_40_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_10_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_s3_xor_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_s3_xor_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_s3_xor_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_s3_xor_3_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_s3_xor_3_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_108_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_109_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_controller_instance_brg_instance_counter_10_110_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal uart_controller_instance_uart_receiver_instance_nextState : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal uart_controller_instance_uart_receiver_instance_currentState : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal uart_controller_instance_uart_receiver_instance_c_brg : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal uart_controller_instance_uart_transmitter_instance_currentState : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal uart_controller_instance_uart_transmitter_instance_c_brg : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal uart_controller_instance_uart_transmitter_instance_c_conv : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal uart_controller_instance_brg_instance_counter : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal uart_controller_instance_uart_receiver_instance_shift_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal uart_controller_instance_uart_transmitter_instance_reg_d_in : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal uart_controller_instance_uart_transmitter_instance_shift_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal s_dr_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal uart_controller_instance_uart_receiver_instance_c_s3 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal uart_controller_instance_uart_transmitter_instance_nextState : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal uart_controller_instance_uart_receiver_instance_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_brg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal uart_controller_instance_uart_transmitter_instance_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal uart_controller_instance_uart_transmitter_instance_n0120 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(15),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(16),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(17),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(18),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(19),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_3_Q_66
    );
  uart_controller_instance_brg_instance_counter_10_100_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_100_D5LUT_O_UNCONNECTED
    );
  ProtoComp39_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X54Y88"
    )
    port map (
      O => ProtoComp39_CYINITVCC_1
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X54Y88"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp39_CYINITVCC_1,
      CO(3) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_Q_2020,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lutdi_67,
      O(3) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_O_0_UNCONNECTED,
      S(3) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_3_Q_66,
      S(2) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_2_Q_78,
      S(1) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_1_Q_83,
      S(0) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_0_Q_91
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"0000000100000001"
    )
    port map (
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(10),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(11),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(12),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(13),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(14),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_2_Q_78
    );
  uart_controller_instance_brg_instance_counter_10_101_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_101_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(5),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(6),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(7),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(8),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(9),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_1_Q_83
    );
  uart_controller_instance_brg_instance_counter_10_102_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_102_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"0000000200000002"
    )
    port map (
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(0),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(1),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(2),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(3),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(4),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_0_Q_91
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X54Y88",
      INIT => X"00550055"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(3),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(4),
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lutdi_67
    );
  uart_controller_instance_uart_receiver_instance_reg_rx_done_uart_controller_instance_uart_receiver_instance_reg_rx_done_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_31_GND_6_o_LessThan_17_o,
      O => uart_controller_instance_uart_receiver_instance_c_brg_31_GND_6_o_LessThan_17_o_0
    );
  uart_controller_instance_uart_receiver_instance_reg_rx_done : X_FF
    generic map(
      LOC => "SLICE_X56Y90",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_reg_rx_done_CLK,
      I => uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1,
      O => uart_controller_instance_uart_receiver_instance_reg_rx_done_1978,
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_lut1 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y90",
      INIT => X"F0F0FFFFF0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_reg_rx_done_1978,
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_lut1_41
    );
  N1_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X56Y90",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_9_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1 : X_CARRY4
    generic map(
      LOC => "SLICE_X56Y90"
    )
    port map (
      CI => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_Q_2003,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_CO_2_UNCONNECTED,
      CO(1) => uart_controller_instance_uart_receiver_instance_c_brg_31_GND_6_o_LessThan_17_o,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '0',
      DI(1) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi5_59,
      DI(0) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi4_58,
      O(3) => NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_O_3_UNCONNECTED,
      O(2) => NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_O_2_UNCONNECTED,
      O(1) => NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_O_1_UNCONNECTED,
      O(0) => NLW_uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_cy1_O_0_UNCONNECTED,
      S(3) => uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_lut1_41,
      S(2) => uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_lut_45,
      S(1) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_5_Q_39,
      S(0) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_4_Q_60
    );
  uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_lut : X_LUT6
    generic map(
      LOC => "SLICE_X56Y90",
      INIT => X"C0C00000C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      ADR4 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR1 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_reg_rx_done_rstpot1_lut_45
    );
  uart_controller_instance_brg_instance_counter_10_121_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X56Y90",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_121_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y90",
      INIT => X"0000003300000033"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(29),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(30),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(31),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_5_Q_39
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y90",
      INIT => X"33333300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(29),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(30),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(31),
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi5_59
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y90",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(24),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(25),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(26),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(27),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(28),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_4_Q_60
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y90",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(24),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(25),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(26),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(27),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(28),
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi4_58
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y89",
      INIT => X"0000000100000001"
    )
    port map (
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(19),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(20),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(21),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(22),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(23),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_3_Q_2
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y89",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(19),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(20),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(21),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(22),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(23),
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi3_10
    );
  ProtoComp37_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X56Y89"
    )
    port map (
      O => ProtoComp37_CYINITVCC_1
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X56Y89"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp37_CYINITVCC_1,
      CO(3) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_Q_2003,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi3_10,
      DI(2) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi2_20,
      DI(1) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi1_18,
      DI(0) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi_23,
      O(3) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_cy_3_O_0_UNCONNECTED,
      S(3) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_3_Q_2,
      S(2) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_2_Q_12,
      S(1) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_1_Q_4,
      S(0) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_0_Q_28
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y89",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(14),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(15),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(16),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(17),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(18),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_2_Q_12
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y89",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(14),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(15),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(16),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(17),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(18),
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi2_20
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y89",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(9),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(10),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(11),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(12),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(13),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_1_Q_4
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y89",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(9),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(10),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(11),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(12),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(13),
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi1_18
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y89",
      INIT => X"0000010000000100"
    )
    port map (
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(5),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(6),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(7),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(4),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(8),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lut_0_Q_28
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X56Y89",
      INIT => X"FFFFFEFE"
    )
    port map (
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(5),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(6),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(7),
      ADR3 => '1',
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(8),
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_17_o_lutdi_23
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y2",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_l1_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_l1_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_l1,
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_l1_0
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_l1_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_l1_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_Q,
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_0
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_lut : X_LUT6
    generic map(
      LOC => "SLICE_X54Y89",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => uart_controller_instance_uart_receiver_instance_nextState(0),
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_lut_101
    );
  uart_controller_instance_brg_instance_counter_10_122_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X54Y89",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_122_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy : X_CARRY4
    generic map(
      LOC => "SLICE_X54Y89"
    )
    port map (
      CI => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_3_Q_2020,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_l1,
      CO(2) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_Q,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_DI_2_Q,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_O_3_UNCONNECTED,
      O(2) => NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_O_2_UNCONNECTED,
      O(1) => NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_O_1_UNCONNECTED,
      O(0) => NLW_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_O_0_UNCONNECTED,
      S(3) => uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_lut_101,
      S(2) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_6_Q_109,
      S(1) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_5_Q_122,
      S(0) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_4_Q_102
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y89",
      INIT => X"000000000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => uart_controller_instance_uart_receiver_instance_c_brg(30),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(31),
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_6_Q_109
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y89",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(25),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(26),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(27),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(28),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(29),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_5_Q_122
    );
  uart_controller_instance_brg_instance_counter_10_98_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X54Y89",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_98_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y89",
      INIT => X"0000000100000001"
    )
    port map (
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(20),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(21),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(22),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(23),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(24),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_lut_4_Q_102
    );
  uart_controller_instance_brg_instance_counter_10_99_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X54Y89",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_99_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_3CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_3CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_2CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_2CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_1CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_1CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_0CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_0CLK
    );
  uart_controller_instance_uart_receiver_instance_c_brg_3 : X_SFF
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_3_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(3),
      O => uart_controller_instance_uart_receiver_instance_c_brg(3),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(3),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_3_rt_196
    );
  uart_controller_instance_brg_instance_counter_10_93_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_93_D5LUT_O_UNCONNECTED
    );
  ProtoComp43_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X58Y86"
    )
    port map (
      O => ProtoComp43_CYINITGND_0
    );
  uart_controller_instance_uart_receiver_instance_c_brg_2 : X_SFF
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_2_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(2),
      O => uart_controller_instance_uart_receiver_instance_c_brg(2),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X58Y86"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp43_CYINITGND_0,
      CO(3) => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_3_Q_2049,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => uart_controller_instance_uart_receiver_instance_Result(3),
      O(2) => uart_controller_instance_uart_receiver_instance_Result(2),
      O(1) => uart_controller_instance_uart_receiver_instance_Result(1),
      O(0) => uart_controller_instance_uart_receiver_instance_Result(0),
      S(3) => uart_controller_instance_uart_receiver_instance_c_brg_3_rt_196,
      S(2) => uart_controller_instance_uart_receiver_instance_c_brg_2_rt_198,
      S(1) => uart_controller_instance_uart_receiver_instance_c_brg_1_rt_210,
      S(0) => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_lut(0)
    );
  uart_controller_instance_uart_receiver_instance_c_brg_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(2),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_2_rt_198
    );
  uart_controller_instance_brg_instance_counter_10_94_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_94_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_1 : X_SFF
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_1_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(1),
      O => uart_controller_instance_uart_receiver_instance_c_brg(1),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(1),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_1_rt_210
    );
  uart_controller_instance_brg_instance_counter_10_95_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_95_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_0 : X_SFF
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_0_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(0),
      O => uart_controller_instance_uart_receiver_instance_c_brg(0),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_brg_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(0),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_lut(0)
    );
  N1_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_3_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"0000000100000001"
    )
    port map (
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(19),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_brg(20),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_brg(21),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(22),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(23),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(3)
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"00000001"
    )
    port map (
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(19),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_brg(20),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_brg(21),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(22),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(23),
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi3_132
    );
  ProtoComp41_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X46Y80"
    )
    port map (
      O => ProtoComp41_CYINITGND_0
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X46Y80"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp41_CYINITGND_0,
      CO(3) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_Q_2036,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_CO_0_UNCONNECTED,
      DI(3) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi3_132,
      DI(2) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi2_144,
      DI(1) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi1_137,
      DI(0) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi_156,
      O(3) => NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_O_0_UNCONNECTED,
      S(3) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(3),
      S(2) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(2),
      S(1) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(1),
      S(0) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(0)
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_brg(14),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(15),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_brg(16),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(17),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(18),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(2)
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"00000001"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_brg(14),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(15),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_brg(16),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(17),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(18),
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi2_144
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(9),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(10),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_brg(11),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(12),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_brg(13),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(1)
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"00000001"
    )
    port map (
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(9),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(10),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_brg(11),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(12),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_brg(13),
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi1_137
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"0000010000000100"
    )
    port map (
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(5),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_brg(6),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_brg(7),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(4),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(8),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(0)
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"00000101"
    )
    port map (
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(5),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_brg(6),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_brg(7),
      ADR3 => '1',
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(8),
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi_156
    );
  uart_controller_instance_uart_transmitter_instance_nextState_1_uart_controller_instance_uart_transmitter_instance_nextState_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_Q,
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0
    );
  uart_controller_instance_uart_transmitter_instance_nextState_1 : X_FF
    generic map(
      LOC => "SLICE_X46Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_nextState_1_CLK,
      I => uart_controller_instance_uart_transmitter_instance_currentState_1_X_7_o_wide_mux_20_OUT_1_Q,
      O => uart_controller_instance_uart_transmitter_instance_nextState(1),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_lut1 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y81",
      INIT => X"CCCFEEFFCCCFEEFF"
    )
    port map (
      ADR4 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR1 => uart_controller_instance_uart_transmitter_instance_currentState(1),
      ADR3 => uart_controller_instance_uart_transmitter_instance_nextState(1),
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_lut1_170
    );
  N1_8_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y81",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_8_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1 : X_CARRY4
    generic map(
      LOC => "SLICE_X46Y81"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_3_Q_2036,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_currentState_1_X_7_o_wide_mux_20_OUT_1_Q,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_CO_2_UNCONNECTED,
      CO(1) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_Q,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '0',
      DI(1) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi5_169,
      DI(0) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi4_186,
      O(3) => NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_O_3_UNCONNECTED,
      O(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_O_2_UNCONNECTED,
      O(1) => NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_O_1_UNCONNECTED,
      O(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_cy1_O_0_UNCONNECTED,
      S(3) => uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_lut1_170,
      S(2) => uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_lut_183,
      S(1) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(5),
      S(0) => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(4)
    );
  uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_lut : X_LUT6
    generic map(
      LOC => "SLICE_X46Y81",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_currentState(1),
      ADR1 => uart_controller_instance_uart_transmitter_instance_nextState(1),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT21_lut_183
    );
  uart_controller_instance_brg_instance_counter_10_120_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_120_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y81",
      INIT => X"0000000F0000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(29),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(30),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(31),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(5)
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X46Y81",
      INIT => X"F0F0F0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(29),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(30),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(31),
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi5_169
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y81",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(24),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(25),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_brg(26),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(27),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_brg(28),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lut(4)
    );
  uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X46Y81",
      INIT => X"00000001"
    )
    port map (
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(24),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(25),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_brg(26),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(27),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_brg(28),
      O => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_lutdi4_186
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_7CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_7CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_6CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_6CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_5CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_5CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_4CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_4CLK
    );
  uart_controller_instance_uart_receiver_instance_c_brg_7 : X_SFF
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_7_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(7),
      O => uart_controller_instance_uart_receiver_instance_c_brg(7),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(7),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_7_rt_228
    );
  uart_controller_instance_brg_instance_counter_10_89_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_89_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_6 : X_SFF
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_6_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(6),
      O => uart_controller_instance_uart_receiver_instance_c_brg(6),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X58Y87"
    )
    port map (
      CI => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_3_Q_2049,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_7_Q_2050,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_receiver_instance_Result(7),
      O(2) => uart_controller_instance_uart_receiver_instance_Result(6),
      O(1) => uart_controller_instance_uart_receiver_instance_Result(5),
      O(0) => uart_controller_instance_uart_receiver_instance_Result(4),
      S(3) => uart_controller_instance_uart_receiver_instance_c_brg_7_rt_228,
      S(2) => uart_controller_instance_uart_receiver_instance_c_brg_6_rt_231,
      S(1) => uart_controller_instance_uart_receiver_instance_c_brg_5_rt_247,
      S(0) => uart_controller_instance_uart_receiver_instance_c_brg_4_rt_245
    );
  uart_controller_instance_uart_receiver_instance_c_brg_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(6),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_6_rt_231
    );
  uart_controller_instance_brg_instance_counter_10_90_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_90_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_5 : X_SFF
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_5_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(5),
      O => uart_controller_instance_uart_receiver_instance_c_brg(5),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(5),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_5_rt_247
    );
  uart_controller_instance_brg_instance_counter_10_91_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_91_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_4 : X_SFF
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_4_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(4),
      O => uart_controller_instance_uart_receiver_instance_c_brg(4),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(4),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_4_rt_245
    );
  uart_controller_instance_brg_instance_counter_10_92_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_92_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_11CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_11CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_10CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_10CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_9CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_9CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_8CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_8CLK
    );
  uart_controller_instance_uart_receiver_instance_c_brg_11 : X_SFF
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_11_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(11),
      O => uart_controller_instance_uart_receiver_instance_c_brg(11),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(11),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_11_rt_257
    );
  uart_controller_instance_brg_instance_counter_10_85_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_85_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_10 : X_SFF
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_10_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(10),
      O => uart_controller_instance_uart_receiver_instance_c_brg(10),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X58Y88"
    )
    port map (
      CI => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_7_Q_2050,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_11_Q_2051,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_receiver_instance_Result(11),
      O(2) => uart_controller_instance_uart_receiver_instance_Result(10),
      O(1) => uart_controller_instance_uart_receiver_instance_Result(9),
      O(0) => uart_controller_instance_uart_receiver_instance_Result(8),
      S(3) => uart_controller_instance_uart_receiver_instance_c_brg_11_rt_257,
      S(2) => uart_controller_instance_uart_receiver_instance_c_brg_10_rt_260,
      S(1) => uart_controller_instance_uart_receiver_instance_c_brg_9_rt_276,
      S(0) => uart_controller_instance_uart_receiver_instance_c_brg_8_rt_274
    );
  uart_controller_instance_uart_receiver_instance_c_brg_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(10),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_10_rt_260
    );
  uart_controller_instance_brg_instance_counter_10_86_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_86_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_9 : X_SFF
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_9_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(9),
      O => uart_controller_instance_uart_receiver_instance_c_brg(9),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(9),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_9_rt_276
    );
  uart_controller_instance_brg_instance_counter_10_87_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_87_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_8 : X_SFF
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_8_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(8),
      O => uart_controller_instance_uart_receiver_instance_c_brg(8),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(8),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_8_rt_274
    );
  uart_controller_instance_brg_instance_counter_10_88_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_88_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_15CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_15CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_14CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_14CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_13CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_13CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_12CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_12CLK
    );
  uart_controller_instance_uart_receiver_instance_c_brg_15 : X_SFF
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_15_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(15),
      O => uart_controller_instance_uart_receiver_instance_c_brg(15),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(15),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_15_rt_286
    );
  uart_controller_instance_brg_instance_counter_10_81_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_81_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_14 : X_SFF
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_14_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(14),
      O => uart_controller_instance_uart_receiver_instance_c_brg(14),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X58Y89"
    )
    port map (
      CI => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_11_Q_2051,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_15_Q_2052,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_receiver_instance_Result(15),
      O(2) => uart_controller_instance_uart_receiver_instance_Result(14),
      O(1) => uart_controller_instance_uart_receiver_instance_Result(13),
      O(0) => uart_controller_instance_uart_receiver_instance_Result(12),
      S(3) => uart_controller_instance_uart_receiver_instance_c_brg_15_rt_286,
      S(2) => uart_controller_instance_uart_receiver_instance_c_brg_14_rt_289,
      S(1) => uart_controller_instance_uart_receiver_instance_c_brg_13_rt_305,
      S(0) => uart_controller_instance_uart_receiver_instance_c_brg_12_rt_303
    );
  uart_controller_instance_uart_receiver_instance_c_brg_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(14),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_14_rt_289
    );
  uart_controller_instance_brg_instance_counter_10_82_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_82_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_13 : X_SFF
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_13_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(13),
      O => uart_controller_instance_uart_receiver_instance_c_brg(13),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(13),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_13_rt_305
    );
  uart_controller_instance_brg_instance_counter_10_83_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_83_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_12 : X_SFF
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_12_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(12),
      O => uart_controller_instance_uart_receiver_instance_c_brg(12),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(12),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_12_rt_303
    );
  uart_controller_instance_brg_instance_counter_10_84_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y89",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_84_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_30CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_30_INV_uart_controller_instance_uart_receiver_instance_c_brg_30CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_29CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_30_INV_uart_controller_instance_uart_receiver_instance_c_brg_29CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_28CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_30_INV_uart_controller_instance_uart_receiver_instance_c_brg_28CLK
    );
  uart_controller_instance_uart_receiver_instance_c_brg_30_uart_controller_instance_uart_receiver_instance_c_brg_30_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_Result(31),
      O => uart_controller_instance_uart_receiver_instance_Result_31_0
    );
  uart_controller_instance_uart_receiver_instance_c_brg_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y93",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => uart_controller_instance_uart_receiver_instance_c_brg(31),
      O => uart_controller_instance_uart_receiver_instance_c_brg_31_rt_406
    );
  uart_controller_instance_uart_receiver_instance_c_brg_30 : X_SFF
    generic map(
      LOC => "SLICE_X58Y93",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_30_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(30),
      O => uart_controller_instance_uart_receiver_instance_c_brg(30),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_brg_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X58Y93"
    )
    port map (
      CI => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_27_Q_2055,
      CYINIT => '0',
      CO(3) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_receiver_instance_Result(31),
      O(2) => uart_controller_instance_uart_receiver_instance_Result(30),
      O(1) => uart_controller_instance_uart_receiver_instance_Result(29),
      O(0) => uart_controller_instance_uart_receiver_instance_Result(28),
      S(3) => uart_controller_instance_uart_receiver_instance_c_brg_31_rt_406,
      S(2) => uart_controller_instance_uart_receiver_instance_c_brg_30_rt_410,
      S(1) => uart_controller_instance_uart_receiver_instance_c_brg_29_rt_412,
      S(0) => uart_controller_instance_uart_receiver_instance_c_brg_28_rt_409
    );
  uart_controller_instance_uart_receiver_instance_c_brg_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y93",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(30),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_30_rt_410
    );
  uart_controller_instance_brg_instance_counter_10_66_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y93",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_66_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_29 : X_SFF
    generic map(
      LOC => "SLICE_X58Y93",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_29_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(29),
      O => uart_controller_instance_uart_receiver_instance_c_brg(29),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y93",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(29),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_29_rt_412
    );
  uart_controller_instance_brg_instance_counter_10_67_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y93",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_67_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_28 : X_SFF
    generic map(
      LOC => "SLICE_X58Y93",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_28_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(28),
      O => uart_controller_instance_uart_receiver_instance_c_brg(28),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y93",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(28),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_28_rt_409
    );
  uart_controller_instance_brg_instance_counter_10_68_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y93",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_68_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_27CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_27CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_26CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_26CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_25CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_25CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_24CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_24CLK
    );
  uart_controller_instance_uart_receiver_instance_c_brg_27 : X_SFF
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_27_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(27),
      O => uart_controller_instance_uart_receiver_instance_c_brg(27),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(27),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_27_rt_373
    );
  uart_controller_instance_brg_instance_counter_10_69_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_69_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_26 : X_SFF
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_26_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(26),
      O => uart_controller_instance_uart_receiver_instance_c_brg(26),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X58Y92"
    )
    port map (
      CI => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_23_Q_2054,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_27_Q_2055,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_receiver_instance_Result(27),
      O(2) => uart_controller_instance_uart_receiver_instance_Result(26),
      O(1) => uart_controller_instance_uart_receiver_instance_Result(25),
      O(0) => uart_controller_instance_uart_receiver_instance_Result(24),
      S(3) => uart_controller_instance_uart_receiver_instance_c_brg_27_rt_373,
      S(2) => uart_controller_instance_uart_receiver_instance_c_brg_26_rt_376,
      S(1) => uart_controller_instance_uart_receiver_instance_c_brg_25_rt_392,
      S(0) => uart_controller_instance_uart_receiver_instance_c_brg_24_rt_390
    );
  uart_controller_instance_uart_receiver_instance_c_brg_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(26),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_26_rt_376
    );
  uart_controller_instance_brg_instance_counter_10_70_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_70_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_25 : X_SFF
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_25_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(25),
      O => uart_controller_instance_uart_receiver_instance_c_brg(25),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(25),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_25_rt_392
    );
  uart_controller_instance_brg_instance_counter_10_71_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_71_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_24 : X_SFF
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_24_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(24),
      O => uart_controller_instance_uart_receiver_instance_c_brg(24),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(24),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_24_rt_390
    );
  uart_controller_instance_brg_instance_counter_10_72_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y92",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_72_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_19CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_19CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_18CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_18CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_17CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_17CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_16CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_16CLK
    );
  uart_controller_instance_uart_receiver_instance_c_brg_19 : X_SFF
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_19_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(19),
      O => uart_controller_instance_uart_receiver_instance_c_brg(19),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(19),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_19_rt_315
    );
  uart_controller_instance_brg_instance_counter_10_77_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_77_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_18 : X_SFF
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_18_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(18),
      O => uart_controller_instance_uart_receiver_instance_c_brg(18),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X58Y90"
    )
    port map (
      CI => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_15_Q_2052,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_19_Q_2053,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_receiver_instance_Result(19),
      O(2) => uart_controller_instance_uart_receiver_instance_Result(18),
      O(1) => uart_controller_instance_uart_receiver_instance_Result(17),
      O(0) => uart_controller_instance_uart_receiver_instance_Result(16),
      S(3) => uart_controller_instance_uart_receiver_instance_c_brg_19_rt_315,
      S(2) => uart_controller_instance_uart_receiver_instance_c_brg_18_rt_318,
      S(1) => uart_controller_instance_uart_receiver_instance_c_brg_17_rt_334,
      S(0) => uart_controller_instance_uart_receiver_instance_c_brg_16_rt_332
    );
  uart_controller_instance_uart_receiver_instance_c_brg_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(18),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_18_rt_318
    );
  uart_controller_instance_brg_instance_counter_10_78_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_78_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_17 : X_SFF
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_17_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(17),
      O => uart_controller_instance_uart_receiver_instance_c_brg(17),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(17),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_17_rt_334
    );
  uart_controller_instance_brg_instance_counter_10_79_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_79_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_16 : X_SFF
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_16_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(16),
      O => uart_controller_instance_uart_receiver_instance_c_brg(16),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(16),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_16_rt_332
    );
  uart_controller_instance_brg_instance_counter_10_80_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y90",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_80_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_23CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_23CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_22CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_22CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_21CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_21CLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_20CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_20CLK
    );
  uart_controller_instance_uart_receiver_instance_c_brg_23 : X_SFF
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_23_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(23),
      O => uart_controller_instance_uart_receiver_instance_c_brg(23),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(23),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_23_rt_344
    );
  uart_controller_instance_brg_instance_counter_10_73_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_73_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_22 : X_SFF
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_22_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(22),
      O => uart_controller_instance_uart_receiver_instance_c_brg(22),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X58Y91"
    )
    port map (
      CI => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_19_Q_2053,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_23_Q_2054,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_brg_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_receiver_instance_Result(23),
      O(2) => uart_controller_instance_uart_receiver_instance_Result(22),
      O(1) => uart_controller_instance_uart_receiver_instance_Result(21),
      O(0) => uart_controller_instance_uart_receiver_instance_Result(20),
      S(3) => uart_controller_instance_uart_receiver_instance_c_brg_23_rt_344,
      S(2) => uart_controller_instance_uart_receiver_instance_c_brg_22_rt_347,
      S(1) => uart_controller_instance_uart_receiver_instance_c_brg_21_rt_363,
      S(0) => uart_controller_instance_uart_receiver_instance_c_brg_20_rt_361
    );
  uart_controller_instance_uart_receiver_instance_c_brg_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(22),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_22_rt_347
    );
  uart_controller_instance_brg_instance_counter_10_74_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_74_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_21 : X_SFF
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_21_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(21),
      O => uart_controller_instance_uart_receiver_instance_c_brg(21),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(21),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_21_rt_363
    );
  uart_controller_instance_brg_instance_counter_10_75_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_75_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_c_brg_20 : X_SFF
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_20_CLK,
      I => uart_controller_instance_uart_receiver_instance_Result(20),
      O => uart_controller_instance_uart_receiver_instance_c_brg(20),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(20),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_c_brg_20_rt_361
    );
  uart_controller_instance_brg_instance_counter_10_76_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y91",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_76_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_3CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_3CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_2CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_2CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_1CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_1CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_0CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_0CLK
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_3 : X_SFF
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_3_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(3),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(3),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(3),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_3_rt_424
    );
  uart_controller_instance_brg_instance_counter_10_28_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_28_D5LUT_O_UNCONNECTED
    );
  ProtoComp43_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X44Y77"
    )
    port map (
      O => uart_controller_instance_uart_transmitter_instance_c_brg_3_ProtoComp43_CYINITGND_0
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_2 : X_SFF
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_2_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(2),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(2),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X44Y77"
    )
    port map (
      CI => '0',
      CYINIT => uart_controller_instance_uart_transmitter_instance_c_brg_3_ProtoComp43_CYINITGND_0,
      CO(3) => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_3_Q_2059,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => uart_controller_instance_uart_transmitter_instance_Result(3),
      O(2) => uart_controller_instance_uart_transmitter_instance_Result(2),
      O(1) => uart_controller_instance_uart_transmitter_instance_Result(1),
      O(0) => uart_controller_instance_uart_transmitter_instance_Result(0),
      S(3) => uart_controller_instance_uart_transmitter_instance_c_brg_3_rt_424,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_brg_2_rt_426,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_brg_1_rt_438,
      S(0) => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_lut(0)
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(2),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_2_rt_426
    );
  uart_controller_instance_brg_instance_counter_10_29_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_29_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_1 : X_SFF
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_1_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(1),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(1),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(1),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_1_rt_438
    );
  uart_controller_instance_brg_instance_counter_10_30_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_30_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_0 : X_SFF
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_0_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(0),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(0),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_brg(0),
      ADR4 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_lut(0)
    );
  N1_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y77",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_19CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_19CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_18CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_18CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_17CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_17CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_16CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_16CLK
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_19 : X_SFF
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_19_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(19),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(19),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(19),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_19_rt_543
    );
  uart_controller_instance_brg_instance_counter_10_12_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_12_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_18 : X_SFF
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_18_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(18),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(18),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X44Y81"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_15_Q_2063,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_19_Q_2064,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_Result(19),
      O(2) => uart_controller_instance_uart_transmitter_instance_Result(18),
      O(1) => uart_controller_instance_uart_transmitter_instance_Result(17),
      O(0) => uart_controller_instance_uart_transmitter_instance_Result(16),
      S(3) => uart_controller_instance_uart_transmitter_instance_c_brg_19_rt_543,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_brg_18_rt_546,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_brg_17_rt_562,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_brg_16_rt_560
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(18),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_18_rt_546
    );
  uart_controller_instance_brg_instance_counter_10_13_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_13_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_17 : X_SFF
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_17_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(17),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(17),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(17),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_17_rt_562
    );
  uart_controller_instance_brg_instance_counter_10_14_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_14_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_16 : X_SFF
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_16_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(16),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(16),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(16),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_16_rt_560
    );
  uart_controller_instance_brg_instance_counter_10_15_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_15_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_15CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_15CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_14CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_14CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_13CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_13CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_12CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_12CLK
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_15 : X_SFF
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_15_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(15),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(15),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(15),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_15_rt_514
    );
  uart_controller_instance_brg_instance_counter_10_16_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_16_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_14 : X_SFF
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_14_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(14),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(14),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X44Y80"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_11_Q_2062,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_15_Q_2063,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_Result(15),
      O(2) => uart_controller_instance_uart_transmitter_instance_Result(14),
      O(1) => uart_controller_instance_uart_transmitter_instance_Result(13),
      O(0) => uart_controller_instance_uart_transmitter_instance_Result(12),
      S(3) => uart_controller_instance_uart_transmitter_instance_c_brg_15_rt_514,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_brg_14_rt_517,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_brg_13_rt_533,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_brg_12_rt_531
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(14),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_14_rt_517
    );
  uart_controller_instance_brg_instance_counter_10_17_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_17_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_13 : X_SFF
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_13_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(13),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(13),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(13),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_13_rt_533
    );
  uart_controller_instance_brg_instance_counter_10_18_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_18_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_12 : X_SFF
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_12_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(12),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(12),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(12),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_12_rt_531
    );
  uart_controller_instance_brg_instance_counter_10_19_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_19_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_11CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_11CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_10CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_10CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_9CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_9CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_8CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_8CLK
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_11 : X_SFF
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_11_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(11),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(11),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(11),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_11_rt_485
    );
  uart_controller_instance_brg_instance_counter_10_20_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_20_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_10 : X_SFF
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_10_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(10),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(10),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X44Y79"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_7_Q_2061,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_11_Q_2062,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_Result(11),
      O(2) => uart_controller_instance_uart_transmitter_instance_Result(10),
      O(1) => uart_controller_instance_uart_transmitter_instance_Result(9),
      O(0) => uart_controller_instance_uart_transmitter_instance_Result(8),
      S(3) => uart_controller_instance_uart_transmitter_instance_c_brg_11_rt_485,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_brg_10_rt_488,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_brg_9_rt_504,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_brg_8_rt_502
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(10),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_10_rt_488
    );
  uart_controller_instance_brg_instance_counter_10_21_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_21_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_9 : X_SFF
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_9_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(9),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(9),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(9),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_9_rt_504
    );
  uart_controller_instance_brg_instance_counter_10_22_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_22_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_8 : X_SFF
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_8_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(8),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(8),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(8),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_8_rt_502
    );
  uart_controller_instance_brg_instance_counter_10_23_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_23_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_7CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_7CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_6CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_6CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_5CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_5CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_4CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_4CLK
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_7 : X_SFF
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_7_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(7),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(7),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(7),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_7_rt_456
    );
  uart_controller_instance_brg_instance_counter_10_24_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_24_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_6 : X_SFF
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_6_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(6),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(6),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X44Y78"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_3_Q_2059,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_7_Q_2061,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_Result(7),
      O(2) => uart_controller_instance_uart_transmitter_instance_Result(6),
      O(1) => uart_controller_instance_uart_transmitter_instance_Result(5),
      O(0) => uart_controller_instance_uart_transmitter_instance_Result(4),
      S(3) => uart_controller_instance_uart_transmitter_instance_c_brg_7_rt_456,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_brg_6_rt_459,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_brg_5_rt_475,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_brg_4_rt_473
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(6),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_6_rt_459
    );
  uart_controller_instance_brg_instance_counter_10_25_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_25_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_5 : X_SFF
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_5_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(5),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(5),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(5),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_5_rt_475
    );
  uart_controller_instance_brg_instance_counter_10_26_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_26_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_4 : X_SFF
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_4_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(4),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(4),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(4),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_4_rt_473
    );
  uart_controller_instance_brg_instance_counter_10_27_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_27_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_3_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_3_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_2_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_2_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_1_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_1_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_0_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_0_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y80",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(3),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_3_rt_755
    );
  uart_controller_instance_brg_instance_counter_10_61_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_61_D5LUT_O_UNCONNECTED
    );
  ProtoComp51_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X38Y80"
    )
    port map (
      O => ProtoComp51_CYINITGND_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y80"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp51_CYINITGND_0,
      CO(3) => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_Q_2073,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_3_Q,
      O(2) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_2_Q,
      O(1) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_1_Q,
      O(0) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_0_Q,
      S(3) => uart_controller_instance_uart_transmitter_instance_c_conv_3_rt_755,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_conv_2_rt_760,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_conv_1_rt_757,
      S(0) => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_lut_0_Q
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y80",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(2),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_2_rt_760
    );
  uart_controller_instance_brg_instance_counter_10_62_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_62_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y80",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(1),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_1_rt_757
    );
  uart_controller_instance_brg_instance_counter_10_63_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_63_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y80",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(0),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_lut_0_Q
    );
  N1_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y80",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_2_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_Q_736,
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X56Y88"
    )
    port map (
      CI => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_Q_2072,
      CYINIT => '0',
      CO(3) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_CO_3_UNCONNECTED,
      CO(2) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_Q_736,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_CO_0_UNCONNECTED,
      DI(3) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_DI_2_Q,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_O_3_UNCONNECTED,
      O(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_O_2_UNCONNECTED,
      O(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_O_1_UNCONNECTED,
      O(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_O_0_UNCONNECTED,
      S(3) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_S_3_UNCONNECTED,
      S(2) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_6_Q_737,
      S(1) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_5_Q_734,
      S(0) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_4_Q_740
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y88",
      INIT => X"0000333300003333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(30),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(31),
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_6_Q_737
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y88",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(25),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(26),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(27),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(28),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(29),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_5_Q_734
    );
  uart_controller_instance_brg_instance_counter_10_103_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X56Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_103_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y88",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(20),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(21),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(22),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(23),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(24),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_4_Q_740
    );
  uart_controller_instance_brg_instance_counter_10_104_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X56Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_104_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_7_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_7_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_6_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_6_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_5_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_5_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_4_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_4_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y81",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(7),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_7_rt_788
    );
  uart_controller_instance_brg_instance_counter_10_57_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_57_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y81"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_3_Q_2073,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_Q_2074,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_7_Q,
      O(2) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_6_Q,
      O(1) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_5_Q,
      O(0) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_4_Q,
      S(3) => uart_controller_instance_uart_transmitter_instance_c_conv_7_rt_788,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_conv_6_rt_785,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_conv_5_rt_786,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_conv_4_rt_792
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y81",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(6),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_6_rt_785
    );
  uart_controller_instance_brg_instance_counter_10_58_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_58_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y81",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(5),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_5_rt_786
    );
  uart_controller_instance_brg_instance_counter_10_59_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_59_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y81",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(4),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_4_rt_792
    );
  uart_controller_instance_brg_instance_counter_10_60_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_60_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_23_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_23_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_22_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_22_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_21_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_21_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_20_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_20_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y85",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(23),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_23_rt_876
    );
  uart_controller_instance_brg_instance_counter_10_41_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_41_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y85"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_Q_2077,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_Q_2078,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_23_Q,
      O(2) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_22_Q,
      O(1) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_21_Q,
      O(0) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_20_Q,
      S(3) => uart_controller_instance_uart_transmitter_instance_c_conv_23_rt_876,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_conv_22_rt_873,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_conv_21_rt_874,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_conv_20_rt_880
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y85",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(22),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_22_rt_873
    );
  uart_controller_instance_brg_instance_counter_10_42_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_42_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y85",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(21),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_21_rt_874
    );
  uart_controller_instance_brg_instance_counter_10_43_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_43_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y85",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(20),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_20_rt_880
    );
  uart_controller_instance_brg_instance_counter_10_44_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_44_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_11_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_11_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_10_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_10_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_9_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_9_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_8_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_8_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y82",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(11),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_11_rt_810
    );
  uart_controller_instance_brg_instance_counter_10_53_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_53_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y82"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_7_Q_2074,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_Q_2075,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_11_Q,
      O(2) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_10_Q,
      O(1) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_9_Q,
      O(0) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_8_Q,
      S(3) => uart_controller_instance_uart_transmitter_instance_c_conv_11_rt_810,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_conv_10_rt_807,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_conv_9_rt_808,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_conv_8_rt_814
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y82",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(10),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_10_rt_807
    );
  uart_controller_instance_brg_instance_counter_10_54_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_54_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y82",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(9),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_9_rt_808
    );
  uart_controller_instance_brg_instance_counter_10_55_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_55_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y82",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(8),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_8_rt_814
    );
  uart_controller_instance_brg_instance_counter_10_56_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_56_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_15_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_15_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_14_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_14_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_13_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_13_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_12_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_12_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y83",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(15),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_15_rt_832
    );
  uart_controller_instance_brg_instance_counter_10_49_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_49_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y83"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_11_Q_2075,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_Q_2076,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_15_Q,
      O(2) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_14_Q,
      O(1) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_13_Q,
      O(0) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_12_Q,
      S(3) => uart_controller_instance_uart_transmitter_instance_c_conv_15_rt_832,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_conv_14_rt_829,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_conv_13_rt_830,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_conv_12_rt_836
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y83",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(14),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_14_rt_829
    );
  uart_controller_instance_brg_instance_counter_10_50_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_50_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y83",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(13),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_13_rt_830
    );
  uart_controller_instance_brg_instance_counter_10_51_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_51_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y83",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(12),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_12_rt_836
    );
  uart_controller_instance_brg_instance_counter_10_52_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_52_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_19_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_19_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_18_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_18_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_17_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_17_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_16_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_16_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y84",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(19),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_19_rt_854
    );
  uart_controller_instance_brg_instance_counter_10_45_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_45_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y84"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_15_Q_2076,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_Q_2077,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_19_Q,
      O(2) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_18_Q,
      O(1) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_17_Q,
      O(0) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_16_Q,
      S(3) => uart_controller_instance_uart_transmitter_instance_c_conv_19_rt_854,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_conv_18_rt_851,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_conv_17_rt_852,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_conv_16_rt_858
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y84",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(18),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_18_rt_851
    );
  uart_controller_instance_brg_instance_counter_10_46_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_46_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y84",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(17),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_17_rt_852
    );
  uart_controller_instance_brg_instance_counter_10_47_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_47_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y84",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(16),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_16_rt_858
    );
  uart_controller_instance_brg_instance_counter_10_48_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_48_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_brg_instance_counter_2_uart_controller_instance_brg_instance_counter_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_3_Q,
      O => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_3_0
    );
  uart_controller_instance_brg_instance_counter_2_uart_controller_instance_brg_instance_counter_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_2_Q,
      O => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_2_0
    );
  uart_controller_instance_brg_instance_counter_2_uart_controller_instance_brg_instance_counter_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_1_Q,
      O => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_1_0
    );
  uart_controller_instance_brg_instance_counter_2_uart_controller_instance_brg_instance_counter_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_0_Q,
      O => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_0_0
    );
  uart_controller_instance_brg_instance_counter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => uart_controller_instance_brg_instance_counter(3),
      ADR5 => '1',
      O => uart_controller_instance_brg_instance_counter_3_rt_657
    );
  uart_controller_instance_brg_instance_counter_10_115_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_115_D5LUT_O_UNCONNECTED
    );
  ProtoComp46_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X58Y80"
    )
    port map (
      O => ProtoComp46_CYINITGND_0
    );
  uart_controller_instance_brg_instance_counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_brg_instance_counter_2_CLK,
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_2_Q,
      O => uart_controller_instance_brg_instance_counter(2),
      SRST => echo_device_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X58Y80"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp46_CYINITGND_0,
      CO(3) => uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_cy_3_Q_2070,
      CO(2) => NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_3_Q,
      O(2) => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_2_Q,
      O(1) => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_1_Q,
      O(0) => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_0_Q,
      S(3) => uart_controller_instance_brg_instance_counter_3_rt_657,
      S(2) => uart_controller_instance_brg_instance_counter_2_rt_651,
      S(1) => uart_controller_instance_brg_instance_counter_1_rt_673,
      S(0) => uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_lut_0_Q
    );
  uart_controller_instance_brg_instance_counter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_brg_instance_counter(2),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_brg_instance_counter_2_rt_651
    );
  uart_controller_instance_brg_instance_counter_10_116_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_116_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_brg_instance_counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_brg_instance_counter_1_CLK,
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_1_Q,
      O => uart_controller_instance_brg_instance_counter(1),
      SRST => echo_device_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_brg_instance_counter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_brg_instance_counter(1),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_brg_instance_counter_1_rt_673
    );
  uart_controller_instance_brg_instance_counter_10_117_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_117_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_brg_instance_counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_brg_instance_counter_0_CLK,
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_0_Q,
      O => uart_controller_instance_brg_instance_counter(0),
      SRST => echo_device_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_brg_instance_counter(0),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_lut_0_Q
    );
  N1_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_7_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_30CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_30_INV_uart_controller_instance_uart_transmitter_instance_c_brg_30CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_29CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_30_INV_uart_controller_instance_uart_transmitter_instance_c_brg_29CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_28CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_30_INV_uart_controller_instance_uart_transmitter_instance_c_brg_28CLK
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_30_uart_controller_instance_uart_transmitter_instance_c_brg_30_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_Result(31),
      O => uart_controller_instance_uart_transmitter_instance_Result_31_0
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(31),
      O => uart_controller_instance_uart_transmitter_instance_c_brg_31_rt_634
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_30 : X_SFF
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_30_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(30),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(30),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X44Y84"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_27_Q_2066,
      CYINIT => '0',
      CO(3) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_Result(31),
      O(2) => uart_controller_instance_uart_transmitter_instance_Result(30),
      O(1) => uart_controller_instance_uart_transmitter_instance_Result(29),
      O(0) => uart_controller_instance_uart_transmitter_instance_Result(28),
      S(3) => uart_controller_instance_uart_transmitter_instance_c_brg_31_rt_634,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_brg_30_rt_638,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_brg_29_rt_640,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_brg_28_rt_637
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(30),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_30_rt_638
    );
  uart_controller_instance_brg_instance_counter_10_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_29 : X_SFF
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_29_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(29),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(29),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(29),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_29_rt_640
    );
  uart_controller_instance_brg_instance_counter_10_2_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_2_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_28 : X_SFF
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_28_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(28),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(28),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(28),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_28_rt_637
    );
  uart_controller_instance_brg_instance_counter_10_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_3_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_brg_instance_counter_5_uart_controller_instance_brg_instance_counter_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_7_Q,
      O => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_7_0
    );
  uart_controller_instance_brg_instance_counter_5_uart_controller_instance_brg_instance_counter_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_6_Q,
      O => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_6_0
    );
  uart_controller_instance_brg_instance_counter_5_uart_controller_instance_brg_instance_counter_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_5_Q,
      O => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_5_0
    );
  uart_controller_instance_brg_instance_counter_5_uart_controller_instance_brg_instance_counter_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_4_Q,
      O => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_4_0
    );
  uart_controller_instance_brg_instance_counter_10_111_D6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_111_D6LUT_O_UNCONNECTED
    );
  uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X58Y81"
    )
    port map (
      CI => uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_cy_3_Q_2070,
      CYINIT => '0',
      CO(3) => NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_uart_controller_instance_brg_instance_Madd_counter_31_GND_9_o_add_0_OUT_xor_7_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_7_Q,
      O(2) => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_6_Q,
      O(1) => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_5_Q,
      O(0) => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_4_Q,
      S(3) => '0',
      S(2) => uart_controller_instance_brg_instance_counter_6_rt_685,
      S(1) => uart_controller_instance_brg_instance_counter_5_rt_691,
      S(0) => uart_controller_instance_brg_instance_counter_4_rt_687
    );
  uart_controller_instance_brg_instance_counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => uart_controller_instance_brg_instance_counter(6),
      ADR5 => '1',
      O => uart_controller_instance_brg_instance_counter_6_rt_685
    );
  uart_controller_instance_brg_instance_counter_10_112_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_112_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_brg_instance_counter_5 : X_SFF
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_brg_instance_counter_5_CLK,
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_5_Q,
      O => uart_controller_instance_brg_instance_counter(5),
      SRST => echo_device_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_brg_instance_counter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_brg_instance_counter(5),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_brg_instance_counter_5_rt_691
    );
  uart_controller_instance_brg_instance_counter_10_113_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_113_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_brg_instance_counter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_brg_instance_counter(4),
      ADR5 => '1',
      O => uart_controller_instance_brg_instance_counter_4_rt_687
    );
  uart_controller_instance_brg_instance_counter_10_114_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_114_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_27CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_27CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_26CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_26CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_25CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_25CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_24CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_24CLK
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_27 : X_SFF
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_27_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(27),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(27),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_brg(27),
      ADR4 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_27_rt_601
    );
  uart_controller_instance_brg_instance_counter_10_4_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_4_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_26 : X_SFF
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_26_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(26),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(26),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X44Y83"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_23_Q_2065,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_27_Q_2066,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_Result(27),
      O(2) => uart_controller_instance_uart_transmitter_instance_Result(26),
      O(1) => uart_controller_instance_uart_transmitter_instance_Result(25),
      O(0) => uart_controller_instance_uart_transmitter_instance_Result(24),
      S(3) => uart_controller_instance_uart_transmitter_instance_c_brg_27_rt_601,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_brg_26_rt_604,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_brg_25_rt_620,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_brg_24_rt_618
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(26),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_26_rt_604
    );
  uart_controller_instance_brg_instance_counter_10_5_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_5_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_25 : X_SFF
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_25_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(25),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(25),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(25),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_25_rt_620
    );
  uart_controller_instance_brg_instance_counter_10_6_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_6_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_24 : X_SFF
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_24_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(24),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(24),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(24),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_24_rt_618
    );
  uart_controller_instance_brg_instance_counter_10_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_7_A5LUT_O_UNCONNECTED
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_23CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_23CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_22CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_22CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_21CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_21CLK
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_20CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_20CLK
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_23 : X_SFF
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_23_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(23),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(23),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(23),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_23_rt_572
    );
  uart_controller_instance_brg_instance_counter_10_8_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_8_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_22 : X_SFF
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_22_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(22),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(22),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X44Y82"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_19_Q_2064,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_23_Q_2065,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Mcount_c_brg_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_Result(23),
      O(2) => uart_controller_instance_uart_transmitter_instance_Result(22),
      O(1) => uart_controller_instance_uart_transmitter_instance_Result(21),
      O(0) => uart_controller_instance_uart_transmitter_instance_Result(20),
      S(3) => uart_controller_instance_uart_transmitter_instance_c_brg_23_rt_572,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_brg_22_rt_575,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_brg_21_rt_591,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_brg_20_rt_589
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(22),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_22_rt_575
    );
  uart_controller_instance_brg_instance_counter_10_9_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_9_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_21 : X_SFF
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_21_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(21),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(21),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(21),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_21_rt_591
    );
  uart_controller_instance_brg_instance_counter_10_10_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_10_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_20 : X_SFF
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_20_CLK,
      I => uart_controller_instance_uart_transmitter_instance_Result(20),
      O => uart_controller_instance_uart_transmitter_instance_c_brg(20),
      SRST => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_brg(20),
      ADR4 => '1',
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_brg_20_rt_589
    );
  uart_controller_instance_brg_instance_counter_10_11_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X44Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_11_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y87",
      INIT => X"0000000100000001"
    )
    port map (
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(15),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(16),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(17),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(18),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(19),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_3_Q_707
    );
  uart_controller_instance_brg_instance_counter_10_105_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X56Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_105_D5LUT_O_UNCONNECTED
    );
  ProtoComp49_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X56Y87"
    )
    port map (
      O => ProtoComp49_CYINITVCC_1
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X56Y87"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp49_CYINITVCC_1,
      CO(3) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_Q_2072,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lutdi_725,
      O(3) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_3_O_0_UNCONNECTED,
      S(3) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_3_Q_707,
      S(2) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_2_Q_721,
      S(1) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_1_Q_710,
      S(0) => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_0_Q_720
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y87",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(10),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(11),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(12),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(13),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(14),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_2_Q_721
    );
  uart_controller_instance_brg_instance_counter_10_106_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X56Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_106_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y87",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(5),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(6),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(7),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(8),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(9),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_1_Q_710
    );
  uart_controller_instance_brg_instance_counter_10_107_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X56Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_107_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X56Y87",
      INIT => X"0000001000000010"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_c_brg(0),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_brg(1),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_brg(2),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(4),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(3),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lut_0_Q_720
    );
  uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X56Y87",
      INIT => X"0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg(4),
      ADR4 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_lutdi_725
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_27 : X_FF
    generic map(
      LOC => "SLICE_X39Y86",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_27_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_27_dpot_1162,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(27),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_27_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y86",
      INIT => X"F3F30000F3A35000"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR2 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_27_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(27),
      ADR0 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_27_dpot_1162
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_26 : X_FF
    generic map(
      LOC => "SLICE_X39Y86",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_26_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_26_dpot_1182,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(26),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_26_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y86",
      INIT => X"FF330000FA335000"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR3 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_26_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(26),
      ADR0 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_26_dpot_1182
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_25 : X_FF
    generic map(
      LOC => "SLICE_X39Y86",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_25_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_25_dpot_1175,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(25),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_25_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y86",
      INIT => X"FFFA005033330000"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR5 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_25_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(25),
      ADR0 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR3 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_25_dpot_1175
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_24 : X_FF
    generic map(
      LOC => "SLICE_X39Y86",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_24_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_24_dpot_1188,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(24),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_24_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y86",
      INIT => X"FFFC000C55550000"
    )
    port map (
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR5 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_24_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(24),
      ADR3 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_24_dpot_1188
    );
  uart_controller_instance_uart_transmitter_instance_tx_uart_controller_instance_uart_transmitter_instance_tx_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N28_pack_4,
      O => N28
    );
  uart_controller_instance_uart_transmitter_instance_n0106_inv1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y85",
      INIT => X"F5F0F500F5F0F500"
    )
    port map (
      ADR1 => '1',
      ADR2 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_transmitter_instance_tx_1930,
      ADR4 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR5 => '1',
      O => N27
    );
  uart_controller_instance_uart_transmitter_instance_n0106_inv1_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X40Y85",
      INIT => X"F5F0C5C0"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_shift_reg(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_transmitter_instance_tx_1930,
      ADR4 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      O => N28_pack_4
    );
  uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_7 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y85",
      INIT => X"8000000000000000"
    )
    port map (
      ADR2 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_Q,
      ADR1 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_1_1980,
      ADR0 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_2_1981,
      ADR4 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_3_1982,
      ADR5 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_4_1983,
      ADR3 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_5_0,
      O => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o
    );
  uart_controller_instance_uart_transmitter_instance_tx : X_FF
    generic map(
      LOC => "SLICE_X40Y85",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_tx_CLK,
      I => uart_controller_instance_uart_transmitter_instance_tx_rstpot_1260,
      O => uart_controller_instance_uart_transmitter_instance_tx_1930,
      SET => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      RST => GND
    );
  uart_controller_instance_uart_transmitter_instance_tx_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X40Y85",
      INIT => X"FF00ACACFF00ACAC"
    )
    port map (
      ADR5 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_currentState(1),
      ADR0 => N27,
      ADR3 => uart_controller_instance_uart_transmitter_instance_tx_1930,
      ADR1 => N28,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_tx_rstpot_1260
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31 : X_FF
    generic map(
      LOC => "SLICE_X41Y87",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_IN,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_1972,
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_nextState_0 : X_FF
    generic map(
      LOC => "SLICE_X42Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_nextState_0_CLK,
      I => uart_controller_instance_uart_transmitter_instance_currentState_1_X_7_o_wide_mux_20_OUT_0_Q,
      O => uart_controller_instance_uart_transmitter_instance_nextState(0),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_Mmux_currentState_1_X_7_o_wide_mux_20_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y83",
      INIT => X"DD11FF3310101010"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_currentState(1),
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_nextState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR3 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_currentState_1_X_7_o_wide_mux_20_OUT_0_Q
    );
  uart_controller_instance_uart_transmitter_instance_currentState_1 : X_FF
    generic map(
      LOC => "SLICE_X42Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_1_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_1_IN,
      O => uart_controller_instance_uart_transmitter_instance_currentState(1),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_currentState_0 : X_FF
    generic map(
      LOC => "SLICE_X42Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_0_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_0_IN,
      O => uart_controller_instance_uart_transmitter_instance_currentState(0),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y82",
      INIT => X"FF00FF00FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => uart_controller_instance_uart_transmitter_instance_cr_brg_1832,
      ADR5 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      O => uart_controller_instance_uart_transmitter_instance_reg_rst_cr_brg_OR_33_o
    );
  uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y80",
      INIT => X"0000000000000008"
    )
    port map (
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv(1),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv(2),
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(4),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(5),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(3),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(0),
      O => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_Q
    );
  uart_controller_instance_uart_transmitter_instance_cr_brg : X_FF
    generic map(
      LOC => "SLICE_X45Y83",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_cr_brg_CLK,
      I => uart_controller_instance_uart_transmitter_instance_currentState_1_X_7_o_Mux_17_o,
      O => uart_controller_instance_uart_transmitter_instance_cr_brg_1832,
      SET => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      RST => GND
    );
  uart_controller_instance_uart_transmitter_instance_currentState_1_X_7_o_Mux_17_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y83",
      INIT => X"00000000AFAFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => uart_controller_instance_uart_transmitter_instance_currentState(1),
      ADR4 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR0 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_currentState_1_X_7_o_Mux_17_o
    );
  uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y84",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_currentState(1),
      O => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot
    );
  uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y82",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv(7),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(6),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(8),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(9),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv(10),
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(11),
      O => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_1_1980
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_31_LD : X_LATCHE
    generic map(
      LOC => "SLICE_X39Y88",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_LD_CLK,
      I => '0',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_LD_1970,
      SET => GND,
      RST => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_31_P_31 : X_FF
    generic map(
      LOC => "SLICE_X40Y87",
      INIT => '1'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_P_31_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_dpot_1973,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_P_31_1974,
      SET => GND,
      RST => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_31_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X40Y87",
      INIT => X"F3F30050F3A30000"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR2 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(31),
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_0,
      ADR0 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR3 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_dpot_1973
    );
  uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y83",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv(13),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(12),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv(14),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(15),
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(16),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(17),
      O => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_2_1981
    );
  uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y85",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv(19),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv(18),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(20),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(21),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(22),
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(23),
      O => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_3_1982
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_23 : X_FF
    generic map(
      LOC => "SLICE_X39Y85",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_23_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_23_dpot_1127,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(23),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_23_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y85",
      INIT => X"F0F05050F3C05050"
    )
    port map (
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR4 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_23_0,
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv(23),
      ADR1 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_23_dpot_1127
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_22 : X_FF
    generic map(
      LOC => "SLICE_X39Y85",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_22_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_22_dpot_1147,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(22),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_22_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y85",
      INIT => X"FF330000FA335000"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR3 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_22_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(22),
      ADR0 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_22_dpot_1147
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_21 : X_FF
    generic map(
      LOC => "SLICE_X39Y85",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_21_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_21_dpot_1140,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(21),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_21_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y85",
      INIT => X"FF330000FA330A00"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR3 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_21_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(21),
      ADR5 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_21_dpot_1140
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_20 : X_FF
    generic map(
      LOC => "SLICE_X39Y85",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_20_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_20_dpot_1153,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(20),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_20_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y85",
      INIT => X"CCC8FFFB04000400"
    )
    port map (
      ADR4 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR1 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_20_0,
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(20),
      ADR0 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_20_dpot_1153
    );
  uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_5 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y87",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv(25),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv(24),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(26),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(27),
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(28),
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(29),
      O => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_4_1983
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_30 : X_FF
    generic map(
      LOC => "SLICE_X39Y87",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_30_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_30_dpot_1210,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(30),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_30_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y87",
      INIT => X"BBBB0000BBB100A0"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_30_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(30),
      ADR3 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_30_dpot_1210
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_29 : X_FF
    generic map(
      LOC => "SLICE_X39Y87",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_29_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_29_dpot_1194,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(29),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_29_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y87",
      INIT => X"BBBB0000BBB10A00"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_29_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(29),
      ADR5 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_29_dpot_1194
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_28 : X_FF
    generic map(
      LOC => "SLICE_X39Y87",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_28_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_28_dpot_1216,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(28),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_28_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y87",
      INIT => X"DDDDDDD100000C00"
    )
    port map (
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR1 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_28_0,
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(28),
      ADR4 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_28_dpot_1216
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_11 : X_FF
    generic map(
      LOC => "SLICE_X39Y82",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_11_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_11_dpot_1022,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(11),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y82",
      INIT => X"F3F3F3A300005000"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR2 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_11_0,
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(11),
      ADR0 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR4 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_11_dpot_1022
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_10 : X_FF
    generic map(
      LOC => "SLICE_X39Y82",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_10_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_10_dpot_1042,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(10),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y82",
      INIT => X"FF550000FC553000"
    )
    port map (
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR3 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_10_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(10),
      ADR1 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_10_dpot_1042
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_9 : X_FF
    generic map(
      LOC => "SLICE_X39Y82",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_9_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_9_dpot_1035,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(9),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y82",
      INIT => X"FEFE101000FF0000"
    )
    port map (
      ADR3 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR5 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_9_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(9),
      ADR0 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR1 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_9_dpot_1035
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_8 : X_FF
    generic map(
      LOC => "SLICE_X39Y82",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_8_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_8_dpot_1048,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(8),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y82",
      INIT => X"CCCF4444CCC04444"
    )
    port map (
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR4 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_8_0,
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(8),
      ADR3 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_8_dpot_1048
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_7 : X_FF
    generic map(
      LOC => "SLICE_X39Y81",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_7_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_7_dpot_987,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(7),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y81",
      INIT => X"BBBBBBB100000A00"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_7_0,
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(7),
      ADR4 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_7_dpot_987
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_6 : X_FF
    generic map(
      LOC => "SLICE_X39Y81",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_6_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_6_dpot_1007,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(6),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y81",
      INIT => X"AAFF0000A8FD2020"
    )
    port map (
      ADR3 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_6_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(6),
      ADR1 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_6_dpot_1007
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_5 : X_FF
    generic map(
      LOC => "SLICE_X39Y81",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_5_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_5_dpot_1000,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(5),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y81",
      INIT => X"CCC80040FFFB0040"
    )
    port map (
      ADR5 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR1 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_5_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(5),
      ADR3 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR0 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_5_dpot_1000
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_4 : X_FF
    generic map(
      LOC => "SLICE_X39Y81",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_4_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_4_dpot_1013,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(4),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y81",
      INIT => X"A2A2A2A2A2F2A202"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR2 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_4_0,
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(4),
      ADR3 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_4_dpot_1013
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_940,
      I => clk
    );
  ProtoComp54_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_940,
      O => clk_BUFGP_IBUFG_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_5_913,
      O => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_5_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_30_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_30_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_29_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_29_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_28_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_28_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_rt : X_AND2B1L
    generic map(
      LOC => "SLICE_X38Y87"
    )
    port map (
      DI => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_0,
      SRI => '0'
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_311 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y87",
      INIT => X"FA50FA50FA50FA50"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv_31_LD_1970,
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_1972,
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv_31_P_31_1974,
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv(31)
    );
  uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_6 : X_LUT5
    generic map(
      LOC => "SLICE_X38Y87",
      INIT => X"000005AF"
    )
    port map (
      ADR1 => '1',
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(30),
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv_31_LD_1970,
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_1972,
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv_31_P_31_1974,
      O => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o_31_5_913
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y87"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_Q_2079,
      CYINIT => '0',
      CO(3) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_31_Q,
      O(2) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_30_Q,
      O(1) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_29_Q,
      O(0) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_28_Q,
      S(3) => uart_controller_instance_uart_transmitter_instance_c_conv(31),
      S(2) => uart_controller_instance_uart_transmitter_instance_c_conv_30_rt_924,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_conv_29_rt_927,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_conv_28_rt_916
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y87",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(30),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_30_rt_924
    );
  uart_controller_instance_brg_instance_counter_10_34_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_34_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y87",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(29),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_29_rt_927
    );
  uart_controller_instance_brg_instance_counter_10_35_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_35_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y87",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(28),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_28_rt_916
    );
  uart_controller_instance_brg_instance_counter_10_36_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_36_A5LUT_O_UNCONNECTED
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 115 ps
    )
    port map (
      O => rst_IBUF_943,
      I => rst
    );
  ProtoComp54_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 115 ps
    )
    port map (
      I => rst_IBUF_943,
      O => rst_IBUF_0
    );
  tx_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => NlwBufferSignal_tx_OBUF_I,
      O => tx
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_27_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_27_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_26_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_26_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_25_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_25_0
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_24_Q,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_24_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y86",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(27),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_27_rt_898
    );
  uart_controller_instance_brg_instance_counter_10_37_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_37_D5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y86"
    )
    port map (
      CI => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_23_Q_2078,
      CYINIT => '0',
      CO(3) => uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_Q_2079,
      CO(2) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_transmitter_instance_Madd_c_conv_31_GND_7_o_add_11_OUT_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_27_Q,
      O(2) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_26_Q,
      O(1) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_25_Q,
      O(0) => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_24_Q,
      S(3) => uart_controller_instance_uart_transmitter_instance_c_conv_27_rt_898,
      S(2) => uart_controller_instance_uart_transmitter_instance_c_conv_26_rt_895,
      S(1) => uart_controller_instance_uart_transmitter_instance_c_conv_25_rt_896,
      S(0) => uart_controller_instance_uart_transmitter_instance_c_conv_24_rt_902
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y86",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(26),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_26_rt_895
    );
  uart_controller_instance_brg_instance_counter_10_38_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_38_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y86",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(25),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_25_rt_896
    );
  uart_controller_instance_brg_instance_counter_10_39_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_39_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y86",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_c_conv(24),
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_c_conv_24_rt_902
    );
  uart_controller_instance_brg_instance_counter_10_40_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_40_A5LUT_O_UNCONNECTED
    );
  rx_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      O => rx_IBUF_937,
      I => rx
    );
  ProtoComp54_IMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      I => rx_IBUF_937,
      O => rx_IBUF_0
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_3 : X_FF
    generic map(
      LOC => "SLICE_X39Y80",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_3_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_3_dpot_952,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(3),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y80",
      INIT => X"F3F3F3A300005000"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR2 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_3_0,
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(3),
      ADR0 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR4 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_3_dpot_952
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_2 : X_FF
    generic map(
      LOC => "SLICE_X39Y80",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_2_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_2_dpot_972,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(2),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y80",
      INIT => X"FF550000FC553000"
    )
    port map (
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR3 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_2_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(2),
      ADR1 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_2_dpot_972
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_1 : X_FF
    generic map(
      LOC => "SLICE_X39Y80",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_1_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_1_dpot_965,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(1),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y80",
      INIT => X"AAA80020FFFD0020"
    )
    port map (
      ADR5 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_1_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(1),
      ADR1 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR3 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_1_dpot_965
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_0 : X_FF
    generic map(
      LOC => "SLICE_X39Y80",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_0_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_0_dpot_978,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(0),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y80",
      INIT => X"AABB0A0AAA880A0A"
    )
    port map (
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR4 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_0_0,
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(0),
      ADR1 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR3 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_0_dpot_978
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_15 : X_FF
    generic map(
      LOC => "SLICE_X39Y83",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_15_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_15_dpot_1057,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(15),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y83",
      INIT => X"DDDDDDD1000C0000"
    )
    port map (
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR1 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_15_0,
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(15),
      ADR2 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR3 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_15_dpot_1057
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_14 : X_FF
    generic map(
      LOC => "SLICE_X39Y83",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_14_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_14_dpot_1077,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(14),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y83",
      INIT => X"AA00B800AAAAB8AA"
    )
    port map (
      ADR5 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR3 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_14_0,
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(14),
      ADR1 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR4 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_14_dpot_1077
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_13 : X_FF
    generic map(
      LOC => "SLICE_X39Y83",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_13_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_13_dpot_1070,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(13),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y83",
      INIT => X"AAAAAAF022222222"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR5 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_13_0,
      ADR0 => uart_controller_instance_uart_transmitter_instance_c_conv(13),
      ADR3 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR4 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_13_dpot_1070
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_12 : X_FF
    generic map(
      LOC => "SLICE_X39Y83",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_12_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_12_dpot_1083,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(12),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y83",
      INIT => X"AFAF0022AF8D0000"
    )
    port map (
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_12_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(12),
      ADR1 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR3 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_12_dpot_1083
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_19 : X_FF
    generic map(
      LOC => "SLICE_X39Y84",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_19_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_19_dpot_1092,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(19),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_19_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y84",
      INIT => X"DDDD0000DDD10C00"
    )
    port map (
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR1 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_19_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(19),
      ADR2 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_19_dpot_1092
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_18 : X_FF
    generic map(
      LOC => "SLICE_X39Y84",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_18_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_18_dpot_1112,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(18),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_18_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y84",
      INIT => X"FF550000FC553000"
    )
    port map (
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR3 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_18_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(18),
      ADR1 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_18_dpot_1112
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_17 : X_FF
    generic map(
      LOC => "SLICE_X39Y84",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_17_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_17_dpot_1105,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(17),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_17_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y84",
      INIT => X"AAFF0000A8FD2020"
    )
    port map (
      ADR3 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_17_0,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv(17),
      ADR5 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR1 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_17_dpot_1105
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_16 : X_FF
    generic map(
      LOC => "SLICE_X39Y84",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0119_inv1_cepot,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_16_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_conv_16_dpot_1118,
      O => uart_controller_instance_uart_transmitter_instance_c_conv(16),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_conv_16_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y84",
      INIT => X"BBBBBBB1000A0000"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_conv_31_GND_7_o_add_11_OUT_16_0,
      ADR5 => uart_controller_instance_uart_transmitter_instance_c_conv(16),
      ADR3 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_c_conv_16_dpot_1118
    );
  echo_device_instance_w_start : X_SFF
    generic map(
      LOC => "SLICE_X51Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_echo_device_instance_w_start_CLK,
      I => NlwBufferSignal_echo_device_instance_w_start_IN,
      O => echo_device_instance_w_start_1964,
      SRST => echo_device_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_3_CLK,
      I => uart_controller_instance_uart_receiver_instance_shift_reg_3_rstpot_1479,
      O => uart_controller_instance_uart_receiver_instance_shift_reg(3),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => X"FFFFFFEF00000020"
    )
    port map (
      ADR0 => uart_controller_instance_uart_receiver_instance_shift_reg(4),
      ADR1 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR5 => uart_controller_instance_uart_receiver_instance_shift_reg(3),
      ADR4 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR3 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_shift_reg_3_rstpot_1479
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_2_CLK,
      I => uart_controller_instance_uart_receiver_instance_shift_reg_2_rstpot_1497,
      O => uart_controller_instance_uart_receiver_instance_shift_reg(2),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => X"AAAAAAACAAAAAAAA"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_shift_reg(3),
      ADR4 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR5 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR0 => uart_controller_instance_uart_receiver_instance_shift_reg(2),
      ADR3 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR2 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_shift_reg_2_rstpot_1497
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_1_CLK,
      I => uart_controller_instance_uart_receiver_instance_shift_reg_1_rstpot_1491,
      O => uart_controller_instance_uart_receiver_instance_shift_reg(1),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => X"AAAAAAAAAAAAAACA"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_shift_reg(2),
      ADR3 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR0 => uart_controller_instance_uart_receiver_instance_shift_reg(1),
      ADR4 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR5 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_shift_reg_1_rstpot_1491
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_0_CLK,
      I => uart_controller_instance_uart_receiver_instance_shift_reg_0_rstpot_1503,
      O => uart_controller_instance_uart_receiver_instance_shift_reg(0),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => X"FFFF0000FFEF0040"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_shift_reg(1),
      ADR3 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR4 => uart_controller_instance_uart_receiver_instance_shift_reg(0),
      ADR0 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR5 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_shift_reg_0_rstpot_1503
    );
  echo_device_instance_reg_w_start_echo_device_instance_reg_w_start_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => echo_device_instance_nextState_pack_3,
      O => echo_device_instance_nextState_2090
    );
  echo_device_instance_reg_w_start : X_FF
    generic map(
      LOC => "SLICE_X50Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_echo_device_instance_reg_w_start_CLK,
      I => echo_device_instance_GND_10_o_r_done_MUX_116_o,
      O => echo_device_instance_reg_w_start_1965,
      RST => echo_device_instance_rst_inv,
      SET => GND
    );
  echo_device_instance_Mmux_GND_10_o_r_done_MUX_116_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y83",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => uart_controller_instance_uart_receiver_instance_rx_done_1977,
      ADR3 => echo_device_instance_currentState_2089,
      ADR5 => '1',
      O => echo_device_instance_GND_10_o_r_done_MUX_116_o
    );
  echo_device_instance_nextState_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X50Y83",
      INIT => X"00FAAAFA"
    )
    port map (
      ADR1 => '1',
      ADR0 => echo_device_instance_nextState_2090,
      ADR4 => uart_controller_instance_uart_transmitter_instance_tx_done_0,
      ADR2 => uart_controller_instance_uart_receiver_instance_rx_done_1977,
      ADR3 => echo_device_instance_currentState_2089,
      O => echo_device_instance_nextState_rstpot_1432
    );
  echo_device_instance_nextState : X_FF
    generic map(
      LOC => "SLICE_X50Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_echo_device_instance_nextState_CLK,
      I => echo_device_instance_nextState_rstpot_1432,
      O => echo_device_instance_nextState_pack_3,
      RST => echo_device_instance_rst_inv,
      SET => GND
    );
  echo_device_instance_currentState : X_FF
    generic map(
      LOC => "SLICE_X50Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_echo_device_instance_currentState_CLK,
      I => NlwBufferSignal_echo_device_instance_currentState_IN,
      O => echo_device_instance_currentState_2089,
      RST => echo_device_instance_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_shift_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0129_inv,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_7_CLK,
      I => uart_controller_instance_uart_transmitter_instance_n0120(7),
      O => uart_controller_instance_uart_transmitter_instance_shift_reg(7),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_mux711 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => X"FFCCFFCC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => uart_controller_instance_uart_transmitter_instance_shift_reg(7),
      ADR3 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_d_in_7_0,
      O => uart_controller_instance_uart_transmitter_instance_n0120(7)
    );
  uart_controller_instance_uart_transmitter_instance_shift_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0129_inv,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_6_CLK,
      I => uart_controller_instance_uart_transmitter_instance_n0120(6),
      O => uart_controller_instance_uart_transmitter_instance_shift_reg(6),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_mux611 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => X"F0CCF0CCF0CCAACC"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_d_in_6_0,
      ADR0 => uart_controller_instance_uart_transmitter_instance_shift_reg(7),
      ADR3 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_shift_reg(6),
      ADR4 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_n0120(6)
    );
  uart_controller_instance_uart_transmitter_instance_shift_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0129_inv,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_5_CLK,
      I => uart_controller_instance_uart_transmitter_instance_n0120(5),
      O => uart_controller_instance_uart_transmitter_instance_shift_reg(5),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_mux511 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => X"FAFA5050FAD850D8"
    )
    port map (
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_d_in_5_0,
      ADR1 => uart_controller_instance_uart_transmitter_instance_shift_reg(6),
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_transmitter_instance_shift_reg(5),
      ADR5 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR3 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_n0120(5)
    );
  uart_controller_instance_uart_transmitter_instance_shift_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0129_inv,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_4_CLK,
      I => uart_controller_instance_uart_transmitter_instance_n0120(4),
      O => uart_controller_instance_uart_transmitter_instance_shift_reg(4),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_mux411 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => X"FFFACCCC000ACCCC"
    )
    port map (
      ADR1 => uart_controller_instance_uart_transmitter_instance_reg_d_in_4_0,
      ADR0 => uart_controller_instance_uart_transmitter_instance_shift_reg(5),
      ADR4 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR5 => uart_controller_instance_uart_transmitter_instance_shift_reg(4),
      ADR3 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_n0120(4)
    );
  INV_uart_controller_instance_uart_transmitter_instance_c_brg_31CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_31_INV_uart_controller_instance_uart_transmitter_instance_c_brg_31CLK
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_31 : X_FF
    generic map(
      LOC => "SLICE_X46Y82",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_31_CLK,
      I => uart_controller_instance_uart_transmitter_instance_c_brg_31_glue_rst_1324,
      O => uart_controller_instance_uart_transmitter_instance_c_brg(31),
      SET => GND,
      RST => GND
    );
  uart_controller_instance_uart_transmitter_instance_c_brg_31_glue_rst : X_LUT6
    generic map(
      LOC => "SLICE_X46Y82",
      INIT => X"5050000040504000"
    )
    port map (
      ADR0 => uart_controller_instance_uart_transmitter_instance_cr_brg_1832,
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      ADR5 => uart_controller_instance_uart_transmitter_instance_ticked_1834,
      ADR4 => uart_controller_instance_uart_transmitter_instance_c_brg(31),
      ADR3 => uart_controller_instance_brg_instance_s_tick_1826,
      ADR1 => uart_controller_instance_uart_transmitter_instance_Result_31_0,
      O => uart_controller_instance_uart_transmitter_instance_c_brg_31_glue_rst_1324
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_3_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_reg_d_in(7),
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in_7_0
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_3_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_reg_d_in(6),
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in_6_0
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_3_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_reg_d_in(5),
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in_5_0
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_3_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_reg_d_in(4),
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in_4_0
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_3 : X_SFF
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_IN,
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in(3),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  s_dr_out_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => s_dr_out(7),
      O => s_dr_out_7_rt_1448
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_7 : X_SFF
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_7_CLK,
      I => s_dr_out_7_rt_1448,
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in(7),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_2 : X_SFF
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_2_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_2_IN,
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in(2),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  s_dr_out_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => s_dr_out(6),
      O => s_dr_out_6_rt_1440
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_6 : X_SFF
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_6_CLK,
      I => s_dr_out_6_rt_1440,
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in(6),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_1 : X_SFF
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_1_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_1_IN,
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in(1),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  s_dr_out_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => s_dr_out(5),
      O => s_dr_out_5_rt_1452
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_5 : X_SFF
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_5_CLK,
      I => s_dr_out_5_rt_1452,
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in(5),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_0 : X_SFF
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_0_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_0_IN,
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in(0),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_uart_transmitter_instance_reg_rst_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_reg_rst_inv
    );
  s_dr_out_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => s_dr_out(4),
      ADR4 => '1',
      O => s_dr_out_4_rt_1441
    );
  uart_controller_instance_uart_transmitter_instance_reg_d_in_4 : X_SFF
    generic map(
      LOC => "SLICE_X50Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_4_CLK,
      I => s_dr_out_4_rt_1441,
      O => uart_controller_instance_uart_transmitter_instance_reg_d_in(4),
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INV_uart_controller_instance_uart_transmitter_instance_tickedCLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o_INV_uart_controller_instance_uart_transmitter_instance_tickedCLK
    );
  uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o_uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_ticked_pack_1,
      O => uart_controller_instance_uart_transmitter_instance_ticked_1834
    );
  uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y82",
      INIT => X"5500550055005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_ticked_1834,
      ADR3 => uart_controller_instance_brg_instance_s_tick_1826,
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o
    );
  uart_controller_instance_uart_transmitter_instance_ticked_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X47Y82",
      INIT => X"30003000"
    )
    port map (
      ADR0 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_cr_brg_1832,
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      ADR4 => '1',
      ADR3 => uart_controller_instance_brg_instance_s_tick_1826,
      O => uart_controller_instance_uart_transmitter_instance_ticked_rstpot_1345
    );
  uart_controller_instance_uart_transmitter_instance_ticked : X_FF
    generic map(
      LOC => "SLICE_X47Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_ticked_CLK,
      I => uart_controller_instance_uart_transmitter_instance_ticked_rstpot_1345,
      O => uart_controller_instance_uart_transmitter_instance_ticked_pack_1,
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_shift_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0129_inv,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_3_CLK,
      I => uart_controller_instance_uart_transmitter_instance_n0120(3),
      O => uart_controller_instance_uart_transmitter_instance_shift_reg(3),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_mux311 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => X"FCFC3030FCB830B8"
    )
    port map (
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_d_in(3),
      ADR0 => uart_controller_instance_uart_transmitter_instance_shift_reg(4),
      ADR1 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_transmitter_instance_shift_reg(3),
      ADR3 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_n0120(3)
    );
  uart_controller_instance_uart_transmitter_instance_shift_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0129_inv,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_2_CLK,
      I => uart_controller_instance_uart_transmitter_instance_n0120(2),
      O => uart_controller_instance_uart_transmitter_instance_shift_reg(2),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_mux211 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => X"F3F3C0C0F3BBC088"
    )
    port map (
      ADR4 => uart_controller_instance_uart_transmitter_instance_reg_d_in(2),
      ADR0 => uart_controller_instance_uart_transmitter_instance_shift_reg(3),
      ADR1 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_transmitter_instance_shift_reg(2),
      ADR3 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR5 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_n0120(2)
    );
  uart_controller_instance_uart_transmitter_instance_shift_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0129_inv,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_1_CLK,
      I => uart_controller_instance_uart_transmitter_instance_n0120(1),
      O => uart_controller_instance_uart_transmitter_instance_shift_reg(1),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_mux1111 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => X"FFAA5500FDA85D08"
    )
    port map (
      ADR3 => uart_controller_instance_uart_transmitter_instance_reg_d_in(1),
      ADR1 => uart_controller_instance_uart_transmitter_instance_shift_reg(2),
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_transmitter_instance_shift_reg(1),
      ADR5 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_n0120(1)
    );
  uart_controller_instance_uart_transmitter_instance_shift_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_n0129_inv,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_0_CLK,
      I => uart_controller_instance_uart_transmitter_instance_n0120(0),
      O => uart_controller_instance_uart_transmitter_instance_shift_reg(0),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_mux111 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => X"FFAAFCAA00AA0CAA"
    )
    port map (
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_d_in(0),
      ADR1 => uart_controller_instance_uart_transmitter_instance_shift_reg(1),
      ADR3 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR5 => uart_controller_instance_uart_transmitter_instance_shift_reg(0),
      ADR4 => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_conv_31_equal_10_o,
      ADR2 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      O => uart_controller_instance_uart_transmitter_instance_n0120(0)
    );
  uart_controller_instance_uart_transmitter_instance_n0129_inv_uart_controller_instance_uart_transmitter_instance_n0129_inv_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_tx_done_1334,
      O => uart_controller_instance_uart_transmitter_instance_tx_done_0
    );
  uart_controller_instance_uart_transmitter_instance_n0129_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y83",
      INIT => X"3030202030302020"
    )
    port map (
      ADR3 => '1',
      ADR1 => uart_controller_instance_uart_transmitter_instance_currentState(1),
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      ADR0 => uart_controller_instance_uart_transmitter_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      ADR5 => '1',
      O => uart_controller_instance_uart_transmitter_instance_n0129_inv
    );
  uart_controller_instance_uart_transmitter_instance_Mmux_GND_7_o_c_brg_31_MUX_110_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X46Y83",
      INIT => X"00CC00CC"
    )
    port map (
      ADR3 => uart_controller_instance_uart_transmitter_instance_Mcompar_n0023_cy_5_0,
      ADR1 => uart_controller_instance_uart_transmitter_instance_currentState(1),
      ADR2 => '1',
      ADR0 => '1',
      ADR4 => '1',
      O => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_brg_31_MUX_110_o
    );
  uart_controller_instance_uart_transmitter_instance_tx_done : X_FF
    generic map(
      LOC => "SLICE_X46Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_tx_done_CLK,
      I => uart_controller_instance_uart_transmitter_instance_GND_7_o_c_brg_31_MUX_110_o,
      O => uart_controller_instance_uart_transmitter_instance_tx_done_1334,
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_transmitter_instance_reg_tx_start : X_SFF
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_tx_start_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_tx_start_IN,
      O => uart_controller_instance_uart_transmitter_instance_reg_tx_start_1833,
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  s_dr_out_3 : X_FF
    generic map(
      LOC => "SLICE_X51Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_s_dr_out_3_CLK,
      I => NlwBufferSignal_s_dr_out_3_IN,
      O => s_dr_out(3),
      RST => echo_device_instance_rst_inv,
      SET => GND
    );
  s_dr_out_2 : X_FF
    generic map(
      LOC => "SLICE_X51Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_s_dr_out_2_CLK,
      I => NlwBufferSignal_s_dr_out_2_IN,
      O => s_dr_out(2),
      RST => echo_device_instance_rst_inv,
      SET => GND
    );
  s_dr_out_1 : X_FF
    generic map(
      LOC => "SLICE_X51Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_s_dr_out_1_CLK,
      I => NlwBufferSignal_s_dr_out_1_IN,
      O => s_dr_out(1),
      RST => echo_device_instance_rst_inv,
      SET => GND
    );
  s_dr_out_0 : X_FF
    generic map(
      LOC => "SLICE_X51Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_s_dr_out_0_CLK,
      I => NlwBufferSignal_s_dr_out_0_IN,
      O => s_dr_out(0),
      RST => echo_device_instance_rst_inv,
      SET => GND
    );
  N21_N21_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N24,
      O => N24_0
    );
  uart_controller_instance_uart_receiver_instance_n0122_inv111_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y90",
      INIT => X"FF55AA00FF55AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_s3(2),
      ADR3 => uart_controller_instance_uart_receiver_instance_Mcount_c_s32_0,
      ADR5 => '1',
      O => N21
    );
  uart_controller_instance_uart_receiver_instance_n0122_inv111_SW6 : X_LUT5
    generic map(
      LOC => "SLICE_X55Y90",
      INIT => X"D8D8D8D8"
    )
    port map (
      ADR2 => uart_controller_instance_uart_receiver_instance_c_s3(3),
      ADR1 => uart_controller_instance_uart_receiver_instance_Mcount_c_s33_0,
      ADR0 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR3 => '1',
      ADR4 => '1',
      O => N24
    );
  INV_uart_controller_instance_uart_receiver_instance_tickedCLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_31_INV_uart_controller_instance_uart_receiver_instance_tickedCLK
    );
  INV_uart_controller_instance_uart_receiver_instance_c_brg_31CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => uart_controller_instance_uart_receiver_instance_c_brg_31_INV_uart_controller_instance_uart_receiver_instance_c_brg_31CLK
    );
  uart_controller_instance_uart_receiver_instance_c_brg_31_uart_controller_instance_uart_receiver_instance_c_brg_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_ticked_pack_5,
      O => uart_controller_instance_uart_receiver_instance_ticked_1824
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_GND_6_o_Mux_18_o11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y86",
      INIT => X"00000F0F00000F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      ADR4 => uart_controller_instance_uart_receiver_instance_cr_brg_1822,
      ADR5 => '1',
      O => N6
    );
  uart_controller_instance_uart_receiver_instance_ticked_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X56Y86",
      INIT => X"0000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => uart_controller_instance_brg_instance_s_tick_1826,
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      ADR4 => uart_controller_instance_uart_receiver_instance_cr_brg_1822,
      O => uart_controller_instance_uart_receiver_instance_ticked_rstpot_1637
    );
  uart_controller_instance_uart_receiver_instance_ticked : X_FF
    generic map(
      LOC => "SLICE_X56Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_ticked_CLK,
      I => uart_controller_instance_uart_receiver_instance_ticked_rstpot_1637,
      O => uart_controller_instance_uart_receiver_instance_ticked_pack_5,
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_31 : X_FF
    generic map(
      LOC => "SLICE_X56Y86",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_31_CLK,
      I => uart_controller_instance_uart_receiver_instance_c_brg_31_glue_rst_1647,
      O => uart_controller_instance_uart_receiver_instance_c_brg(31),
      SET => GND,
      RST => GND
    );
  uart_controller_instance_uart_receiver_instance_c_brg_31_glue_rst : X_LUT6
    generic map(
      LOC => "SLICE_X56Y86",
      INIT => X"3202330000000000"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_cr_brg_1822,
      ADR5 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      ADR2 => uart_controller_instance_uart_receiver_instance_ticked_1824,
      ADR3 => uart_controller_instance_uart_receiver_instance_c_brg(31),
      ADR4 => uart_controller_instance_brg_instance_s_tick_1826,
      ADR0 => uart_controller_instance_uart_receiver_instance_Result_31_0,
      O => uart_controller_instance_uart_receiver_instance_c_brg_31_glue_rst_1647
    );
  uart_controller_instance_uart_receiver_instance_nextState_0_uart_controller_instance_uart_receiver_instance_nextState_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N13_pack_7,
      O => N13
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy1 : X_MUX2
    generic map(
      LOC => "SLICE_X56Y91"
    )
    port map (
      IA => N30,
      IB => '1',
      O => uart_controller_instance_uart_receiver_instance_currentState_1_nextState_1_wide_mux_19_OUT_0_Q,
      SEL => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_l1_0
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy1_F : X_LUT6
    generic map(
      LOC => "SLICE_X56Y91",
      INIT => X"0E0E0A0FAEAE0A0F"
    )
    port map (
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR0 => uart_controller_instance_uart_receiver_instance_nextState(0),
      ADR4 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR1 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR3 => uart_controller_instance_uart_receiver_instance_reg_rx_1819,
      ADR5 => uart_controller_instance_uart_receiver_instance_c_brg_31_GND_6_o_LessThan_17_o_0,
      O => N30
    );
  uart_controller_instance_uart_receiver_instance_nextState_0 : X_FF
    generic map(
      LOC => "SLICE_X56Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_nextState_0_CLK,
      I => uart_controller_instance_uart_receiver_instance_currentState_1_nextState_1_wide_mux_19_OUT_0_Q,
      O => uart_controller_instance_uart_receiver_instance_nextState(0),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  N1_10_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X56Y91",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N1_10_C6LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT21_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y91",
      INIT => X"3333073733330737"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_nextState(1),
      ADR3 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR4 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR0 => uart_controller_instance_uart_receiver_instance_reg_rx_1819,
      ADR5 => '1',
      O => N12
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT21_SW3 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y91",
      INIT => X"F3F30737"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_nextState(1),
      ADR3 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR4 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR0 => uart_controller_instance_uart_receiver_instance_reg_rx_1819,
      O => N13_pack_7
    );
  uart_controller_instance_uart_receiver_instance_nextState_1 : X_FF
    generic map(
      LOC => "SLICE_X56Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_nextState_1_CLK,
      I => uart_controller_instance_uart_receiver_instance_currentState_1_nextState_1_wide_mux_19_OUT_1_Q,
      O => uart_controller_instance_uart_receiver_instance_nextState(1),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y91",
      INIT => X"30303F3F505F505F"
    )
    port map (
      ADR3 => N10,
      ADR1 => N13,
      ADR0 => N11_0,
      ADR4 => N12,
      ADR2 => uart_controller_instance_uart_receiver_instance_c_brg_31_GND_6_o_LessThan_17_o_0,
      ADR5 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_currentState_1_nextState_1_wide_mux_19_OUT_1_Q
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X52Y87",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_7_CLK,
      I => uart_controller_instance_uart_receiver_instance_shift_reg_7_rstpot_1524,
      O => uart_controller_instance_uart_receiver_instance_shift_reg(7),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X52Y87",
      INIT => X"FFFFFFEF00000020"
    )
    port map (
      ADR0 => uart_controller_instance_uart_receiver_instance_reg_rx_1819,
      ADR1 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR5 => uart_controller_instance_uart_receiver_instance_shift_reg(7),
      ADR4 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR3 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_shift_reg_7_rstpot_1524
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X52Y87",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_6_CLK,
      I => uart_controller_instance_uart_receiver_instance_shift_reg_6_rstpot_1529,
      O => uart_controller_instance_uart_receiver_instance_shift_reg(6),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X52Y87",
      INIT => X"AAAAAAAAAAACAAAA"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_shift_reg(7),
      ADR3 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR0 => uart_controller_instance_uart_receiver_instance_shift_reg(6),
      ADR5 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR2 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_shift_reg_6_rstpot_1529
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X52Y87",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_5_CLK,
      I => uart_controller_instance_uart_receiver_instance_shift_reg_5_rstpot_1545,
      O => uart_controller_instance_uart_receiver_instance_shift_reg(5),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X52Y87",
      INIT => X"F0F0F0F0F0F0E4F0"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_shift_reg(6),
      ADR4 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR2 => uart_controller_instance_uart_receiver_instance_shift_reg(5),
      ADR0 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR5 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_shift_reg_5_rstpot_1545
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X52Y87",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_4_CLK,
      I => uart_controller_instance_uart_receiver_instance_shift_reg_4_rstpot_1548,
      O => uart_controller_instance_uart_receiver_instance_shift_reg(4),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_shift_reg_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X52Y87",
      INIT => X"FFFF0000FEFF0400"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_shift_reg(5),
      ADR0 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR3 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR4 => uart_controller_instance_uart_receiver_instance_shift_reg(4),
      ADR2 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR5 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_shift_reg_4_rstpot_1548
    );
  uart_controller_instance_uart_transmitter_instance_reg_rst : X_FF
    generic map(
      LOC => "SLICE_X55Y72",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_rst_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_rst_IN,
      O => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      SET => GND,
      RST => GND
    );
  reg_rst_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y72",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => reg_rst_1959,
      O => echo_device_instance_rst_inv
    );
  uart_controller_instance_uart_receiver_instance_c_s3_3 : X_FF
    generic map(
      LOC => "SLICE_X54Y90",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_3_CLK,
      I => uart_controller_instance_uart_receiver_instance_c_s3_3_dpot_1560,
      O => uart_controller_instance_uart_receiver_instance_c_s3(3),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_s3_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X54Y90",
      INIT => X"FEFEFE5404AE0404"
    )
    port map (
      ADR0 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR1 => N24_0,
      ADR4 => N25,
      ADR5 => uart_controller_instance_uart_receiver_instance_c_s3(3),
      ADR2 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_0,
      ADR3 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_c_s3_3_dpot_1560
    );
  uart_controller_instance_uart_receiver_instance_n0122_inv111_SW7 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y90",
      INIT => X"CFCFC0C0CFCFC0C4"
    )
    port map (
      ADR1 => uart_controller_instance_uart_receiver_instance_c_s3(3),
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR5 => uart_controller_instance_uart_receiver_instance_c_s3(0),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_s3(1),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_s3(2),
      ADR4 => uart_controller_instance_uart_receiver_instance_Mcount_c_s33_0,
      O => N25
    );
  uart_controller_instance_uart_receiver_instance_c_s3_2 : X_FF
    generic map(
      LOC => "SLICE_X54Y90",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_2_CLK,
      I => uart_controller_instance_uart_receiver_instance_c_s3_2_dpot_1569,
      O => uart_controller_instance_uart_receiver_instance_c_s3(2),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_s3_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X54Y90",
      INIT => X"AAAAFA0AACACFC0C"
    )
    port map (
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR1 => N21,
      ADR3 => N22,
      ADR0 => uart_controller_instance_uart_receiver_instance_c_s3(2),
      ADR5 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_0,
      ADR4 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_c_s3_2_dpot_1569
    );
  uart_controller_instance_uart_receiver_instance_n0122_inv111_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y90",
      INIT => X"CCFFCCFDCC00CC00"
    )
    port map (
      ADR5 => uart_controller_instance_uart_receiver_instance_Mcount_c_s32_0,
      ADR3 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_s3(3),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_s3(0),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_s3(1),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_s3(2),
      O => N22
    );
  tx_616 : X_SFF
    generic map(
      LOC => "SLICE_X52Y108",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tx_CLK,
      I => NlwBufferSignal_tx_IN,
      O => tx_OBUF_1929,
      SSET => echo_device_instance_rst_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  uart_controller_instance_uart_receiver_instance_rx_done : X_SFF
    generic map(
      LOC => "SLICE_X52Y88",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_rx_done_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_rx_done_IN,
      O => uart_controller_instance_uart_receiver_instance_rx_done_1977,
      SRST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  s_dr_out_7 : X_FF
    generic map(
      LOC => "SLICE_X52Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_s_dr_out_7_CLK,
      I => NlwBufferSignal_s_dr_out_7_IN,
      O => s_dr_out(7),
      RST => echo_device_instance_rst_inv,
      SET => GND
    );
  s_dr_out_6 : X_FF
    generic map(
      LOC => "SLICE_X52Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_s_dr_out_6_CLK,
      I => NlwBufferSignal_s_dr_out_6_IN,
      O => s_dr_out(6),
      RST => echo_device_instance_rst_inv,
      SET => GND
    );
  s_dr_out_5 : X_FF
    generic map(
      LOC => "SLICE_X52Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_s_dr_out_5_CLK,
      I => NlwBufferSignal_s_dr_out_5_IN,
      O => s_dr_out(5),
      RST => echo_device_instance_rst_inv,
      SET => GND
    );
  s_dr_out_4 : X_FF
    generic map(
      LOC => "SLICE_X52Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_s_dr_out_4_CLK,
      I => NlwBufferSignal_s_dr_out_4_IN,
      O => s_dr_out(4),
      RST => echo_device_instance_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_currentState_1_uart_controller_instance_uart_receiver_instance_currentState_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_Mcount_c_s33,
      O => uart_controller_instance_uart_receiver_instance_Mcount_c_s33_0
    );
  uart_controller_instance_uart_receiver_instance_currentState_1_uart_controller_instance_uart_receiver_instance_currentState_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_Mcount_c_s32,
      O => uart_controller_instance_uart_receiver_instance_Mcount_c_s32_0
    );
  uart_controller_instance_uart_receiver_instance_currentState_1_uart_controller_instance_uart_receiver_instance_currentState_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_Mcount_c_s31,
      O => uart_controller_instance_uart_receiver_instance_Mcount_c_s31_0
    );
  uart_controller_instance_uart_receiver_instance_currentState_1_uart_controller_instance_uart_receiver_instance_currentState_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_Mcount_c_s3,
      O => uart_controller_instance_uart_receiver_instance_Mcount_c_s3_0
    );
  uart_controller_instance_uart_receiver_instance_currentState_1 : X_FF
    generic map(
      LOC => "SLICE_X54Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_1_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_1_IN,
      O => uart_controller_instance_uart_receiver_instance_currentState(1),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y91",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR3 => '1',
      ADR5 => uart_controller_instance_uart_receiver_instance_c_s3(3),
      O => uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut(3)
    );
  uart_controller_instance_uart_receiver_instance_currentState_0 : X_FF
    generic map(
      LOC => "SLICE_X54Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_0_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_0_IN,
      O => uart_controller_instance_uart_receiver_instance_currentState(0),
      RST => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_s3_xor_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X54Y91"
    )
    port map (
      CI => '0',
      CYINIT => uart_controller_instance_uart_receiver_instance_currentState(1),
      CO(3) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_s3_xor_3_CO_3_UNCONNECTED,
      CO(2) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_s3_xor_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_s3_xor_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_s3_xor_3_CO_0_UNCONNECTED,
      DI(3) => NLW_uart_controller_instance_uart_receiver_instance_Mcount_c_s3_xor_3_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_controller_instance_uart_receiver_instance_Mcount_c_s33,
      O(2) => uart_controller_instance_uart_receiver_instance_Mcount_c_s32,
      O(1) => uart_controller_instance_uart_receiver_instance_Mcount_c_s31,
      O(0) => uart_controller_instance_uart_receiver_instance_Mcount_c_s3,
      S(3) => uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut(3),
      S(2) => uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut(2),
      S(1) => uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut(1),
      S(0) => uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut(0)
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y91",
      INIT => X"8888888888888888"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => uart_controller_instance_uart_receiver_instance_c_s3(2),
      ADR1 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut(2)
    );
  uart_controller_instance_brg_instance_counter_10_108_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X54Y91",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_108_C5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y91",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_c_s3(1),
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut(1)
    );
  uart_controller_instance_brg_instance_counter_10_109_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X54Y91",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_109_B5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y91",
      INIT => X"CC00CC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => uart_controller_instance_uart_receiver_instance_c_s3(0),
      ADR1 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_Mcount_c_s3_lut(0)
    );
  uart_controller_instance_brg_instance_counter_10_110_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X54Y91",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_uart_controller_instance_brg_instance_counter_10_110_A5LUT_O_UNCONNECTED
    );
  uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o_uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_brg_instance_s_tick_pack_2,
      O => uart_controller_instance_brg_instance_s_tick_1826
    );
  uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y81",
      INIT => X"0000CCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_ticked_1824,
      ADR1 => uart_controller_instance_brg_instance_s_tick_1826,
      ADR5 => '1',
      O => uart_controller_instance_uart_receiver_instance_tick_ticked_AND_9_o
    );
  uart_controller_instance_brg_instance_s_tick_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X57Y81",
      INIT => X"33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => uart_controller_instance_brg_instance_GND_9_o_counter_31_equal_2_o,
      ADR2 => '1',
      ADR1 => uart_controller_instance_brg_instance_s_tick_1826,
      O => uart_controller_instance_brg_instance_s_tick_rstpot_1733
    );
  uart_controller_instance_brg_instance_s_tick : X_SFF
    generic map(
      LOC => "SLICE_X57Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_brg_instance_s_tick_CLK,
      I => uart_controller_instance_brg_instance_s_tick_rstpot_1733,
      O => uart_controller_instance_brg_instance_s_tick_pack_2,
      SRST => echo_device_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_brg_instance_GND_9_o_counter_31_equal_2_o_31_Q : X_LUT6
    generic map(
      LOC => "SLICE_X57Y81",
      INIT => X"0000000800000000"
    )
    port map (
      ADR3 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_7_0,
      ADR1 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_6_0,
      ADR2 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_5_0,
      ADR5 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_4_0,
      ADR0 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_3_0,
      ADR4 => N4,
      O => uart_controller_instance_brg_instance_GND_9_o_counter_31_equal_2_o
    );
  uart_controller_instance_uart_receiver_instance_c_s3_1 : X_FF
    generic map(
      LOC => "SLICE_X56Y92",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_1_CLK,
      I => uart_controller_instance_uart_receiver_instance_c_s3_1_dpot_1685,
      O => uart_controller_instance_uart_receiver_instance_c_s3(1),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_s3_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y92",
      INIT => X"FF55AA00FC0CFC0C"
    )
    port map (
      ADR5 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR1 => N18_0,
      ADR4 => N19,
      ADR3 => uart_controller_instance_uart_receiver_instance_c_s3(1),
      ADR2 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_0,
      ADR0 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_c_s3_1_dpot_1685
    );
  uart_controller_instance_uart_receiver_instance_n0122_inv111_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y92",
      INIT => X"CFCEC0C0CFCFC0C0"
    )
    port map (
      ADR4 => uart_controller_instance_uart_receiver_instance_Mcount_c_s31_0,
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR5 => uart_controller_instance_uart_receiver_instance_c_s3(3),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_s3(0),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_s3(2),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_s3(1),
      O => N19
    );
  uart_controller_instance_uart_receiver_instance_c_s3_0 : X_FF
    generic map(
      LOC => "SLICE_X56Y92",
      INIT => '0'
    )
    port map (
      CE => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_0_CLK,
      I => uart_controller_instance_uart_receiver_instance_c_s3_0_dpot_1688,
      O => uart_controller_instance_uart_receiver_instance_c_s3(0),
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_c_s3_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y92",
      INIT => X"FFCF3000FACA3A0A"
    )
    port map (
      ADR2 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR0 => N15,
      ADR3 => N16,
      ADR4 => uart_controller_instance_uart_receiver_instance_c_s3(0),
      ADR5 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_0,
      ADR1 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_c_s3_0_dpot_1688
    );
  uart_controller_instance_uart_receiver_instance_n0122_inv111_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y92",
      INIT => X"CCCCCCCCFF00EF00"
    )
    port map (
      ADR3 => uart_controller_instance_uart_receiver_instance_Mcount_c_s3_0,
      ADR5 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_s3(3),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_s3(1),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_s3(2),
      ADR1 => uart_controller_instance_uart_receiver_instance_c_s3(0),
      O => N16
    );
  uart_controller_instance_uart_receiver_instance_reg_rx_uart_controller_instance_uart_receiver_instance_reg_rx_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y93",
      INIT => X"0A150A1F0A150A1F"
    )
    port map (
      ADR3 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR0 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR2 => uart_controller_instance_uart_receiver_instance_nextState(1),
      ADR1 => uart_controller_instance_uart_receiver_instance_reg_rx_1819,
      ADR4 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR5 => '1',
      O => N10
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y93",
      INIT => X"AA15AA1F"
    )
    port map (
      ADR3 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR0 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR2 => uart_controller_instance_uart_receiver_instance_nextState(1),
      ADR1 => uart_controller_instance_uart_receiver_instance_reg_rx_1819,
      ADR4 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      O => N11
    );
  uart_controller_instance_uart_receiver_instance_reg_rx : X_SFF
    generic map(
      LOC => "SLICE_X56Y93",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_reg_rx_CLK,
      I => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_reg_rx_IN,
      O => uart_controller_instance_uart_receiver_instance_reg_rx_1819,
      SSET => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y93",
      INIT => X"0005000500000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => uart_controller_instance_uart_receiver_instance_c_s3(3),
      ADR3 => uart_controller_instance_uart_receiver_instance_c_s3(2),
      ADR2 => uart_controller_instance_uart_receiver_instance_c_s3(1),
      ADR0 => uart_controller_instance_uart_receiver_instance_c_s3(0),
      O => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o
    );
  reg_rst : X_FF
    generic map(
      LOC => "SLICE_X57Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_reg_rst_CLK,
      I => NlwBufferSignal_reg_rst_IN,
      O => reg_rst_1959,
      RST => GND,
      SET => GND
    );
  reg_rx : X_SFF
    generic map(
      LOC => "SLICE_X57Y108",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_reg_rx_CLK,
      I => NlwBufferSignal_reg_rx_IN,
      O => reg_rx_1963,
      SSET => echo_device_instance_rst_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  uart_controller_instance_brg_instance_counter_6 : X_SFF
    generic map(
      LOC => "SLICE_X59Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_brg_instance_counter_6_CLK,
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_mux_2_OUT_6_Q,
      O => uart_controller_instance_brg_instance_counter(6),
      SRST => echo_device_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_brg_instance_Mmux_counter_31_GND_9_o_mux_2_OUT291 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y81",
      INIT => X"F0F0F0F0F0D0F0F0"
    )
    port map (
      ADR2 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_6_0,
      ADR0 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_4_0,
      ADR3 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_7_0,
      ADR4 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_3_0,
      ADR5 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_5_0,
      ADR1 => N4,
      O => uart_controller_instance_brg_instance_counter_31_GND_9_o_mux_2_OUT_6_Q
    );
  uart_controller_instance_brg_instance_counter_4 : X_SFF
    generic map(
      LOC => "SLICE_X59Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_brg_instance_counter_4_CLK,
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_mux_2_OUT_4_Q,
      O => uart_controller_instance_brg_instance_counter(4),
      SRST => echo_device_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_brg_instance_Mmux_counter_31_GND_9_o_mux_2_OUT271 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y81",
      INIT => X"FFFF0000FFBF0000"
    )
    port map (
      ADR4 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_4_0,
      ADR2 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_6_0,
      ADR0 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_5_0,
      ADR1 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_3_0,
      ADR5 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_7_0,
      ADR3 => N4,
      O => uart_controller_instance_brg_instance_counter_31_GND_9_o_mux_2_OUT_4_Q
    );
  uart_controller_instance_brg_instance_GND_9_o_counter_31_equal_2_o_31_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y81",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_2_0,
      ADR4 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_1_0,
      ADR3 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_0_0,
      O => N4
    );
  uart_controller_instance_brg_instance_counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X59Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_brg_instance_counter_3_CLK,
      I => uart_controller_instance_brg_instance_counter_31_GND_9_o_mux_2_OUT_3_Q,
      O => uart_controller_instance_brg_instance_counter(3),
      SRST => echo_device_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_controller_instance_brg_instance_Mmux_counter_31_GND_9_o_mux_2_OUT261 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y81",
      INIT => X"F0F0E0F0F0F0F0F0"
    )
    port map (
      ADR2 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_3_0,
      ADR5 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_6_0,
      ADR1 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_5_0,
      ADR3 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_4_0,
      ADR0 => uart_controller_instance_brg_instance_counter_31_GND_9_o_add_0_OUT_7_0,
      ADR4 => N4,
      O => uart_controller_instance_brg_instance_counter_31_GND_9_o_mux_2_OUT_3_Q
    );
  N15_N15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  uart_controller_instance_uart_receiver_instance_n0122_inv111_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y92",
      INIT => X"BBBB8888BBBB8888"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR4 => uart_controller_instance_uart_receiver_instance_c_s3(0),
      ADR0 => uart_controller_instance_uart_receiver_instance_Mcount_c_s3_0,
      ADR5 => '1',
      O => N15
    );
  uart_controller_instance_uart_receiver_instance_n0122_inv111_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X57Y92",
      INIT => X"FC30FC30"
    )
    port map (
      ADR2 => uart_controller_instance_uart_receiver_instance_c_s3(1),
      ADR3 => uart_controller_instance_uart_receiver_instance_Mcount_c_s31_0,
      ADR1 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR0 => '1',
      ADR4 => '1',
      O => N18
    );
  uart_controller_instance_uart_receiver_instance_cr_brg_uart_controller_instance_uart_receiver_instance_cr_brg_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N8_pack_4,
      O => N8
    );
  uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y86",
      INIT => X"FFFF0F0FFFFF0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => uart_controller_instance_uart_receiver_instance_cr_brg_1822,
      ADR2 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      O => uart_controller_instance_uart_receiver_instance_reg_rst_cr_brg_OR_1_o
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_GND_6_o_Mux_18_o11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y86",
      INIT => X"BBBB1111BBBB1111"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      ADR1 => uart_controller_instance_uart_receiver_instance_cr_brg_1822,
      ADR4 => uart_controller_instance_uart_receiver_instance_currentState(0),
      ADR5 => '1',
      O => N7
    );
  uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_GND_6_o_Mux_18_o11_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X57Y86",
      INIT => X"BBBB1B1B"
    )
    port map (
      ADR3 => '1',
      ADR2 => uart_controller_instance_uart_receiver_instance_GND_6_o_c_s3_31_equal_9_o,
      ADR0 => uart_controller_instance_uart_transmitter_instance_reg_rst_1823,
      ADR1 => uart_controller_instance_uart_receiver_instance_cr_brg_1822,
      ADR4 => uart_controller_instance_uart_receiver_instance_currentState(0),
      O => N8_pack_4
    );
  uart_controller_instance_uart_receiver_instance_cr_brg : X_FF
    generic map(
      LOC => "SLICE_X57Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_cr_brg_CLK,
      I => uart_controller_instance_uart_receiver_instance_cr_brg_rstpot_1758,
      O => uart_controller_instance_uart_receiver_instance_cr_brg_1822,
      RST => GND,
      SET => GND
    );
  uart_controller_instance_uart_receiver_instance_cr_brg_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X57Y86",
      INIT => X"0A005FFF0A335F33"
    )
    port map (
      ADR3 => uart_controller_instance_uart_receiver_instance_currentState(1),
      ADR1 => N6,
      ADR4 => N7,
      ADR2 => N8,
      ADR5 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_6_o_cy_6_0,
      ADR0 => uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_0,
      O => uart_controller_instance_uart_receiver_instance_cr_brg_rstpot_1758
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_reg_rx_done_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_reg_rx_done_CLK
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg(31),
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_Mmux_currentState_1_nextState_1_wide_mux_19_OUT1_cy_DI_2_Q
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_3CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_3_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_2CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_2_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_1CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_3_INV_uart_controller_instance_uart_receiver_instance_c_brg_0CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_0_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_nextState_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_nextState_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_7CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_7_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_6CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_6_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_5CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_5_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_7_INV_uart_controller_instance_uart_receiver_instance_c_brg_4CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_4_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_11CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_11_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_10CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_10_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_9CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_9_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_11_INV_uart_controller_instance_uart_receiver_instance_c_brg_8CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_8_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_15CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_15_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_14CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_14_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_13CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_13_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_15_INV_uart_controller_instance_uart_receiver_instance_c_brg_12CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_12_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_30_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_30_INV_uart_controller_instance_uart_receiver_instance_c_brg_30CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_30_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_29_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_30_INV_uart_controller_instance_uart_receiver_instance_c_brg_29CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_29_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_28_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_30_INV_uart_controller_instance_uart_receiver_instance_c_brg_28CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_28_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_27_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_27CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_27_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_26_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_26CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_26_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_25_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_25CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_25_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_24_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_27_INV_uart_controller_instance_uart_receiver_instance_c_brg_24CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_24_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_19_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_19CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_19_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_18CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_18_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_17CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_17_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_19_INV_uart_controller_instance_uart_receiver_instance_c_brg_16CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_16_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_23_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_23CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_23_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_22_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_22CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_22_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_21_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_21CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_21_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_20_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_23_INV_uart_controller_instance_uart_receiver_instance_c_brg_20CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_20_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_3CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_3_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_2CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_2_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_1CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_3_INV_uart_controller_instance_uart_transmitter_instance_c_brg_0CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_0_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_19_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_19CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_19_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_18CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_18_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_17CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_17_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_19_INV_uart_controller_instance_uart_transmitter_instance_c_brg_16CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_16_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_15CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_15_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_14CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_14_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_13CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_13_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_15_INV_uart_controller_instance_uart_transmitter_instance_c_brg_12CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_12_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_11CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_11_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_10CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_10_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_9CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_9_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_11_INV_uart_controller_instance_uart_transmitter_instance_c_brg_8CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_8_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_7CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_7_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_6CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_6_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_5CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_5_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_7_INV_uart_controller_instance_uart_transmitter_instance_c_brg_4CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_4_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg(31),
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_Mcompar_c_brg_31_GND_6_o_LessThan_10_o_cy_6_DI_2_Q
    );
  NlwBufferBlock_uart_controller_instance_brg_instance_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_brg_instance_counter_2_CLK
    );
  NlwBufferBlock_uart_controller_instance_brg_instance_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_brg_instance_counter_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_brg_instance_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_brg_instance_counter_0_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_30_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_30_INV_uart_controller_instance_uart_transmitter_instance_c_brg_30CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_30_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_29_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_30_INV_uart_controller_instance_uart_transmitter_instance_c_brg_29CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_29_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_28_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_30_INV_uart_controller_instance_uart_transmitter_instance_c_brg_28CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_28_CLK
    );
  NlwBufferBlock_uart_controller_instance_brg_instance_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_brg_instance_counter_5_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_27_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_27CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_27_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_26_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_26CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_26_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_25_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_25CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_25_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_24_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_27_INV_uart_controller_instance_uart_transmitter_instance_c_brg_24CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_24_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_23_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_23CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_23_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_22_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_22CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_22_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_21_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_21CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_21_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_20_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_23_INV_uart_controller_instance_uart_transmitter_instance_c_brg_20CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_20_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_27_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_27_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_26_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_26_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_25_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_25_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_24_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_24_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_tx_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_tx_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_conv_31_dpot_1973,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_C_31_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_nextState_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_nextState_0_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_currentState_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_currentState_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_nextState(1),
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_1_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_currentState_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_0_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_currentState_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_nextState(0),
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_currentState_0_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_cr_brg_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_cr_brg_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_31_LD_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_reg_rst_inv,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_LD_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_31_P_31_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_31_P_31_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_23_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_23_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_22_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_22_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_21_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_21_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_20_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_20_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_30_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_30_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_29_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_29_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_28_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_28_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_11_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_10_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_9_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_8_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_7_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_6_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_5_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_4_CLK
    );
  NlwBufferBlock_tx_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tx_OBUF_1929,
      O => NlwBufferSignal_tx_OBUF_I
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_3_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_2_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_0_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_15_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_14_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_13_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_12_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_19_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_19_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_18_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_17_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_conv_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_conv_16_CLK
    );
  NlwBufferBlock_echo_device_instance_w_start_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_echo_device_instance_w_start_CLK
    );
  NlwBufferBlock_echo_device_instance_w_start_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => echo_device_instance_reg_w_start_1965,
      O => NlwBufferSignal_echo_device_instance_w_start_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_shift_reg_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_3_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_shift_reg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_2_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_shift_reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_shift_reg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_0_CLK
    );
  NlwBufferBlock_echo_device_instance_reg_w_start_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_echo_device_instance_reg_w_start_CLK
    );
  NlwBufferBlock_echo_device_instance_nextState_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_echo_device_instance_nextState_CLK
    );
  NlwBufferBlock_echo_device_instance_currentState_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_echo_device_instance_currentState_CLK
    );
  NlwBufferBlock_echo_device_instance_currentState_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => echo_device_instance_nextState_2090,
      O => NlwBufferSignal_echo_device_instance_currentState_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_shift_reg_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_7_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_shift_reg_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_6_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_shift_reg_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_5_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_shift_reg_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_4_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_c_brg_31_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_c_brg_31_INV_uart_controller_instance_uart_transmitter_instance_c_brg_31CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_c_brg_31_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => s_dr_out(3),
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_3_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_7_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_2_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => s_dr_out(2),
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_2_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_6_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => s_dr_out(1),
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_1_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_5_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_0_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => s_dr_out(0),
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_0_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_d_in_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_d_in_4_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_ticked_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_tick_ticked_AND_15_o_INV_uart_controller_instance_uart_transmitter_instance_tickedCLK,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_ticked_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_shift_reg_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_3_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_shift_reg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_2_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_shift_reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_shift_reg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_shift_reg_0_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_tx_done_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_tx_done_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_tx_start_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_tx_start_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_tx_start_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => echo_device_instance_w_start_1964,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_tx_start_IN
    );
  NlwBufferBlock_s_dr_out_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_s_dr_out_3_CLK
    );
  NlwBufferBlock_s_dr_out_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_shift_reg(3),
      O => NlwBufferSignal_s_dr_out_3_IN
    );
  NlwBufferBlock_s_dr_out_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_s_dr_out_2_CLK
    );
  NlwBufferBlock_s_dr_out_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_shift_reg(2),
      O => NlwBufferSignal_s_dr_out_2_IN
    );
  NlwBufferBlock_s_dr_out_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_s_dr_out_1_CLK
    );
  NlwBufferBlock_s_dr_out_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_shift_reg(1),
      O => NlwBufferSignal_s_dr_out_1_IN
    );
  NlwBufferBlock_s_dr_out_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_s_dr_out_0_CLK
    );
  NlwBufferBlock_s_dr_out_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_shift_reg(0),
      O => NlwBufferSignal_s_dr_out_0_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_ticked_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_31_INV_uart_controller_instance_uart_receiver_instance_tickedCLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_ticked_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_brg_31_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_c_brg_31_INV_uart_controller_instance_uart_receiver_instance_c_brg_31CLK,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_brg_31_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_nextState_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_nextState_0_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_nextState_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_nextState_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_shift_reg_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_7_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_shift_reg_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_6_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_shift_reg_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_5_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_shift_reg_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_shift_reg_4_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_rst_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_rst_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_transmitter_instance_reg_rst_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => reg_rst_1959,
      O => NlwBufferSignal_uart_controller_instance_uart_transmitter_instance_reg_rst_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_s3_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_3_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_s3_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_2_CLK
    );
  NlwBufferBlock_tx_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_tx_CLK
    );
  NlwBufferBlock_tx_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_transmitter_instance_tx_1930,
      O => NlwBufferSignal_tx_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_rx_done_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_rx_done_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_rx_done_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_reg_rx_done_1978,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_rx_done_IN
    );
  NlwBufferBlock_s_dr_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_s_dr_out_7_CLK
    );
  NlwBufferBlock_s_dr_out_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_shift_reg(7),
      O => NlwBufferSignal_s_dr_out_7_IN
    );
  NlwBufferBlock_s_dr_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_s_dr_out_6_CLK
    );
  NlwBufferBlock_s_dr_out_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_shift_reg(6),
      O => NlwBufferSignal_s_dr_out_6_IN
    );
  NlwBufferBlock_s_dr_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_s_dr_out_5_CLK
    );
  NlwBufferBlock_s_dr_out_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_shift_reg(5),
      O => NlwBufferSignal_s_dr_out_5_IN
    );
  NlwBufferBlock_s_dr_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_s_dr_out_4_CLK
    );
  NlwBufferBlock_s_dr_out_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_shift_reg(4),
      O => NlwBufferSignal_s_dr_out_4_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_currentState_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_currentState_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_nextState(1),
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_1_IN
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_currentState_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_0_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_currentState_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_controller_instance_uart_receiver_instance_nextState(0),
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_currentState_0_IN
    );
  NlwBufferBlock_uart_controller_instance_brg_instance_s_tick_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_brg_instance_s_tick_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_s3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_1_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_c_s3_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_c_s3_0_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_reg_rx_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_reg_rx_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_reg_rx_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => reg_rx_1963,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_reg_rx_IN
    );
  NlwBufferBlock_reg_rst_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_rst_CLK
    );
  NlwBufferBlock_reg_rst_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => rst_IBUF_0,
      O => NlwBufferSignal_reg_rst_IN
    );
  NlwBufferBlock_reg_rx_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_rx_CLK
    );
  NlwBufferBlock_reg_rx_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => rx_IBUF_0,
      O => NlwBufferSignal_reg_rx_IN
    );
  NlwBufferBlock_uart_controller_instance_brg_instance_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_brg_instance_counter_6_CLK
    );
  NlwBufferBlock_uart_controller_instance_brg_instance_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_brg_instance_counter_4_CLK
    );
  NlwBufferBlock_uart_controller_instance_brg_instance_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_brg_instance_counter_3_CLK
    );
  NlwBufferBlock_uart_controller_instance_uart_receiver_instance_cr_brg_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_controller_instance_uart_receiver_instance_cr_brg_CLK
    );
  NlwBlock_uart_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_uart_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

