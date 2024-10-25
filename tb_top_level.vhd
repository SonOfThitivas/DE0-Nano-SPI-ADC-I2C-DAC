library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_top_level is
end tb_top_level;

architecture sim of tb_top_level is
    -- Constants
    constant CLOCK_PERIOD : time := 20 ns;  -- 50 MHz clock
    constant RESET_PERIOD : time := 100 ns;  -- Reset duration

    -- Signals for the DUT (Device Under Test)
    signal CLOCK_50 : std_logic := '0';
    signal RST : std_logic := '1';
    
    -- ADC SPI Protocol Signals
    signal ADC_SDAT : std_logic := '0';
    signal ADC_SADDR : std_logic;
    signal ADC_CS_N : std_logic;
    signal ADC_SCLK : std_logic;

    -- DAC I2C Protocol Signals
    signal SDA : std_logic := 'Z';  -- High-Z state
    signal SCL : std_logic := 'Z';  -- High-Z state

    -- Stimulus Signals
    signal ADC_DATA : std_logic_vector(11 downto 0);
    
begin
    -- Instantiate the DUT (Device Under Test)
    dut: entity work.top_level
        port map (
            CLOCK_50 => CLOCK_50,
            RST => RST,
            ADC_SDAT => ADC_SDAT,
            ADC_SADDR => ADC_SADDR,
            ADC_CS_N => ADC_CS_N,
            ADC_SCLK => ADC_SCLK,
            SDA => SDA,
            SCL => SCL
        );

    -- Clock generation process
    clk_process: process
    begin
        while true loop
            CLOCK_50 <= '0';
            wait for CLOCK_PERIOD / 2;
            CLOCK_50 <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
    end process;

    -- Reset process
    reset_process: process
    begin
        RST <= '1';  -- Set reset high
        wait for RESET_PERIOD;  -- Hold reset for a while
        RST <= '0';  -- Release reset
        wait;  -- Wait forever
    end process;

    -- ADC Simulation process
    adc_process: process
        variable data_value : std_logic_vector(11 downto 0);  -- Variable to hold the 12-bit data
    begin
        wait for 50 ns;  -- Wait for reset to be released

        -- Simulate ADC Data
        for i in 0 to 4095 loop  -- 12-bit data range
            ADC_SADDR <= '0';  -- Example address
            ADC_CS_N <= '0';   -- Active low chip select
            ADC_SCLK <= '0';   -- Start clock low
            
            -- Convert integer to std_logic_vector
            data_value := std_logic_vector(to_unsigned(i, 12));  -- Assign the current value as a 12-bit vector

            -- Send each bit of the 12-bit data
            for j in 11 downto 0 loop
                ADC_SDAT <= data_value(j);  -- Assign the j-th bit to ADC_SDAT
                wait for CLOCK_PERIOD;  -- Wait for one clock period

                ADC_SCLK <= '1';   -- Set clock high
                wait for CLOCK_PERIOD;  -- Wait for one clock period

                ADC_SCLK <= '0';   -- Set clock low for the next bit
            end loop;

            ADC_CS_N <= '1';  -- Deactivate chip select
            wait for 10 ns;    -- Small delay before next data
        end loop;

        -- Wait to observe DAC output after ADC data is sent
        wait for 500 ns;
        
        -- Stop the simulation
        assert false report "End of simulation" severity note;
        wait;
    end process;

end sim;