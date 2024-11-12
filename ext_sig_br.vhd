library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ext_sig_br is
	port(
			Ibr : in STD_LOGIC_VECTOR(15 downto 0);
			Obr : out STD_LOGIC_VECTOR(15 downto 0));
end ext_sig_br;

architecture Behavioral of ext_sig_br is
begin

	Obr(6 downto 0) <= Ibr(9 downto 3);
	Obr(7) <= Ibr(9);
	Obr(8) <= Ibr(9);
	Obr(9) <= Ibr(9);
	Obr(10) <= Ibr(9);
	Obr(11) <= Ibr(9);
	Obr(12) <= Ibr(9);
	Obr(13) <= Ibr(9);
	Obr(14) <= Ibr(9);
	Obr(15) <= Ibr(9);
	
end Behavioral;