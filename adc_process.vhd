library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library utils;
use utils.machine_state_type.all;
use utils.fonts.all;

entity adc_process is
    PORT (
        CLOCK_50   : IN STD_LOGIC;
		  
        ADC_SDAT   : IN STD_LOGIC;
        ADC_SADDR,
        ADC_CS_N,
        ADC_SCLK   : OUT STD_LOGIC;
		  
		  DATA_RECEIVE : out STD_LOGIC_VECTOR(11 downto 0) := (others => '0')  
		  
    );
END entity;

architecture main of adc_process is

    signal adc_state				  : machine_state_type; -- RO here
    signal virt_clk, sclk_i2c             : STD_LOGIC := '0';
    signal adc_run				  : STD_LOGIC := '0';
    signal adc_data				  : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
    signal adc_addr             : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
	 
	 
begin
    vclock : entity utils.virtual_clock PORT MAP (CLOCK_50 => CLOCK_50, virt_clk => virt_clk);
--	 i2c_c: entity work.i2c_clk port map (areset=>'0', inclk0=>CLOCK_50, c0=>sclk_i2c, locked=>open);

    adc : entity work.de0nano_adc PORT MAP (
        input => adc_addr, output => adc_data, run => adc_run,
        state => adc_state, virt_clk => virt_clk,
        CLOCK_50 => CLOCK_50,
        ADC_SADDR => ADC_SADDR, ADC_SDAT => ADC_SDAT,
        ADC_CS_N => ADC_CS_N, ADC_SCLK => ADC_SCLK
    );

    process(virt_clk, adc_state)
        variable voltage_level : unsigned(5 downto 0) := (others => '0');

        -- ADC vars
        variable sleep : unsigned(10 downto 0) := (others => '0');
    begin
        -- check if state allows us to do anything
        if rising_edge(virt_clk) then

            -- handle ADC
            if (adc_state = ready and adc_run = '0') then
                if sleep = 0 then
                    -- display only the first 6 bits of the received 12 bit value
                    -- LED <= adc_data(11 downto 6);
                    voltage_level := unsigned(adc_data(11 downto 6));
                    adc_addr <= (others => '0');
                    adc_run <= '1';
                end if;
                sleep := sleep + 1;
            elsif (adc_state = execute and adc_run = '1') then
                -- reset control signals
                adc_run <= '0';
            end if;
				
				DATA_RECEIVE <= adc_data;

        end if;
    end process;

end main;