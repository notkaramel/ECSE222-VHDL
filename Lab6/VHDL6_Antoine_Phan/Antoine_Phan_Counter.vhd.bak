library library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

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
        if count_temp = "111" then
            reset <= 1;
        else
            reset <= 0;
        end if;

        if (enable = '1') then
            if (reset = '1') then
                count_temp <= "000";
            elsif rising_edge(clk) then
                count_temp <= count_temp + 1;
            end if;
        end if;
    end process;

    count <= count_temp;
end arch;

