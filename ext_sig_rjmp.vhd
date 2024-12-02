library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity ext_sig_rjmp is
	port (
		I_r : in std_logic_vector(15 downto 0);
		O_r : out std_logic_vector(15 downto 0)
	);
end ext_sig_rjmp;

architecture Behavioral of ext_sig_rjmp is
begin

	O_r(11 downto 0) <= I_r(11 downto 0);

	O_r(12) <= I_r(11);
	O_r(13) <= I_r(11);
	O_r(14) <= I_r(11);
	O_r(15) <= I_r(11);

end Behavioral;