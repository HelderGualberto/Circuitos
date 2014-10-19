-- helloOnDisplay

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY hello is
	port(
		sw : in bit_vector(0 to 14);
		s : in bit_vector(0 to 2);
		dOut : out bit_vector(0 to 34)
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
	process(s)
		begin
		if s = "000" then
			s0 <= "000";
			s1 <= "001";
			s2 <= "010";
			s3 <= "010";
			s4 <= "011"; end if;
		if s = "001" then
			s0 <= "001";
			s1 <= "010";
			s2 <= "010";
			s3 <= "011";
			s4 <= "000"; end if;
		if s = "010" then
			s0 <= "010";
			s1 <= "010";
			s2 <= "011";
			s3 <= "000";
			s4 <= "001"; end if;
		if s = "011" then
			s0 <= "010";
			s1 <= "011";
			s2 <= "000";
			s3 <= "001";
			s4 <= "010"; end if;
		if s = "100" then
			s0 <= "011";
			s1 <= "000";
			s2 <= "001";
			s3 <= "010";
			s4 <= "010"; end if;
		
	end process;
	
	dec0 : decoder5out port map(inputs => sw,s => s0,HEX0 => dOut(0 to 6));
	dec1 : decoder5out port map(inputs => sw,s => s1,HEX0 => dOut(7 to 13));
	dec2 : decoder5out port map(inputs => sw,s => s2,HEX0 => dOut(14 to 20));
	dec3 : decoder5out port map(inputs => sw,s => s3,HEX0 => dOut(21 to 27));
	dec4 : decoder5out port map(inputs => sw,s => s4,HEX0 => dOut(28 to 34));
	
end comport;