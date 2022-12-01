library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Sequence_Detector_testbench is
end entity;

architecture tb of Sequence_Detector_testbench is
    component Antoine_Phan_Sequence_Detector
        port(
            seq: in std_logic;
            enable, reset, clk: in std_logic;
            cnt_1, cnt_2: out std_logic_vector(2 downto 0)
        );
    end component;

    signal seq, enable, reset, clk: std_logic := '1';
    signal cnt_1, cnt_2: std_logic_vector(2 downto 0) := "000";
    constant clock_period: time := 20 ns;

    type seq_sample is array (0 to 20) of std_logic;
    signal seq_samples: seq_sample := (
        '0','0','1','1','0','1','1','0','1','1','0','0','1','0','0','1','0','1','1','0','1'
    );

begin
    -- Clock generation
    clock_generation : process
    begin
        clk <= '1';
        wait for clock_period/2;
        clk <= '0';
        wait for clock_period/2;
    end process;

    SEQ_DETECTOR : Antoine_Phan_Sequence_Detector
        port map(
            seq => seq,
            enable => enable,
            reset => reset,
            clk => clk,
            cnt_1 => cnt_1,
            cnt_2 => cnt_2
        );

    -- Simulation process
    simulation : process
    begin
        report "Simulation started" severity note;
        reset <= '1';
        enable <= '1';
        for i in 0 to 20 loop
            seq <= seq_samples(i);
            wait for clock_period;
        end loop;
        report "FINISHED" severity note;
    end process;
end architecture tb;
