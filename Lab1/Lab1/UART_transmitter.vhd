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

library work;
use work.transmitter_debug_pkg.all;

entity UART_transmitter is port (
		clk:  in std_logic;
		
		tick: in std_logic;
		d_in: in std_logic_vector(7 downto 0);
		
		tx_start : in std_logic;
		tx : out std_logic := '1';
		tx_done : out std_logic := '0'
	);	
end UART_transmitter;

architecture UART_transmitter_arch of UART_transmitter is
	type State is (
		Idle, DataPrepping, Conveyance, EndState
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
	signal shift_reg : std_logic_vector(0 to 8) := ('1', others => '0');
	
	signal r_d_in : std_logic_vector(0 to 8) := ('1', others => '0');
	signal r_tx_start : std_logic := '0';
	signal r_tx_start_rst : std_logic := '0';
	
	signal write_enable : std_logic := '0';
	signal shift_reg_out : std_logic := '1';
	
	--signal r_inc_conv : std_logic := '0';
begin
	
	-- Debugging
--	global_shift_reg <= shift_reg;
	
	-- FSM BRG Comparator - BRG_CNT vs. 16 - must count 16 impulses
	let_brg <= '1' when c_brg = 16 else '0';
	
	-- d_in Register
	process(clk) is
	begin
		if rising_edge(clk) then
			r_d_in <= '1' & d_in(7 downto 0);
		end if;
	end process;
	
	-- tx_start Register
	process(clk, r_tx_start_rst) is
	begin
		if rising_edge(clk) then
			if to_x01(r_tx_start_rst) = '1' then
				r_tx_start <= '0';
			else
				r_tx_start <= tx_start;
			end if;
		end if;
	end process;
	
	-- FSM Baud Rate Tick Counter
	process(tick, cr_brg) is
	begin
		if rising_edge(cr_brg) then
			c_brg <= 0;
		elsif rising_edge(tick) then
			c_brg <= c_brg + 1;
		end if;
	end process;
	
	-- FSM Conveyance Comparator - CONV_CNT vs. N-1 - 
	let_conv <= '1' when c_conv = 9 else '0';
	
	-- FSM Conveyance Counter - Need to count N-1 bits to have been conveyed
	process(inc_conv, cr_conv) is
	begin
		if rising_edge(cr_conv) then
			c_conv <= 0;
		elsif rising_edge(inc_conv) then
			c_conv <= c_conv + 1;
		end if;
	end process;
	
	-- FSM Synchronous part -> Register
	process(clk) is
	begin
		if rising_edge(clk) then
			currentState <= nextState;
		end if;
	end process;
		
	
	-- FSM Asynchronous part -> Next State Decoder + Output Decoder
	process(r_tx_start, let_brg, let_conv, currentState, shift_reg_out) is
	begin
		cr_brg <= '0';
		shift_enable <= '0';
		
		cr_conv <= '0';
		inc_conv <= '0';
		
		tx_done <= '0';
		
		case currentState is
			when Idle =>
				if to_x01(r_tx_start) = '1' then
					write_enable <= '1';
					shift_enable <= '1';
					r_tx_start_rst <= '1';
				elsif to_x01(shift_reg_out) = '0' then
					write_enable <= '0';
					nextState <= Conveyance;
					cr_brg <= '1';
					cr_conv <= '1';
					r_tx_start_rst <= '0';
				end if;
			when Conveyance =>
				if to_x01(let_conv) = '1' then
					-- Add clock here because of asynchronism ???
					nextState <= EndState;
				elsif to_x01(let_brg) = '1' then
					-- Send bit, reset brg tick counter, and increment the amount of bits sent!
					shift_enable <= '1';
					inc_conv <= '1';
					cr_brg <= '1';
				end if;
			when EndState =>
				if to_x01(let_brg) = '1' then
					-- Send stop bit, and go back into idle state!
					nextState <= Idle;
					tx_done <= '1';
				end if;
			when others => null;
		end case;
	end process;
	
	-- Shift register that will be used for storing the data -- Serial in, Parallel out = SIPO
	process(shift_enable, write_enable) is
	begin
		if rising_edge(shift_enable) then
			if to_x01(write_enable) = '1' then
				shift_reg <= r_d_in;
				shift_reg_out <= '0';		-- Automatically send start bit!
			else
				-- Shift LSB out, and the rest of the register to the right
				shift_reg_out <= shift_reg(8);
				shift_reg(1 to 8) <= shift_reg(0 to 7);
			end if;
		end if;
	end process;
	
	tx <= shift_reg_out;
end UART_transmitter_arch;

