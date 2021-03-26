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
	signal currentState : State;
	signal nextState : State;
	
	signal c_brg : integer;
	signal cr_brg : std_logic;
	signal cleared_brg : std_logic;

	signal let_7 : std_logic;
	signal let_15 : std_logic;
	
	--signal sampled_bit : std_logic := '0';
	signal shift_enable : std_logic;
	signal shift_reg : std_logic_vector(7 downto 0);
	signal shifted : std_logic;
	
	signal reg_rst : std_logic;
	signal reg_rx : std_logic;
	signal reg_rx_done : std_logic;
	
	signal reg_ledout : std_logic_vector(7 downto 0);
	signal reg_d_out : std_logic_vector(7 downto 0);
	
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
	
	-- RX Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				reg_rx <= '1';
			else
				reg_rx <= rx;
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
		
	-- D_Out Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				d_out <= (others => '0');
			else
				d_out <= reg_d_out;
			end if;
		end if;
	end process;
	
	-- Led Out Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				led <= (others => '0');
			else
				led <= reg_ledout;
			end if;
		end if;
	end process;
	
		
	-- ################################################################################################################################################
	-- #################################################				FSM					##################################################################
	-- ################################################################################################################################################

	-- FSM Comparators
	let_7 <= '1' when c_brg > 8 else '0';
	let_15 <= '1' when c_brg > 16 else '0';
	
	-- FSM Baud Rate Tick Counter
	process(tick, reg_rst, cr_brg) is
	begin
		if to_x01(reg_rst) = '0' or to_x01(cr_brg) = '1' then
			c_brg <= 0;
			cleared_brg <= '1';
		elsif to_x01(tick) = '1' then
			c_brg <= c_brg + 1;
		else
			cleared_brg <= '0';
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
	process(let_7, let_15, currentState, reg_rx) is
		variable c_s3 : integer := 0;
	begin
		
--		if to_x01(shifted) = '1' then
--			shift_enable <= '0';
--		end if;
--		
--		if to_x01(cleared_brg) = '1' then
--			cr_brg <= '0';
--		end if;
		
		reg_rx_done <= '0';		-- Output signal that must be Register-ed!
		cr_brg <= '0';
		shift_enable <= '0';
		
		case currentState is
			when Idle =>
				cr_brg <= '1';		-- Reset tick counter
			
				reg_ledout(4) <= '1';
				reg_ledout(5) <= '0';
				reg_ledout(6) <= '0';
				reg_ledout(7) <= '0';
				
				if to_x01(reg_rx) = '0' then
					reg_ledout(0) <= '1';
					nextState <= State1;
					cr_brg <= '1';
				end if;
			when State1 =>
			
				reg_ledout(4) <= '0';
				reg_ledout(5) <= '1';
				reg_ledout(6) <= '0';
				reg_ledout(7) <= '0';
				
				-- Need to wait until tick counter reaches 7!
				if to_x01(let_7) = '1' then
					reg_ledout(1) <= '1';
					nextState <= State3;
					cr_brg <= '1';		-- Reset tick counter once again
					c_s3 := 0;			-- Reset s3 cycles counter
				end if;
			when State3 =>
				
				reg_ledout(4) <= '0';
				reg_ledout(5) <= '0';
				reg_ledout(6) <= '1';
				reg_ledout(7) <= '0';
				
				if c_s3 = 8 then
					-- Last bit sampled - go and sample the stop bit!
					reg_ledout(2) <= '1';
					nextState <= State4;
					cr_brg <= '1';
				elsif to_x01(let_15) = '1' then
					-- 15 ticks reached means we're in the middle of the bit - sample and increase the counter!
					shift_enable <= '1';
					c_s3 := c_s3 + 1;
					cr_brg <= '1';
				end if;
			when State4 =>
				
				reg_ledout(4) <= '0';
				reg_ledout(5) <= '0';
				reg_ledout(6) <= '0';
				reg_ledout(7) <= '1';
				
				-- Wait 15 more ticks
				if to_x01(let_15) = '1' then
					reg_ledout(3) <= '1';
					reg_rx_done <= '1';
					nextState <= Idle;
				end if;
			when others => null;
		end case;
	end process;
	
	-- Shift register that will be used for storing the data -- Serial in, Parallel out = SIPO
	process(reg_rst, shift_enable) is
	begin
		if to_x01(reg_rst) = '0' then
			shift_reg <= (others => '0');
			shifted <= '0';
		elsif to_x01(shift_enable) = '1' and to_x01(shifted) = '0' then
			shifted <= '1';
			shift_reg(6 downto 0) <= shift_reg(7 downto 1);
			shift_reg(7) <= reg_rx;
		else
			shifted <= '0';
		end if;
	end process;
	
	reg_d_out <= shift_reg;

end UART_receiver_arch;