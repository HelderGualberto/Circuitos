-- Multiplex 4 to 1 of 3bits

library ieee;
use ieee.std_logic_1164.all;

entity Mux4to1 is
	port(
		u,v,w,x: in std_logic_vector(0 to 7);
		s : in std_logic_vector(0 to 1);
		m : out std_logic_vector(0 to 7)
	);
end Mux4to1;

architecture comport of Mux4to1 is

	
	begin
	
		m <= u when s = "00" else
			  v when s = "01" else
			  w when s = "10" else
			  x;
		
end comport;
	