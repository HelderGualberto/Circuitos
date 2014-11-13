-- full subtractor

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY fullSubtractor is
	port(
		A,B,Ta,EN : in std_logic;
		S,Te : out std_logic
	);
	
end fullSubtractor;

ARCHITECTURE comport  of fullSubtractor is
	begin 
	process(A,B,Ta,EN)
	begin
		if EN = '1' then
			S <= (not(A) and (b xor Ta)) or (A and (B xnor Ta));
			Te <=(not(A) and (b xor Ta)) or (B and Ta);
		--else
		--	S <= '0';
		--	Te <= '0';
		end if;
	end process;
end comport;