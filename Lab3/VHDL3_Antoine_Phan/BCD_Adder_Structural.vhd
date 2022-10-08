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
	component rca_structural
		port(
		A, B: in std_logic_vector (3 downto 0);
		S: out std_logic_vector (4 downto 0)
	);
	end component;
	
	-- Using a Half_adder and a Full_adder to implement a 2-bit adder
	component Half_Adder
		port(
			a,b: in std_logic;
			s,c: out std_logic);		
	end component;
	
	component Full_Adder
		port(
			a,b, c_in: in std_logic;
			s,c_out: out std_logic);
	end component;
	
	signal Z: 	std_logic_vector(4 downto 0);
	signal HA_c, FA_c, C_temp:	std_logic;
	
begin
	-- mapping patterns:
	-- A of BCD => A of RCA
	-- B of BCD => B of RCA
	-- Z => S of RCA
	-- (A, B, Z)
	RCA1: rca_structural
		port map(A, B, Z);

	-- Detect if sum is > 9, yields MUX_input
	-- Z(4) (the carry out) = true: s_temp > 15
	-- 2 other conditions: 9 < s_temp < 16
	C_temp <= 	Z(4) OR (Z(3) and (Z(2) or Z(1)));
	
	-- Two-bit adder, yields temporary variable S(1) and S(2)
	HA: Half_Adder -- map(a,b,s,c)
		port map(C_temp, Z(1), S(1), HA_c);
	
	FA: Full_Adder -- map(a, b, c_in, s, c_out)
		port map(C_temp, Z(2), HA_c, S(2), FA_c);
		
	-- Getting S(3)
	S(3) <= Z(3) xor FA_c;
	
	-- Mapping the output
	S(0) <= Z(0);
	C <= C_temp;
end;