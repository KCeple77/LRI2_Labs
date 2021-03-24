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
begin
	
	uart_receiver_instance: UART_receiver PORT MAP (
          clk => clk,
          rst => rst,
          rx => rx,
          tick => tick,
          d_out => led,
          rx_done => tx
        );
	
	baud_rate_generator_instance: component baud_rate_generator port map(
		clk => clk,
		rst => rst,
		tick => tick
	);

end uart_top_arch;
