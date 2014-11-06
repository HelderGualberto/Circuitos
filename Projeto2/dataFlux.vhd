-- dataFlux

library ieee;
use ieee.std_logic_1164.all;

ENTITY dataFlux is
	port(
		data : in std_logic_vector(0 to 6);
		m0,m1,CLR,CLK : in std_logic;
		A,B : out std_logic_vector(0 to 6)
	);
end dataFlux;

architecture comport of dataFlux is
	
	signal en0,en1 : std_logic;
	
	component register7b is
		port(
			D : in std_logic_vector(0 to 6);
			CLR,CLK,EN : in std_logic;
			Q : out std_logic_vector(0 to 6)
		);
	end component;
	
	begin
	
	process(CLK)
			begin
				case(m1) is
					when '1' => if m0 = '1' then
					en0 <= '0';
					en1 <= '0';
					else
					en0 <= '0';
					en1 <= '1'; END IF;
					
					when '0' => if m0 = '0' then
					en0 <= '0';
					en1 <= '0';
					else
					en0 <= '1';
					en1 <= '0'; end if;
				end case;
			end process;
					
			
	reg0 : register7b port map(data,CLR,CLK,en0,A);
	reg1 : register7b port map(data,CLR,CLK,en1,B);
	
	
end comport;