library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity QUINCE_CONSTANTE is
   port( 	CINCO: out std_logic_vector(7 DOWNTO 0));
	
end QUINCE_CONSTANTE;
 
architecture solve of QUINCE_CONSTANTE is
 begin
	CINCO <="00001111";
end solve;