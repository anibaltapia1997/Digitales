library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity DIRECCION is
   port( Enable: in std_logic;
			clear: in std_logic;
			Clock: in std_logic;
			Reset: in std_logic;
			mostrar: in std_logic;
			Output: out std_logic_vector(3 downto 0));
end DIRECCION;
 
architecture solve of DIRECCION is
   signal temp: std_logic_vector(3 downto 0);
begin   
process(Clock,Reset,temp)
   begin
      if Reset='0' then
         temp <= "0000";
			Output <= temp;
			elsif clear='1' then
					temp<="0000";
					Output <= temp;
			elsif mostrar='1' then
					temp<="1111";
					Output <= temp;
			elsif(Clock'event and Clock='1') then
				if Enable='1' then
					if temp="1011" then
					temp<="0000";
					Output <= temp;
					else
					temp <= temp + 1;
					Output <= temp;
					end if;
				
				end if;
			end if;
   end process;
 end solve;