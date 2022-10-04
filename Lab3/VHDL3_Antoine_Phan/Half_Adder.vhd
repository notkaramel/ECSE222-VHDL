library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity half_adder is
	port(
		a,b: in std_logic;
		s,c: out std_logic);
end half_adder;

-- Structural description of a half-adder
architecture struct of half_adder is
begin
	process (a,b)
	begin
		s <= a xor b;
		c <= (a and b);
	end process;
end;
