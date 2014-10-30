-- and function

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY andFunction is
	port(
		A,B : in std_logic_vector(0 to 6);
		S : out std_logic_vector(0 to 6)
	);
end andFunction;

ARCHITECTURE comport of andFunction is
	begin
	
	process(A,B)
		begin
		for i in 0 to 6 loop
			S(i) <= A(i) and B(i);
		end loop;
	end process;
	
end comport;