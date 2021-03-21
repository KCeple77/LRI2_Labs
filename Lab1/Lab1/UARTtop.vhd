----------------------------------------------------------------------------------
-- Company: FER
-- Engineers: NB, KC, LD 
-- 
-- Create Date:    18:53:00 03/20/2021 
-- Design Name: 
-- Module Name:    UARTtop - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UARTtop is
	port (
		clk, rst: in std_logic;
		rx: in std_logic;
		tx: out std_logic;
		
		r_done, w_done: out std_logic;
		w_start: in std_logic;
		
		w_data: in std_logic_vector(7 downto 0);
		r_data: out std_logic_vector(7 downto 0)
	);
end UARTtop;

architecture Behavioral of UARTtop is
	component baud_rate_generator
		port (
			clk, rst: in std_logic;
			tick: out std_logic
		);
	end component;

begin

brg: component baud_rate_generator port map(
	clk => clk,
	rst => rst,
	tick => open
);

end Behavioral;

