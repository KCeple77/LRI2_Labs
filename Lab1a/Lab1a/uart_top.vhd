----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:43 03/24/2021 
-- Design Name: 
-- Module Name:    uart_top - Behavioral 
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

entity uart_top is
    Port ( 
			  clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           rx : in  STD_LOGIC;
           tx : out  STD_LOGIC;
			  led : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end uart_top;

architecture uart_top_arch of uart_top is
	
	COMPONENT UART_receiver
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         rx : IN  std_logic;
         tick : IN  std_logic;
			
         d_out : OUT  std_logic_vector(7 downto 0);
			led : OUT std_logic_vector(7 downto 0);
         rx_done : OUT  std_logic
        );
    END COMPONENT;
	
	component baud_rate_generator
		port (
			clk, rst: in std_logic;
			tick: out std_logic
		);
	end component;
	
	signal tick : std_logic := '0';
	signal reg_rx : std_logic := '0';
--	signal reg_tx_in : std_logic := '0';
--	signal reg_tx_out : std_logic := '0';
	signal reg_rst : std_logic := '1';
	
	signal reg_rec_d_in : std_logic_vector(7 downto 0) := (others => '0');
	signal reg_rec_d_out : std_logic_vector(7 downto 0) := (others => '0');
	
	signal reg_led_in : std_logic_vector(7 downto 0) := (others => '0');
	signal reg_led_out : std_logic_vector(7 downto 0) := (others => '0');
	
	signal reg_rx_done_in : std_logic := '0';
	signal reg_rx_done_out : std_logic := '0';
begin
	
	-- Receiver Data Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				reg_rec_d_out <= (others => '0');
			else
				reg_rec_d_out <= reg_rec_d_in;
			end if;
		end if;
	end process;
	led <= reg_rec_d_out;
	
	-- Rx_done Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				reg_rx_done_out <= '0';
			else
				reg_rx_done_out <= reg_rx_done_in;
			end if;
		end if;
	end process;
	tx <= reg_rx_done_out;
	
	-- LED Register
	process(clk) is
	begin
		if rising_edge(clk) then
			if to_x01(reg_rst) = '0' then
				reg_led_out <= (others => '0');
			else
				reg_led_out <= reg_led_in;
			end if;
		end if;
	end process;
--	led <= reg_led_out;
	
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
	
	-- TX Register
--	process(clk) is
--	begin
--		if rising_edge(clk) then
--			if to_x01(rst) = '0' then
--				reg_tx <= '0';
--			else
--				reg_tx_out <= reg_tx_in;
--			end if;
--		end if;
--	end process;
	
	-- Rst Register
	process(clk) is
	begin
		if rising_edge(clk) then
			reg_rst <= rst;
		end if;
	end process;
	
	uart_receiver_instance: UART_receiver PORT MAP (
          clk => clk,
          rst => reg_rst,
          rx => reg_rx,
          tick => tick,
          d_out => reg_rec_d_in,				-- This and next line are used for debugging - swap depending on whether the
			 led => open,							-- debugging is done on the board, or in the simulator
          rx_done => reg_rx_done_in
		 );
	
	baud_rate_generator_instance: component baud_rate_generator port map(
		clk => clk,
		rst => reg_rst,
		tick => tick
	);
end uart_top_arch;

