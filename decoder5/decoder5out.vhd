-- Decoder to build a word in 5 7segments

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY decoder5out is
	port(
		inputs : in bit_vector(0 to 14);
		s : in bit_vector(0 to 2);
		HEX0 : out bit_vector(0 to 6)
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
			seg : out bit_vector(0 to 6)
		);
	end component;
	
	SIGNAL mOut : bit_vector(0 to 2);
	
	begin
	
	mux0 : Mux5to1 port map(u => inputs(0 to 2),
									v => inputs(3 to 5),
									w => inputs(6 to 8),
									x => inputs(9 to 11),
									y => inputs(12 to 14),s => s,m => mOut);
									
	h0 : codec7s port map (mOut,HEX0);
	
	
end comport;
	
		
		
		
		
		