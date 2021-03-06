-- full adder

library ieee;
use ieee.std_logic_1164.all;

ENTITY fullAdder is
	port(
		A,B,Ci,EN : in std_logic;
		S,Co : out std_logic
	);
end fullAdder;

architecture comport of fullAdder is
	begin
	process(A,B,Ci,EN)
		begin
		if EN = '1' then
			case(A) is 
			when '0' => case(B) is
				when '0' => if Ci = '0' then
						S <= '0';Co <= '0';else
						S <= '1';Co <= '0';end if;
				when '1' => if Ci = '0' then
						S <= '1';Co <= '0';else
						S <= '0';Co <= '1';end if;
				end case;
				
			when '1' => case(B) is
				when '0' => if Ci = '0' then
						S <= '1';Co <= '0';else
						S <= '0';Co <= '1';end if;
				when '1' => if Ci = '0' then
						S <= '0';Co <= '1';else
						S <= '1';Co <= '1';end if;
					end case;
				end case;
			end if;
		end process;
end comport;