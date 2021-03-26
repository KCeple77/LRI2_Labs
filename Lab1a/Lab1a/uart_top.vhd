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
           tx : out  STD_LOGIC
			  );
end uart_top;

architecture uart_top_arch of uart_top is
	
	component UART_controller
		port (
			clk, rst: in std_logic;
			rx: in std_logic;
			tx: out std_logic;
			
			r_done, w_done: out std_logic;
			w_start: in std_logic;
			
			w_data: in std_logic_vector(7 downto 0);
			r_data: out std_logic_vector(7 downto 0)
		);
	end component;
	
	
	component echo_device
		Port ( 
			clk, rst: in STD_LOGIC;
			r_done : in  STD_LOGIC;
			w_start : out  STD_LOGIC;
			w_done : in  STD_LOGIC
		);
	end component;
	
	signal reg_rx : std_logic;
	signal reg_rst : std_logic;
	
	signal s_dr_in, s_dr_out : std_logic_vector(7 downto 0);
	signal s_r_done, s_w_start, s_w_done : std_logic;
	
begin
	
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
	
	-- Rst Register
	process(clk) is
	begin
		if rising_edge(clk) then
			reg_rst <= rst;
		end if;
	end process;
	
	-- LED Register
--	process(clk) is
--	begin
--		if rising_edge(clk) then
--			if to_x01(reg_rst) = '0' then
--				reg_led_out <= (others => '0');
--			else
--				reg_led_out <= reg_led_in;
--			end if;
--		end if;
--	end process;
--	led <= reg_led_out;
	
	data_reg:
	process(clk, reg_rst) is
	begin
		if to_x01(reg_rst) = '0' then
			s_dr_out <= (others => '0');
		elsif rising_edge(clk) then
			s_dr_out <= s_dr_in;
		end if;
	end process;
	
	uart_controller_instance: component UART_controller port map(
		clk => clk, rst => reg_rst,
		rx => reg_rx, tx => tx,
		r_done => s_r_done, w_done => s_w_done, w_start => s_w_start, 
		w_data => s_dr_out,
		r_data => s_dr_in
	);
	
	echo_device_instance: component echo_device port map(
		clk => clk, rst => reg_rst,
		r_done => s_r_done,
		w_start => s_w_start,
		w_done => s_w_done
	);
end uart_top_arch;

