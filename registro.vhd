library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY registro is
PORT (
	clk, clr, en: IN STD_LOGIC;
	I: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	S: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END registro;

ARCHITECTURE Behavioral OF registro IS
SIGNAL q_aux : STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN

PROCESS(clk, clr)
	BEGIN
	IF(clr = '1') THEN 
		q_aux <= "00000000";
	ELSIF(clk'EVENT AND clk = '1') THEN
		IF(en = '1') THEN
			CASE S IS
				WHEN "00" => q_aux <= I;
				WHEN "01" => 
					q_aux(7 DOWNTO 1) <= q_aux(6 DOWNTO 0);
					q_aux(0) <= '0';
				WHEN "10" => 
					q_aux(6 DOWNTO 0) <= q_aux(7 DOWNTO 1);
					q_aux(7) <= '0';
				WHEN OTHERS =>
					q_aux <= q_aux;
			END CASE;
		END IF;	
	END IF;
END PROCESS;

Q <= q_aux;

END Behavioral;