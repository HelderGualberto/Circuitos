-- calculator

LIBRARY ieee;
use ieee.std_logic_1164.all;


ENTITY Calculator is
	port(
		data : in std_logic_vector(0 to 6);
		CLK,RES : in std_logic;
		M0,M1,EN : in std_logic;
		SEL : in std_logic_vector(0 to 1);
		H1,H2,H3 : out std_logic_vector(0 to 6);
		sign : out std_logic := '0'
	);
	
end Calculator;

ARCHITECTURE comport of Calculator is
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
			S : in std_logic_vector(0 to 1);
			sig : out std_logic
		);
	end component;
	
	component decoder is
		port(
			data : in std_logic_vector(0 to 7);
			H1,H2,H3 : out std_logic_vector(0 to 6)
		);
	end component;
	
	component comp2 is
		port(
			data : in std_logic_vector(0 to 7);
			result : out std_logic_vector(0 to 7)
		);
	end component;
	
	
	SIGNAL A,B : std_logic_vector(0 to 6);
	SIGNAL CLKout,sig,temp : std_logic;
	SIGNAL complement: std_logic_vector(0 to 7);
	SIGNAL result : std_logic_vector(0 to 7);
	SIGNAL saida : std_logic_vector(0 to 7);
	
	begin

	
	data_Flux : dataFlux port map(data,M0,M1,RES,CLK,A,B,CLKout);
	
	unit_logic_arithmetic : ULA port map(A,B,result,CLKout,EN,SEL,sig);
	
	comp : comp2 port map(result,complement);
	
	process(sig,EN)
		begin
		if rising_edge(EN) then
			if sig = '1' then
			sign <= sig;
			else
			sign <= '0';
			end if;
		end if;
	end process;
	
	
	process(result,complement,sig)
		begin
		if sig = '1' then
			saida <= complement;
		end if;
		if sig = '0' then
			saida <= result;
		end if;
	end process;
	
	dec : decoder port map(result,H1,H2,H3);
		
end comport;
