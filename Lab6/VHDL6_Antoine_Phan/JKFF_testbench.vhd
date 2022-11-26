library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity JKFF_testbench is
end JKFF_testbench;

architecture tb of JKFF_testbench is
    component antoine_phan_JKFF is
        port(
            clk : in std_logic;
            J, K : in std_logic;
            Q : out std_logic
        );
    end component;

    signal clk, J, K : std_logic;
    signal Q : std_logic;
    constant clock_period : time := 10 ns;
begin
    -- device under test
    dut : antoine_phan_JKFF 
        port map(clk, J, K, Q);

    -- clock generation
    clock_generation : process
    begin
        clk <= '1';
        wait for clock_period/2;
        clk <= '0';
        wait for clock_period/2;
    end process;

    -- simulation process
    simulation: process
    begin
        report "Maintaining the current state!";
        J <= '0';
        K <= '0';
        wait for 30 ns; -- wait for 3 clock cycles

        report "Resetting the state to 0!";
        J <= '0';
        K <= '1';
        wait for 30 ns; -- wait for 3 clock cycles

        report "Setting the state to 1!";
        J <= '1';
        K <= '0';
        wait for 30 ns; -- wait for 3 clock cycles
        
        report "Toggling the state!";
        J <= '1';
        K <= '1';
        wait for 30 ns; -- wait for 3 clock cycles
    end process;

end architecture;


