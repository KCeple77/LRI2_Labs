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
		led : out std_logic_vector(7 downto 0);
		rx_done : out std_logic
	);
end UART_receiver;

architecture UART_receiver_arch of UART_receiver is
	type State is (
		Idle, State1, State3, State4
	);
	signal currentState : State := Idle;
	signal nextState : State;
	
	signal c_brg : integer := 0;
	signal cr_brg : std_logic := '0';
	signal reg_cr_brg : std_logic := '0';
	signal cleared_brg : std_logic := '0';
	signal inc_brg : std_logic := '0';
	
	signal c_s3 : integer := 0;
	signal cr_s3 : std_logic := '0';
	signal reg_cr_s3 : std_logic := '0';
	signal cleared_s3 : std_logic := '0';
	signal inc_s3 : std_logic := '0';
	
	signal let_s3 : std_logic := '0';
	signal let_7 : std_logic := '0';
	signal let_15 : std_logic := '0';
	
	--signal sampled_bit : std_logic := '0';
	signal shift_enable : std_logic := '0';
	signal reg_shift_enable : std_logic := '0';
	signal shift_reg : std_logic_vector(7 downto 0) := (others => '0');
	signal shifted : std_logic := '0';
	
	signal reg_rst : std_logic := '0';
	signal reg_rx : std_logic := '0';
	signal reg_rx_done : std_logic := '0';
	
	signal ledout : std_logic_vector(7 downto 0) := (others => '0');
	
begin

	-- rst Register
	process(clk) is
	begin
		if rising_edge(clk) then
			reg_rst <= rst;
		end if;
	end process;
	
	-- RX Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				reg_rx <= '0';
			else
				reg_rx <= rx;
			end if;
		end if;
	end process;
	
	-- LED Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				led <= (others => '0');
			else
				led <= ledout;
			end if;
		end if;
	end process;
	
	-- RX_Done Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				rx_done <= '0';
			else
				rx_done <= reg_rx_done;
			end if;
		end if;
	end process;
	
	-- shift_enable Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				reg_shift_enable  <= '0';
			else
				reg_shift_enable <= shift_enable;
			end if;
		end if;
	end process;
	
	-- cr_s3 Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				reg_cr_s3  <= '0';
			else
				reg_cr_s3 <= cr_s3;
			end if;
		end if;
	end process;

	-- cr_brg Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				reg_cr_brg  <= '0';
			else
				reg_cr_brg <= cr_brg;
			end if;
		end if;
	end process;

	-- FSM S3 Counter
	process(tick, reg_rst, reg_cr_s3) is
	begin
		if to_x01(reg_rst) = '0' or to_x01(reg_cr_s3) = '1' then
			c_s3 <= 0;
			cleared_s3 <= '1';
		elsif to_x01(tick) = '1' then
			c_s3 <= c_s3 + 1;
		else
			cleared_s3 <= '0';
		end if;
	end process;
	
	-- FSM Baud Rate Tick Counter
	process(tick, reg_rst, reg_cr_brg) is
	begin
		if to_x01(reg_rst) = '0' or to_x01(reg_cr_brg) = '1' then
			c_brg <= 0;
			cleared_brg <= '1';
		elsif to_x01(tick) = '1' then
			c_brg <= c_brg + 1;
		else
			cleared_brg <= '0';
		end if;
	end process;
	
	-- FSM Comparator - S3_CNT vs. N-2=6 -> looks if the FSM has been in S3 long enough
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				let_s3 <= '0';
			else
				if c_s3 >= 136 then
					let_s3 <= '1';
				else
					let_s3 <= '0';
				end if;
			end if;
		end if;
	end process;
	
	-- FSM Comparator - BRG_CNT vs. 7 -> looks if the baud rate generator has generated 8 ticks
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				let_7 <= '0';
			else
				if c_brg >= 8 then
					let_7 <= '1';
				else
					let_7 <= '0';
				end if;
			end if;
		end if;
	end process;
	
	-- FSM Comparator - BRG_CNT vs. 15 -> looks if the baud rate generator has generated 16 ticks
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				let_15 <= '0';
			else
				if c_brg >= 16 then
					let_15 <= '1';
				else
					let_15 <= '0';
				end if;
			end if;
		end if;
	end process;
	
	-- FSM Synchronous part -> Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				currentState <= Idle;
			else
				currentState <= nextState;
			end if;
		end if;
	end process;
		
	
	-- FSM Asynchronous part -> Next State Decoder + Output Decoder
	process(let_s3, let_7, let_15, currentState, reg_rx, shifted, cleared_s3, cleared_brg) is
	begin
		
		if to_x01(shifted) = '1' then
			shift_enable <= '0';
		end if;
		
		if to_x01(cleared_s3) = '1' then
			cr_s3 <= '0';
		end if;
		
		if to_x01(cleared_brg) = '1' then
			cr_brg <= '0';
		end if;
		
		reg_rx_done <= '0';		-- Output signal that must be Register-ed!
		
		case currentState is
			when Idle =>
			
				ledout(4) <= '1';
				ledout(5) <= '0';
				ledout(6) <= '0';
				ledout(7) <= '0';
				
				if to_x01(reg_rx) = '0' then
					ledout(0) <= '1';
					nextState <= State1;
					cr_brg <= '1';		-- Reset tick counter
				end if;
			when State1 =>
			
				ledout(4) <= '0';
				ledout(5) <= '1';
				ledout(6) <= '0';
				ledout(7) <= '0';
				
				-- Need to wait until tick counter reaches 7!
				if to_x01(let_7) = '1' then
--					assert (rx = '0')
--						report "RX Start bit not low?!"
--						severity ERROR;
					
					ledout(1) <= '1';
					nextState <= State3;
					cr_brg <= '1';		-- Reset tick counter once again
					cr_s3 <= '1';		-- Reset s3 cycles counter
				end if;
			when State3 =>
				ledout(4) <= '0';
				ledout(5) <= '0';
				ledout(6) <= '1';
				ledout(7) <= '0';
				if to_x01(let_s3) = '1' then
					-- Last bit sampled - go and sample the stop bit!
						ledout(2) <= '1';
						nextState <= State4;
						--cr_brg <= '1';
				elsif to_x01(let_15) = '1' then
					-- 15 ticks reached means we're in the middle of the bit - sample and increase the counter!
					shift_enable <= '1';
					cr_brg <= '1';
				end if;
			when State4 =>
				ledout(4) <= '0';
				ledout(5) <= '0';
				ledout(6) <= '0';
				ledout(7) <= '1';
				if to_x01(let_15) = '1' then
					-- (Maybe assert?) Check stop bit!
--					assert (to_x01(rx) = '1')
--						report "Stop bit should be high - before going into the idle state!"
--						severity ERROR;
					
					ledout(3) <= '1';
					nextState <= Idle;
					reg_rx_done <= '1';
				end if;
			when others => null;
		end case;
	end process;
	
	-- Shift register that will be used for storing the data -- Serial in, Parallel out = SIPO
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				shift_reg <= (others => '0');
				shifted <= '0';
			elsif to_x01(reg_shift_enable) = '1' and shifted = '0' then
				shifted <= '1';
				shift_reg(6 downto 0) <= shift_reg(7 downto 1);
				shift_reg(7) <= reg_rx;
			else
				shifted <= '0';
			end if;
		end if;
	end process;
	
	-- Shift reg to d_out
	d_out <= shift_reg;

end UART_receiver_arch;