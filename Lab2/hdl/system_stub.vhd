-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    RESET : in std_logic;
    CLK_P : in std_logic;
    CLK_N : in std_logic;
    DIP_axi_0_GPIO_IO_I_pin : inout std_logic_vector(7 downto 0);
    led_axi_ip_0_LED_pin : out std_logic_vector(7 downto 0);
    uart_cntrl_0_TX_pin : out std_logic;
    uart_cntrl_0_RX_pin : in std_logic
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      RESET : in std_logic;
      CLK_P : in std_logic;
      CLK_N : in std_logic;
      DIP_axi_0_GPIO_IO_I_pin : inout std_logic_vector(7 downto 0);
      led_axi_ip_0_LED_pin : out std_logic_vector(7 downto 0);
      uart_cntrl_0_TX_pin : out std_logic;
      uart_cntrl_0_RX_pin : in std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      RESET => RESET,
      CLK_P => CLK_P,
      CLK_N => CLK_N,
      DIP_axi_0_GPIO_IO_I_pin => DIP_axi_0_GPIO_IO_I_pin,
      led_axi_ip_0_LED_pin => led_axi_ip_0_LED_pin,
      uart_cntrl_0_TX_pin => uart_cntrl_0_TX_pin,
      uart_cntrl_0_RX_pin => uart_cntrl_0_RX_pin
    );

end architecture STRUCTURE;

