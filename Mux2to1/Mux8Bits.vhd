-- Multiplex 2 to 1, 3 bits;

library ieee;
use ieee.std_logic_1164.all;

ENTITY Mux8Bits is 
	port(
		s : in bit;
		inputX,inputY : in bit_vector(0 to 2);
		output : out bit_vector(0 to 2)
	);
	
end Mux8Bits;

architecture comport of Mux8Bits is

	component Mux2to1
		port(
			x,y,s0 : in bit;
			z : out bit
		);
	end component;
	
	begin
	
		mux0 : Mux2to1 port map(s0 => s,x => inputX(0),y => inputY(0),z => output(0));
		mux1 : Mux2to1 port map(s0 => s,x => inputX(1),y => inputY(1),z => output(1));
		mux2 : Mux2to1 port map(s0 => s,x => inputX(2),y => inputY(2),z => output(2));
		
end comport;
		
