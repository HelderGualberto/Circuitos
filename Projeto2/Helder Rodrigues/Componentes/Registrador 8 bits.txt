-- register 8 bits

library ieee;
use ieee.std_logic_1164.all;


ENTITY register8b is
	port(
		D : in std_logic_vector(0 to 7);
		CLR,CLK,EN : in std_logic;
		Q : out std_logic_vector(0 to 7)
	);
end register8b;


architecture comport of register8b is
	signal clkin,clrin : std_logic;
	
	component FFD is
	port(
		D,CLR,CLK : in STD_LOGIC;
		Q : out STD_LOGIC
	);
	end component;
	
	begin
	clrin <= NOT(CLR);
	clkin <= CLK and EN;
	
	
	ff0 : FFD port map (D(0),clrin,clkin,Q(0));	
	ff1 : FFD port map (D(1),clrin,clkin,Q(1)); 
	ff2 : FFD port map (D(2),clrin,clkin,Q(2));
	ff3 : FFD port map (D(3),clrin,clkin,Q(3));
	ff4 : FFD port map (D(4),clrin,clkin,Q(4));
	ff5 : FFD port map (D(5),clrin,clkin,Q(5));
	ff6 : FFD port map (D(6),clrin,clkin,Q(6));
	ff7 : FFD port map (D(7),clrin,clkin,Q(7));
	
end comport;
