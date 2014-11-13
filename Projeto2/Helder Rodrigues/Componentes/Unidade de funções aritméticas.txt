-- Unidade de funçoes aritméticas (UFA)

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY UFA is
	port(
		A,B : in std_logic_vector(0 to 6);
		result : out std_logic_vector(0 to 7);
		S : in std_logic_vector(0 to 1);
		EN : in std_logic
	);
end UFA;

ARCHITECTURE comport of UFA is
	SIGNAL ENsum,ENand,ENor,ENsub : std_logic;
	SIGNAL OUTand,OUTor,OUTsum,OUTsub : std_logic_vector(7 downto 0);
	
	component adder7b is
		port(
			A,B : in std_logic_vector(6 downto 0);
			S : out std_logic_vector(7 downto 0);
			EN : in std_logic
		);	
	end component;
	
	component subtractor7b is
		port(
			A,B : in std_logic_vector(6 downto 0);
			S : out std_logic_vector(7 downto 0);
			EN : in std_logic
		);
	end component;
	
	component orFunction is
		port(
			A,B : in std_logic_vector(6 downto 0);
			S : out std_logic_vector(7 downto 0);
			EN: in std_logic
		);
	end component;
	
	component andFunction is
		port(
			A,B : in std_logic_vector(6 downto 0);
			S : out std_logic_vector(7 downto 0);
			EN: in std_logic
		);
	end component;

	component mux4to1 is
		port(
			u,v,w,x: in std_logic_vector(7 downto 0);
			s : in std_logic_vector(0 to 1);
			m : out std_logic_vector(7 downto 0)
		);
	end component;
	
	begin
	process(EN,S)
		begin
		if EN = '1' then
			case(S) is
				when "00" => ENsum <= '1';
				when "01" => ENsub <= '1';
				when "10" => ENand <= '1';
				when "11" => ENor <= '1';
			end case;
		else
			ENsum <= '0';
			ENsub <= '0';
			ENand <= '0';
			ENor <= '0';
		end if;
	end process;
	
	
	
	adder : adder7b port map(A,B,OUTsum,ENsum);
	subtractor : subtractor7b port map(A,B,OUTsub,ENsub);
	and1 : andFunction port map(A,B,OUTand,ENand);
	or1 : orfunction port map(A,B,OUTor,ENor);
	mux1 : mux4to1 port map(OUTsum,OUTsub,OUTand,OUTor,S,result);
	
end comport;