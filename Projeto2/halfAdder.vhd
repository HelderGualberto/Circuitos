-- half adder

library ieee;
use ieee.std_logic_1164.all;

ENTITY halfAdder is
	port(
		A,B,EN : in std_logic;
		S,Co : out std_logic
	);
end halfAdder;

architecture comport of halfAdder is
	begin
	
	process(EN,A,B)
		begin
			if EN = '1' then
			case(A) is
			when '0' => if B = '0' then
				s <= '0'; Co <= '0'; else
				s <= '1'; Co <= '0'; end if;
			when '1' => if B = '0' then
				s <= '1'; Co <= '0'; else
				s <= '0'; Co <= '1'; end if;
			end case;
		end if;
	end process;
end comport;
