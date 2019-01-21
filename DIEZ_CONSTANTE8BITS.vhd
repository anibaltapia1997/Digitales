library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity DIEZ_CONSTANTE8BITS is
   port( 	SALIDA: out std_logic_vector(7 DOWNTO 0));
	
end DIEZ_CONSTANTE8BITS;
 
architecture solve of DIEZ_CONSTANTE8BITS is
 begin
	SALIDA <="00001010";
end solve;