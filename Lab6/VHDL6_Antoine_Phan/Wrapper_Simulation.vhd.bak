library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Wrapper_Simulation is
end Wrapper_Simulation;

architecture tb of Wrapper_Simulation is
    component Antoine_Phan_Wrapper is
        port(
            enable : in std_logic;
            reset : in std_logic;
            clk : in std_logic;
            HEX0 : out std_logic_vector(6 downto 0)
        );
    end component;

    signal enable, reset, clk : std_logic;
    signal HEX0 : std_logic_vector(6 downto 0);
begin
    -- Device Under Test
    dut: Antoine_Phan_Wrapper port map(enable, reset, clk, HEX0);

    -- Clock
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
        enable <= '1';
        reset <= '0';

        report "Counter starts!" severity note;
        wait for 8 sec;
        report "Counted to 7!" severity note;
        wait for 2 sec;
        
        report "Counted to 2!, now turn 'enable' off to remain state" severity note;
        enable <= '0';
        wait for 1 sec;
        report "Async Reset!" severity note;
        reset <= '1';
        wait for 1 sec;
        report "Done resetting!" severity note;
        reset <= '0';
        wait for 1 sec;
        report "Turn 'enable' back on to continue counting" severity note;
        enable <= '1';
        wait for 3 sec;
        report "FINISHED SIMULATION" severity note;
    
end architecture tb;