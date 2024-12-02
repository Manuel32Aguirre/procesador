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
	process(clk, clr, en)
	begin
		if(clr = '1') then
			q_aux <= '0';
		elsif(clk'event and clk = '1' and en = '1') then
			q_aux <= I;
		--else
			--q_aux <= q_aux;
		end if;
	end process;	
	q_aux <= q_aux;
end Behavioral;