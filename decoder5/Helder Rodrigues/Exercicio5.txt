-- helloOnDisplay

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY hello is
	port(
		sw : in bit_vector(0 to 14);
		s : in bit_vector(0 to 2);
		D0,D1,D2,D3,D4 : out bit_vector(0 to 6)
	);
end hello;

architecture comport of hello is
	
	component decoder5out
		port(
			inputs : in bit_vector(0 to 14);
			s : in bit_vector(0 to 2);
			HEX0 : out bit_vector(0 to 6)
		);
	end component;
	
	SIGNAL s0,s1,s2,s3,s4 : bit_vector(0 to 2);
	
	begin
		s0 <= "000" when s = "000" else
			   "001" when s = "001" else
				"011" when s = "100" else
				"010" when s = "011" else
				"010" when s = "010" else
				"100";
				
		s1 <= "001" when s = "000" else
				"011" when s = "011" else
				"000" when s = "100" else
				"010" when s = "001" else
				"010" when s = "010" else
				"100";
				
		s2 <= "011" when s = "010" else
				"000" when s = "011" else
				"001" when s = "100" else
				"010" when s = "001" else
				"010" when s = "000" else
				"100";
				
		s3 <= "011" when s = "001" else
				"000" when s = "010" else
				"001" when s = "011" else
				"010" when s = "000" else
				"010" when s = "100" else
				"100";
		
		s4 <= "011" when s = "000" else
				"000" when s = "001" else
				"001" when s = "010" else
				"010" when s = "011" else
				"010" when s = "100" else
				"100";	
	
	dec0 : decoder5out port map(inputs => sw,s => s0,HEX0 => D0);
	dec1 : decoder5out port map(inputs => sw,s => s1,HEX0 => D1);
	dec2 : decoder5out port map(inputs => sw,s => s2,HEX0 => D2);
	dec3 : decoder5out port map(inputs => sw,s => s3,HEX0 => D3);
	dec4 : decoder5out port map(inputs => sw,s => s4,HEX0 => D4);
	
end comport;