-- Multiplex 2 to 1, 8 bits;

library ieee;
use ieee.std_logic_1164.all;

ENTITY Mux8Bits is 
	port(
		s : in bit;
		inputX,inputY : in bit_vector(7 downto 0);
		output : out bit_vector(7 downto 0)
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
		mux3 : Mux2to1 port map(s0 => s,x => inputX(3),y => inputY(3),z => output(3));
		mux4 : Mux2to1 port map(s0 => s,x => inputX(4),y => inputY(4),z => output(4));
		mux5 : Mux2to1 port map(s0 => s,x => inputX(5),y => inputY(5),z => output(5));
		mux6 : Mux2to1 port map(s0 => s,x => inputX(6),y => inputY(6),z => output(6));
		mux7 : Mux2to1 port map(s0 => s,x => inputX(7),y => inputY(7),z => output(7));
		
end comport;
		
