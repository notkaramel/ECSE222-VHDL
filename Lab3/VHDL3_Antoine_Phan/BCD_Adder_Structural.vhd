library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_adder_structural is
	port(
		A, B: in std_logic_vector (3 downto 0);
		S: out std_logic_vector (3 downto 0);
		C: out std_logic
	);
end bcd_adder_structural;

architecture bcd_struct of bcd_adder_structural is
	
begin
end;