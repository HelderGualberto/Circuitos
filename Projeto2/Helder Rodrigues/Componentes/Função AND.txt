-- and function

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY andFunction is
	port(
		A,B : in std_logic_vector(6 downto 0);
		S : out std_logic_vector(7 downto 0);
		EN: in std_logic
	);
end andFunction;

ARCHITECTURE comport of andFunction is
	begin
	
	process(A,B,EN)
		begin
		if EN = '1' then
			for i in 0 to 6 loop
				S(i) <= A(i) and B(i);
			end loop;
			S(7) <= '0';
		end if;
	end process;
	
	
end comport;