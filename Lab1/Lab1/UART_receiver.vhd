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
		clk:  in std_logic;
		rx, tick: in std_logic;
		d_out: out std_logic_vector(7 downto 0);
		rx_done : out std_logic
	);
end UART_receiver;

architecture UART_receiver_arch of UART_receiver is
	type State is (
		Idle, State1, State3, State4
	);
	signal currentState : State := Idle;
	signal nextState : State;
	
	signal c_s3 : integer := 0;
	signal c_brg : integer := 0;
	signal inc_s3 : std_logic := '0';
	signal cr_s3 : std_logic := '0';
	signal cr_brg : std_logic := '0';
	
	signal let_s3 : std_logic := '0';
	signal let_7 : std_logic := '0';
	signal let_15 : std_logic := '0';
	
	signal sampled_bit : std_logic := '0';
	signal shift_enable : std_logic := '0';
	signal shift_reg : std_logic_vector(7 downto 0) := (others => '0');
begin
	-- FSM inc_s3 Register
--	process(clk) is
--	begin
--		if rising_edge(clk) then
--			if to_x01(rst) = '1' then
--				r_inc_s3 <= '0';
--			elsif to_x01(cr_s3) = '1' then
--				r_inc_s3 <= '0';
--			else
--				r_inc_s3 <= inc_s3;
--			end if;
--		end if;
--	end process;

	-- FSM S3 Counter
	process(inc_s3, cr_s3) is
	begin
		if to_x01(cr_s3) = '1' then
			c_s3 <= 0;
		elsif rising_edge(inc_s3) then
			c_s3 <= c_s3 + 1;
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
	
	-- FSM Comparator - S3_CNT vs. N-2=6 -> looks if the FSM has been in S3 for N-1 bit read cycles
	let_s3 <= '1' when (c_s3 >= 8) else '0';
	
	-- FSM Comparator - BRG_CNT vs. 7 -> looks if the baud rate generator has generated 8 ticks
	let_7 <= '1' when (c_brg >= 8) else '0';
	
	-- FSM Comparator - BRG_CNT vs. 15 -> looks if the baud rate generator has generated 16 ticks
	let_15 <= '1' when (c_brg >= 16) else '0';
	
	-- FSM Synchronous part -> Register
	process(clk) is
	begin
		if rising_edge(clk) then
			currentState <= nextState;
		end if;
	end process;
		
	
	-- FSM Asynchronous part -> Next State Decoder + Output Decoder
	process(let_s3, let_7, let_15, currentState, rx) is
		--variable d_out_new: std_logic_vector(7 downto 0) := (others => '0');
		--variable tmp: std_logic;
		--variable baud_rate_generator_counter : integer := 0;
	begin
		rx_done <= '0';
		shift_enable <= '0';
		inc_s3 <= '0';
		
		cr_s3 <= '0';
		cr_brg <= '0';
		
		case currentState is
			when Idle =>
				if to_x01(rx) = '0' then
					nextState <= State1;
					cr_brg <= '1';		-- Reset tick counter
				end if;
			when State1 =>
				-- Need to wait until tick counter reaches 7!
				if to_x01(let_7) = '1' then
--					assert (rx = '0')
--						report "RX Start bit not low?!"
--						severity ERROR;
					
					nextState <= State3;
					cr_brg <= '1';		-- Reset tick counter once again
					cr_s3 <= '1';		-- Reset s3 cycles counter
				end if;
			when State3 =>
				if to_x01(let_s3) = '1' then
					-- Last bit sampled - go and sample the stop bit!
						nextState <= State4;
						cr_brg <= '0';
				elsif to_x01(let_15) = '1' then
					-- 15 ticks reached means we're in the middle of the bit - sample and increase the counter!
					sampled_bit <= rx;
					shift_enable <= '1';
					inc_s3 <= '1';
					cr_brg <= '1';
				end if;
			when State4 =>
				if to_x01(let_15) = '1' then
					-- (Maybe assert?) Check stop bit!
--					assert (to_x01(rx) = '1')
--						report "Stop bit should be high - before going into the idle state!"
--						severity ERROR;
					
					nextState <= Idle;
					rx_done <= '1';
				end if;
			when others => null;
		end case;
	end process;
	
	
	-- Shift register that will be used for storing the data -- Serial in, Parallel out = SIPO
	process(shift_enable) is
	begin
		if rising_edge(shift_enable) then
			-- Shift and write inside new val
			shift_reg(6 downto 0) <= shift_reg(7 downto 1);
			shift_reg(7) <= sampled_bit;
		end if;
	end process;
	
	-- Shift reg to d_out
	d_out <= shift_reg;

end UART_receiver_arch;