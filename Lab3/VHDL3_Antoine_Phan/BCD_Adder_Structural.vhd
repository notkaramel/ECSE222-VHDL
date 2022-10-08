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
	
	signal temp: std_logic_vector(4 downto 0);
begin
	-- mapping patterns:
	-- A of BCD => A of RCA
	-- B of BCD => B of RCA
	-- temp => S of RCA
	-- (A, B, temp)
	RCA1: rca_structural
		port map(A, B, temp);
	
	C <= temp(4);
	S(0) <= temp(0);
	S(1) <= temp(1);
	S(2) <= temp(2);
	S(3) <= temp(3);
end;