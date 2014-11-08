-- adder two inputs of 7 bits

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY adder7b is
	port(
		A,B : in std_logic_vector(6 downto 0);
		S : out std_logic_vector(7 downto 0);
		EN : in std_logic 
	);
end adder7b;

ARCHITECTURE comport of adder7b is

	SIGNAL Co : std_logic_vector(5 downto 0);
	
	component halfAdder is
		port(
			A,B,EN : in std_logic;
			S,Co : out std_logic
		);
	end component;
	
	component fullAdder is
		port(
			A,B,Ci,EN : in std_logic;
			S,Co : out std_logic
		);
	end component;
	
	begin
		ha : halfAdder port map(A(0),B(0),EN,S(0),Co(0));
		fa0 : fullAdder port map(A(1),B(1),Co(0),EN,S(1),Co(1));
		fa1 : fullAdder port map(A(2),B(2),Co(1),EN,S(2),Co(2));
		fa2 : fullAdder port map(A(3),B(3),Co(2),EN,S(3),Co(3));
		fa3 : fullAdder port map(A(4),B(4),Co(3),EN,S(4),Co(4));
		fa4 : fullAdder port map(A(5),B(5),Co(4),EN,S(5),Co(5));
		fa5 : fullAdder port map(A(6),B(6),Co(5),EN,S(6),S(7));
	
end comport;
	