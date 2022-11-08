library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper_design is
    port(
        A, B : in std_logic_vector(3 downto 0);
		-- decoded_A, decoded_B: out std_logic_vector(6 downto 0);
        is_gt, is_gte,
        is_lt, is_lte,
        is_eq, overflow: out std_logic);
end wrapper_design;

architecture arch of wrapper_design is
    component antoine_phan_comparator 
        port(
            A, B: 	in std_logic_vector(3 downto 0);
            AgtBplusOne, AgteBplusOne, -- greater & greater or equal
            AltBplusOne, AlteBplusOne, -- less & less or equal
            AeqBplusOne, overflow:	out std_logic);
    end component;
	 
	-- component seven_segment_decoder
	-- 		port(
	-- 			code        : in std_logic_vector(3 downto 0);
	-- 			segment_out : out std_logic_vector(6 downto 0));
	-- end component;

begin
    comp: antoine_phan_comparator
        port map(A, B, is_gt, is_gte, is_lt, is_lte, is_eq, overflow);
    
	-- display_A: seven_segment_decoder
	-- 	port map(A, decoded_A);
		
	-- display_B: seven_segment_decoder
	-- 	port map(B, decoded_B);
    
end architecture arch;