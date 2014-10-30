-- half subtractor

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY halfSubtractor is
	port(
		A,B : in std_logic;
		S,Te : out std_logic
	);
end halfSubtractor;

ARCHITECTURE comport of halfSubtractor is
	begin
	
		S <= A xor B;
		Te <= not(A) and B;

end comport; 