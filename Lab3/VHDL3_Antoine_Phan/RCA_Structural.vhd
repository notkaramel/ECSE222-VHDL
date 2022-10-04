library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rca_structural is
	port(
		A, B: in std_logic_vector (3 downto 0);
		S: out std_logic_vector (4 downto 0)
	);
end rca_structural;

architecture rca_struct of rca_structural is
	-- use full adders in RCA
	component full_adder
		port (
			a,b, c_in: in std_logic;
			s,c_out: out std_logic);
	end component;
	
	-- carry/temporary variables
	signal c_FA1, c_FA2, c_FA3: std_logic;
	
begin
	-- order of mapping: a, b, c_in, s, c_out
	-- pattern of mapping:
	-- FA_i --> A(i), B(i), c_FA(i-1), S(i), c_FA(i)
	
	FA1: full_adder
		port map(A(0), B(0), '0', S(0), c_FA1);
		 -- c_in of FA1 is '0'
	
	FA2: full_adder
		port map(A(1), B(1), c_FA1, S(1), c_FA2);
		
	FA3: full_adder
		port map(A(2), B(2), c_FA2, S(2), c_FA3);
		
	FA4: full_adder
		port map(A(3), B(3), c_FA3, S(3), S(4));
end;