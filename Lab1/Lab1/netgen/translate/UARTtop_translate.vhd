--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: UARTtop_translate.vhd
-- /___/   /\     Timestamp: Wed Mar 24 11:12:17 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm UARTtop -w -dir netgen/translate -ofmt vhdl -sim UARTtop.ngd UARTtop_translate.vhd 
-- Device	: 6slx45fgg676-2
-- Input file	: UARTtop.ngd
-- Output file	: E:\FaksHub\2020_2021\2.Semester_2020_2021\LRI2\Labs\Lab1\Lab1\netgen\translate\UARTtop_translate.vhd
-- # of Entities	: 1
-- Design Name	: UARTtop
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

entity UARTtop is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    rx : in STD_LOGIC := 'X'; 
    tx : out STD_LOGIC 
  );
end UARTtop;

architecture Structure of UARTtop is
  signal tx_OBUF_0 : STD_LOGIC; 
  signal clk_IBUF_5 : STD_LOGIC; 
  signal rst_IBUF_6 : STD_LOGIC; 
  signal rx_IBUF_7 : STD_LOGIC; 
begin
  XST_VCC : X_ONE
    port map (
      O => tx_OBUF_0
    );
  clk_IBUF : X_BUF
    port map (
      I => clk,
      O => clk_IBUF_5
    );
  rst_IBUF : X_BUF
    port map (
      I => rst,
      O => rst_IBUF_6
    );
  rx_IBUF : X_BUF
    port map (
      I => rx,
      O => rx_IBUF_7
    );
  tx_OBUF : X_OBUF
    port map (
      I => tx_OBUF_0,
      O => tx
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

