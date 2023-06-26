library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX_Behave is
	port(
		A, B, S: in std_logic;
		Y: out std_logic);
end MUX_Behave;

architecture behave of MUX_Behave is
begin
	-- Taken from VHDL2
	with S select Y <=
		A when '0',
		B when '1',
		'X' when others;
end;