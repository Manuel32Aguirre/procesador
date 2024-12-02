library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity RAM is

Port(	clk : in STD_LOGIC;
		we : in STD_LOGIC;
		A : in STD_LOGIC_VECTOR(3 downto 0);
		WD: in STD_LOGIC_VECTOR(15 downto 0);
		RD : out STD_LOGIC_VECTOR(15 downto 0));
end RAM;

architecture Behavioral of RAM is

type mem_ram is array(15 downto 0) of std_logic_vector(15 downto 0);

signal dato : mem_ram;

begin

process(clk,we)
	begin
		if(clk'event and clk='1' and we='1') then
		
			dato( conv_integer(A))<=WD;
		end if;
end process;


 RD<= dato ( conv_integer(A));

end Behavioral;
