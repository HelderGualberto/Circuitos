-- Multiplex 2 to 1 

library ieee;
use ieee.std_logic_1164.all;

ENTITY Mux2to1 is
	port(
		x,y,s0 : in bit;
		z : out bit
	);
end Mux2to1;

architecture comport of Mux2to1 is
	begin
	z <= ((NOT(s0) AND x)OR(s0 AND y));
end comport;
