library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counters_testbench is
end counters_testbench;

architecture tb of Counters_testbench is
    component Antoine_Phan_Counter is
        port (enable, reset, clk: in std_logic;
              count: out std_logic_vector(2 downto 0));
    end component;

    constant clock_period : time := 10 ns;
    signal enable, reset, clk: std_logic;
    signal count: std_logic_vector(2 downto 0);

begin
    -- DUT
    DUT: Antoine_Phan_Counter
        port map (enable, reset, clk, count);
    
    -- clock generation
    clock_generation : process
    begin
        clk <= '1';
        wait for clock_period/2;
        clk <= '0';
        wait for clock_period/2;
    end process;

    -- Simulation
    sim: process
    begin
        report "Simulation started" severity note;
        
        report "Full+ iteration: count to 12";
        reset <= '1'; -- reset is active low
        enable <= '1';
        wait for 12*clock_period;

        report "Resetting the counter";
        reset <= '0';
        wait for 2*clock_period;
        reset <= '1'; -- stop resetting

        report "Count to 5";
        wait for 5*clock_period;

        report "Let the counter maintain (enable = 0)";
        enable <= '0';
        wait for 2*clock_period;

        report "Resetting, again";
        reset <= '1';
        wait for 2*clock_period;
        reset <= '0';
        wait for clock_period;

        report "Simulation ended! It will now loop back to starting point!" severity note;
    end process;
    
end architecture tb;