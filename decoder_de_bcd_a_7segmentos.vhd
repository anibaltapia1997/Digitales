library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity decoder_de_bcd_a_7segmentos is
   port( BCD: in std_logic_vector(3 downto 0);
			SEG7: out std_logic_vector(1 to 7));
end decoder_de_bcd_a_7segmentos;
 
architecture solve of decoder_de_bcd_a_7segmentos is
 begin
	SEG7 <=	"1111110"	when BCD = "0000" ELSE
				"0110000"  	when BCD = "0001" ELSE 
				"1101101" 	when BCD = "0010" ELSE 
				"1111001"	when BCD = "0011" ELSE 
				"0110011"	when BCD = "0100" ELSE 
				"1011011"	when BCD = "0101" ELSE 
				"1011111"	when BCD = "0110" ELSE 
				"1110000"	when BCD = "0111" ELSE 
				"1111111"	when BCD = "1000" ELSE 
				"1111011"	when BCD = "1001" ELSE 
				"0000000" ; 
end solve;