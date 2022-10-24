library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity antoinephan_jakobrylo_MUX2to1_behavioral is
	port(
		A, B, S : in std_logic;
		Y : out std_logic);
end antoinephan_jakobrylo_MUX2to1_behavioral;

architecture behavior of antoinephan_jakobrylo_MUX2to1_behavioral is
begin
	with S select Y <=
		A when '0',
		B when '1',
		'X' when others;
end behavior;