library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity FSM_Testbench is
end entity;

architecture tb of FSM_Testbench is
    component Antoine_Phan_FSM
        port(
            seq : in std_logic;
            enable, reset, clk: in std_logic;
            out_1, out_2: out std_logic
        );
    end component;

    signal seq, enable, reset, clk: std_logic := '1';
    signal out_1, out_2: std_logic := '0';
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

    -- FSM instantiation
    FSM: Antoine_Phan_FSM port map(
        seq,
        enable, reset, clk,
        out_1, out_2
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
