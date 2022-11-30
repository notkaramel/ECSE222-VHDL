library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Antoine_Phan_Clock_Divider is
    port(
        enable, reset, clk: in std_logic;
        en_out: out std_logic
    );
end Antoine_Phan_Clock_Divider;

architecture arch of Antoine_Phan_Clock_Divider is
    -- constant T: time := 20 ns; -- T = 1/f = 1/50[MHz]
    -- constant f: frequency := 50 MHz;
    constant times: integer := 50000000;
    signal count: integer range 1 to times := times; -- counting down from times to 1 (equivalent to times-1 to 0)
begin
    process(clk, enable, reset)
    begin
        if enable = '1' then
            if reset = '0' then
                count <= times;
                en_out <= '0';

            elsif rising_edge(clk) then
                if count = 1 then
                    en_out <= '1';
                    count <= times;
                else
                    en_out <= '0';
                    count <= count - 1;
                end if;
            end if;
        end if;
    end process;
end architecture arch;