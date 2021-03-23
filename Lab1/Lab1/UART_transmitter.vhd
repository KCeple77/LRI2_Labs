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
		clk, rst:  in std_logic;
		
		tick: in std_logic;
		d_in: in std_logic_vector(7 downto 0);
		
		tx_start : in std_logic;
		tx : out std_logic := '1';
		tx_done : out std_logic
	);	
end UART_transmitter;

architecture UART_transmitter_arch of UART_transmitter is
type State is (
		Idle, Conveyance, EndState
	);
	signal currentState : State := Idle;
	signal nextState : State;
	
	-- Baud Rate Tick Generator Counter
	signal c_brg : integer := 0;
	signal cr_brg : std_logic := '0';
	signal let_brg : std_logic := '0';
	
	-- Conveyance State Duration Counter
	signal c_conv : integer := 0;
	signal cr_conv : std_logic := '0';
	signal inc_conv : std_logic := '0';
	signal let_conv : std_logic := '0';
	
	signal shift_enable : std_logic := '0';
	signal shift_reg : std_logic_vector(7 downto 0) := (others => '0');
	
	signal r_inc_conv : std_logic := '0';
begin
	
	-- FSM BRG Comparator - BRG_CNT vs. 16 - must count 16 impulses
	let_brg <= '1' when c_brg = 16 else '0';
	
	-- FSM Baud Rate Tick Counter
	process(tick, rst, cr_brg) is
	begin
		if rising_edge(rst) then
			c_brg <= 0;
		elsif rising_edge(cr_brg) then
			c_brg <= 0;
		elsif rising_edge(tick) then
			c_brg <= c_brg + 1;
		end if;
	end process;
	
	-- FSM Conveyance Comparator - CONV_CNT vs. N-1 - 
	let_conv <= '1' when c_conv = 8 else '0';
	
	-- FSM Conveyance Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(rst) = '1' then
				r_inc_conv <= '0';
			elsif to_x01(cr_conv) = '1' then
				r_inc_conv <= '0';
			else
				r_inc_conv <= inc_conv;
			end if;
		end if;
	end process;
	
	-- FSM Conveyance Counter - Need to count N-1 bits to have been conveyed
	process(r_inc_conv, rst, cr_conv) is
	begin
		if rising_edge(rst) then
			c_conv <= 0;
		elsif rising_edge(cr_conv) then
			c_conv <= 0;
		elsif rising_edge(r_inc_conv) then
			c_conv <= c_conv + 1;
		end if;
	end process;
	
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
	process(tx_start, let_brg, let_conv) is
	begin
		cr_brg <= '0';
		shift_enable <= '0';
		
		cr_conv <= '0';
		inc_conv <= '0';
		
		case currentState is
			when Idle =>
				if rising_edge(tx_start) then
					-- Okay, put the data into the shift register
					-- Send the start bit
					-- Restart the tick counter
					shift_reg <= d_in;
					tx <= '0';
					
					cr_brg <= '1';
					nextState <= Conveyance;
					cr_conv <= '1';
				end if;
			when Conveyance =>
				if rising_edge(let_conv) then
					-- Add clock here because of asynchronism ???
					nextState <= EndState;
					cr_brg <= '1';
				elsif rising_edge(let_brg) then
					-- Send bit, reset brg tick counter, and increment the amount of bits sent!
					shift_enable <= '1';
					inc_conv <= '1';
					cr_brg <= '1';
				end if;
			when EndState =>
				if rising_edge(let_brg) then
					-- Send stop bit, and go back into idle state!
					tx <= '1';
					nextState <= Idle;
				end if;
			when others => null;
		end case;
	end process;
	
	
	-- Shift register that will be used for storing the data -- Serial in, Parallel out = SIPO
	process(shift_enable, rst) is
	begin
		if rising_edge(rst) then
			shift_reg <= (others => '0');
		elsif rising_edge(shift_enable) then
			-- Shift LSB out, and the rest of the register to the right
			tx <= shift_reg(0);
			shift_reg(6 downto 0) <= shift_reg(7 downto 1);
			shift_reg(7) <= '0';
		end if;
	end process;
end UART_transmitter_arch;

