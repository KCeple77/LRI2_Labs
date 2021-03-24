--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: UARTtop_timesim.vhd
-- /___/   /\     Timestamp: Wed Mar 24 11:54:20 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2 -pcf UARTtop.pcf -rpw 100 -tpw 0 -ar Structure -tm UARTtop -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim UARTtop.ncd UARTtop_timesim.vhd 
-- Device	: 6slx45fgg676-2 (PRODUCTION 1.23 2013-10-13)
-- Input file	: UARTtop.ncd
-- Output file	: E:\FaksHub\2020_2021\2.Semester_2020_2021\LRI2\Labs\Lab1\Lab1\netgen\par\UARTtop_timesim.vhd
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
    rx : in STD_LOGIC := 'X'; 
    tx : out STD_LOGIC 
  );
end UARTtop;

architecture Structure of UARTtop is
  signal clk_IBUF_0 : STD_LOGIC; 
  signal rx_IBUF_0 : STD_LOGIC; 
  signal clk_IBUF_1 : STD_LOGIC; 
  signal rx_IBUF_3 : STD_LOGIC; 
begin
  clk_IBUF : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_IBUF_1,
      I => clk
    );
  ProtoComp0_IMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_IBUF_1,
      O => clk_IBUF_0
    );
  tx_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => '1',
      O => tx
    );
  rx_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      O => rx_IBUF_3,
      I => rx
    );
  ProtoComp0_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      I => rx_IBUF_3,
      O => rx_IBUF_0
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

