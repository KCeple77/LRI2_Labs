----------------------------------------------------------------------------------
-- Company: FER
-- Engineers: NB, KC, LD 
-- 
-- Create Date:    18:53:00 03/20/2021 
-- Design Name: 
-- Module Name:    UARTtop - Behavioral 
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

entity UARTtop is
	port (
		clk: in std_logic;
		rx: in std_logic;
		tx: out std_logic
	);
end UARTtop;

architecture UARTtop_arch of UARTtop is
	
	component UART_controller
		port (
			clk: in std_logic;
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
			clk: in STD_LOGIC;
			r_done : in  STD_LOGIC;
			w_start : out  STD_LOGIC;
			w_done : in  STD_LOGIC
		);
	end component;
	
	signal s_dr_in, s_dr_out : std_logic_vector(7 downto 0);
	signal s_r_done, s_w_start, s_w_done : std_logic;
begin

data_reg:
	process(clk) is
	begin
		if rising_edge(clk) then
			s_dr_out <= s_dr_in;
		end if;
	end process;
	
uart_controller_instance: component UART_controller port map(
		clk => clk,
		rx => rx, tx => tx,
		r_done => s_r_done, w_done => s_w_done, w_start => s_w_start, 
		w_data => s_dr_out,
		r_data => s_dr_in
	);

echo_device_instance: component echo_device port map(
		clk => clk,
		r_done => s_r_done,
		w_start => s_w_start,
		w_done => s_w_done
	);

end UARTtop_arch;