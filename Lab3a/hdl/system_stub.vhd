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
    dip_gpio_GPIO_IO_pin : inout std_logic_vector(7 downto 0);
    push_gpio_GPIO_IO_pin : inout std_logic_vector(4 downto 0);
    led_gpio_GPIO_IO_pin : inout std_logic_vector(7 downto 0);
    axi_s6_ddrx_0_mcbx_dram_addr_pin : out std_logic_vector(13 downto 0);
    axi_s6_ddrx_0_mcbx_dram_ba_pin : out std_logic_vector(2 downto 0);
    axi_s6_ddrx_0_mcbx_dram_ras_n_pin : out std_logic;
    axi_s6_ddrx_0_mcbx_dram_cas_n_pin : out std_logic;
    axi_s6_ddrx_0_mcbx_dram_we_n_pin : out std_logic;
    axi_s6_ddrx_0_mcbx_dram_cke_pin : out std_logic;
    axi_s6_ddrx_0_mcbx_dram_clk_pin : out std_logic;
    axi_s6_ddrx_0_mcbx_dram_clk_n_pin : out std_logic;
    axi_s6_ddrx_0_mcbx_dram_dq : inout std_logic_vector(15 downto 0);
    axi_s6_ddrx_0_mcbx_dram_dqs : inout std_logic;
    axi_s6_ddrx_0_mcbx_dram_dqs_n : inout std_logic;
    axi_s6_ddrx_0_mcbx_dram_udqs : inout std_logic;
    axi_s6_ddrx_0_mcbx_dram_udqs_n : inout std_logic;
    axi_s6_ddrx_0_mcbx_dram_udm_pin : out std_logic;
    axi_s6_ddrx_0_mcbx_dram_ldm_pin : out std_logic;
    axi_s6_ddrx_0_mcbx_dram_odt_pin : out std_logic;
    axi_s6_ddrx_0_rzq : inout std_logic;
    axi_s6_ddrx_0_zio : inout std_logic;
    axi_uartlite_0_RX_pin : in std_logic;
    axi_uartlite_0_TX_pin : out std_logic
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      RESET : in std_logic;
      CLK_P : in std_logic;
      CLK_N : in std_logic;
      dip_gpio_GPIO_IO_pin : inout std_logic_vector(7 downto 0);
      push_gpio_GPIO_IO_pin : inout std_logic_vector(4 downto 0);
      led_gpio_GPIO_IO_pin : inout std_logic_vector(7 downto 0);
      axi_s6_ddrx_0_mcbx_dram_addr_pin : out std_logic_vector(13 downto 0);
      axi_s6_ddrx_0_mcbx_dram_ba_pin : out std_logic_vector(2 downto 0);
      axi_s6_ddrx_0_mcbx_dram_ras_n_pin : out std_logic;
      axi_s6_ddrx_0_mcbx_dram_cas_n_pin : out std_logic;
      axi_s6_ddrx_0_mcbx_dram_we_n_pin : out std_logic;
      axi_s6_ddrx_0_mcbx_dram_cke_pin : out std_logic;
      axi_s6_ddrx_0_mcbx_dram_clk_pin : out std_logic;
      axi_s6_ddrx_0_mcbx_dram_clk_n_pin : out std_logic;
      axi_s6_ddrx_0_mcbx_dram_dq : inout std_logic_vector(15 downto 0);
      axi_s6_ddrx_0_mcbx_dram_dqs : inout std_logic;
      axi_s6_ddrx_0_mcbx_dram_dqs_n : inout std_logic;
      axi_s6_ddrx_0_mcbx_dram_udqs : inout std_logic;
      axi_s6_ddrx_0_mcbx_dram_udqs_n : inout std_logic;
      axi_s6_ddrx_0_mcbx_dram_udm_pin : out std_logic;
      axi_s6_ddrx_0_mcbx_dram_ldm_pin : out std_logic;
      axi_s6_ddrx_0_mcbx_dram_odt_pin : out std_logic;
      axi_s6_ddrx_0_rzq : inout std_logic;
      axi_s6_ddrx_0_zio : inout std_logic;
      axi_uartlite_0_RX_pin : in std_logic;
      axi_uartlite_0_TX_pin : out std_logic
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
      dip_gpio_GPIO_IO_pin => dip_gpio_GPIO_IO_pin,
      push_gpio_GPIO_IO_pin => push_gpio_GPIO_IO_pin,
      led_gpio_GPIO_IO_pin => led_gpio_GPIO_IO_pin,
      axi_s6_ddrx_0_mcbx_dram_addr_pin => axi_s6_ddrx_0_mcbx_dram_addr_pin,
      axi_s6_ddrx_0_mcbx_dram_ba_pin => axi_s6_ddrx_0_mcbx_dram_ba_pin,
      axi_s6_ddrx_0_mcbx_dram_ras_n_pin => axi_s6_ddrx_0_mcbx_dram_ras_n_pin,
      axi_s6_ddrx_0_mcbx_dram_cas_n_pin => axi_s6_ddrx_0_mcbx_dram_cas_n_pin,
      axi_s6_ddrx_0_mcbx_dram_we_n_pin => axi_s6_ddrx_0_mcbx_dram_we_n_pin,
      axi_s6_ddrx_0_mcbx_dram_cke_pin => axi_s6_ddrx_0_mcbx_dram_cke_pin,
      axi_s6_ddrx_0_mcbx_dram_clk_pin => axi_s6_ddrx_0_mcbx_dram_clk_pin,
      axi_s6_ddrx_0_mcbx_dram_clk_n_pin => axi_s6_ddrx_0_mcbx_dram_clk_n_pin,
      axi_s6_ddrx_0_mcbx_dram_dq => axi_s6_ddrx_0_mcbx_dram_dq,
      axi_s6_ddrx_0_mcbx_dram_dqs => axi_s6_ddrx_0_mcbx_dram_dqs,
      axi_s6_ddrx_0_mcbx_dram_dqs_n => axi_s6_ddrx_0_mcbx_dram_dqs_n,
      axi_s6_ddrx_0_mcbx_dram_udqs => axi_s6_ddrx_0_mcbx_dram_udqs,
      axi_s6_ddrx_0_mcbx_dram_udqs_n => axi_s6_ddrx_0_mcbx_dram_udqs_n,
      axi_s6_ddrx_0_mcbx_dram_udm_pin => axi_s6_ddrx_0_mcbx_dram_udm_pin,
      axi_s6_ddrx_0_mcbx_dram_ldm_pin => axi_s6_ddrx_0_mcbx_dram_ldm_pin,
      axi_s6_ddrx_0_mcbx_dram_odt_pin => axi_s6_ddrx_0_mcbx_dram_odt_pin,
      axi_s6_ddrx_0_rzq => axi_s6_ddrx_0_rzq,
      axi_s6_ddrx_0_zio => axi_s6_ddrx_0_zio,
      axi_uartlite_0_RX_pin => axi_uartlite_0_RX_pin,
      axi_uartlite_0_TX_pin => axi_uartlite_0_TX_pin
    );

end architecture STRUCTURE;

