library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity program_c is 
Port(
clk: in STD_LOGIC;
clr: in STD_LOGIC;
I: in STD_LOGIC_VECTOR (15 downto 0);
O: out STD_LOGIC_VECTOR (15 downto 0)
);
end program_c;

architecture Behavioral of program_c is
signal q_aux: std_logic_vector(15 downto 0);
begin

process(clk, clr)
begin
if(clr= '1') then q_aux <= x"0000";
elsif(clk'event and clk='1') then
q_aux <= I;
end if;
end process;

O <= q_aux;
end Behavioral;