library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity concatenar_RAM is

port (
     datoA : in std_logic_vector(7 downto 0);
	 datoB : in std_logic_vector(7 downto 0);
	 Salida : out std_logic_vector(7 downto 0)
	 );
end concatenar_RAM;

architecture sol of concatenar_RAM is
begin

process(datoA,datoB)
begin

	Salida(7)<= datoA(3);
	Salida(6)<=datoA(2);
	Salida(5)<=datoA(1);
	Salida(4)<=datoA(0);
	Salida(3)<=datoB(3);
	Salida(2)<=datoB(2);
	Salida(1)<=datoB(1);
	Salida(0)<=datoB(0);

	
end process;
end sol;