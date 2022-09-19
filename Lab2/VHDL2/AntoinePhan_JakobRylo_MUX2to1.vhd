library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity antoine_phan_jakob_rylo_MUX_struct is
	port(
		A : in std_logic;
		B : in std_logic;
		S : in std_logic;
		Y : out std_logic);
end antoine_phan_jakob_rylo_MUX_struct;

entity antoine_phan_jakob_rylo_MUX_behavioral is
	port(
		A : in std_logic;
		B : in std_logic;
		S : in std_logic;
		Y : out std_logic);
end antoine_phan_jakob_rylo_MUX_behavioral;


architecture work of antoine_phan_jakob_rylo_MUX_struct is
	begin
		with S select
			Y <= A if A
			--stuffs