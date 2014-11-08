
library ieee;
use ieee.std_logic_1164.all;


ENTITY codec7s is

port(
	c : in bit_vector(0 to 2);
	seg : out bit_vector(0 to 6)
);

end codec7s;

architecture comport of codec7s is
	
	begin
	seg <= "1001000" when c = "000" else
			 "0110000" when c = "001" else
			 "1110001" when c = "010" else
			 "0000001" when c = "011" else
			 "1111111";
			
	
end comport;