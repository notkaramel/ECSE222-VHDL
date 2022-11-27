library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.env.stop;

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
        report "Clock Divider Simulation" severity note;
		  enable <= '1';
		  reset <= '1';
        wait for 2 sec;
        wait for 500 ms;
        reset <= '0';
        wait for 5 ns;
        reset <= '1';
        wait for 1 sec;
        report "Simulation Complete! Look at the peaks" severity note;
        report "Peaks should be at 1 sec, 2 sec, 3.5 sec (with 5 ns delay)";
        stop;
    end process;
end testbench;

