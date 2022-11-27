library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity clock_divider_testbench is
end clock_divider_testbench;

architecture testbench of clock_divider_testbench is
    component Antoine_Phan_Clock_Divider
    port(
        enable, reset, clk: in std_logic;
        en_out: out std_logic
    );
    end component;

    signal enable, reset, clk: std_logic; -- input
    signal en_out: std_logic; -- output
    constant clock_period : time := 20 ns;

begin
    dut: Antoine_Phan_Clock_Divider
        port map(enable, reset, clk, en_out);
    
    clock_generation : process
    begin
        clk <= '1';
        wait for clock_period/2;
        clk <= '0';
        wait for clock_period/2;
    end process;
    
    sim: process
    begin
        wait for 3 sec;
        report "Simulation finished";
        wait;
    end process;
end testbench;

