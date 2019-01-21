LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity ram_ord is
	Generic (
		DATA_WIDTH		: integer := 8;
		ADDRESS_WIDTH	: integer := 4
	);
	Port ( 
		Clock,Enable 	: in  STD_LOGIC;
      Reset 	: in  STD_LOGIC;
		DataIn 	: in  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		Address	: in  STD_LOGIC_VECTOR (ADDRESS_WIDTH - 1 downto 0);
		WriteEn	: in  STD_LOGIC;
		DataOut 	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
		Loaded   : out STD_LOGIC
	);
end ram_ord;

architecture Behavioral of ram_ord is
	type Memory_Array is array (0 to 9) of STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
	signal Memory : Memory_Array;
begin

	-- Read process
	process (Clock)
	begin
		if Reset = '0' then
				-- Clear DataOut on Reset
				DataOut <= (others => '0');
		elsif (CLOCK'event and Clock='1') then
			
			if Enable = '1' then
				DataOut <= Memory(to_integer(unsigned(Address)));
			end if;
		end if;
	end process;

	-- Write process
	process (Clock)
	begin
		if Reset = '0' then
				-- Clear Memory on Reset
				for i in Memory'Range loop
					Memory(i) <= (others => '0');
				end loop;
		elsif (CLOCK'event and Clock='1') then
			loaded <='0';
			
			if  WriteEn = '1' then
				for i in Memory'Range loop
					if((DataIn < Memory(i))) then
						for j in (9) downto 1 loop
							exit when j=i;
							Memory(j) <= Memory(j-1);
						end loop;
						Memory(i) <= DataIn;
						loaded <='1';exit when TRUE;
					elsif(Memory(i)="00000000") then
						Memory(i) <= DataIn;
						loaded <='1';exit when TRUE;
					elsif(DataIn = Memory(i)) then
						loaded <='1';exit when TRUE;
					end if;
				end loop;
			end if;
		end if;
	end process;

end Behavioral;

