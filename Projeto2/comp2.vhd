-- complemento de 2

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY comp2 is 
	port(
		data : in std_logic_vector(0 to 7);
		result : out std_logic_vector(0 to 7)
	);
end comp2;

ARCHITECTURE comport of comp2 is

component adder7b is
	port(
		A,B : in std_logic_vector(6 downto 0);
		S : out std_logic_vector(7 downto 0);
		EN : in std_logic
	);
end component;
	
	SIGNAL temp : std_logic_vector(0 to 6);
	
	begin
	
	process(data)
		begin
			temp(0) <= not(data(1));
			temp(1) <= not(data(2));
			temp(2) <= not(data(3));
			temp(3) <= not(data(4));
			temp(4) <= not(data(5));
			temp(5) <= not(data(6));
			temp(6) <= not(data(7));
		end process;
	
	adder : adder7b port map("0000001",temp,result,'1');
	
end comport;