--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:46:46 03/23/2021
-- Design Name:   
-- Module Name:   E:/FaksHub/2020_2021/2.Semester_2020_2021/LRI2/Labs/Lab1/Lab1/uart_transmitter_tb.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART_transmitter
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
 
library work;
use work.transmitter_debug_pkg.all;
 
ENTITY uart_transmitter_tb IS
END uart_transmitter_tb;
 
ARCHITECTURE behavior OF uart_transmitter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_transmitter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         tick : IN  std_logic;
         d_in : IN  std_logic_vector(7 downto 0);
         tx_start : IN  std_logic;
         tx : OUT  std_logic;
         tx_done : OUT  std_logic
        );
    END COMPONENT;
    
	 COMPONENT baud_rate_generator
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         tick : OUT  std_logic
        );
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal tick : std_logic;
   signal d_in : std_logic_vector(7 downto 0) := (others => '0');
   signal tx_start : std_logic := '0';

 	--Outputs
   signal tx : std_logic;
   signal tx_done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 37.03703704 ns;
	
	-- Spy signals
	signal shift_reg : std_logic_vector(8 downto 0);
 
BEGIN 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_transmitter PORT MAP (
          clk => clk,
          rst => rst,
          tick => tick,
          d_in => d_in,
          tx_start => tx_start,
          tx => tx,
          tx_done => tx_done
        );
		  
  brg: baud_rate_generator PORT MAP (
	 clk => clk,
	 rst => rst,
	 tick => tick
	);

	shift_reg <= global_shift_reg;

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
		d_in <= "00011100";
		tx_start <= '1';
		
      wait;
   end process;

END;
