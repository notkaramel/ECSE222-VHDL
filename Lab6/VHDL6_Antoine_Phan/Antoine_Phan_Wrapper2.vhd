library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Antoine_Phan_Wrapper2 is
    port(
        reset: in std_logic;
        clk: in std_logic;
        HEX0, HEX5: out std_logic_vector(6 downto 0)
    );
end Antoine_Phan_Wrapper2;

architecture arch of Antoine_Phan_Wrapper2 is
    component Seven_Segment_Decoder
        port ( 
            code        : in std_logic_vector(3 downto 0);
            segment_out : out std_logic_vector(6 downto 0)
        );
    end component;

    component Antoine_Phan_Sequence_Detector
        port(
            seq: in std_logic;
            enable, reset, clk: in std_logic;
            cnt_1, cnt_2: out std_logic_vector(2 downto 0)
        );
    end component;

    component ROM
        port(
            clk : in std_logic;
            reset : in std_logic;
            data : out std_logic
        );
    end component;

    component Antoine_Phan_Clock_Divider is
        port(
            enable, reset, clk: in std_logic;
            en_out: out std_logic
        );
    end component;

    signal HEX0_code, HEX5_code: std_logic_vector(3 downto 0);
	 signal cnt_1, cnt_2: std_logic_vector(2 downto 0);
	 signal ROM_data: std_logic;
    signal onesec: std_logic;

begin
	
    -- Instantiate Clock Divider
    CLK_DIV: Antoine_Phan_Clock_Divider
        port map(
            enable => '1',
            reset => reset,
            clk => clk,
            en_out => onesec
        );
    
    -- Instantiate ROM
    ROM_thing: ROM
        port map(
            clk => onesec,
            reset => reset,
            data => ROM_data
        );
    
    -- Instantiate Sequence Detector/Counter
    SEQ_CNT: Antoine_Phan_Sequence_Detector
        port map(
            seq => ROM_data,
            enable => '1',
            reset => reset,
            clk => onesec,
            cnt_1 => cnt_1,
            cnt_2 => cnt_2
        );
	 HEX5_code <= '0' & cnt_1;
    -- Instantiate Seven Segment Decoder for cnt_1 -> HEX 5
    HEX5_DEC: Seven_Segment_Decoder
        port map(
            code => HEX5_code,
            segment_out => HEX5
        );
    HEX0_code <= '0' & cnt_2; 
    -- Instantiate Seven Segment Decoder for cnt_2 -> HEX 0
    HEX0_DEC: Seven_Segment_Decoder
        port map(
            code => HEX0_code,
            segment_out => HEX0
        );
end architecture arch;