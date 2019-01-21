library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_mostrar is

port (
     datoA : in std_logic_vector(7 downto 0);
	 datoB : in std_logic_vector(7 downto 0);
	 datoC : in std_logic_vector(7 downto 0);
	 sel: in std_logic;
	 SalidaA : out std_logic_vector(7 downto 0);
	 SalidaB : out std_logic_vector(7 downto 0)
	 );
end mux_mostrar;

architecture sol of mux_mostrar is
begin

process(datoA,datoB)
begin
	case sel is
	when '0' =>
	SalidaA <= "00000000";
	SalidaB <= "00000000";
	when others => 
	SalidaA <= datoC;
	end case;
	
end process;
end sol;