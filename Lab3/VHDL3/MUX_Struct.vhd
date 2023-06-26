library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX_struct is
	port(
		A, B, S: in std_logic;
		Y: out std_logic);
end MUX_struct;

architecture struct of MUX_struct is
begin
	-- Taken from VHDL2
	Y <= ((not S) and A) or (S and B);
end;