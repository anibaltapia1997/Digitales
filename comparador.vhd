library ieee;
use ieee.std_logic_1164.all;

Entity comparador is
	Port(	w1: in std_logic_vector(7 downto 0);
			w2: in std_logic_vector(7 downto 0);
			menor,igual: out std_logic);
end comparador;

Architecture sol of comparador is

Begin
	menor<='1' when w1<W2 else '0';
	igual<='1' when w1=W2 else '0';
end sol;