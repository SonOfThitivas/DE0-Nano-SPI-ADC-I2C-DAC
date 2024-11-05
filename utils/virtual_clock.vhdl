-- synthesis library utils
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- the virt_clk drives logic level operations
entity virtual_clock is
    PORT (
        CLOCK_50 : IN STD_LOGIC;
		  ADC_CLK  : in integer range 800_000 to 3_200_000 := 800_000;
        virt_clk : BUFFER STD_LOGIC := '0'
    );
END entity;

-- synthesis library utils
architecture vclock of virtual_clock is
	constant CLK50 : integer := 50_000_000;
begin
    process(CLOCK_50)
        variable vclk_cnt : unsigned(5 downto 0) := (others => '0');
		  variable cnt		  : integer := CLK50 / ADC_CLK / 2;
    begin
        if rising_edge(CLOCK_50) then
            vclk_cnt := vclk_cnt + 1;
            if vclk_cnt = cnt then
                vclk_cnt := (others => '0');
                virt_clk <= not virt_clk;
            end if;
        end if;
    end process;
end vclock;
