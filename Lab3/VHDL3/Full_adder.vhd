library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder is
	port(
		a,b, c_in: in std_logic;
		s,c_out: out std_logic);
end full_adder;

-- Structural description of a half-adder
architecture struct of full_adder is
	component half_adder
		port(
			a,b: in std_logic;
			s,c: out std_logic);
	end component;
	-- intermediate signal
	signal sum, c_HA1, c_HA2: std_logic;
begin
	-- order for mapping: a, b, s, c
	-- HA1: 	a 		to HA_a
	--			b 		to HA_b
	--			HA_s 	to sum
	--			HA_c 	to c_HA1
	HA1: half_adder
		port map(a, b, sum, c_HA1);
	
	-- HA1: 	sum	to HA_a
	--			c_in	to HA_b
	--			HA_s 	to s
	--			HA_c 	to c_HA2
	HA2: half_adder
		port map(sum, c_in, s, c_HA2);
	
	c_out <= c_HA1 or c_HA2;

--	s <= a xor b xor c_in;
--	c_out <= (a and b) or (a and c_in) or (b and c_in);
end;
