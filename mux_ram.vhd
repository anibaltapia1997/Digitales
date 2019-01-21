library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_ram is

port (
     datoA : in std_logic_vector(3 downto 0);
	 datoB : in std_logic_vector(3 downto 0);
	 sel: in std_logic;
	 Salida : out std_logic_vector(3 downto 0)
	 );
end mux_ram;

architecture sol of mux_ram is
begin

process(datoA,datoB)
begin
	case sel is
	when '0' =>
	Salida <= datoA;
	when others => 
	Salida <= datoB;
	end case;
	
end process;
end sol;