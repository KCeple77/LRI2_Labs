--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: uart_top_timesim.vhd
-- /___/   /\     Timestamp: Wed Mar 24 23:23:59 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2 -pcf uart_top.pcf -rpw 100 -tpw 0 -ar Structure -tm uart_top -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim uart_top.ncd uart_top_timesim.vhd 
-- Device	: 6slx45fgg676-2 (PRODUCTION 1.23 2013-10-13)
-- Input file	: uart_top.ncd
-- Output file	: E:\FaksHub\2020_2021\2.Semester_2020_2021\LRI2\Labs\Lab1a\Lab1a\netgen\par\uart_top_timesim.vhd
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
    tx : out STD_LOGIC; 
    led : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end uart_top;

architecture Structure of uart_top is
  signal uart_receiver_instance_currentState_2_GND_6_o_Mux_20_o : STD_LOGIC; 
  signal uart_receiver_instance_nextState_0_824 : STD_LOGIC; 
  signal uart_receiver_instance_nextState_2_827 : STD_LOGIC; 
  signal uart_receiver_instance_nextState_1_829 : STD_LOGIC; 
  signal tx_OBUF_830 : STD_LOGIC; 
  signal uart_receiver_instance_let_15_832 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_5_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_3_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_6_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_4_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_Mcompar_n0002_cy_3_Q_838 : STD_LOGIC; 
  signal baud_rate_generator_instance_Mcompar_n0002_cy_5_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_Result_0_0 : STD_LOGIC; 
  signal uart_receiver_instance_rst_inv : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal baud_rate_generator_instance_s_tick_BUFG_847 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_s3_cy_3_Q_848 : STD_LOGIC; 
  signal uart_receiver_instance_rst_cr_s3_OR_1_o : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_s3_cy_7_Q_854 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_s3_cy_11_Q_859 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_s3_cy_15_Q_864 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_s3_cy_19_Q_869 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_s3_cy_23_Q_874 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_s3_cy_27_Q_879 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_brg_cy_3_Q_888 : STD_LOGIC; 
  signal uart_receiver_instance_rst_cr_brg_OR_2_o : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_brg_cy_7_Q_894 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_brg_cy_11_Q_899 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_brg_cy_15_Q_904 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_brg_cy_19_Q_909 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_brg_cy_23_Q_914 : STD_LOGIC; 
  signal uart_receiver_instance_Mcount_c_brg_cy_27_Q_919 : STD_LOGIC; 
  signal baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_Q_927 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_Q_932 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_Result_1_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_Result_2_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_Result_3_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_Result_4_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_Result_5_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_Result_6_0 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_0 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_Q_942 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_0 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal rx_IBUF_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_s_tick_947 : STD_LOGIC; 
  signal uart_receiver_instance_let_s3_948 : STD_LOGIC; 
  signal uart_receiver_instance_let_7_949 : STD_LOGIC; 
  signal uart_receiver_instance_rst_cr_brg_OR_2_o1_950 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal uart_receiver_instance_Mram_n0081 : STD_LOGIC; 
  signal uart_receiver_instance_Mram_n00811 : STD_LOGIC; 
  signal baud_rate_generator_instance_Mcompar_n0002_lutdi_9 : STD_LOGIC; 
  signal ProtoComp2_CYINITGND_0 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_14_rt_353 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_13_rt_350 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_12_rt_348 : STD_LOGIC; 
  signal uart_receiver_instance_Result_13_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_12_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_14_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_15_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_15_rt_331 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_18_rt_381 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_17_rt_378 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_16_rt_376 : STD_LOGIC; 
  signal uart_receiver_instance_Result_17_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_16_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_18_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_19_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_19_rt_359 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_22_rt_409 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_21_rt_406 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_20_rt_404 : STD_LOGIC; 
  signal uart_receiver_instance_Result_21_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_20_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_22_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_23_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_23_rt_387 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_26_rt_437 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_25_rt_434 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_24_rt_432 : STD_LOGIC; 
  signal uart_receiver_instance_Result_25_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_24_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_26_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_27_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_27_rt_415 : STD_LOGIC; 
  signal uart_receiver_instance_Result_28_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_30_rt_457 : STD_LOGIC; 
  signal uart_receiver_instance_Result_30_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_29_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_28_rt_451 : STD_LOGIC; 
  signal uart_receiver_instance_Result_31_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_29_rt_445 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_31_rt_442 : STD_LOGIC; 
  signal baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_lut_0_Q : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_2_rt_475 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_1_rt_472 : STD_LOGIC; 
  signal ProtoComp7_CYINITGND_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_3_rt_470 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_3_Q : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_4_Q_545 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_Q_540 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi4_538 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_2_Q_613 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_0_Q_606 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi1_605 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi_602 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi2_597 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_1_Q_596 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_3_Q_593 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_Q_591 : STD_LOGIC; 
  signal ProtoComp13_CYINITVCC_1 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi3_584 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_6_Q : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_5_Q : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_4_Q : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_5_rt_493 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_4_rt_492 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_6_rt_491 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_Q : STD_LOGIC; 
  signal baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_counter_1_rt : STD_LOGIC; 
  signal baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_counter_3_rt : STD_LOGIC; 
  signal baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_counter_2_rt : STD_LOGIC; 
  signal ProtoComp11_CYINITGND_0 : STD_LOGIC; 
  signal baud_rate_generator_instance_Result_6_baud_rate_generator_instance_counter_5_rt : STD_LOGIC; 
  signal baud_rate_generator_instance_Result_6_baud_rate_generator_instance_counter_4_rt : STD_LOGIC; 
  signal baud_rate_generator_instance_Result_6_baud_rate_generator_instance_counter_6_rt : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi_528 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_0_Q_526 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi2_521 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi3_517 : STD_LOGIC; 
  signal ProtoComp9_CYINITVCC_1_516 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi1_512 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_1_Q_511 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_2_Q_508 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_3_Q_504 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_14_rt_132 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_13_rt_129 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_12_rt_127 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_15_rt_110 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_10_rt_104 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_9_rt_101 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_8_rt_99 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_11_rt_82 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_22_rt_188 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_21_rt_185 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_20_rt_183 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_23_rt_166 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_18_rt_160 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_17_rt_157 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_16_rt_155 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_19_rt_138 : STD_LOGIC; 
  signal uart_receiver_instance_Mram_n0081_pack_3 : STD_LOGIC; 
  signal uart_receiver_instance_Mram_n00812 : STD_LOGIC; 
  signal uart_receiver_instance_Mram_n00811_pack_4 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_1_rstpot_779 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_3_rstpot_778 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_2_rstpot_773 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_4_rstpot_768 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_5_rstpot_791 : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_6_rstpot_785 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_31_GND_5_o_LessThan_6_o : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_31_GND_5_o_LessThan_7_o : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_0_rstpot_lut_20 : STD_LOGIC; 
  signal baud_rate_generator_instance_Mcompar_n0002_cy_5_Q : STD_LOGIC; 
  signal baud_rate_generator_instance_counter_0_rstpot : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_2_rt_45 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_1_rt_43 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_3_rt_34 : STD_LOGIC; 
  signal ProtoComp4_CYINITGND_0 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_6_rt_76 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_5_rt_73 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_4_rt_71 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_7_rt_54 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_10_rt_325 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_9_rt_322 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_8_rt_320 : STD_LOGIC; 
  signal uart_receiver_instance_Result_9_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_8_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_10_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_11_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_11_rt_303 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_26_rt_216 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_25_rt_213 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_24_rt_211 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_27_rt_194 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_2_rt_266 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_1_rt_264 : STD_LOGIC; 
  signal uart_receiver_instance_Result_3_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_3_rt_255 : STD_LOGIC; 
  signal uart_receiver_instance_Result_2_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_3_ProtoComp4_CYINITGND_0 : STD_LOGIC; 
  signal uart_receiver_instance_Result_0_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_1_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_30_rt_236 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_28_rt_230 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_29_rt_224 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_31_rt_221 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_6_rt_297 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_5_rt_294 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_4_rt_292 : STD_LOGIC; 
  signal uart_receiver_instance_Result_5_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_4_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_6_1 : STD_LOGIC; 
  signal uart_receiver_instance_Result_7_1 : STD_LOGIC; 
  signal uart_receiver_instance_c_brg_7_rt_275 : STD_LOGIC; 
  signal rx_IBUF_681 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_4_Q_659 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_Q_654 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi4_652 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_668 : STD_LOGIC; 
  signal ProtoComp16_IINV_OUT : STD_LOGIC; 
  signal uart_receiver_instance_rst_inv_non_inverted : STD_LOGIC; 
  signal baud_rate_generator_instance_s_tick_rstpot_706 : STD_LOGIC; 
  signal baud_rate_generator_instance_s_tick_pack_7 : STD_LOGIC; 
  signal uart_receiver_instance_c_s3_31_GND_5_o_LessThan_5_o : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi_642 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_0_Q_640 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi2_635 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi3_631 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_ProtoComp9_CYINITVCC_1 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi1_626 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_1_Q_625 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_2_Q_622 : STD_LOGIC; 
  signal uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_3_Q_618 : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_nextState_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_nextState_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_nextState_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_nextState_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_nextState_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_currentState_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_currentState_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_currentState_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_currentState_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_currentState_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_currentState_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_baud_rate_generator_instance_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_baud_rate_generator_instance_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_baud_rate_generator_instance_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_baud_rate_generator_instance_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_baud_rate_generator_instance_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_baud_rate_generator_instance_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_let_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_let_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_baud_rate_generator_instance_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_s3_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_c_brg_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_baud_rate_generator_instance_s_tick_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_baud_rate_generator_instance_s_tick_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tx_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_uart_receiver_instance_let_s3_CLK : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_8_D6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_9_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_10_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_48_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_49_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_50_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_51_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_44_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_45_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_46_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_47_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_40_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_41_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_42_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_43_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_36_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_37_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_38_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_39_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_33_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_34_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_35_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_70_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_71_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_72_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_11_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_66_D6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_67_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_68_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_69_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_76_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcount_counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcount_counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcount_counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_77_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_78_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_12_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcount_counter_xor_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcount_counter_xor_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcount_counter_xor_6_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcount_counter_xor_6_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcount_counter_xor_6_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcount_counter_xor_6_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcount_counter_xor_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcount_counter_xor_6_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_74_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_75_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_16_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_17_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_18_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_19_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_20_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_21_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_22_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_23_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_8_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_9_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_10_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_11_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_12_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_13_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_14_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_15_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_counter_0_rstpot_cy_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_counter_0_rstpot_cy_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_counter_0_rstpot_cy_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_counter_0_rstpot_cy_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_counter_0_rstpot_cy_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_counter_0_rstpot_cy_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_counter_0_rstpot_cy_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_counter_0_rstpot_cy_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_counter_0_rstpot_cy_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_counter_0_rstpot_cy_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_89_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_6_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_7_A6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_28_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_29_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_30_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_24_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_25_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_26_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_27_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_52_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_53_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_54_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_55_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_4_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_5_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_6_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_60_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_61_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_62_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_s3_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_2_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_56_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcount_c_brg_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_57_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_58_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_59_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal uart_receiver_instance_currentState : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal baud_rate_generator_instance_counter : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal uart_receiver_instance_c_s3 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal uart_receiver_instance_c_brg : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal baud_rate_generator_instance_Mcount_counter_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal baud_rate_generator_instance_Mcompar_n0002_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal baud_rate_generator_instance_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal baud_rate_generator_instance_Result : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal uart_receiver_instance_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal uart_receiver_instance_Mcount_c_s3_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal uart_receiver_instance_Mcount_c_brg_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  baud_rate_generator_instance_Mcompar_n0002_lut_1_8_D6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X46Y58",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_8_D6LUT_O_UNCONNECTED
    );
  ProtoComp2_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X46Y58"
    )
    port map (
      O => ProtoComp2_CYINITGND_0
    );
  baud_rate_generator_instance_Mcompar_n0002_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X46Y58"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp2_CYINITGND_0,
      CO(3) => baud_rate_generator_instance_Mcompar_n0002_cy_3_Q_838,
      CO(2) => NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_CO_0_UNCONNECTED,
      DI(3) => NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_DI_3_UNCONNECTED,
      DI(2) => NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_DI_2_UNCONNECTED,
      DI(1) => NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_DI_1_UNCONNECTED,
      DI(0) => baud_rate_generator_instance_Mcompar_n0002_lutdi_9,
      O(3) => NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_baud_rate_generator_instance_Mcompar_n0002_cy_3_O_0_UNCONNECTED,
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => baud_rate_generator_instance_Mcompar_n0002_lut(0)
    );
  baud_rate_generator_instance_Mcompar_n0002_lut_1_9_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X46Y58",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_9_C6LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_Mcompar_n0002_lut_1_10_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X46Y58",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_10_B6LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_Mcompar_n0002_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X46Y58",
      INIT => X"0000080000000800"
    )
    port map (
      ADR2 => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_5_0,
      ADR1 => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_3_0,
      ADR4 => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_0,
      ADR0 => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_6_0,
      ADR3 => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_4_0,
      ADR5 => '1',
      O => baud_rate_generator_instance_Mcompar_n0002_lut(0)
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X46Y58",
      INIT => X"00005F5F"
    )
    port map (
      ADR2 => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_5_0,
      ADR1 => '1',
      ADR4 => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_0,
      ADR0 => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_6_0,
      ADR3 => '1',
      O => baud_rate_generator_instance_Mcompar_n0002_lutdi_9
    );
  uart_receiver_instance_c_brg_15 : X_FF
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_15_CLK,
      I => uart_receiver_instance_Result_15_1,
      O => uart_receiver_instance_c_brg(15),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(15),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_15_rt_331
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_48_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_48_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_14 : X_FF
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_14_CLK,
      I => uart_receiver_instance_Result_14_1,
      O => uart_receiver_instance_c_brg(14),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_brg_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y79"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_brg_cy_11_Q_899,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_brg_cy_15_Q_904,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_brg_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_brg_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_brg_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result_15_1,
      O(2) => uart_receiver_instance_Result_14_1,
      O(1) => uart_receiver_instance_Result_13_1,
      O(0) => uart_receiver_instance_Result_12_1,
      S(3) => uart_receiver_instance_c_brg_15_rt_331,
      S(2) => uart_receiver_instance_c_brg_14_rt_353,
      S(1) => uart_receiver_instance_c_brg_13_rt_350,
      S(0) => uart_receiver_instance_c_brg_12_rt_348
    );
  uart_receiver_instance_c_brg_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(14),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_14_rt_353
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_49_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_49_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_13 : X_FF
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_13_CLK,
      I => uart_receiver_instance_Result_13_1,
      O => uart_receiver_instance_c_brg(13),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(13),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_13_rt_350
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_50_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_50_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_12 : X_FF
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_12_CLK,
      I => uart_receiver_instance_Result_12_1,
      O => uart_receiver_instance_c_brg(12),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(12),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_12_rt_348
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_51_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_51_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_19 : X_FF
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_19_CLK,
      I => uart_receiver_instance_Result_19_1,
      O => uart_receiver_instance_c_brg(19),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(19),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_19_rt_359
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_44_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_44_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_18 : X_FF
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_18_CLK,
      I => uart_receiver_instance_Result_18_1,
      O => uart_receiver_instance_c_brg(18),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_brg_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y80"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_brg_cy_15_Q_904,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_brg_cy_19_Q_909,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_brg_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_brg_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_brg_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result_19_1,
      O(2) => uart_receiver_instance_Result_18_1,
      O(1) => uart_receiver_instance_Result_17_1,
      O(0) => uart_receiver_instance_Result_16_1,
      S(3) => uart_receiver_instance_c_brg_19_rt_359,
      S(2) => uart_receiver_instance_c_brg_18_rt_381,
      S(1) => uart_receiver_instance_c_brg_17_rt_378,
      S(0) => uart_receiver_instance_c_brg_16_rt_376
    );
  uart_receiver_instance_c_brg_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(18),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_18_rt_381
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_45_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_45_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_17 : X_FF
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_17_CLK,
      I => uart_receiver_instance_Result_17_1,
      O => uart_receiver_instance_c_brg(17),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(17),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_17_rt_378
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_46_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_46_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_16 : X_FF
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_16_CLK,
      I => uart_receiver_instance_Result_16_1,
      O => uart_receiver_instance_c_brg(16),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(16),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_16_rt_376
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_47_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_47_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_23 : X_FF
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_23_CLK,
      I => uart_receiver_instance_Result_23_1,
      O => uart_receiver_instance_c_brg(23),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(23),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_23_rt_387
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_40_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_40_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_22 : X_FF
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_22_CLK,
      I => uart_receiver_instance_Result_22_1,
      O => uart_receiver_instance_c_brg(22),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_brg_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y81"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_brg_cy_19_Q_909,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_brg_cy_23_Q_914,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_brg_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_brg_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_brg_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result_23_1,
      O(2) => uart_receiver_instance_Result_22_1,
      O(1) => uart_receiver_instance_Result_21_1,
      O(0) => uart_receiver_instance_Result_20_1,
      S(3) => uart_receiver_instance_c_brg_23_rt_387,
      S(2) => uart_receiver_instance_c_brg_22_rt_409,
      S(1) => uart_receiver_instance_c_brg_21_rt_406,
      S(0) => uart_receiver_instance_c_brg_20_rt_404
    );
  uart_receiver_instance_c_brg_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(22),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_22_rt_409
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_41_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_41_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_21 : X_FF
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_21_CLK,
      I => uart_receiver_instance_Result_21_1,
      O => uart_receiver_instance_c_brg(21),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(21),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_21_rt_406
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_42_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_42_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_20 : X_FF
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_20_CLK,
      I => uart_receiver_instance_Result_20_1,
      O => uart_receiver_instance_c_brg(20),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(20),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_20_rt_404
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_43_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_43_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_27 : X_FF
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_27_CLK,
      I => uart_receiver_instance_Result_27_1,
      O => uart_receiver_instance_c_brg(27),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(27),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_27_rt_415
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_36_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_36_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_26 : X_FF
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_26_CLK,
      I => uart_receiver_instance_Result_26_1,
      O => uart_receiver_instance_c_brg(26),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_brg_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y82"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_brg_cy_23_Q_914,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_brg_cy_27_Q_919,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_brg_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_brg_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_brg_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result_27_1,
      O(2) => uart_receiver_instance_Result_26_1,
      O(1) => uart_receiver_instance_Result_25_1,
      O(0) => uart_receiver_instance_Result_24_1,
      S(3) => uart_receiver_instance_c_brg_27_rt_415,
      S(2) => uart_receiver_instance_c_brg_26_rt_437,
      S(1) => uart_receiver_instance_c_brg_25_rt_434,
      S(0) => uart_receiver_instance_c_brg_24_rt_432
    );
  uart_receiver_instance_c_brg_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(26),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_26_rt_437
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_37_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_37_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_25 : X_FF
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_25_CLK,
      I => uart_receiver_instance_Result_25_1,
      O => uart_receiver_instance_c_brg(25),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(25),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_25_rt_434
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_38_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_38_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_24 : X_FF
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_24_CLK,
      I => uart_receiver_instance_Result_24_1,
      O => uart_receiver_instance_c_brg(24),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(24),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_24_rt_432
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_39_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_39_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_31 : X_FF
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_31_CLK,
      I => uart_receiver_instance_Result_31_1,
      O => uart_receiver_instance_c_brg(31),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => uart_receiver_instance_c_brg(31),
      ADR4 => '1',
      ADR3 => '1',
      O => uart_receiver_instance_c_brg_31_rt_442
    );
  uart_receiver_instance_c_brg_30 : X_FF
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_30_CLK,
      I => uart_receiver_instance_Result_30_1,
      O => uart_receiver_instance_c_brg(30),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_brg_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y83"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_brg_cy_27_Q_919,
      CYINIT => '0',
      CO(3) => NLW_uart_receiver_instance_Mcount_c_brg_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_brg_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_brg_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_brg_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_uart_receiver_instance_Mcount_c_brg_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result_31_1,
      O(2) => uart_receiver_instance_Result_30_1,
      O(1) => uart_receiver_instance_Result_29_1,
      O(0) => uart_receiver_instance_Result_28_1,
      S(3) => uart_receiver_instance_c_brg_31_rt_442,
      S(2) => uart_receiver_instance_c_brg_30_rt_457,
      S(1) => uart_receiver_instance_c_brg_29_rt_445,
      S(0) => uart_receiver_instance_c_brg_28_rt_451
    );
  uart_receiver_instance_c_brg_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(30),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_30_rt_457
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_33_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_33_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_29 : X_FF
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_29_CLK,
      I => uart_receiver_instance_Result_29_1,
      O => uart_receiver_instance_c_brg(29),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(29),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_29_rt_445
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_34_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_34_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_28 : X_FF
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_28_CLK,
      I => uart_receiver_instance_Result_28_1,
      O => uart_receiver_instance_c_brg(28),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(28),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_28_rt_451
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_35_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_35_A5LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_3_Q,
      O => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_3_0
    );
  baud_rate_generator_instance_counter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => baud_rate_generator_instance_counter(3),
      ADR5 => '1',
      O => baud_rate_generator_instance_counter_3_rt_470
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_70_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_70_D5LUT_O_UNCONNECTED
    );
  ProtoComp7_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X50Y57"
    )
    port map (
      O => ProtoComp7_CYINITGND_0
    );
  baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y57"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp7_CYINITGND_0,
      CO(3) => baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_Q_927,
      CO(2) => NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_3_Q,
      O(2) => NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_O_0_UNCONNECTED,
      S(3) => baud_rate_generator_instance_counter_3_rt_470,
      S(2) => baud_rate_generator_instance_counter_2_rt_475,
      S(1) => baud_rate_generator_instance_counter_1_rt_472,
      S(0) => baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_lut_0_Q
    );
  baud_rate_generator_instance_counter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => baud_rate_generator_instance_counter(2),
      ADR5 => '1',
      O => baud_rate_generator_instance_counter_2_rt_475
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_71_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_71_C5LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_counter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => baud_rate_generator_instance_counter(1),
      ADR5 => '1',
      O => baud_rate_generator_instance_counter_1_rt_472
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_72_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_72_B5LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => baud_rate_generator_instance_counter(0),
      ADR5 => '1',
      O => baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_lut_0_Q
    );
  baud_rate_generator_instance_Mcompar_n0002_lut_1_11_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y57",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_11_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_Q_540,
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_0
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y79"
    )
    port map (
      CI => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_Q_932,
      CYINIT => '0',
      CO(3) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_CO_3_UNCONNECTED,
      CO(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_CO_1_UNCONNECTED,
      CO(0) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_Q_540,
      DI(3) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_DI_3_UNCONNECTED,
      DI(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_DI_2_UNCONNECTED,
      DI(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_DI_1_UNCONNECTED,
      DI(0) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi4_538,
      O(3) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_O_3_UNCONNECTED,
      O(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_O_2_UNCONNECTED,
      O(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_O_1_UNCONNECTED,
      O(0) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_O_0_UNCONNECTED,
      S(3) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_S_3_UNCONNECTED,
      S(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_S_2_UNCONNECTED,
      S(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_S_1_UNCONNECTED,
      S(0) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_4_Q_545
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y79",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => uart_receiver_instance_c_brg(23),
      ADR1 => uart_receiver_instance_c_brg(24),
      ADR4 => uart_receiver_instance_c_brg(25),
      ADR3 => uart_receiver_instance_c_brg(26),
      ADR2 => uart_receiver_instance_c_brg(27),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_4_Q_545
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y79",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => uart_receiver_instance_c_brg(23),
      ADR1 => uart_receiver_instance_c_brg(24),
      ADR4 => uart_receiver_instance_c_brg(25),
      ADR3 => uart_receiver_instance_c_brg(26),
      ADR2 => uart_receiver_instance_c_brg(27),
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi4_538
    );
  uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_Q_591,
      O => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_0
    );
  uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => uart_receiver_instance_c_s3(22),
      ADR3 => uart_receiver_instance_c_s3(23),
      ADR2 => uart_receiver_instance_c_s3(24),
      ADR0 => uart_receiver_instance_c_s3(25),
      ADR4 => uart_receiver_instance_c_s3(26),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_3_Q_593
    );
  uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR1 => uart_receiver_instance_c_s3(22),
      ADR3 => uart_receiver_instance_c_s3(23),
      ADR2 => uart_receiver_instance_c_s3(24),
      ADR0 => uart_receiver_instance_c_s3(25),
      ADR4 => uart_receiver_instance_c_s3(26),
      O => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi3_584
    );
  ProtoComp13_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X32Y68"
    )
    port map (
      O => ProtoComp13_CYINITVCC_1
    );
  uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y68"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp13_CYINITVCC_1,
      CO(3) => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_Q_591,
      CO(2) => NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi3_584,
      DI(2) => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi2_597,
      DI(1) => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi1_605,
      DI(0) => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi_602,
      O(3) => NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_O_0_UNCONNECTED,
      S(3) => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_3_Q_593,
      S(2) => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_2_Q_613,
      S(1) => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_1_Q_596,
      S(0) => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_0_Q_606
    );
  uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => uart_receiver_instance_c_s3(17),
      ADR1 => uart_receiver_instance_c_s3(18),
      ADR4 => uart_receiver_instance_c_s3(19),
      ADR2 => uart_receiver_instance_c_s3(20),
      ADR3 => uart_receiver_instance_c_s3(21),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_2_Q_613
    );
  uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => uart_receiver_instance_c_s3(17),
      ADR1 => uart_receiver_instance_c_s3(18),
      ADR4 => uart_receiver_instance_c_s3(19),
      ADR2 => uart_receiver_instance_c_s3(20),
      ADR3 => uart_receiver_instance_c_s3(21),
      O => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi2_597
    );
  uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => uart_receiver_instance_c_s3(12),
      ADR4 => uart_receiver_instance_c_s3(13),
      ADR3 => uart_receiver_instance_c_s3(14),
      ADR0 => uart_receiver_instance_c_s3(15),
      ADR2 => uart_receiver_instance_c_s3(16),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_1_Q_596
    );
  uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR1 => uart_receiver_instance_c_s3(12),
      ADR4 => uart_receiver_instance_c_s3(13),
      ADR3 => uart_receiver_instance_c_s3(14),
      ADR0 => uart_receiver_instance_c_s3(15),
      ADR2 => uart_receiver_instance_c_s3(16),
      O => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi1_605
    );
  uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"0000010000000100"
    )
    port map (
      ADR1 => uart_receiver_instance_c_s3(8),
      ADR4 => uart_receiver_instance_c_s3(9),
      ADR0 => uart_receiver_instance_c_s3(10),
      ADR3 => uart_receiver_instance_c_s3(7),
      ADR2 => uart_receiver_instance_c_s3(11),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lut_0_Q_606
    );
  uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"FFFFFEFE"
    )
    port map (
      ADR1 => uart_receiver_instance_c_s3(8),
      ADR4 => uart_receiver_instance_c_s3(9),
      ADR0 => uart_receiver_instance_c_s3(10),
      ADR3 => '1',
      ADR2 => uart_receiver_instance_c_s3(11),
      O => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_lutdi_602
    );
  baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_Q,
      O => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_0
    );
  baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_6_Q,
      O => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_6_0
    );
  baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_5_Q,
      O => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_5_0
    );
  baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_4_Q,
      O => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_4_0
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_66_D6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X50Y58",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_66_D6LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y58"
    )
    port map (
      CI => baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_cy_3_Q_927,
      CYINIT => '0',
      CO(3) => NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_baud_rate_generator_instance_Madd_counter_31_GND_10_o_add_0_OUT_xor_7_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_7_Q,
      O(2) => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_6_Q,
      O(1) => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_5_Q,
      O(0) => baud_rate_generator_instance_counter_31_GND_10_o_add_0_OUT_4_Q,
      S(3) => '0',
      S(2) => baud_rate_generator_instance_counter_6_rt_491,
      S(1) => baud_rate_generator_instance_counter_5_rt_493,
      S(0) => baud_rate_generator_instance_counter_4_rt_492
    );
  baud_rate_generator_instance_counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y58",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => baud_rate_generator_instance_counter(6),
      ADR5 => '1',
      O => baud_rate_generator_instance_counter_6_rt_491
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_67_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_67_C5LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_counter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y58",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => baud_rate_generator_instance_counter(5),
      ADR5 => '1',
      O => baud_rate_generator_instance_counter_5_rt_493
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_68_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_68_B5LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_counter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y58",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => baud_rate_generator_instance_counter(4),
      ADR5 => '1',
      O => baud_rate_generator_instance_counter_4_rt_492
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_69_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_69_A5LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_Mcount_counter_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_Result(3),
      O => baud_rate_generator_instance_Result_3_0
    );
  baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_Mcount_counter_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_Result(2),
      O => baud_rate_generator_instance_Result_2_0
    );
  baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_Mcount_counter_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_Result(1),
      O => baud_rate_generator_instance_Result_1_0
    );
  baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_Mcount_counter_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_Result(0),
      O => baud_rate_generator_instance_Result_0_0
    );
  baud_rate_generator_instance_counter_3_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y57",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => baud_rate_generator_instance_counter(3),
      ADR5 => '1',
      O => baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_counter_3_rt
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_76_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_76_D5LUT_O_UNCONNECTED
    );
  ProtoComp11_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X48Y57"
    )
    port map (
      O => ProtoComp11_CYINITGND_0
    );
  baud_rate_generator_instance_Mcount_counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y57"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp11_CYINITGND_0,
      CO(3) => baud_rate_generator_instance_Mcount_counter_cy(3),
      CO(2) => NLW_baud_rate_generator_instance_Mcount_counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_baud_rate_generator_instance_Mcount_counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_baud_rate_generator_instance_Mcount_counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => baud_rate_generator_instance_Result(3),
      O(2) => baud_rate_generator_instance_Result(2),
      O(1) => baud_rate_generator_instance_Result(1),
      O(0) => baud_rate_generator_instance_Result(0),
      S(3) => baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_counter_3_rt,
      S(2) => baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_counter_2_rt,
      S(1) => baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_counter_1_rt,
      S(0) => baud_rate_generator_instance_Mcount_counter_lut(0)
    );
  baud_rate_generator_instance_counter_2_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y57",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => baud_rate_generator_instance_counter(2),
      ADR5 => '1',
      O => baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_counter_2_rt
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_77_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_77_C5LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_counter_1_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y57",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => baud_rate_generator_instance_counter(1),
      ADR5 => '1',
      O => baud_rate_generator_instance_Mcount_counter_cy_3_baud_rate_generator_instance_counter_1_rt
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_78_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_78_B5LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_Mcount_counter_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y57",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => baud_rate_generator_instance_counter(0),
      ADR5 => '1',
      O => baud_rate_generator_instance_Mcount_counter_lut(0)
    );
  baud_rate_generator_instance_Mcompar_n0002_lut_1_12_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y57",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_12_A5LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_Result_6_baud_rate_generator_instance_Result_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_Result(6),
      O => baud_rate_generator_instance_Result_6_0
    );
  baud_rate_generator_instance_Result_6_baud_rate_generator_instance_Result_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_Result(5),
      O => baud_rate_generator_instance_Result_5_0
    );
  baud_rate_generator_instance_Result_6_baud_rate_generator_instance_Result_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_Result(4),
      O => baud_rate_generator_instance_Result_4_0
    );
  baud_rate_generator_instance_Mcount_counter_xor_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y58"
    )
    port map (
      CI => baud_rate_generator_instance_Mcount_counter_cy(3),
      CYINIT => '0',
      CO(3) => NLW_baud_rate_generator_instance_Mcount_counter_xor_6_CO_3_UNCONNECTED,
      CO(2) => NLW_baud_rate_generator_instance_Mcount_counter_xor_6_CO_2_UNCONNECTED,
      CO(1) => NLW_baud_rate_generator_instance_Mcount_counter_xor_6_CO_1_UNCONNECTED,
      CO(0) => NLW_baud_rate_generator_instance_Mcount_counter_xor_6_CO_0_UNCONNECTED,
      DI(3) => NLW_baud_rate_generator_instance_Mcount_counter_xor_6_DI_3_UNCONNECTED,
      DI(2) => NLW_baud_rate_generator_instance_Mcount_counter_xor_6_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_baud_rate_generator_instance_Mcount_counter_xor_6_O_3_UNCONNECTED,
      O(2) => baud_rate_generator_instance_Result(6),
      O(1) => baud_rate_generator_instance_Result(5),
      O(0) => baud_rate_generator_instance_Result(4),
      S(3) => NLW_baud_rate_generator_instance_Mcount_counter_xor_6_S_3_UNCONNECTED,
      S(2) => baud_rate_generator_instance_Result_6_baud_rate_generator_instance_counter_6_rt,
      S(1) => baud_rate_generator_instance_Result_6_baud_rate_generator_instance_counter_5_rt,
      S(0) => baud_rate_generator_instance_Result_6_baud_rate_generator_instance_counter_4_rt
    );
  baud_rate_generator_instance_counter_6_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y58",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => baud_rate_generator_instance_counter(6),
      O => baud_rate_generator_instance_Result_6_baud_rate_generator_instance_counter_6_rt
    );
  baud_rate_generator_instance_counter_5_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y58",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => baud_rate_generator_instance_counter(5),
      ADR5 => '1',
      O => baud_rate_generator_instance_Result_6_baud_rate_generator_instance_counter_5_rt
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_74_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_74_B5LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_counter_4_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y58",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => baud_rate_generator_instance_counter(4),
      ADR5 => '1',
      O => baud_rate_generator_instance_Result_6_baud_rate_generator_instance_counter_4_rt
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_75_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_75_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y78",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => uart_receiver_instance_c_brg(18),
      ADR2 => uart_receiver_instance_c_brg(19),
      ADR3 => uart_receiver_instance_c_brg(20),
      ADR0 => uart_receiver_instance_c_brg(21),
      ADR1 => uart_receiver_instance_c_brg(22),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_3_Q_504
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y78",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR4 => uart_receiver_instance_c_brg(18),
      ADR2 => uart_receiver_instance_c_brg(19),
      ADR3 => uart_receiver_instance_c_brg(20),
      ADR0 => uart_receiver_instance_c_brg(21),
      ADR1 => uart_receiver_instance_c_brg(22),
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi3_517
    );
  ProtoComp9_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X50Y78"
    )
    port map (
      O => ProtoComp9_CYINITVCC_1_516
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y78"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp9_CYINITVCC_1_516,
      CO(3) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_Q_932,
      CO(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi3_517,
      DI(2) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi2_521,
      DI(1) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi1_512,
      DI(0) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi_528,
      O(3) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_3_O_0_UNCONNECTED,
      S(3) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_3_Q_504,
      S(2) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_2_Q_508,
      S(1) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_1_Q_511,
      S(0) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_0_Q_526
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y78",
      INIT => X"0000000100000001"
    )
    port map (
      ADR3 => uart_receiver_instance_c_brg(13),
      ADR4 => uart_receiver_instance_c_brg(14),
      ADR1 => uart_receiver_instance_c_brg(15),
      ADR2 => uart_receiver_instance_c_brg(16),
      ADR0 => uart_receiver_instance_c_brg(17),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_2_Q_508
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y78",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR3 => uart_receiver_instance_c_brg(13),
      ADR4 => uart_receiver_instance_c_brg(14),
      ADR1 => uart_receiver_instance_c_brg(15),
      ADR2 => uart_receiver_instance_c_brg(16),
      ADR0 => uart_receiver_instance_c_brg(17),
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi2_521
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y78",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => uart_receiver_instance_c_brg(8),
      ADR4 => uart_receiver_instance_c_brg(9),
      ADR2 => uart_receiver_instance_c_brg(10),
      ADR3 => uart_receiver_instance_c_brg(11),
      ADR1 => uart_receiver_instance_c_brg(12),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_1_Q_511
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y78",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => uart_receiver_instance_c_brg(8),
      ADR4 => uart_receiver_instance_c_brg(9),
      ADR2 => uart_receiver_instance_c_brg(10),
      ADR3 => uart_receiver_instance_c_brg(11),
      ADR1 => uart_receiver_instance_c_brg(12),
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi1_512
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y78",
      INIT => X"0000000200000002"
    )
    port map (
      ADR2 => uart_receiver_instance_c_brg(4),
      ADR1 => uart_receiver_instance_c_brg(5),
      ADR4 => uart_receiver_instance_c_brg(6),
      ADR0 => uart_receiver_instance_c_brg(3),
      ADR3 => uart_receiver_instance_c_brg(7),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lut_0_Q_526
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X50Y78",
      INIT => X"FFFFFFFC"
    )
    port map (
      ADR2 => uart_receiver_instance_c_brg(4),
      ADR1 => uart_receiver_instance_c_brg(5),
      ADR4 => uart_receiver_instance_c_brg(6),
      ADR0 => '1',
      ADR3 => uart_receiver_instance_c_brg(7),
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_lutdi_528
    );
  uart_receiver_instance_c_s3_15 : X_FF
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_15_CLK,
      I => uart_receiver_instance_Result(15),
      O => uart_receiver_instance_c_s3(15),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(15),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_15_rt_110
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_16_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_16_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_14 : X_FF
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_14_CLK,
      I => uart_receiver_instance_Result(14),
      O => uart_receiver_instance_c_s3(14),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_s3_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y67"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_s3_cy_11_Q_859,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_s3_cy_15_Q_864,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_s3_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_s3_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_s3_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result(15),
      O(2) => uart_receiver_instance_Result(14),
      O(1) => uart_receiver_instance_Result(13),
      O(0) => uart_receiver_instance_Result(12),
      S(3) => uart_receiver_instance_c_s3_15_rt_110,
      S(2) => uart_receiver_instance_c_s3_14_rt_132,
      S(1) => uart_receiver_instance_c_s3_13_rt_129,
      S(0) => uart_receiver_instance_c_s3_12_rt_127
    );
  uart_receiver_instance_c_s3_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(14),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_14_rt_132
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_17_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_17_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_13 : X_FF
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_13_CLK,
      I => uart_receiver_instance_Result(13),
      O => uart_receiver_instance_c_s3(13),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(13),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_13_rt_129
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_18_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_18_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_12 : X_FF
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_12_CLK,
      I => uart_receiver_instance_Result(12),
      O => uart_receiver_instance_c_s3(12),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => uart_receiver_instance_c_s3(12),
      ADR4 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_12_rt_127
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_19_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_19_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_11 : X_FF
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_11_CLK,
      I => uart_receiver_instance_Result(11),
      O => uart_receiver_instance_c_s3(11),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(11),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_11_rt_82
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_20_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_20_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_10 : X_FF
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_10_CLK,
      I => uart_receiver_instance_Result(10),
      O => uart_receiver_instance_c_s3(10),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_s3_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y66"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_s3_cy_7_Q_854,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_s3_cy_11_Q_859,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_s3_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_s3_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_s3_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result(11),
      O(2) => uart_receiver_instance_Result(10),
      O(1) => uart_receiver_instance_Result(9),
      O(0) => uart_receiver_instance_Result(8),
      S(3) => uart_receiver_instance_c_s3_11_rt_82,
      S(2) => uart_receiver_instance_c_s3_10_rt_104,
      S(1) => uart_receiver_instance_c_s3_9_rt_101,
      S(0) => uart_receiver_instance_c_s3_8_rt_99
    );
  uart_receiver_instance_c_s3_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(10),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_10_rt_104
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_21_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_21_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_9 : X_FF
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_9_CLK,
      I => uart_receiver_instance_Result(9),
      O => uart_receiver_instance_c_s3(9),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(9),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_9_rt_101
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_22_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_22_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_8 : X_FF
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_8_CLK,
      I => uart_receiver_instance_Result(8),
      O => uart_receiver_instance_c_s3(8),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => uart_receiver_instance_c_s3(8),
      ADR4 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_8_rt_99
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_23_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_23_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_23 : X_FF
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_23_CLK,
      I => uart_receiver_instance_Result(23),
      O => uart_receiver_instance_c_s3(23),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(23),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_23_rt_166
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_8_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_8_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_22 : X_FF
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_22_CLK,
      I => uart_receiver_instance_Result(22),
      O => uart_receiver_instance_c_s3(22),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_s3_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y69"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_s3_cy_19_Q_869,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_s3_cy_23_Q_874,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_s3_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_s3_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_s3_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result(23),
      O(2) => uart_receiver_instance_Result(22),
      O(1) => uart_receiver_instance_Result(21),
      O(0) => uart_receiver_instance_Result(20),
      S(3) => uart_receiver_instance_c_s3_23_rt_166,
      S(2) => uart_receiver_instance_c_s3_22_rt_188,
      S(1) => uart_receiver_instance_c_s3_21_rt_185,
      S(0) => uart_receiver_instance_c_s3_20_rt_183
    );
  uart_receiver_instance_c_s3_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(22),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_22_rt_188
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_9_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_9_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_21 : X_FF
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_21_CLK,
      I => uart_receiver_instance_Result(21),
      O => uart_receiver_instance_c_s3(21),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(21),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_21_rt_185
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_10_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_10_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_20 : X_FF
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_20_CLK,
      I => uart_receiver_instance_Result(20),
      O => uart_receiver_instance_c_s3(20),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => uart_receiver_instance_c_s3(20),
      ADR4 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_20_rt_183
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_11_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_11_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_19 : X_FF
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_19_CLK,
      I => uart_receiver_instance_Result(19),
      O => uart_receiver_instance_c_s3(19),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(19),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_19_rt_138
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_12_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_12_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_18 : X_FF
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_18_CLK,
      I => uart_receiver_instance_Result(18),
      O => uart_receiver_instance_c_s3(18),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_s3_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y68"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_s3_cy_15_Q_864,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_s3_cy_19_Q_869,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_s3_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_s3_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_s3_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result(19),
      O(2) => uart_receiver_instance_Result(18),
      O(1) => uart_receiver_instance_Result(17),
      O(0) => uart_receiver_instance_Result(16),
      S(3) => uart_receiver_instance_c_s3_19_rt_138,
      S(2) => uart_receiver_instance_c_s3_18_rt_160,
      S(1) => uart_receiver_instance_c_s3_17_rt_157,
      S(0) => uart_receiver_instance_c_s3_16_rt_155
    );
  uart_receiver_instance_c_s3_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(18),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_18_rt_160
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_13_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_13_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_17 : X_FF
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_17_CLK,
      I => uart_receiver_instance_Result(17),
      O => uart_receiver_instance_c_s3(17),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(17),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_17_rt_157
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_14_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_14_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_16 : X_FF
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_16_CLK,
      I => uart_receiver_instance_Result(16),
      O => uart_receiver_instance_c_s3(16),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => uart_receiver_instance_c_s3(16),
      ADR4 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_16_rt_155
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_15_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_15_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_nextState_1_uart_receiver_instance_nextState_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_Mram_n00811_pack_4,
      O => uart_receiver_instance_Mram_n00811
    );
  uart_receiver_instance_nextState_1_uart_receiver_instance_nextState_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_Mram_n0081_pack_3,
      O => uart_receiver_instance_Mram_n0081
    );
  uart_receiver_instance_Mmux_rx_done11 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => X"0500000005000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => uart_receiver_instance_currentState(1),
      ADR4 => uart_receiver_instance_currentState(2),
      ADR2 => uart_receiver_instance_currentState(0),
      ADR3 => uart_receiver_instance_let_15_832,
      ADR5 => '1',
      O => tx_OBUF_830
    );
  uart_receiver_instance_Mram_n0081111 : X_LUT5
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => X"00005050"
    )
    port map (
      ADR1 => '1',
      ADR0 => uart_receiver_instance_currentState(1),
      ADR4 => uart_receiver_instance_currentState(2),
      ADR2 => uart_receiver_instance_currentState(0),
      ADR3 => '1',
      O => uart_receiver_instance_Mram_n00811_pack_4
    );
  uart_receiver_instance_nextState_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_nextState_1_CLK,
      I => NlwBufferSignal_uart_receiver_instance_nextState_1_IN,
      O => uart_receiver_instance_nextState_1_829,
      RST => GND,
      SET => GND
    );
  uart_receiver_instance_nextState_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_nextState_2_CLK,
      I => uart_receiver_instance_Mram_n00812,
      O => uart_receiver_instance_nextState_2_827,
      RST => GND,
      SET => GND
    );
  uart_receiver_instance_Mram_n008121 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => X"00AA00AA00AA00AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => uart_receiver_instance_currentState(1),
      ADR3 => uart_receiver_instance_currentState(2),
      ADR5 => '1',
      O => uart_receiver_instance_Mram_n00812
    );
  uart_receiver_instance_Mram_n008111 : X_LUT5
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => X"00550055"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => uart_receiver_instance_currentState(1),
      ADR3 => uart_receiver_instance_currentState(2),
      O => uart_receiver_instance_Mram_n0081_pack_3
    );
  uart_receiver_instance_nextState_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X46Y85",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_nextState_0_CLK,
      I => NlwBufferSignal_uart_receiver_instance_nextState_0_IN,
      O => uart_receiver_instance_nextState_0_824,
      RST => GND,
      SET => GND
    );
  uart_receiver_instance_currentState_2 : X_SFF
    generic map(
      LOC => "SLICE_X47Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_currentState_2_CLK,
      I => NlwBufferSignal_uart_receiver_instance_currentState_2_IN,
      O => uart_receiver_instance_currentState(2),
      SRST => uart_receiver_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_receiver_instance_currentState_1 : X_SFF
    generic map(
      LOC => "SLICE_X47Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_currentState_1_CLK,
      I => NlwBufferSignal_uart_receiver_instance_currentState_1_IN,
      O => uart_receiver_instance_currentState(1),
      SRST => uart_receiver_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_receiver_instance_currentState_0 : X_SFF
    generic map(
      LOC => "SLICE_X47Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_currentState_0_CLK,
      I => NlwBufferSignal_uart_receiver_instance_currentState_0_IN,
      O => uart_receiver_instance_currentState(0),
      SRST => uart_receiver_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  baud_rate_generator_instance_counter_4 : X_FF
    generic map(
      LOC => "SLICE_X49Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_baud_rate_generator_instance_counter_4_CLK,
      I => baud_rate_generator_instance_counter_4_rstpot_768,
      O => baud_rate_generator_instance_counter(4),
      RST => GND,
      SET => GND
    );
  baud_rate_generator_instance_counter_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X49Y57",
      INIT => X"0F0F000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => uart_receiver_instance_rst_inv,
      ADR4 => baud_rate_generator_instance_Result_4_0,
      ADR5 => baud_rate_generator_instance_Mcompar_n0002_cy_5_0,
      O => baud_rate_generator_instance_counter_4_rstpot_768
    );
  baud_rate_generator_instance_counter_3 : X_FF
    generic map(
      LOC => "SLICE_X49Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_baud_rate_generator_instance_counter_3_CLK,
      I => baud_rate_generator_instance_counter_3_rstpot_778,
      O => baud_rate_generator_instance_counter(3),
      RST => GND,
      SET => GND
    );
  baud_rate_generator_instance_counter_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X49Y57",
      INIT => X"0A0A0A0A00000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => uart_receiver_instance_rst_inv,
      ADR0 => baud_rate_generator_instance_Result_3_0,
      ADR5 => baud_rate_generator_instance_Mcompar_n0002_cy_5_0,
      O => baud_rate_generator_instance_counter_3_rstpot_778
    );
  baud_rate_generator_instance_counter_2 : X_FF
    generic map(
      LOC => "SLICE_X49Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_baud_rate_generator_instance_counter_2_CLK,
      I => baud_rate_generator_instance_counter_2_rstpot_773,
      O => baud_rate_generator_instance_counter(2),
      RST => GND,
      SET => GND
    );
  baud_rate_generator_instance_counter_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X49Y57",
      INIT => X"00000000A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => uart_receiver_instance_rst_inv,
      ADR0 => baud_rate_generator_instance_Result_2_0,
      ADR2 => baud_rate_generator_instance_Mcompar_n0002_cy_5_0,
      O => baud_rate_generator_instance_counter_2_rstpot_773
    );
  baud_rate_generator_instance_counter_1 : X_FF
    generic map(
      LOC => "SLICE_X49Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_baud_rate_generator_instance_counter_1_CLK,
      I => baud_rate_generator_instance_counter_1_rstpot_779,
      O => baud_rate_generator_instance_counter(1),
      RST => GND,
      SET => GND
    );
  baud_rate_generator_instance_counter_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X49Y57",
      INIT => X"00000000C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => uart_receiver_instance_rst_inv,
      ADR1 => baud_rate_generator_instance_Result_1_0,
      ADR2 => baud_rate_generator_instance_Mcompar_n0002_cy_5_0,
      O => baud_rate_generator_instance_counter_1_rstpot_779
    );
  baud_rate_generator_instance_counter_6 : X_FF
    generic map(
      LOC => "SLICE_X49Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_baud_rate_generator_instance_counter_6_CLK,
      I => baud_rate_generator_instance_counter_6_rstpot_785,
      O => baud_rate_generator_instance_counter(6),
      RST => GND,
      SET => GND
    );
  baud_rate_generator_instance_counter_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X49Y58",
      INIT => X"00000000A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => uart_receiver_instance_rst_inv,
      ADR0 => baud_rate_generator_instance_Result_6_0,
      ADR2 => baud_rate_generator_instance_Mcompar_n0002_cy_5_0,
      O => baud_rate_generator_instance_counter_6_rstpot_785
    );
  baud_rate_generator_instance_counter_5 : X_FF
    generic map(
      LOC => "SLICE_X49Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_baud_rate_generator_instance_counter_5_CLK,
      I => baud_rate_generator_instance_counter_5_rstpot_791,
      O => baud_rate_generator_instance_counter(5),
      RST => GND,
      SET => GND
    );
  baud_rate_generator_instance_counter_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X49Y58",
      INIT => X"00000000C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => uart_receiver_instance_rst_inv,
      ADR1 => baud_rate_generator_instance_Result_5_0,
      ADR2 => baud_rate_generator_instance_Mcompar_n0002_cy_5_0,
      O => baud_rate_generator_instance_counter_5_rstpot_791
    );
  uart_receiver_instance_let_15 : X_SFF
    generic map(
      LOC => "SLICE_X49Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_let_15_CLK,
      I => uart_receiver_instance_c_brg_31_GND_5_o_LessThan_7_o,
      O => uart_receiver_instance_let_15_832,
      SRST => uart_receiver_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X49Y83",
      INIT => X"3333333333303330"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => uart_receiver_instance_c_brg(31),
      ADR2 => uart_receiver_instance_c_brg(29),
      ADR3 => uart_receiver_instance_c_brg(30),
      ADR5 => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_0,
      O => uart_receiver_instance_c_brg_31_GND_5_o_LessThan_7_o
    );
  uart_receiver_instance_let_7 : X_SFF
    generic map(
      LOC => "SLICE_X49Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_let_7_CLK,
      I => uart_receiver_instance_c_brg_31_GND_5_o_LessThan_6_o,
      O => uart_receiver_instance_let_7_949,
      SRST => uart_receiver_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X49Y83",
      INIT => X"0F0F0F0E0F0F0F0E"
    )
    port map (
      ADR5 => '1',
      ADR2 => uart_receiver_instance_c_brg(31),
      ADR0 => uart_receiver_instance_c_brg(28),
      ADR4 => uart_receiver_instance_c_brg(29),
      ADR1 => uart_receiver_instance_c_brg(30),
      ADR3 => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_6_o_cy_4_0,
      O => uart_receiver_instance_c_brg_31_GND_5_o_LessThan_6_o
    );
  baud_rate_generator_instance_counter_0_baud_rate_generator_instance_counter_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_Mcompar_n0002_cy_5_Q,
      O => baud_rate_generator_instance_Mcompar_n0002_cy_5_0
    );
  baud_rate_generator_instance_counter_0 : X_FF
    generic map(
      LOC => "SLICE_X46Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_baud_rate_generator_instance_counter_0_CLK,
      I => baud_rate_generator_instance_counter_0_rstpot,
      O => baud_rate_generator_instance_counter(0),
      RST => GND,
      SET => GND
    );
  baud_rate_generator_instance_counter_0_rstpot_cy : X_CARRY4
    generic map(
      LOC => "SLICE_X46Y59"
    )
    port map (
      CI => baud_rate_generator_instance_Mcompar_n0002_cy_3_Q_838,
      CYINIT => '0',
      CO(3) => NLW_baud_rate_generator_instance_counter_0_rstpot_cy_CO_3_UNCONNECTED,
      CO(2) => baud_rate_generator_instance_counter_0_rstpot,
      CO(1) => baud_rate_generator_instance_Mcompar_n0002_cy_5_Q,
      CO(0) => NLW_baud_rate_generator_instance_counter_0_rstpot_cy_CO_0_UNCONNECTED,
      DI(3) => NLW_baud_rate_generator_instance_counter_0_rstpot_cy_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => NLW_baud_rate_generator_instance_counter_0_rstpot_cy_DI_1_UNCONNECTED,
      DI(0) => NLW_baud_rate_generator_instance_counter_0_rstpot_cy_DI_0_UNCONNECTED,
      O(3) => NLW_baud_rate_generator_instance_counter_0_rstpot_cy_O_3_UNCONNECTED,
      O(2) => NLW_baud_rate_generator_instance_counter_0_rstpot_cy_O_2_UNCONNECTED,
      O(1) => NLW_baud_rate_generator_instance_counter_0_rstpot_cy_O_1_UNCONNECTED,
      O(0) => NLW_baud_rate_generator_instance_counter_0_rstpot_cy_O_0_UNCONNECTED,
      S(3) => NLW_baud_rate_generator_instance_counter_0_rstpot_cy_S_3_UNCONNECTED,
      S(2) => baud_rate_generator_instance_counter_0_rstpot_lut_20,
      S(1) => '1',
      S(0) => '1'
    );
  baud_rate_generator_instance_counter_0_rstpot_lut : X_LUT6
    generic map(
      LOC => "SLICE_X46Y59",
      INIT => X"5050505050505050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => baud_rate_generator_instance_Result_0_0,
      ADR0 => uart_receiver_instance_rst_inv,
      ADR5 => '1',
      O => baud_rate_generator_instance_counter_0_rstpot_lut_20
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_89_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X46Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_89_C5LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_Mcompar_n0002_lut_1_6_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X46Y59",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_6_B6LUT_O_UNCONNECTED
    );
  baud_rate_generator_instance_Mcompar_n0002_lut_1_7_A6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X46Y59",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_7_A6LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_3 : X_FF
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_3_CLK,
      I => uart_receiver_instance_Result(3),
      O => uart_receiver_instance_c_s3(3),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(3),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_3_rt_34
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_28_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_28_D5LUT_O_UNCONNECTED
    );
  ProtoComp4_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X30Y64"
    )
    port map (
      O => ProtoComp4_CYINITGND_0
    );
  uart_receiver_instance_c_s3_2 : X_FF
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_2_CLK,
      I => uart_receiver_instance_Result(2),
      O => uart_receiver_instance_c_s3(2),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_s3_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y64"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp4_CYINITGND_0,
      CO(3) => uart_receiver_instance_Mcount_c_s3_cy_3_Q_848,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_s3_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_s3_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_s3_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => uart_receiver_instance_Result(3),
      O(2) => uart_receiver_instance_Result(2),
      O(1) => uart_receiver_instance_Result(1),
      O(0) => uart_receiver_instance_Result(0),
      S(3) => uart_receiver_instance_c_s3_3_rt_34,
      S(2) => uart_receiver_instance_c_s3_2_rt_45,
      S(1) => uart_receiver_instance_c_s3_1_rt_43,
      S(0) => uart_receiver_instance_Mcount_c_s3_lut(0)
    );
  uart_receiver_instance_c_s3_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(2),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_2_rt_45
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_29_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_29_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_1 : X_FF
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_1_CLK,
      I => uart_receiver_instance_Result(1),
      O => uart_receiver_instance_c_s3(1),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(1),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_1_rt_43
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_30_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_30_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_0 : X_FF
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_0_CLK,
      I => uart_receiver_instance_Result(0),
      O => uart_receiver_instance_c_s3(0),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_s3_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => uart_receiver_instance_c_s3(0),
      ADR4 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_Mcount_c_s3_lut(0)
    );
  baud_rate_generator_instance_Mcompar_n0002_lut_1_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y64",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_7 : X_FF
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_7_CLK,
      I => uart_receiver_instance_Result(7),
      O => uart_receiver_instance_c_s3(7),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(7),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_7_rt_54
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_24_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_24_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_6 : X_FF
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_6_CLK,
      I => uart_receiver_instance_Result(6),
      O => uart_receiver_instance_c_s3(6),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_s3_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y65"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_s3_cy_3_Q_848,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_s3_cy_7_Q_854,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_s3_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_s3_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_s3_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result(7),
      O(2) => uart_receiver_instance_Result(6),
      O(1) => uart_receiver_instance_Result(5),
      O(0) => uart_receiver_instance_Result(4),
      S(3) => uart_receiver_instance_c_s3_7_rt_54,
      S(2) => uart_receiver_instance_c_s3_6_rt_76,
      S(1) => uart_receiver_instance_c_s3_5_rt_73,
      S(0) => uart_receiver_instance_c_s3_4_rt_71
    );
  uart_receiver_instance_c_s3_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(6),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_6_rt_76
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_25_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_25_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_5 : X_FF
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_5_CLK,
      I => uart_receiver_instance_Result(5),
      O => uart_receiver_instance_c_s3(5),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(5),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_5_rt_73
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_26_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_26_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_4 : X_FF
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_4_CLK,
      I => uart_receiver_instance_Result(4),
      O => uart_receiver_instance_c_s3(4),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => uart_receiver_instance_c_s3(4),
      ADR4 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_4_rt_71
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_27_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_27_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_11 : X_FF
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_11_CLK,
      I => uart_receiver_instance_Result_11_1,
      O => uart_receiver_instance_c_brg(11),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(11),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_11_rt_303
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_52_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_52_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_10 : X_FF
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_10_CLK,
      I => uart_receiver_instance_Result_10_1,
      O => uart_receiver_instance_c_brg(10),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_brg_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y78"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_brg_cy_7_Q_894,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_brg_cy_11_Q_899,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_brg_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_brg_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_brg_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result_11_1,
      O(2) => uart_receiver_instance_Result_10_1,
      O(1) => uart_receiver_instance_Result_9_1,
      O(0) => uart_receiver_instance_Result_8_1,
      S(3) => uart_receiver_instance_c_brg_11_rt_303,
      S(2) => uart_receiver_instance_c_brg_10_rt_325,
      S(1) => uart_receiver_instance_c_brg_9_rt_322,
      S(0) => uart_receiver_instance_c_brg_8_rt_320
    );
  uart_receiver_instance_c_brg_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(10),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_10_rt_325
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_53_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_53_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_9 : X_FF
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_9_CLK,
      I => uart_receiver_instance_Result_9_1,
      O => uart_receiver_instance_c_brg(9),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(9),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_9_rt_322
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_54_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_54_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_8 : X_FF
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_8_CLK,
      I => uart_receiver_instance_Result_8_1,
      O => uart_receiver_instance_c_brg(8),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(8),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_8_rt_320
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_55_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_55_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_27 : X_FF
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_27_CLK,
      I => uart_receiver_instance_Result(27),
      O => uart_receiver_instance_c_s3(27),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(27),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_27_rt_194
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_4_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_4_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_26 : X_FF
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_26_CLK,
      I => uart_receiver_instance_Result(26),
      O => uart_receiver_instance_c_s3(26),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_s3_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y70"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_s3_cy_23_Q_874,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_s3_cy_27_Q_879,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_s3_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_s3_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_s3_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result(27),
      O(2) => uart_receiver_instance_Result(26),
      O(1) => uart_receiver_instance_Result(25),
      O(0) => uart_receiver_instance_Result(24),
      S(3) => uart_receiver_instance_c_s3_27_rt_194,
      S(2) => uart_receiver_instance_c_s3_26_rt_216,
      S(1) => uart_receiver_instance_c_s3_25_rt_213,
      S(0) => uart_receiver_instance_c_s3_24_rt_211
    );
  uart_receiver_instance_c_s3_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(26),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_26_rt_216
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_5_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_5_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_25 : X_FF
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_25_CLK,
      I => uart_receiver_instance_Result(25),
      O => uart_receiver_instance_c_s3(25),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(25),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_25_rt_213
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_6_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_6_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_24 : X_FF
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_24_CLK,
      I => uart_receiver_instance_Result(24),
      O => uart_receiver_instance_c_s3(24),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => uart_receiver_instance_c_s3(24),
      ADR4 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_24_rt_211
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_7_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_3 : X_FF
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_3_CLK,
      I => uart_receiver_instance_Result_3_1,
      O => uart_receiver_instance_c_brg(3),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(3),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_3_rt_255
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_60_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_60_D5LUT_O_UNCONNECTED
    );
  ProtoComp4_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X48Y76"
    )
    port map (
      O => uart_receiver_instance_c_brg_3_ProtoComp4_CYINITGND_0
    );
  uart_receiver_instance_c_brg_2 : X_FF
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_2_CLK,
      I => uart_receiver_instance_Result_2_1,
      O => uart_receiver_instance_c_brg(2),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_brg_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y76"
    )
    port map (
      CI => '0',
      CYINIT => uart_receiver_instance_c_brg_3_ProtoComp4_CYINITGND_0,
      CO(3) => uart_receiver_instance_Mcount_c_brg_cy_3_Q_888,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_brg_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_brg_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_brg_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => uart_receiver_instance_Result_3_1,
      O(2) => uart_receiver_instance_Result_2_1,
      O(1) => uart_receiver_instance_Result_1_1,
      O(0) => uart_receiver_instance_Result_0_1,
      S(3) => uart_receiver_instance_c_brg_3_rt_255,
      S(2) => uart_receiver_instance_c_brg_2_rt_266,
      S(1) => uart_receiver_instance_c_brg_1_rt_264,
      S(0) => uart_receiver_instance_Mcount_c_brg_lut(0)
    );
  uart_receiver_instance_c_brg_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(2),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_2_rt_266
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_61_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_61_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_1 : X_FF
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_1_CLK,
      I => uart_receiver_instance_Result_1_1,
      O => uart_receiver_instance_c_brg(1),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(1),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_1_rt_264
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_62_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_62_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_0 : X_FF
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_0_CLK,
      I => uart_receiver_instance_Result_0_1,
      O => uart_receiver_instance_c_brg(0),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_brg_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(0),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_Mcount_c_brg_lut(0)
    );
  baud_rate_generator_instance_Mcompar_n0002_lut_1_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y76",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lut_1_3_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_31 : X_FF
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_31_CLK,
      I => uart_receiver_instance_Result(31),
      O => uart_receiver_instance_c_s3(31),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => uart_receiver_instance_c_s3(31),
      ADR4 => '1',
      ADR3 => '1',
      O => uart_receiver_instance_c_s3_31_rt_221
    );
  uart_receiver_instance_c_s3_30 : X_FF
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_30_CLK,
      I => uart_receiver_instance_Result(30),
      O => uart_receiver_instance_c_s3(30),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_s3_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y71"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_s3_cy_27_Q_879,
      CYINIT => '0',
      CO(3) => NLW_uart_receiver_instance_Mcount_c_s3_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_s3_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_s3_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_s3_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_uart_receiver_instance_Mcount_c_s3_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result(31),
      O(2) => uart_receiver_instance_Result(30),
      O(1) => uart_receiver_instance_Result(29),
      O(0) => uart_receiver_instance_Result(28),
      S(3) => uart_receiver_instance_c_s3_31_rt_221,
      S(2) => uart_receiver_instance_c_s3_30_rt_236,
      S(1) => uart_receiver_instance_c_s3_29_rt_224,
      S(0) => uart_receiver_instance_c_s3_28_rt_230
    );
  uart_receiver_instance_c_s3_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(30),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_30_rt_236
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_29 : X_FF
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_29_CLK,
      I => uart_receiver_instance_Result(29),
      O => uart_receiver_instance_c_s3(29),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_s3(29),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_29_rt_224
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_2_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_2_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_s3_28 : X_FF
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_s3_28_CLK,
      I => uart_receiver_instance_Result(28),
      O => uart_receiver_instance_c_s3(28),
      RST => uart_receiver_instance_rst_cr_s3_OR_1_o,
      SET => GND
    );
  uart_receiver_instance_c_s3_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => uart_receiver_instance_c_s3(28),
      ADR4 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_s3_28_rt_230
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y71",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_3_A5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_7 : X_FF
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_7_CLK,
      I => uart_receiver_instance_Result_7_1,
      O => uart_receiver_instance_c_brg(7),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(7),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_7_rt_275
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_56_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_56_D5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_6 : X_FF
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_6_CLK,
      I => uart_receiver_instance_Result_6_1,
      O => uart_receiver_instance_c_brg(6),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_Mcount_c_brg_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X48Y77"
    )
    port map (
      CI => uart_receiver_instance_Mcount_c_brg_cy_3_Q_888,
      CYINIT => '0',
      CO(3) => uart_receiver_instance_Mcount_c_brg_cy_7_Q_894,
      CO(2) => NLW_uart_receiver_instance_Mcount_c_brg_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcount_c_brg_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcount_c_brg_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_receiver_instance_Result_7_1,
      O(2) => uart_receiver_instance_Result_6_1,
      O(1) => uart_receiver_instance_Result_5_1,
      O(0) => uart_receiver_instance_Result_4_1,
      S(3) => uart_receiver_instance_c_brg_7_rt_275,
      S(2) => uart_receiver_instance_c_brg_6_rt_297,
      S(1) => uart_receiver_instance_c_brg_5_rt_294,
      S(0) => uart_receiver_instance_c_brg_4_rt_292
    );
  uart_receiver_instance_c_brg_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(6),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_6_rt_297
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_57_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_57_C5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_5 : X_FF
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_5_CLK,
      I => uart_receiver_instance_Result_5_1,
      O => uart_receiver_instance_c_brg(5),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(5),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_5_rt_294
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_58_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_58_B5LUT_O_UNCONNECTED
    );
  uart_receiver_instance_c_brg_4 : X_FF
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_c_brg_4_CLK,
      I => uart_receiver_instance_Result_4_1,
      O => uart_receiver_instance_c_brg(4),
      RST => uart_receiver_instance_rst_cr_brg_OR_2_o,
      SET => GND
    );
  uart_receiver_instance_c_brg_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_receiver_instance_c_brg(4),
      ADR3 => '1',
      ADR5 => '1',
      O => uart_receiver_instance_c_brg_4_rt_292
    );
  baud_rate_generator_instance_Mcompar_n0002_lutdi1_59_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X48Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_baud_rate_generator_instance_Mcompar_n0002_lutdi1_59_A5LUT_O_UNCONNECTED
    );
  rx_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      O => rx_IBUF_681,
      I => rx
    );
  ProtoComp15_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      I => rx_IBUF_681,
      O => rx_IBUF_0
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
  led_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => '0',
      O => led(4)
    );
  led_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => '0',
      O => led(3)
    );
  led_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => '0',
      O => led(0)
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_Q_654,
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_0
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y81"
    )
    port map (
      CI => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_Q_942,
      CYINIT => '0',
      CO(3) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_CO_3_UNCONNECTED,
      CO(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_CO_1_UNCONNECTED,
      CO(0) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_Q_654,
      DI(3) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_DI_3_UNCONNECTED,
      DI(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_DI_2_UNCONNECTED,
      DI(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_DI_1_UNCONNECTED,
      DI(0) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi4_652,
      O(3) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_O_3_UNCONNECTED,
      O(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_O_2_UNCONNECTED,
      O(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_O_1_UNCONNECTED,
      O(0) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_O_0_UNCONNECTED,
      S(3) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_S_3_UNCONNECTED,
      S(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_S_2_UNCONNECTED,
      S(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_4_S_1_UNCONNECTED,
      S(0) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_4_Q_659
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y81",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => uart_receiver_instance_c_brg(24),
      ADR1 => uart_receiver_instance_c_brg(25),
      ADR3 => uart_receiver_instance_c_brg(26),
      ADR2 => uart_receiver_instance_c_brg(27),
      ADR4 => uart_receiver_instance_c_brg(28),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_4_Q_659
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y81",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => uart_receiver_instance_c_brg(24),
      ADR1 => uart_receiver_instance_c_brg(25),
      ADR3 => uart_receiver_instance_c_brg(26),
      ADR2 => uart_receiver_instance_c_brg(27),
      ADR4 => uart_receiver_instance_c_brg(28),
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi4_652
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_668,
      I => clk
    );
  ProtoComp15_IMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_668,
      O => clk_BUFGP_IBUFG_0
    );
  led_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => '0',
      O => led(1)
    );
  led_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD65"
    )
    port map (
      I => '0',
      O => led(5)
    );
  led_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD61"
    )
    port map (
      I => '0',
      O => led(6)
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 115 ps
    )
    port map (
      O => uart_receiver_instance_rst_inv_non_inverted,
      I => rst
    );
  ProtoComp16_IMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 115 ps
    )
    port map (
      I => ProtoComp16_IINV_OUT,
      O => uart_receiver_instance_rst_inv
    );
  ProtoComp16_IINV : X_INV
    generic map(
      LOC => "PAD117",
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_rst_inv_non_inverted,
      O => ProtoComp16_IINV_OUT
    );
  baud_rate_generator_instance_s_tick_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y3",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_baud_rate_generator_instance_s_tick_BUFG_IN,
      O => baud_rate_generator_instance_s_tick_BUFG_847
    );
  uart_receiver_instance_rst_cr_brg_OR_2_o_uart_receiver_instance_rst_cr_brg_OR_2_o_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_pack_7,
      O => baud_rate_generator_instance_s_tick_947
    );
  uart_receiver_instance_rst_cr_brg_OR_2_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"CCFCCCFCCCFCCCFC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => uart_receiver_instance_rst_inv,
      ADR2 => uart_receiver_instance_rst_cr_brg_OR_2_o1_950,
      ADR3 => uart_receiver_instance_currentState(2),
      ADR5 => '1',
      O => uart_receiver_instance_rst_cr_brg_OR_2_o
    );
  baud_rate_generator_instance_s_tick_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"AAAA9999"
    )
    port map (
      ADR0 => baud_rate_generator_instance_s_tick_947,
      ADR4 => baud_rate_generator_instance_Mcompar_n0002_cy_5_0,
      ADR1 => uart_receiver_instance_rst_inv,
      ADR3 => '1',
      ADR2 => '1',
      O => baud_rate_generator_instance_s_tick_rstpot_706
    );
  baud_rate_generator_instance_s_tick : X_FF
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_baud_rate_generator_instance_s_tick_CLK,
      I => baud_rate_generator_instance_s_tick_rstpot_706,
      O => baud_rate_generator_instance_s_tick_pack_7,
      RST => GND,
      SET => GND
    );
  uart_receiver_instance_rst_cr_brg_OR_2_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"0088C0C00088F3F3"
    )
    port map (
      ADR1 => uart_receiver_instance_currentState(0),
      ADR4 => uart_receiver_instance_currentState(1),
      ADR2 => uart_receiver_instance_let_7_949,
      ADR0 => uart_receiver_instance_let_15_832,
      ADR3 => uart_receiver_instance_let_s3_948,
      ADR5 => rx_IBUF_0,
      O => uart_receiver_instance_rst_cr_brg_OR_2_o1_950
    );
  uart_receiver_instance_rst_cr_s3_OR_1_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y80",
      INIT => X"FF02FF02FF00FF00"
    )
    port map (
      ADR4 => '1',
      ADR3 => uart_receiver_instance_rst_inv,
      ADR0 => uart_receiver_instance_currentState(0),
      ADR5 => uart_receiver_instance_let_7_949,
      ADR2 => uart_receiver_instance_currentState(2),
      ADR1 => uart_receiver_instance_currentState(1),
      O => uart_receiver_instance_rst_cr_s3_OR_1_o
    );
  uart_receiver_instance_Mmux_currentState_2_GND_6_o_Mux_20_o1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y83",
      INIT => X"0000FFFFCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => uart_receiver_instance_currentState(0),
      ADR4 => uart_receiver_instance_let_7_949,
      ADR1 => rx_IBUF_0,
      O => N2
    );
  uart_receiver_instance_Mmux_currentState_2_GND_6_o_Mux_20_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y83",
      INIT => X"00A000F544004455"
    )
    port map (
      ADR0 => uart_receiver_instance_currentState(1),
      ADR3 => uart_receiver_instance_currentState(2),
      ADR5 => uart_receiver_instance_currentState(0),
      ADR1 => uart_receiver_instance_let_15_832,
      ADR4 => N2,
      ADR2 => uart_receiver_instance_let_s3_948,
      O => uart_receiver_instance_currentState_2_GND_6_o_Mux_20_o
    );
  led_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => '0',
      O => led(7)
    );
  tx_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => NlwBufferSignal_tx_OBUF_I,
      O => tx
    );
  uart_receiver_instance_let_s3 : X_SFF
    generic map(
      LOC => "SLICE_X31Y71",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_receiver_instance_let_s3_CLK,
      I => uart_receiver_instance_c_s3_31_GND_5_o_LessThan_5_o,
      O => uart_receiver_instance_let_s3_948,
      SRST => uart_receiver_instance_rst_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X31Y71",
      INIT => X"3333333333333332"
    )
    port map (
      ADR1 => uart_receiver_instance_c_s3(31),
      ADR4 => uart_receiver_instance_c_s3(27),
      ADR0 => uart_receiver_instance_c_s3(28),
      ADR2 => uart_receiver_instance_c_s3(29),
      ADR3 => uart_receiver_instance_c_s3(30),
      ADR5 => uart_receiver_instance_Mcompar_c_s3_31_GND_5_o_LessThan_5_o_cy_3_0,
      O => uart_receiver_instance_c_s3_31_GND_5_o_LessThan_5_o
    );
  led_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => '0',
      O => led(2)
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => uart_receiver_instance_c_brg(19),
      ADR2 => uart_receiver_instance_c_brg(20),
      ADR3 => uart_receiver_instance_c_brg(21),
      ADR1 => uart_receiver_instance_c_brg(22),
      ADR4 => uart_receiver_instance_c_brg(23),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_3_Q_618
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => uart_receiver_instance_c_brg(19),
      ADR2 => uart_receiver_instance_c_brg(20),
      ADR3 => uart_receiver_instance_c_brg(21),
      ADR1 => uart_receiver_instance_c_brg(22),
      ADR4 => uart_receiver_instance_c_brg(23),
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi3_631
    );
  ProtoComp9_CYINITVCC_1 : X_ONE
    generic map(
      LOC => "SLICE_X50Y80"
    )
    port map (
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_ProtoComp9_CYINITVCC_1
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y80"
    )
    port map (
      CI => '0',
      CYINIT => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_ProtoComp9_CYINITVCC_1,
      CO(3) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_Q_942,
      CO(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi3_631,
      DI(2) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi2_635,
      DI(1) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi1_626,
      DI(0) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi_642,
      O(3) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_cy_3_O_0_UNCONNECTED,
      S(3) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_3_Q_618,
      S(2) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_2_Q_622,
      S(1) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_1_Q_625,
      S(0) => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_0_Q_640
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => uart_receiver_instance_c_brg(14),
      ADR1 => uart_receiver_instance_c_brg(15),
      ADR0 => uart_receiver_instance_c_brg(16),
      ADR2 => uart_receiver_instance_c_brg(17),
      ADR3 => uart_receiver_instance_c_brg(18),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_2_Q_622
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR4 => uart_receiver_instance_c_brg(14),
      ADR1 => uart_receiver_instance_c_brg(15),
      ADR0 => uart_receiver_instance_c_brg(16),
      ADR2 => uart_receiver_instance_c_brg(17),
      ADR3 => uart_receiver_instance_c_brg(18),
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi2_635
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => X"0000000100000001"
    )
    port map (
      ADR3 => uart_receiver_instance_c_brg(9),
      ADR0 => uart_receiver_instance_c_brg(10),
      ADR2 => uart_receiver_instance_c_brg(11),
      ADR1 => uart_receiver_instance_c_brg(12),
      ADR4 => uart_receiver_instance_c_brg(13),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_1_Q_625
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR3 => uart_receiver_instance_c_brg(9),
      ADR0 => uart_receiver_instance_c_brg(10),
      ADR2 => uart_receiver_instance_c_brg(11),
      ADR1 => uart_receiver_instance_c_brg(12),
      ADR4 => uart_receiver_instance_c_brg(13),
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi1_626
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => X"0000000200000002"
    )
    port map (
      ADR1 => uart_receiver_instance_c_brg(5),
      ADR4 => uart_receiver_instance_c_brg(6),
      ADR3 => uart_receiver_instance_c_brg(7),
      ADR0 => uart_receiver_instance_c_brg(4),
      ADR2 => uart_receiver_instance_c_brg(8),
      ADR5 => '1',
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lut_0_Q_640
    );
  uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X50Y80",
      INIT => X"FFFFFFFC"
    )
    port map (
      ADR1 => uart_receiver_instance_c_brg(5),
      ADR4 => uart_receiver_instance_c_brg(6),
      ADR3 => uart_receiver_instance_c_brg(7),
      ADR0 => '1',
      ADR2 => uart_receiver_instance_c_brg(8),
      O => uart_receiver_instance_Mcompar_c_brg_31_GND_5_o_LessThan_7_o_lutdi_642
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_15_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_14_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_13_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_12_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_19_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_19_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_18_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_17_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_16_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_23_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_23_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_22_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_22_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_21_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_21_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_20_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_20_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_27_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_27_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_26_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_26_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_25_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_25_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_24_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_24_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_31_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_31_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_30_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_30_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_29_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_29_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_28_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_28_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_15_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_14_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_13_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_12_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_11_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_10_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_9_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_8_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_23_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_23_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_22_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_22_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_21_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_21_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_20_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_20_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_19_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_19_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_18_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_17_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_16_CLK
    );
  NlwBufferBlock_uart_receiver_instance_nextState_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_currentState_2_GND_6_o_Mux_20_o,
      O => NlwBufferSignal_uart_receiver_instance_nextState_1_CLK
    );
  NlwBufferBlock_uart_receiver_instance_nextState_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_Mram_n00811,
      O => NlwBufferSignal_uart_receiver_instance_nextState_1_IN
    );
  NlwBufferBlock_uart_receiver_instance_nextState_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_currentState_2_GND_6_o_Mux_20_o,
      O => NlwBufferSignal_uart_receiver_instance_nextState_2_CLK
    );
  NlwBufferBlock_uart_receiver_instance_nextState_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_currentState_2_GND_6_o_Mux_20_o,
      O => NlwBufferSignal_uart_receiver_instance_nextState_0_CLK
    );
  NlwBufferBlock_uart_receiver_instance_nextState_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_Mram_n0081,
      O => NlwBufferSignal_uart_receiver_instance_nextState_0_IN
    );
  NlwBufferBlock_uart_receiver_instance_currentState_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_receiver_instance_currentState_2_CLK
    );
  NlwBufferBlock_uart_receiver_instance_currentState_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_nextState_2_827,
      O => NlwBufferSignal_uart_receiver_instance_currentState_2_IN
    );
  NlwBufferBlock_uart_receiver_instance_currentState_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_receiver_instance_currentState_1_CLK
    );
  NlwBufferBlock_uart_receiver_instance_currentState_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_nextState_1_829,
      O => NlwBufferSignal_uart_receiver_instance_currentState_1_IN
    );
  NlwBufferBlock_uart_receiver_instance_currentState_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_receiver_instance_currentState_0_CLK
    );
  NlwBufferBlock_uart_receiver_instance_currentState_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_receiver_instance_nextState_0_824,
      O => NlwBufferSignal_uart_receiver_instance_currentState_0_IN
    );
  NlwBufferBlock_baud_rate_generator_instance_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_baud_rate_generator_instance_counter_4_CLK
    );
  NlwBufferBlock_baud_rate_generator_instance_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_baud_rate_generator_instance_counter_3_CLK
    );
  NlwBufferBlock_baud_rate_generator_instance_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_baud_rate_generator_instance_counter_2_CLK
    );
  NlwBufferBlock_baud_rate_generator_instance_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_baud_rate_generator_instance_counter_1_CLK
    );
  NlwBufferBlock_baud_rate_generator_instance_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_baud_rate_generator_instance_counter_6_CLK
    );
  NlwBufferBlock_baud_rate_generator_instance_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_baud_rate_generator_instance_counter_5_CLK
    );
  NlwBufferBlock_uart_receiver_instance_let_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_receiver_instance_let_15_CLK
    );
  NlwBufferBlock_uart_receiver_instance_let_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_receiver_instance_let_7_CLK
    );
  NlwBufferBlock_baud_rate_generator_instance_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_baud_rate_generator_instance_counter_0_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_3_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_2_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_1_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_0_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_7_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_6_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_5_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_4_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_11_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_10_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_9_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_8_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_27_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_27_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_26_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_26_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_25_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_25_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_24_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_24_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_3_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_2_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_1_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_0_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_31_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_31_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_30_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_30_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_29_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_29_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_s3_28_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_s3_28_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_7_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_6_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_5_CLK
    );
  NlwBufferBlock_uart_receiver_instance_c_brg_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_BUFG_847,
      O => NlwBufferSignal_uart_receiver_instance_c_brg_4_CLK
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_baud_rate_generator_instance_s_tick_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => baud_rate_generator_instance_s_tick_947,
      O => NlwBufferSignal_baud_rate_generator_instance_s_tick_BUFG_IN
    );
  NlwBufferBlock_baud_rate_generator_instance_s_tick_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_baud_rate_generator_instance_s_tick_CLK
    );
  NlwBufferBlock_tx_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tx_OBUF_830,
      O => NlwBufferSignal_tx_OBUF_I
    );
  NlwBufferBlock_uart_receiver_instance_let_s3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_uart_receiver_instance_let_s3_CLK
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

