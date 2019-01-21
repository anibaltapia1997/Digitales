library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity concatenar is

port (
     datoA : in std_logic_vector(7 downto 0);
	 datoB : in std_logic_vector(7 downto 0);
	 datoC : in std_logic_vector(7 downto 0);
	 datoD : in std_logic_vector(7 downto 0);
	 datoE : in std_logic_vector(7 downto 0);
	 datoF : in std_logic_vector(7 downto 0);
	 sel: in std_logic_vector(1 downto 0);
	 Salida : out std_logic_vector(15 downto 0)
	 );
end concatenar;

architecture sol of concatenar is
begin

process(datoA,datoB,datoC,datoD)
begin
	case sel is
	when "00" =>
	Salida <= datoA&datoB;
	when "01" =>
	Salida <= datoC&datoD;
	when others => 
	Salida <= datoE&datoF;
	end case;
	
end process;
end sol;