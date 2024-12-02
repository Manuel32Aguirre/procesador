library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity mem_prog is
port (
	A : in STD_LOGIC_VECTOR(15 downto 0);
	O : out STD_LOGIC_VECTOR(15 downto 0)
);
end mem_prog;

architecture Behavioral of mem_prog is
begin

	O <= x"e005" when A=x"0000" else
		x"e015" when A=x"0001" else
		x"d004" when A=x"0002" else
		x"ffff";
	
end Behavioral;