library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX_testbench_struct is
-- empty
end MUX_testbench_struct;

-- Testbench for Behavioral structure (not showing Y)
architecture tb of MUX_testbench_struct is
    -- Structural component
	 component antoinephan_jakobrylo_MUX2to1_structural
        port (A, B, S : in std_logic;
              	Y : out std_logic);
    end component;
	 
	 --setting up signals
    signal A_in,B_in,S_in : std_logic;
    signal Y_out : std_logic;
	 	 
		 -- Function that takes in i as integer, return std_logic value
		function to_std_logic(i : integer) return std_logic is
		begin
			if i = 0 then return '0';
			elsif (i = 1) then return '1';
			end if;
			return 'X';
		end function;
	
	begin
	--Device Under Test: Structural design
	dut : antoinephan_jakobrylo_MUX2to1_structural
   port map (A => A_in,
              B => B_in,
              S => S_in,
              Y => Y_out);
	

    stimulate : process
    begin
	-- S as logical 0 and 1, and then 'X'
		for i in 0 to 2 loop
			S_in <= to_std_logic(i);
			for j in 0 to 2 loop
				A_in <= to_std_logic(j);
				for k in 0 to 2 loop
					B_in <= to_std_logic(k);
					wait for 10 ns;
				end loop;
			end loop;
		end loop;		
		report "Structural Test Complete";

      wait;  
    end process;

end tb;

