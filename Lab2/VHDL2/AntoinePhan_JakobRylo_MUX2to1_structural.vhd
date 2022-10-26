library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity antoinephan_jakobrylo_MUX2to1_structural is
	port(
		A, B, S : in std_logic;
		Y : out std_logic);
end antoinephan_jakobrylo_MUX2to1_structural;

architecture structural of antoinephan_jakobrylo_MUX2to1_structural is
begin
	Y <= ((not S) and A) or (B and S);
end structural;



