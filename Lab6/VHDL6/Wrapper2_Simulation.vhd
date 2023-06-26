library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Wrapper2_Simulation is
end Wrapper2_Simulation;

architecture simulate of Wrapper2_Simulation is
    component Antoine_Phan_Wrapper2
        port(
            reset: in std_logic;
            clk: in std_logic;
            HEX0, HEX5: out std_logic_vector(6 downto 0)
        );
    end component;
    constant clock_period: time := 20 ns;
	signal clk: std_logic;
    signal reset: std_logic := '1';
    signal HEX0, HEX5: std_logic_vector(6 downto 0);
begin
    -- clock generation
    clock_generation : process
    begin
        clk <= '1';
        wait for clock_period/2;
        clk <= '0';
        wait for clock_period/2;
    end process;
    
    -- Wrapper2 instantiation
    Wrapper2 : Antoine_Phan_Wrapper2
        port map(
            reset => reset,
            clk => clk,
            HEX0 => HEX0,
            HEX5 => HEX5);
    
end architecture simulate;