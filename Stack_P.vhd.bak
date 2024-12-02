library IEEE;
use IEEE.std_logic_1164.all;

entity Stack_P is  --stack pointer
port(
	--generic(N:integer:=4);
	clk,clr: in std_logic;
	I_ap: in std_logic_vector (3 downto 0); --(N-1 downto 0) así sería con el genérico
	O_ap: out std_logic_vector (3 downto 0)
);
end Stack_P;

architecture Behavioral of Stack_P is
signal q_aux: std_logic_vector (3 downto 0);

begin
	process(clk,clr)
	begin
		if(clr='1') then 
			q_aux<="1111";
		elsif(clk'event and clk='1') then 
			q_aux<=I_ap;
		end if;
	end process;

	O_ap<=q_aux;
end Behavioral;