library IEEE;
use IEEE.std_logic_1164.all;

entity sreg is
	port(
		clk, clr, en, I: in STD_LOGIC;
		Q : out STD_LOGIC
	);
end sreg;

architecture Behavioral of sreg is
	signal q_aux : std_logic;
begin
	process(clk, clr)
	begin
		if clr = '1' then
			q_aux <= '0'; -- Reinicia el registro en caso de reset
		elsif rising_edge(clk) then -- Detecta el flanco de subida del reloj
			if en = '1' then
				q_aux <= I; -- Carga el valor de entrada si está habilitado
			end if;
		end if;
	end process;	
	
	Q <= q_aux; -- Asigna el valor de q_aux a la salida
end Behavioral;

 