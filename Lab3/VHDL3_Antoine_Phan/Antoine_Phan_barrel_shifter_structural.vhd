library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity antoine_phan_barrel_shifter_structural is
	port(
		x: in std_logic_vector (3 downto 0);
		sel: in std_logic_vector (1 downto 0);
		y: out std_logic_vector (3 downto 0));
end antoine_phan_barrel_shifter_structural;

architecture structural of antoine_phan_barrel_shifter_structural is
	-- Subfunction MUX
	function MUX(  A: std_logic;
						B: std_logic; 
						S: std_logic) return std_logic is
		begin
			return ((not S) and A) or (S and B);
		end function;
	-- Intermediate signal P between X and sel[0] MUXes
	signal P: std_logic_vector(3 downto 0);

begin
--using loops (in processes) to reduce code repetitions
	
	process(x, sel, p)
	begin
		for i in 0 to 3 loop
			p(i) <= MUX(x(i), x((i+2) mod 4), sel(1));
		end loop;
			
		-- Process signals of P as input to the second layer of MUXes
		--and send them to Y
		for i in 0 to 3 loop
			y(i) <= MUX(p(i), p((i+3) mod 4), sel(0));
		end loop;
	end process;
end;
	
