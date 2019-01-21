library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MSS is
   port( 
			START: in std_logic;
			CLOCK: in std_logic;
			Reset: in std_logic;
			INICIO: in std_logic;
			TECLA1: in std_logic;
			TECLA2: in std_logic;
			TECLA3: in std_logic;
			TECLA4: in std_logic;
			TECLA5: in std_logic;
			TECLA6: in std_logic;
			TECLA7: in std_logic;
			TECLA8: in std_logic;
			IGUAL: in std_logic;
			APAGADO: in std_logic;
			CINCO: in std_logic;
			QUINCE: in std_logic;
			FINAL_JUEGO: in std_logic;
			GUARDADO: in std_logic;
			FIN: in std_logic;
			EN_ALE: out std_logic;
			CLEAR_ALE: out std_logic;
			EN_TIEMPO: out std_logic;
			CLEAR_TIEMPO: out std_logic;
			EN_TIEMPO_A: out std_logic;
			EN_DIR: out std_logic;
			CLEAR_DIR: out std_logic;
			W: out std_logic;
			EN_RAM: out std_logic;
			EN_RELOJ: out std_logic;
			CLEAR_RELOJ: out std_logic;
			MOSTRAR: out std_logic;
			dir_mostrar: out std_logic
	
			);
end MSS;



architecture COMPORTAMIENTO of MSS is
	TYPE estado IS (Ta,Tb,Tc,Td,Te,Tf,Tg,Th,Ti,Tj,Tk,Tl,Tm,Tn,Tp,Tq,Tg1,Tg2,Ti1,Tj1,Tm1);
	SIGNAL y : estado;
begin
 PROCESS (Reset,CLOCK)
 begin
	if Reset='0' then y<=Ta;
	elsif (CLOCK'event and Clock='1') then 
		case y is
			when Ta=> if (START='1') then y<=Tb; 
						 else y<=Ta;
						 end if;
			when Tb=> if (START='0') then y<=Tc; 
						 else y<=Tb;
						 end if;
			when Tc=> if (INICIO='1') then y<=Td; 
						 else y<=Tc;
						 end if;
			when Td=> if (INICIO='0') then y<=Te; 
						 else y<=Td;
						 end if;
			when Te=> if ((TECLA1 OR TECLA2 OR TECLA3 OR TECLA4 OR TECLA5 OR TECLA6 OR TECLA7 OR TECLA8)='1') then y<=Tg; 
						 elsif (Quince='1') then y<=Tj1;
						 else y<=Te;
						 end if;
			when Tf=> if ((TECLA1 OR TECLA2 OR TECLA3 OR TECLA4 OR TECLA5 OR TECLA6 OR TECLA7 OR TECLA8)='0') then y<=Th; 
						 else y<=Tf;
						 end if;
			when Tg=> if (IGUAL='1') then y<=Tf; 
						 else y<=Tg2;
						 end if;
			when Tg2=> if ((TECLA1 OR TECLA2 OR TECLA3 OR TECLA4 OR TECLA5 OR TECLA6 OR TECLA7 OR TECLA8)='0') then y<=Tg1; 
						 else y<=Tg2;
						 end if;
			when Tg1=> if (FINAL_JUEGO='1') then y<=Tm; --mostrar tiempo 
						 else y<=Te; 
						 end if;
			when Th=> y<=Ti;
			when Ti=> if (GUARDADO='1') then y<=Ti1; --mostrar tiempo 
						 else y<=Ti1; 
						 end if;
			when Ti1=> y<=Tj;
			when Tj1=> y<=Tj;
			when Tj=> if (FINAL_JUEGO='1') then y<=Tm; --mostrar tiempo 
						 else y<=Tk; 
						 end if;
			when Tk=> if (APAGADO='1') then y<=Tl; 
						 else y<=Tk;
						 end if;
			when Tl=> y<=Te; 
			----------------estados para mostrar datos
			when Tm=> y<=Tm1;
			when Tm1=> y<=Tn;
			when Tn=> if (cinCO='1') then y<=Tp; 
						 else y<=Tn;
						 end if;
			when Tp=> if (FINAL_JUEGO='1') then y<=Tc; 
						 else y<=Tq; 
						 end if;
			when Tq=> y<=Tm1;
			end case;
	end if;
 END PROCESS;

 PROCESS (y)
begin
			EN_ALE<='0';
			CLEAR_ALE<='0';
			EN_TIEMPO<='0';
			CLEAR_TIEMPO<='0';
			EN_TIEMPO_A<='0';
			EN_DIR<='0';
			CLEAR_DIR<='0';
			W<='0';
			EN_RAM<='0';
			EN_RELOJ<='0';
			CLEAR_RELOJ<='0';
			MOSTRAR<='0';
			dir_mostrar<='0';
			
		case y is
			when Ta=> CLEAR_ALE<='1';  CLEAR_TIEMPO<='1';  CLEAR_DIR<='1'; CLEAR_RELOJ<='1'; MOSTRAR<='0';
			when Tb=> 
			when Tc=> 
			when Td=> EN_ALE<='1';
			when Te=> EN_RELOJ<='1'; 
			when Tf=> EN_ALE<='1'; EN_TIEMPO_A<='1';
			when Tg=> EN_DIR<='1';
			when Tg2=>
			when Tg1=> 		
			when Th=> W<='1'; 
			when Ti=> 
			when Ti1=> CLEAR_TIEMPO<='1';  
			when Tj1=> EN_DIR<='1';
			when Tj=> CLEAR_RELOJ<='1'; 	
			when Tk=> EN_TIEMPO<='1'; CLEAR_ALE<='1';
			when Tl=>  CLEAR_TIEMPO<='1'; EN_ALE<='1';
			when Tm=> CLEAR_DIR<='1'; CLEAR_TIEMPO<='1'; 
			when Tm1=> EN_RAM<='1';
			when Tn=>  EN_TIEMPO<='1';  MOSTRAR<='1'; --EN_RAM<='1';
			when Tp=>  MOSTRAR<='1'; 
			when Tq=> EN_DIR<='1'; CLEAR_TIEMPO<='1';

		end case;
 END PROCESS;
END COMPORTAMIENTO;


	
	
	
	
	
