library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity stack_p is
generic(N: integer:=4);
Port(
clk: in STD_LOGIC;
clr: in STD_LOGIC;
I_sp: in STD_LOGIC_VECTOR(3 downto 0);
O_sp: out STD_LOGIC_VECTOR(3 downto 0)
);
end stack_p;

architecture Behavioral of stack_p is
signal q_aux: std_logic_vector(3 downto 0);
begin

process(clk, clr)
begin
if(clr='1') then q_aux <= "0000";
elsif(clk' event and clk='1') then
q_aux <= I_sp;
end if;
end process;
O_sp <= q_aux;

end Behavioral;