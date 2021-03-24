--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: uart_top_timesim.vhd
-- /___/   /\     Timestamp: Wed Mar 24 22:24:09 2021
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
  signal clk_IBUF_0 : STD_LOGIC; 
  signal rx_IBUF_0 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal rx_IBUF_21 : STD_LOGIC; 
  signal rst_IBUF_26 : STD_LOGIC; 
  signal clk_IBUF_6 : STD_LOGIC; 
begin
  led_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => '0',
      O => led(0)
    );
  tx_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => '0',
      O => tx
    );
  rx_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      O => rx_IBUF_21,
      I => rx
    );
  ProtoComp1_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 115 ps
    )
    port map (
      I => rx_IBUF_21,
      O => rx_IBUF_0
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
      O => rst_IBUF_26,
      I => rst
    );
  ProtoComp1_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 115 ps
    )
    port map (
      I => rst_IBUF_26,
      O => rst_IBUF_0
    );
  led_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => '0',
      O => led(7)
    );
  led_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => '0',
      O => led(1)
    );
  led_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => '0',
      O => led(2)
    );
  led_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => '0',
      O => led(3)
    );
  led_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD65"
    )
    port map (
      I => '0',
      O => led(5)
    );
  led_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => '0',
      O => led(4)
    );
  clk_IBUF : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_IBUF_6,
      I => clk
    );
  ProtoComp1_IMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_IBUF_6,
      O => clk_IBUF_0
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

