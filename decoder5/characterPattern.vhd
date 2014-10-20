-- charactere pattern

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY characterPattern is 
	
	port(
		input : in bit_vector(0 to 14);
		s : in bit_vector(0 to 2);
		out0,out1,out2,out3,out4,out5,out6,out7 : out bit_vector(0 to 6)
	);
	
	
end characterPattern;


architecture comport of characterPattern is
	
	component hello
		port(
			sw : in bit_vector(0 to 14);
			s : in bit_vector(0 to 2);
			D0,D1,D2,D3,D4 : out bit_vector(0 to 6)
		);
	end component;
	
	signal h0,h1,h2,h3,h4 : bit_vector(0 to 6);
	
	begin	

	
	--inst : hello port map (input,"000",out0,out1,out2,out3,out4);
	

	
end comport;