library ieee;
use ieee.std_logic_1164.all;

Entity comparador4BIT is
	Port(	w1: in std_logic_vector(3 downto 0);
			w2: in std_logic_vector(3 downto 0);
			menor,igual: out std_logic);
end comparador4BIT;

Architecture sol of comparador4BIT is

Begin
	menor<='1' when w1<W2 else '0';
	igual<='1' when w1=W2 else '0';
end sol;