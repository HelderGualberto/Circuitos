-- Decoder to build a word in 5 7segments

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY decoder5out is
	port(
		inputs : in bit_vector(0 to 14)
		s : in bit_vector(0 to 3);
		HEX0,HEX1,HEX2,HEX3,HEX4 : out bit_vector(0 to 6)
	);
end decoder5out;

architecture comport of decoder5out is
	
	component Mux5to1
		port(
			u,v,w,x,y,s : in bit_vector(0 to 2);
			m : out bit_vector(0 to 2)
		);
	end component;
	
	component codec7s
		port(
			c : in bit_vector(0 to 2);
			seg : out bit_vector(0 to 6);
		);
	end component;
	
	begin
	
end comport;
	
		
		
		
		
		
		
		
		
		
		
		
		
		