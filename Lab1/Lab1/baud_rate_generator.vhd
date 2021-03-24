----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:14:14 03/20/2021 
-- Design Name: 
-- Module Name:    baud_rate_generator - Behavioral 
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

entity baud_rate_generator is
	port (
		clk, rst: in std_logic;
		tick: out std_logic
	);
end baud_rate_generator;

architecture brg_arch of baud_rate_generator is
	signal s_tick : std_logic := '0';
begin
	process(clk) is
		variable counter: integer := 0;
	begin
		if rising_edge(clk) then
			if To_x01(rst) = '1' then
				counter := 0;
				s_tick <= '0';
			else
				counter := counter + 1;
			
				if (counter = 88) then
					counter := 0;
					s_tick <= not s_tick;
				end if;
			end if;
		end if;
	end process;
	
	tick <= s_tick;
end brg_arch;

