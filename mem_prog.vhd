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

--	O <= x"e003" when A=x"0000" else
--		x"e015" when A=x"0001" else
--		x"0f10" when A=x"0002" else
--		x"b91b" when A=x"0003" else
--		x"0000" when A=x"0004" else
--		x"ffff";
	O <= x"e051" when A=x"0000" else
		x"e000" when A=x"0001" else
		x"e011" when A=x"0002" else
		x"b91b" when A=x"0003" else
		x"d012" when A=x"0004" else
		
		x"0f01" when A=x"0005" else
		x"e810" when A=x"0006" else
		x"0f00" when A=x"0007" else
		x"b90b" when A=x"0008" else
		
		x"d00d" when A=x"0009" else
		x"1b01" when A=x"000a" else
		x"f011" when A=x"000b" else
		x"0f01" when A=x"000c" else
	
		x"cff9" when A=x"000d" else
		x"0f01" when A=x"000e" else
		x"e011" when A=x"000f" else
		x"9506" when A=x"0010" else

		x"b90b" when A=x"0011" else
		x"d004" when A=x"0012" else
		x"1b01" when A=x"0013" else
		x"f381" when A=x"0014" else

		x"0f01" when A=x"0015" else
		x"cff9" when A=x"0016" else
		x"e120" when A=x"0017" else
		x"ec38" when A=x"0018" else
		
		x"ec48" when A=x"0019" else
		x"0000" when A=x"001a" else
		x"0000" when A=x"001b" else
		x"0000" when A=x"001c" else
		x"0000" when A=x"001d" else
		
		x"0000" when A=x"001e" else
		x"0000" when A=x"001f" else
		x"0000" when A=x"0020" else

		x"0000" when A=x"0021" else
		x"1b45" when A=x"0022" else
		x"f7b9" when A=x"0023" else
		x"1b35" when A=x"0024" else

		x"f7a1" when A=x"0025" else
		x"1b25" when A=x"0026" else
		x"f789" when A=x"0027" else
		x"9508" when A=x"0028" else

		x"ffff";
		
end Behavioral;