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
	component MUX_struct 
		port(
			A, B, S: in std_logic;
			Y: out std_logic);
	end component;
	
-- Intermediate signal P between sel[1] and sel[0] MUXes
	signal p: std_logic_vector(3 downto 0);
	
begin
	-- Mapping variables of MUXes: A, B, S, Y
	-- Mapping variables of Barrel Shifter: x, sel, p, y
	
	-- first layer of MUXes
	mux1: MUX_struct
		port map(
			A => x(0),
			B => x(2),
			S => sel(1),
			Y => p(0)
			);
			
	mux2: MUX_struct
		port map(
			A => x(1),
			B => x(3),
			S => sel(1),
			Y => p(1)
			);
			
	mux3: MUX_struct
		port map(
			A => x(2),
			B => x(0),
			S => sel(1),
			Y => p(2)
			);
			
	mux4: MUX_struct
		port map(
			A => x(3),
			B => x(1),
			S => sel(1),
			Y => p(3)
			);
			
	-- Second layer of MUXes
	mux5: MUX_struct
		port map(
			A => p(0),
			B => p(3),
			S => sel(0),
			Y => y(0)
			);
			
	mux6: MUX_struct
		port map(
			A => p(1),
			B => p(0),
			S => sel(0),
			Y => y(1)
			);
			
	mux7: MUX_struct
		port map(
			A => p(2),
			B => p(1),
			S => sel(0),
			Y => y(2)
			);
			
	mux8: MUX_struct
		port map(
			A => p(3),
			B => p(2),
			S => sel(0),
			Y => y(3)
			);
	--	process(x, sel, p)
--	begin
--		for i in 0 to 3 loop
--			mux: MUX_struct
--				port map(
--					A => x(i),
--					B => x((i+2) mod 4),
--					S => sel(1),
--					Y => P(i)
--					);
--		end loop;
--	end process;
end structural;



--- OLD CODE: (Ctrl + '/' to see) ---

--architecture structural of antoine_phan_barrel_shifter_structural is
--	-- Subfunction MUX
--	function MUX(  A: std_logic;
--						B: std_logic; 
--						S: std_logic) return std_logic is
--		begin
--			return ((not S) and A) or (S and B);
--		end function;
--	-- Intermediate signal P between X and sel[0] MUXes
--	signal P: std_logic_vector(3 downto 0);
--
--begin
----using loops (in processes) to reduce code repetitions
--	
--	process(x, sel, p)
--	begin
--		for i in 0 to 3 loop
--			p(i) <= MUX(x(i), x((i+2) mod 4), sel(1));
--		end loop;
--			
--		-- Process signals of P as input to the second layer of MUXes
--		--and send them to Y
--		for i in 0 to 3 loop
--			y(i) <= MUX(p(i), p((i+3) mod 4), sel(0));
--		end loop;
--	end process;
--end;
	
