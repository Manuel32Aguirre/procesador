LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ALU IS
PORT(
	A, B : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
	SEL : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	F : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
	Z, N, C: OUT STD_LOGIC
);
END ALU;

ARCHITECTURE Behavioral OF ALU IS
SIGNAL F_aux : STD_LOGIC_VECTOR (8 DOWNTO 0);
BEGIN
PROCESS(A, B, SEL)
BEGIN 
	CASE SEL IS
		WHEN "000" => F_aux <= ('0' & A) + ('0' & B); -- SUMA A + B
		WHEN "001" => F_aux <= ('0' & A) - ('0' & B); -- RESTA A - B
		WHEN "010" => F_aux <= ('0' & A) AND ('0' & B); -- A AND B
		WHEN "011" => F_aux <= ('0' & A) OR ('0' & B); -- A OR B
		WHEN "100" => F_aux <= ('0' & A) XOR ('0' & B); -- A XOR B
		WHEN "101" => F_aux <= NOT ('0' & A); -- NOT A
		WHEN "110" => F_aux(8 DOWNTO 1) <= A(7 DOWNTO 0); -- CORRIMIENTO LÓGICO POR LA IZQUIERDA
			F_aux(0) <= '0';
		WHEN OTHERS => F_aux(6 DOWNTO 0) <= A(7 DOWNTO 1); -- CORRIMIENTO LÓGICO POR LA DERECHA
			F_aux(7) <= '0';
			F_aux(8) <= '0';
	END CASE;
	
END PROCESS;

	F <= F_aux(7 DOWNTO 0);
	Z <= NOT (F_aux(7) OR F_aux(6) OR F_aux(5) OR F_aux(4) OR F_aux(3) OR F_aux(2) OR F_aux(1) OR F_aux(0));
	N <= F_aux(7);
	C <= F_aux(8);
END Behavioral;