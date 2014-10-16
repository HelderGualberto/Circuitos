-- StateMachine
-- Mealy Machine

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity StateMachine is
	port(
		x: in std_logic;
		clk: in std_logic;
		y: out std_logic
	);
	
	TYPE estado is (s0,s1,s11,s110);
	SIGNAL estado_atual: estado;
	SIGNAL estado_anterior: estado;
	
end StateMachine;

architecture comportamental of StateMachine is
begin
	process(clk) 
	begin 
		if rising_edge(clk) then
			case estado_atual is
			when s0 => if x='0' then estado_atual <= s0;
			else 
				estado_atual <= s1;
				estado_anterior <= s0;
			end if;
			when s1 => if x='0' then 
				estado_atual <= s0;
				estado_anterior <= s1;
			else
				estado_anterior <= s1;
				estado_atual <= s11;
			end if;
			when s11 => if x='0' then
				estado_atual <= s110;
				estado_anterior <= s11;
			else
				estado_anterior <= s11;
				estado_atual <= s11;
			end if;
			when s110 => if x='0' then 
				estado_anterior <= s110;
				estado_atual <= s0;
			else
				estado_anterior <= s110;
				estado_atual <= s1;
			end if;
			end case;
		end if;
	end process;
	
	process(estado_anterior,estado_atual)
		begin
		case estado_atual is
		when s0 => y <= '0';
		when s1 => if estado_anterior = s110 then y <= '1';
			else y <= '0';
		end if;
		when s11 => y <= '0';
		when s110 => y <= '0';
		end case;
	end process;
end comportamental;