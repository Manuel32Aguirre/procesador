LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY mux32_8 IS
	PORT(
	sel_read: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	I: IN STD_LOGIC_VECTOR(255 DOWNTO 0);
	O: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END mux32_8;

ARCHITECTURE behavioral OF mux32_8 IS
	BEGIN
		O <= I(7 DOWNTO 0)   WHEN sel_read = "00000" ELSE
         I(15 DOWNTO 8)    WHEN sel_read = "00001" ELSE
         I(23 DOWNTO 16)   WHEN sel_read = "00010" ELSE
         I(31 DOWNTO 24)   WHEN sel_read = "00011" ELSE
         I(39 DOWNTO 32)   WHEN sel_read = "00100" ELSE
         I(47 DOWNTO 40)   WHEN sel_read = "00101" ELSE
         I(55 DOWNTO 48)   WHEN sel_read = "00110" ELSE
         I(63 DOWNTO 56)   WHEN sel_read = "00111" ELSE
         I(71 DOWNTO 64)   WHEN sel_read = "01000" ELSE
         I(79 DOWNTO 72)   WHEN sel_read = "01001" ELSE
         I(87 DOWNTO 80)   WHEN sel_read = "01010" ELSE
         I(95 DOWNTO 88)   WHEN sel_read = "01011" ELSE
         I(103 DOWNTO 96)  WHEN sel_read = "01100" ELSE
         I(111 DOWNTO 104) WHEN sel_read = "01101" ELSE
         I(119 DOWNTO 112) WHEN sel_read = "01110" ELSE
         I(127 DOWNTO 120) WHEN sel_read = "01111" ELSE
         I(135 DOWNTO 128) WHEN sel_read = "10000" ELSE
         I(143 DOWNTO 136) WHEN sel_read = "10001" ELSE
         I(151 DOWNTO 144) WHEN sel_read = "10010" ELSE
         I(159 DOWNTO 152) WHEN sel_read = "10011" ELSE
         I(167 DOWNTO 160) WHEN sel_read = "10100" ELSE
         I(175 DOWNTO 168) WHEN sel_read = "10101" ELSE
         I(183 DOWNTO 176) WHEN sel_read = "10110" ELSE
         I(191 DOWNTO 184) WHEN sel_read = "10111" ELSE
         I(199 DOWNTO 192) WHEN sel_read = "11000" ELSE
         I(207 DOWNTO 200) WHEN sel_read = "11001" ELSE
         I(215 DOWNTO 208) WHEN sel_read = "11010" ELSE
         I(223 DOWNTO 216) WHEN sel_read = "11011" ELSE
         I(231 DOWNTO 224) WHEN sel_read = "11100" ELSE
         I(239 DOWNTO 232) WHEN sel_read = "11101" ELSE
         I(247 DOWNTO 240) WHEN sel_read = "11110" ELSE
         I(255 DOWNTO 248);
END behavioral;
	