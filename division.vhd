LIBRARY altera_mf;
LIBRARY lpm;
library IEEE; 
USE lpm.lpm_components.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity division is

port( clock,reset: in std_logic;
		divisor: in std_LOGIC_VECTOR(7 downto 0);
		dividendo: in std_LOGIC_VECTOR(7 downto 0);
		en: in std_logic;
		cosiente: out std_LOGIC_VECTOR(7 downto 0);
		residuo: out std_LOGIC_VECTOR(7 downto 0)
);

End division;


architecture COMPORTAMIENTO of division is

component LPM_DIVIDE
 generic (LPM_WIDTHN : natural;
 LPM_WIDTHD : natural;
LPM_NREPRESENTATION : string := "UNSIGNED";
LPM_DREPRESENTATION : string := "UNSIGNED";
LPM_PIPELINE : natural := 0;
LPM_TYPE : string := L_DIVIDE;
LPM_HINT : string := "UNUSED");
port (NUMER : in std_logic_vector(LPM_WIDTHN-1 downto 0);
DENOM : in std_logic_vector(LPM_WIDTHD-1 downto 0);
ACLR : in std_logic := '0';
CLOCK : in std_logic := '0';
CLKEN : in std_logic := '1';
QUOTIENT : out std_logic_vector(LPM_WIDTHN-1 downto 0);
REMAIN : out std_logic_vector(LPM_WIDTHD-1 downto 0));
end component;



begin


Division: LPM_DIVIDE GENERIC MAP (LPM_WIDTHN => 8,LPM_WIDTHD => 8) PORT MAP (dividendo,divisor,reset,clock,en,cosiente,residuo);

 END COMPORTAMIENTO;
