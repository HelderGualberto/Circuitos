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
	
	
	
	h : hello port map(sw => input,s => "000",D0 => h0,
															D1 => h1,
															D2 => h2,
															D3 => h3,
															D4 => h4);
	
	out0 <= h0 when s = "011" else
			h1 when s = "100" else
			h2 when s = "101" else
			h3 when s = "110" else
			h4 when s = "111" else
			"1111111";
	
	out1 <= h0 when s = "010" else
			h1 when s = "011" else
			h2 when s = "100" else
			h3 when s = "101" else
			h4 when s = "110" else
			"1111111";
	
	out2 <= h0 when s = "001" else
			h1 when s = "010" else
			h2 when s = "011" else
			h3 when s = "100" else
			h4 when s = "101" else
			"1111111";
	
	out3 <= h0 when s = "000" else
			h1 when s = "001" else
			h2 when s = "010" else
			h3 when s = "011" else
			h4 when s = "100" else
			"1111111";
			
	out4 <= h0 when s = "111" else
			h1 when s = "000" else
			h2 when s = "001" else
			h3 when s = "010" else
			h4 when s = "011" else
			"1111111";
	
	out5 <= h0 when s = "110" else
			h1 when s = "111" else
			h2 when s = "000" else
			h3 when s = "001" else
			h4 when s = "010" else
			"1111111";
			
	out6 <= h0 when s = "101" else
			h1 when s = "110" else
			h2 when s = "111" else
			h3 when s = "000" else
			h4 when s = "001" else
			"1111111";
			
	out7 <= h0 when s = "100" else
			h1 when s = "101" else
			h2 when s = "110" else
			h3 when s = "111" else
			h4 when s = "000" else
			"1111111";

	
end comport;