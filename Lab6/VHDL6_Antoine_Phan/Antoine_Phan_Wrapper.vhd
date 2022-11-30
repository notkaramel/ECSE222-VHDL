library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Antoine_Phan_Wrapper is
    port (
        enable : in std_logic;
        reset : in std_logic;
        clk : in std_logic;
        HEX0 : out std_logic_vector(6 downto 0)
    );
end entity Antoine_Phan_Wrapper;

architecture arch of Antoine_Phan_Wrapper is
    component Antoine_Phan_Clock_Divider is
        port(
            enable, reset, clk: in std_logic;
            en_out: out std_logic
        );
    end component;

    component Antoine_Phan_Counter is
        port(
            enable, reset, clk: in std_logic;
            count: out std_logic_vector(2 downto 0)
        );
    end component;

    component Seven_Segment_Decoder is
        port ( 
            code        : in std_logic_vector(3 downto 0);
            segment_out : out std_logic_vector(6 downto 0)
        );
    end component;
    
    signal OneSec_en : std_logic; -- enable at 1 second
    signal num: std_logic_vector(2 downto 0); -- count from 0 to 7
    signal numout: std_logic_vector(3 downto 0); -- output for decoder
-- ARCH BEGIN
begin
    -- Clock Divider: enable, reset, clk, en_out
    divider: Antoine_Phan_Clock_Divider
        port map(enable, reset, clk, OneSec_en);

    -- Counter: enable, reset, clk, count
    counter: Antoine_Phan_Counter
        port map(OneSec_en, reset, clk, num);
    
    numout <= "0" & num;
    -- Seven Segment Decoder: code, segment_out
    decoder: Seven_Segment_Decoder
        port map(numout, HEX0);
end architecture arch;