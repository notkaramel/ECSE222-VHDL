library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Seven_Segment_Decoder is
    port ( 
        code        : in std_logic_vector(3 downto 0);
        segment_out : out std_logic_vector(6 downto 0)
    );
end Seven_Segment_Decoder;

architecture arch of Seven_Segment_Decoder is
begin
    with code select
        segment_out <=  "1000000" when "0000",
                        "1111001" when "0001",
                        "0100100" when "0010",
                        "0110000" when "0011",
                        "0011001" when "0100",
                        "0010010" when "0101",
                        "0000010" when "0110",
                        "1111000" when "0111",
                        "0000000" when "1000",
                        "0010000" when "1001",
                        "1111111" when others;
end arch;