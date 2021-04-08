----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:21:37 03/23/2021 
-- Design Name: 
-- Module Name:    echo_device - Behavioral 
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

entity echo_device is
	Port ( 
		clk: in STD_LOGIC;
		rst: in STD_LOGIC := '1';
		r_done : in  STD_LOGIC;
		w_done : in  STD_LOGIC;
		w_start : out  STD_LOGIC
		);
end echo_device;

architecture echo_device_arch of echo_device is
	type State is (
		Waiting, Echoing
	);
	
	signal currentState, nextState : State;
	
	signal reg_w_start : std_logic := '0';
begin

	-- Input/Output Registers
	process(clk) is	
	begin
		if rising_edge(clk) then
			if to_x01(rst) = '0' then
				w_start <= '0';
			else
				w_start <= reg_w_start;
			end if;
		end if;
	end process;
	
	-- FSM Asynchronous part - next state decoder and output decoder
	process(rst, clk) is
	begin
		if to_x01(rst) = '0' then
			currentState <= Waiting;
			nextState <= Waiting;
			reg_w_start <= '0';
		elsif rising_edge(clk) then
			reg_w_start <= '0';
			
			case currentState is
				when Waiting =>
					if to_x01(r_done) = '1' then
						reg_w_start <= '1';
						nextState <= Echoing;
					end if;
				when Echoing =>
					if to_x01(w_done) = '1' then
						nextState <= Waiting;
					end if;
				when others => null;
			end case;
			
			currentState <= nextState;
		end if;
	end process;

end echo_device_arch;

