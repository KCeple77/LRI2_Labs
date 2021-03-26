--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:48:27 03/24/2021
-- Design Name:   
-- Module Name:   E:/FaksHub/2020_2021/2.Semester_2020_2021/LRI2/Labs/Lab1a/Lab1a/uart_top_tb.vhd
-- Project Name:  Lab1a
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: uart_top
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
 
ENTITY uart_top_tb IS
END uart_top_tb;
 
ARCHITECTURE behavior OF uart_top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT uart_top
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         rx : IN  std_logic;
         tx : OUT  std_logic;
			led : out  STD_LOGIC_VECTOR (7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '1';
   signal rx : std_logic := '1';

 	--Outputs
   signal tx : std_logic;
	signal led : STD_LOGIC_VECTOR (7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 37.03703704 ns;
	constant sample_period : time := 104166.6666667 ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: uart_top PORT MAP (
          clk => clk,
          rst => rst,
          rx => rx,
          tx => tx,
			 led => led
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
		rst <= '1';

      wait for clk_period*10;

      -- insert stimulus here 
		rx <= '0', 		-- Start bit
			'0' after sample_period, '0' after 2*sample_period, '1' after 3*sample_period, '1' after 4*sample_period,
			'1' after 5*sample_period, '0' after 6*sample_period, '0' after 7*sample_period, '0' after 8*sample_period,
			'1' after 9 * sample_period;		-- Stop bit

      wait;
   end process;

END;
