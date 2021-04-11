----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:19:22 03/24/2021 
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
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           tick : out  STD_LOGIC);
end baud_rate_generator;

architecture baud_rate_generator_arch of baud_rate_generator is
	constant CNT_CMP : integer := 326;
	signal s_tick : std_logic;
begin
	process(clk) is
		variable counter : integer := 0;
	begin
		if rising_edge(clk) then
			if to_x01(rst) = '0' then
				counter := 0;
				s_tick <= '0';
			else
				counter := counter + 1;
				
				if (counter = CNT_CMP) then
					counter := 0;
					
					if(s_tick = '0') then
						s_tick <= '1';
					else
						s_tick <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;
	
	tick <= s_tick;
end baud_rate_generator_arch;

