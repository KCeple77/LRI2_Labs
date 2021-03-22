--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:33:54 03/22/2021
-- Design Name:   
-- Module Name:   E:/FaksHub/2020_2021/2.Semester_2020_2021/LRI2/Labs/Lab1/Lab1/UART_receiver_tb.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART_receiver
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY UART_receiver_tb IS
END UART_receiver_tb;
 
ARCHITECTURE behavior OF UART_receiver_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_receiver
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         rx : IN  std_logic;
         tick : IN  std_logic;
         d_out : OUT  std_logic_vector(7 downto 0);
         rx_done : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal rx : std_logic := '0';
   signal tick : std_logic := '0';

 	--Outputs
   signal d_out : std_logic_vector(7 downto 0);
   signal rx_done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1/27e6 s;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_receiver PORT MAP (
          clk => clk,
          rst => rst,
          rx => rx,
          tick => tick,
          d_out => d_out,
          rx_done => rx_done
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
