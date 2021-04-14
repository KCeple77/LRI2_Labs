----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:54:16 03/23/2021 
-- Design Name: 
-- Module Name:    UART_transmitter - Behavioral 
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

entity UART_transmitter is port (
		clk:  in std_logic;
		rst: in std_logic := '1';
		
		tick: in std_logic;
		d_in: in std_logic_vector(7 downto 0);
		
		tx_start : in std_logic;
		
		
		tx : out std_logic;
		tx_done : out std_logic
	);	
end UART_transmitter;

architecture UART_transmitter_arch of UART_transmitter is
	type State is (
		Idle, Conveyance, EndState
	);
	signal currentState, nextState: State;
	
	-- Baud Rate Tick Generator Counter
	signal c_brg : integer;
	signal cr_brg : std_logic;
	
	signal reg_rst : std_logic := '1';
	signal reg_tx_start : std_logic;
	signal reg_d_in : std_logic_vector(7 downto 0);
	signal shift_reg : std_logic_vector(7 downto 0);
begin
	
	-- ################################################################################################################################################
	-- #################################################				I/O REGISTERS 			###############################################################
	-- ################################################################################################################################################

	-- rst Register
	process(clk) is
	begin
		if rising_edge(clk) then
			reg_rst <= rst;
		end if;
	end process;
	
	-- d_in Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				reg_d_in <= (others => '0');
			else
				reg_d_in <= d_in;
				
			end if;
		end if;
	end process;
	
	-- tx_start Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				reg_tx_start <= '0';
			else
				reg_tx_start <= tx_start;
			end if;
		end if;
	end process;
		
	-- ################################################################################################################################################
	-- #################################################				FSM					##################################################################
	-- ################################################################################################################################################

	-- FSM Baud Rate Tick Counter
	process(clk) is
		variable ticked : boolean;
	begin
		if falling_edge(clk) then
			if to_x01(reg_rst) = '0' or to_x01(cr_brg) = '1' then
				c_brg <= 0;				
				ticked := False;
			elsif to_x01(tick) = '1' and not ticked then
				c_brg <= c_brg + 1;
				ticked := true;
			elsif to_x01(tick) = '0' then
				ticked := false;
			else
				null;
			end if;
		end if;
	end process;
	
	-- FSM process
	process(reg_rst, clk) is
		variable c_conv : integer;
	begin
		if to_x01(reg_rst) = '0' then
			currentState <= Idle;
			nextState <= Idle;
			tx <= '1';
			tx_done <= '0';
			cr_brg <= '1';
			c_conv := 0;
		elsif rising_edge(clk) then
			tx_done <= '0';
			cr_brg <= '0';
			
			case currentState is
				when Idle =>
					cr_brg <= '1';
					
					if to_x01(reg_tx_start) = '1' then
						-- Send start bit
						shift_reg <= reg_d_in;
						tx <= '0';
						nextState <= Conveyance;
						c_conv := 0;
						cr_brg <= '1';
					end if;
				when Conveyance =>
					if c_conv = 9 then
						tx <= '1';
						nextState <= EndState;
						cr_brg <= '1';
					elsif c_brg >= 16 then
						-- Send bit, reset brg tick counter, and increment the amount of bits sent!
						tx <= shift_reg(0);
						shift_reg(6 downto 0) <= shift_reg(7 downto 1);
						c_conv := c_conv + 1;
						cr_brg <= '1';
					end if;
				when EndState =>
					if c_brg >= 16 then
						-- Send stop bit, and go back into idle state!
						nextState <= Idle;
						tx_done <= '1';
					end if;
				when others => null;
			end case;
			
			currentState <= nextState;
		end if;
	end process;
end UART_transmitter_arch;

