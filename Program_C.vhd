library IEEE;
use IEEE.std_logic_1164.all;

entity Program_C is
port(
	clk,clr: in std_logic;
	I: in std_logic_vector (15 downto 0);
	O: out std_logic_vector (15 downto 0)
);
end Program_C;

architecture Behavioral of Program_C is
signal q_aux: std_logic_vector (15 downto 0);

begin
	process(clk,clr)
	begin
		if(clr='1') then 
			q_aux<=x"0000";
		elsif(clk'event and clk='1') then 
			q_aux<=I;
		end if;
	end process;

	O<=q_aux;
end Behavioral;