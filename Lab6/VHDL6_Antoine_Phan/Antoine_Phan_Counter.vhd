library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Antoine_Phan_Counter is
    port(
        enable, reset, clk: in std_logic;
        count: out std_logic_vector(2 downto 0)
    );
end Antoine_Phan_Counter;

architecture arch of Antoine_Phan_Counter is
    signal count_temp: std_logic_vector(2 downto 0) := "000";
begin
    process(clk, enable, reset)
    begin
        if (reset = '0') then -- active low 
            count_temp <= "000"; -- async reset (ignore enable & clk)
        elsif (rising_edge(clk)) then
            if (enable = '1') then
                count_temp <= count_temp + 1;
            end if;
        end if;
    end process;
    count <= count_temp;
end arch;

