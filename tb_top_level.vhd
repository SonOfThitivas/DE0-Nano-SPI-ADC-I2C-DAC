library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_top_level is
end tb_top_level;

architecture sim of tb_top_level is
    -- Component declaration for the top_level entity
    component top_level is
        port (
            CLOCK_50    : in std_logic;
            RST          : in std_logic;
            data_out     : out std_logic_vector(11 downto 0);
            ADC_SDAT     : in std_logic;
            ADC_SADDR    : out std_logic;
            ADC_CS_N     : out std_logic;
            ADC_SCLK     : out std_logic;
            SDA          : inout std_logic;
            SCL          : inout std_logic
        );
    end component;

    -- Testbench signals
    signal CLOCK_50    : std_logic := '0';
    signal RST         : std_logic := '1';
    signal data_out    : std_logic_vector(11 downto 0);
    signal ADC_SDAT    : std_logic := '0';  -- Assuming it is initially low
    signal ADC_SADDR   : std_logic;
    signal ADC_CS_N    : std_logic;
    signal ADC_SCLK    : std_logic;
    signal SDA         : std_logic := 'Z'; -- I2C bus is high impedance
    signal SCL         : std_logic := 'Z';

    -- Clock period definition
    constant clk_period : time := 20 ns; -- 50 MHz clock

    -- Lookup table for sine wave
    type sine_table_type is array(0 to 63) of integer;
    constant sine_table : sine_table_type := (
    	2048, 2203, 2354, 2499, 2624, 2728, 2806, 2857,
    	2879, 2879, 2857, 2806, 2728, 2624, 2499, 2354,
    	2203, 2048, 1893, 1742, 1591, 1446, 1314, 1190,
    	1077, 976, 889, 816, 758, 717, 693, 688,
    	693, 717, 758, 816, 889, 976, 1077, 1190,
    	1314, 1446, 1591, 1742, 1893, 2048, 2203, 2354,
    	2499, 2624, 2728, 2806, 2857, 2879, 2879, 2857,
    	2806, 2728, 2624, 2499, 2354, 2203, 2048, 0  -- Add an additional value to make it 64
	);


    -- Variables for the sine wave simulation
    signal index       : integer := 0;  -- Index for sine lookup
    signal sine_value  : integer;

begin
    -- Instantiate the top_level design
    uut: top_level port map (
        CLOCK_50 => CLOCK_50,
        RST => RST,
        data_out => data_out,
        ADC_SDAT => ADC_SDAT,
        ADC_SADDR => ADC_SADDR,
        ADC_CS_N => ADC_CS_N,
        ADC_SCLK => ADC_SCLK,
        SDA => SDA,
        SCL => SCL
    );

    -- Clock generation process
    clk_process : process
    begin
        while true loop
            CLOCK_50 <= '0';
            wait for clk_period / 2;
            CLOCK_50 <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Test process to simulate a continuously varying microphone signal
    stimulus_process : process
    begin
        -- Initialize signals
        RST <= '1';
        wait for 100 ns; -- Wait for some time before releasing reset
        
        -- Release reset
        RST <= '0';
        wait for 20 ns;
        RST <= '1';

        -- Simulate a continuously varying signal
        while true loop
            -- Get the sine value from the lookup table
            sine_value <= sine_table(index);
            
            -- Assign the sine value to ADC_SDAT (convert to std_logic)
            ADC_SDAT <= std_logic(to_unsigned(sine_value, 12)(11)); -- Set the MSB for ADC_SDAT
            
            -- Increment index and wrap around
            index <= (index + 1) mod 64;
            
            wait for 40 ns; -- Adjust to simulate sampling rate
        end loop;

        -- Wait for processing to complete
        wait for 500 ns;

        -- Finish simulation
        wait;
    end process;

end sim;
