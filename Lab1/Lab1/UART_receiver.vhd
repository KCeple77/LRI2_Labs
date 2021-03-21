----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:47:53 03/20/2021 
-- Design Name: 
-- Module Name:    UART_receiver - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UART_receiver is
	port (
		clk, rst:  in std_logic;
		rx, tick: in std_logic;
		d_out: out std_logic_vector(7 downto 0);
		rx_done : out std_logic
	);
end UART_receiver;

architecture UART_arch of UART_receiver is
	type State is (
		Idle, State1, State2, State3, State4
	);
	signal currentState : State := Idle;
	signal nextState : State;
	
	signal c_s3 : std_logic_vector(2 downto 0) := (others => '0');
	signal c_brg : std_logic_vector(3 downto 0) := (others => '0');
	signal inc_s3 : std_logic := '0';
	signal cr_s3 : std_logic := '0';
	signal cr_brg : std_logic := '0';
	
	signal let_s3 : std_logic := '0';
	signal let_7 : std_logic := '0';
	signal let_15 : std_logic := '0';
	
	constant brg_clk_duration: integer := 88;
begin
	-- FSM S3 Counter
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(rst) = '1' then
				c_s3 <= (others => '0');
			elsif to_x01(cr_s3) = '1' then
				c_s3 <= (others => '0');
			else
				c_s3 <= std_logic_vector(to_unsigned(to_integer(unsigned(c_s3)) + 1, c_s3'length));
			end if;
		end if;
	end process;
	
	-- FSM Baud Rate Tick Counter
	
	
	-- FSM Comparator -> looks if the counter has counted up to brg_clk_duration
	
	
	-- FSM Synchronous part -> Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(rst) = '1' then
				currentState <= Idle;
			else
				currentState <= nextState;
			end if;
		end if;
	end process;
		
	
	-- FSM Asynchronous part -> Next State Decoder + Output Decoder
	process(tick, let_fsm, currentState, rx) is
		variable d_out_new: std_logic_vector(7 downto 0) := (others => '0');
		variable tmp: std_logic;
		variable baud_rate_generator_counter : integer := 0;
	begin
		rx_done <= '0';
		
		case currentState is
			when Idle =>
				if falling_edge(rx) then
					nextState <= State1;
					baud_rate_generator_counter := 0;
				end if;
			when State1 =>
				
			when State2 =>
			when State3 =>
			when State4 =>
			when others => null;
		end case;
	end process;
	
	
	-- Shift register
	process(clk) is
		variable d_out_new : std_logic_vector(7 downto 0) := (others => '0');
	begin
		if rising_edge(clk) then
			if to_x01(rst) = '1' then
				
			else
			
			end if;
		end if;
	end process;

end UART_arch;

