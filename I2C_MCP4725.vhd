library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2C_MCP4725 is
    port (
        clk         : in std_logic;          -- 50 MHz clock
        reset       : in std_logic;          -- Asynchronous reset
        start       : in std_logic;          -- Signal to start transmission
        dac_data    : in std_logic_vector(11 downto 0);  -- 12-bit data for DAC
        scl         : out std_logic;          -- I2C Clock
        sda         : inout std_logic;        -- I2C Data
        done        : out std_logic           -- Transmission done
    );
end entity I2C_MCP4725;

architecture Behavioral of I2C_MCP4725 is

    signal scl_int    : std_logic := '1';
    signal sda_int    : std_logic := '1';
    signal state      : integer range 0 to 2 := 0;
    signal counter    : integer := 0;
    signal bit_count  : integer := 0;

    constant I2C_ADDRESS : std_logic_vector(6 downto 0) := "0110000"; -- MCP4725 Address

begin

    -- SCL Clock Generation
    process(clk)
    begin
        if rising_edge(clk) then
            if counter = 250000 then  -- Adjust for I2C speed (50MHz / 100kHz)
                scl_int <= not scl_int;
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    -- I2C State Machine
    process(clk, reset)
    begin
        if reset = '1' then
            state <= 0;
            bit_count <= 0;
            done <= '0';
            sda_int <= '1';
        elsif rising_edge(clk) then
            case state is
                when 0 =>  -- Idle State
                    if start = '1' then
                        sda_int <= '0';  -- Start Condition
                        state <= 1;
                    end if;

                when 1 =>  -- Sending Address
                    if bit_count < 7 then
                        sda_int <= I2C_ADDRESS(6 - bit_count); -- Send Address
                        bit_count <= bit_count + 1;
                    else
                        sda_int <= '0';  -- Write bit
                        state <= 2;
                        bit_count <= 0;
                    end if;

                when 2 =>  -- Sending Data
                    if bit_count < 12 then
                        sda_int <= dac_data(11 - bit_count); -- Send 12-bit data
                        bit_count <= bit_count + 1;
                    else
                        sda_int <= '1';  -- Stop Condition
                        done <= '1';     -- Transmission Done
                        state <= 0;
                    end if;
            end case;
        end if;
    end process;

    scl <= scl_int;  -- Assign internal signal to output

end architecture Behavioral;
