library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Antoine_Phan_FSM is
    port(
        seq : in std_logic;
        enable, reset, clk: in std_logic;
        out_1, out_2: out std_logic
        -- generate 1 when "1011" and "0100", respectively
    );
end Antoine_Phan_FSM;

architecture arch of Antoine_Phan_FSM is
    
begin
    
    
    
end architecture arch;