library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity CONTADOR_BCD is
   port( Enable: in std_logic;
			clear: in std_logic;
			Clock: in std_logic;
			Reset: in std_logic;
			Output: out std_logic_vector(3 downto 0));
end CONTADOR_BCD;
 
architecture solve of CONTADOR_BCD is
   signal temp: std_logic_vector(3 downto 0);
begin   
process(Clock,Reset,temp)
   begin
      if Reset='0' then
         temp <= "0000";
			Output <= temp;
			elsif(Clock'event and Clock='1') then
				if Enable='1' then
					if temp="1000" then
					temp<="0001";
					Output <= temp;
					else
					temp <= temp + 1;
					Output <= temp;
					end if;
				elsif clear='1' then
					temp <= temp + 3;
					Output <= temp;
				end if;
			end if;
   end process;
 end solve;