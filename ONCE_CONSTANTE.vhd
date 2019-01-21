library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity ONCE_CONSTANTE is
   port( 	CINCO: out std_logic_vector(3 DOWNTO 0));
	
end ONCE_CONSTANTE;
 
architecture solve of ONCE_CONSTANTE is
 begin
	CINCO <="1010";
end solve;