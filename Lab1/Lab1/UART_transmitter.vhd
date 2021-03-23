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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UART_transmitter is port (
		clk, rst:  in std_logic;
		
		tick: in std_logic;
		d_in: in std_logic_vector(7 downto 0);
		
		tx_start : in std_logic;
		tx : out std_logic;
		tx_done : out std_logic
	);	
end UART_transmitter;

architecture UART_transmitter_arch of UART_transmitter is
type State is (
		Idle, Sending
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
	
	signal sampled_bit : std_logic := '0';
	signal shift_enable : std_logic := '0';
	signal shift_reg : std_logic_vector(7 downto 0) := (others => '0');
	
	constant sample_period : time := 104166.6666667 ns;		-- Sample time for 9600 bitrate
begin
	-- FSM S3 Counter
	process(inc_s3, rst, cr_s3) is
	begin
		if to_x01(rst) = '1' then
			c_s3 <= (others => '0');
		elsif to_x01(cr_s3) = '1' then
			c_s3 <= (others => '0');
		elsif rising_edge(inc_s3) then
			c_s3 <= std_logic_vector(to_unsigned(to_integer(unsigned(c_s3)) + 1, c_s3'length));
		end if;
	end process;
	
	-- FSM Baud Rate Tick Counter
	process(tick, rst, cr_brg) is
	begin
		if to_x01(rst) = '1' then
			c_brg <= (others => '0');
		elsif to_x01(cr_brg) = '1' then
			c_brg <= (others => '0');
		elsif rising_edge(tick) then
			c_brg <= std_logic_vector(to_unsigned(to_integer(unsigned(c_brg)) + 1, c_brg'length));
		end if;
	end process;
	
	-- FSM Comparator - S3_CNT vs. N-2=6 -> looks if the FSM has been in S3 for N-1 bit read cycles
	let_s3 <= '1' when to_integer(unsigned(c_s3)) = 7 else '0';
	
	-- FSM Comparator - BRG_CNT vs. 7 -> looks if the baud rate generator has generated 8 ticks
	let_7 <= '1' when to_integer(unsigned(c_brg)) = 7 else '0';
	
	-- FSM Comparator - BRG_CNT vs. 15 -> looks if the baud rate generator has generated 16 ticks
	let_15 <= '1' when to_integer(unsigned(c_brg)) = 15 else '0';
	
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
	process(let_s3, let_7, let_15, currentState, rx) is
		--variable d_out_new: std_logic_vector(7 downto 0) := (others => '0');
		--variable tmp: std_logic;
		--variable baud_rate_generator_counter : integer := 0;
	begin
		
		
		case currentState is
			when Idle =>
				
			
			when others => null;
		end case;
	end process;
	
	
	-- Shift register that will be used for storing the data -- Serial in, Parallel out = SIPO
	process(shift_enable, rst) is
	begin
		if to_x01(rst) = '1' then
			shift_reg <= (others => '0');
		elsif rising_edge(shift_enable) then
			-- Shift and write inside new val
			shift_reg(6 downto 0) <= shift_reg(7 downto 1);
			shift_reg(7) <= sampled_bit;
		end if;
	end process;
	
	-- Shift reg to d_out
	d_out <= shift_reg;
end UART_transmitter_arch;

