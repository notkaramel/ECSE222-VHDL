library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Antoine_Phan_Sequence_Detector is
    port(
        seq: in std_logic;
        enable, reset, clk: in std_logic;
        cnt_1, cnt_2: out std_logic_vector(2 downto 0)
    );
end Antoine_Phan_Sequence_Detector;

architecture arch of Antoine_Phan_Sequence_Detector is
    component Antoine_Phan_FSM is
        port(
            seq : in std_logic;
            enable, reset, clk: in std_logic;
            out_1, out_2: out std_logic
        );
    end component;

    component Antoine_Phan_Counter is
        port(
            enable, reset, clk: in std_logic;
            count: out std_logic_vector(2 downto 0)
    );
    end component;
    signal out_temp_1, out_temp_2: std_logic;
begin
    -- Instantiate the FSM
    FSM: Antoine_Phan_FSM port map(
        seq => seq,
        enable => enable,
        reset => reset,
        clk => clk,
        out_1 => out_temp_1,
        out_2 => out_temp_2
    );

    -- Instantiate the counter for cnt_1
    CNT1: Antoine_Phan_Counter port map(
        enable => out_temp_1,
        reset => reset,
        clk => clk,
        count => cnt_1
    );

    -- Instantiate the counter for cnt_2
    CNT2: Antoine_Phan_Counter port map(
        enable => out_temp_2,
        reset => reset,
        clk => clk,
        count => cnt_2
    );
    
end architecture arch;