-- ULA

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY ULA is
	port(
		A,B : in std_logic_vector(0 to 6);
		result : out std_logic_vector(0 to 7);
		CLK,EN : in std_logic;
		S : in std_logic_vector(0 to 1)
	);
end ULA;

ARCHITECTURE comport of ULA is
	SIGNAL ENufa,CLKreg : std_logic;
	SIGNAL OUTufa : std_logic_vector(0 to 7);
	
	component UFA is
		port(
			A,B : in std_logic_vector(0 to 6);
			result : out std_logic_vector(0 to 7);
			S : in std_logic_vector(0 to 1);
			EN : in std_logic
		);
	end component;
	
	component register8b is
		port(
			D : in std_logic_vector(0 to 7);
			CLR,CLK,EN : in std_logic;
			Q : out std_logic_vector(0 to 7)
		);
	end component;
	
	
	component FFT is
		port(
			T :  IN  STD_LOGIC;
			CLK :  IN  STD_LOGIC;
			CLKout :  OUT  STD_LOGIC
		);
	end component;
	
	component FFD is
		port(
			CLR :  IN  STD_LOGIC;
			D :  IN  STD_LOGIC;
			CLK :  IN  STD_LOGIC;
			Q :  OUT  STD_LOGIC
		);
	end component;
	--SIGNAL teste,flag : std_logic := '0';
	begin
	
		process(CLK,EN)
			begin
			ENufa <= CLK and EN;
		end process;
		
		ufa1 : UFA port map(A,B,OUTufa,S,ENufa);
		FFT1: FFT port map('1',CLK,CLKreg); 
		reg1 : register8b port map(OUTufa,'0',CLKreg,EN,result);
		
--		process(EN,teste)
	----	begin
	--		if rising_edge(CLKreg) then
	--			flag <= teste;
	--		end if;
	--	end process;
		
		--signalRegister : ffd port map('0',flag,CLKreg and EN,sig);
		
end comport;