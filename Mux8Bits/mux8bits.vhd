-- Mux 2 to 1 of 8 bits


library ieee;
use ieee.std_logic_1164.all;

ENTITY mux8bits is
	port(
		x,y : in bit_vector(0 to 7);
		s : in bit;
		m : out bit_vector(0 to 7)
	);
end mux8bits;

architecture comportamental of mux8bits is
	
	begin
		m <= x when s = '0' else y;
	
end comportamental;