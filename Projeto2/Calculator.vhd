-- calculator

LIBRARY ieee;
use ieee.std_logic_1164.all;


ENTITY Calculator is
	port(
		data : in std_logic_vector(0 to 6);
		CLK,RES : in std_logic;
		M0,M1,EN : in std_logic;
		SEL : in std_logic_vector(0 to 1);
		result : out std_logic_vector(0 to 7);
		tA,tB : out std_logic_vector(0 to 6)
	);
	
end Calculator;

ARCHITECTURE comport of Calculator is

	constant n0 : std_logic_vector(0 to 6) := "0000001";
	constant n1 : std_logic_vector(0 to 6) := "1001111";
	constant n2 : std_logic_vector(0 to 6) := "0010011";
	constant n3 : std_logic_vector(0 to 6) := "0000110";
	constant n4 : std_logic_vector(0 to 6) := "1001100";
	constant n5 : std_logic_vector(0 to 6) := "0100100";
	constant n6 : std_logic_vector(0 to 6) := "0100000";
	constant n7 : std_logic_vector(0 to 6) := "0001111";
	constant n8 : std_logic_vector(0 to 6) := "0000000";
	constant n9 : std_logic_vector(0 to 6) := "0000100";
	
	component dataFlux is
		port(
			data : in std_logic_vector(0 to 6);
			m0,m1,CLR,CLK : in std_logic;
			A,B : out std_logic_vector(0 to 6);
			CLKout : out std_logic
		);
	end component;
	
	component ULA is
		port(
			A,B : in std_logic_vector(0 to 6);
			result : out std_logic_vector(0 to 7);
			CLK,EN : in std_logic;
			S : in std_logic_vector(0 to 1)
		);
	end component;
	
	SIGNAL A,B : std_logic_vector(0 to 6);
	SIGNAL CLKout : std_logic;
	
	begin
	
	data_Flux : dataFlux port map(data,M0,M1,RES,CLK,A,B,CLKout);
	unit_logic_arithmetic : ULA port map(A,B,result,CLKout,EN,SEL);
	
	tA <= A;
	tB <= B;
end comport;
