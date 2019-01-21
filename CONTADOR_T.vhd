library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity CONTADOR_T is
   port( Enable: in std_logic;
			clear: in std_logic;
			Clock: in std_logic;
			Reset: in std_logic;
			Output: out std_logic_vector(7 downto 0));
end CONTADOR_T;
 
architecture solve of CONTADOR_T is
   signal temp: std_logic_vector(7 downto 0);
begin   
process(Clock,Reset,temp,clear)
   begin
      if Reset='0' then
         temp <= "00000000";
			Output <= temp;
		elsif clear='1' then
			temp<="00000000";
			Output <= temp;
		elsif(Clock'event and Clock='1') then
				if Enable='1' then
					if temp="00000111" then
					temp<="00000000";
					Output <= temp;
					else
					temp <= temp + 1;
					Output <= temp;
					end if;
				end if;
		
		end if;
   end process;
 end solve;