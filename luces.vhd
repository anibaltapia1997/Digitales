library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity luces is

port (
     
	  seleccion : in std_logic_vector(3 downto 0);
	  CLC: in std_logic;
     uno : out std_logic;
	 dos : out std_logic;
	 tres : out std_logic;
	 cuatro : out std_logic;
	 cinco : out std_logic;
	 seis : out std_logic;
	 siete : out std_logic;
	 ocho : out std_logic
	 );
end luces;

architecture sol of luces is
begin

process(seleccion)
begin
IF CLC='1' THEN 
	 uno <= '0';
	 dos <= '0';
	 tres <= '0';
	 cuatro <= '0';
	 cinco <= '0';
	 seis <= '0';
	 siete <= '0';
	 ocho <= '0';
ELSE
case seleccion is
  when "0001" => 
  	 uno <= '1';
	 dos <= '0';
	 tres <= '0';
	 cuatro <= '0';
	 cinco <= '0';
	 seis <= '0';
	 siete <= '0';
	 ocho <= '0';
  when "0010" => 
     uno <= '0';
	 dos <= '1';
	 tres <= '0';
	 cuatro <= '0';
	 cinco <= '0';
	 seis <= '0';
	 siete <= '0';
	 ocho <= '0';
  when "0011" => 
     uno <= '0';
	 dos <= '0';
	 tres <= '1';
	 cuatro <= '0';
	 cinco <= '0';
	 seis <= '0';
	 siete <= '0';
	 ocho <= '0';
  when "0100" => 
     uno <= '0';
	 dos <= '0';
	 tres <= '0';
	 cuatro <= '1';
	 cinco <= '0';
	 seis <= '0';
	 siete <= '0';
	 ocho <= '0';
  when "0101" => 
     uno <= '0';
	 dos <= '0';
	 tres <= '0';
	 cuatro <= '0';
	 cinco <= '1';
	 seis <= '0';
	 siete <= '0';
	 ocho <= '0';
  when "0110" => 
     uno <= '0';
	 dos <= '0';
	 tres <= '0';
	 cuatro <= '0';
	 cinco <= '0';
	 seis <= '1';
	 siete <= '0';
	 ocho <= '0';
  when "0111" =>   	 
	 uno <= '0';
	 dos <= '0';
	 tres <= '0';
	 cuatro <= '0';
	 cinco <= '0';
	 seis <= '0';
	 siete <= '1';
	 ocho <= '0';
	 
  when "1000" => 
     uno <= '0';
	 dos <= '0';
	 tres <= '0';
	 cuatro <= '0';
	 cinco <= '0';
	 seis <= '0';
	 siete <= '0';
	 ocho <= '1';
  when others => 
     uno <= '0';
	 dos <= '0';
	 tres <= '0';
	 cuatro <= '0';
	 cinco <= '0';
	 seis <= '1';
	 siete <= '0';
	 ocho <= '0';
end case; 
END IF;
end process;
end sol;