-- subtractor 7 bits

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY subtractor7b is
	port(
		A,B : in std_logic_vector(6 downto 0);
		S : out std_logic_vector(7 downto 0);
		EN : in std_logic
	);
end subtractor7b;

ARCHITECTURE comport of subtractor7b is
	SIGNAL K : std_logic_vector(5 downto 0);
	
	component halfSubtractor is
		port(
			A,B,EN : in std_logic;
			S,Te : out std_logic
		);
	end component;
	
	component fullSubtractor is
		port(
			A,B,Ta,EN : in std_logic;
			S,Te : out std_logic
		);
	end component;
	begin

	hs : halfSubtractor port map(A(0),B(0),EN,S(0),K(0));
	fs0 : fullSubtractor port map(A(1),B(1),K(0),EN,S(1),K(1));
	fs1 : fullSubtractor port map(A(2),B(2),K(1),EN,S(2),K(2));
	fs2 : fullSubtractor port map(A(3),B(3),K(2),EN,S(3),K(3));
	fs3 : fullSubtractor port map(A(4),B(4),K(3),EN,S(4),K(4));
	fs4 : fullSubtractor port map(A(5),B(5),K(4),EN,S(5),K(5));
	fs5 : fullSubtractor port map(A(6),B(6),K(5),EN,S(6),s(7));
	
	
end comport;

	