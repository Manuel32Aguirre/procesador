LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY archivo_registros IS
PORT(
	clk, clr, en_w : IN STD_LOGIC;
	sel_w_d, sel_r_r, sel_r_d : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	sel_registros: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	dato_I : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	o_r, o_d : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
);
END archivo_registros;

ARCHITECTURE Behavioral OF archivo_registros IS
COMPONENT mux32_8 IS
PORT(
	sel_read : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	I : IN STD_LOGIC_VECTOR (255 DOWNTO 0);
	O : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END COMPONENT;

COMPONENT registro IS 
PORT(
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	en : IN STD_LOGIC;
	I : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	S: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END COMPONENT;

COMPONENT dec5_32 IS
PORT(
	sel_w_d : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
	en_w : IN STD_LOGIC;
	O : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
END COMPONENT;

SIGNAL O_aux : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Q_aux : std_LOGIC_VECTOR(255 DOWNTO 0);
SIGNAL o_r_aux, o_d_aux: STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

decodificador: dec5_32 PORT MAP(sel_w_d => sel_w_d, en_w => en_w, O => O_aux);
mux_fuente: mux32_8 PORT MAP(sel_read => sel_r_r, I => Q_aux, O => o_r);
mux_destino: mux32_8 PORT MAP(sel_read => sel_r_d, I => Q_aux, O => o_d);

reg0: registro PORT MAP(clk => clk, clr => clr, en => O_aux(0), I => dato_I, S => sel_registros, Q =>Q_aux(7 DOWNTO 0));
reg1: registro PORT MAP(clk => clk, clr => clr, en => O_aux(1), I => dato_I, S => sel_registros, Q =>Q_aux(15 DOWNTO 8));
reg2: registro PORT MAP(clk => clk, clr => clr, en => O_aux(2), I => dato_I, S => sel_registros, Q =>Q_aux(23 DOWNTO 16));
reg3: registro PORT MAP(clk => clk, clr => clr, en => O_aux(3), I => dato_I, S => sel_registros, Q =>Q_aux(31 DOWNTO 24));
reg4: registro PORT MAP(clk => clk, clr => clr, en => O_aux(4), I => dato_I, S => sel_registros, Q =>Q_aux(39 DOWNTO 32));
reg5: registro PORT MAP(clk => clk, clr => clr, en => O_aux(5), I => dato_I, S => sel_registros, Q =>Q_aux(47 DOWNTO 40));
reg6: registro PORT MAP(clk => clk, clr => clr, en => O_aux(6), I => dato_I, S => sel_registros, Q =>Q_aux(55 DOWNTO 48));
reg7: registro PORT MAP(clk => clk, clr => clr, en => O_aux(7), I => dato_I, S => sel_registros, Q =>Q_aux(63 DOWNTO 56));
reg8: registro PORT MAP(clk => clk, clr => clr, en => O_aux(8), I => dato_I, S => sel_registros, Q =>Q_aux(71 DOWNTO 64));
reg9: registro PORT MAP(clk => clk, clr => clr, en => O_aux(9), I => dato_I, S => sel_registros, Q =>Q_aux(79 DOWNTO 72));
reg10: registro PORT MAP(clk => clk, clr => clr, en => O_aux(10), I => dato_I, S => sel_registros, Q =>Q_aux(87 DOWNTO 80));
reg11: registro PORT MAP(clk => clk, clr => clr, en => O_aux(11), I => dato_I, S => sel_registros, Q =>Q_aux(95 DOWNTO 88));
reg12: registro PORT MAP(clk => clk, clr => clr, en => O_aux(12), I => dato_I, S => sel_registros, Q =>Q_aux(103 DOWNTO 96));
reg13: registro PORT MAP(clk => clk, clr => clr, en => O_aux(13), I => dato_I, S => sel_registros, Q =>Q_aux(111 DOWNTO 104));
reg14: registro PORT MAP(clk => clk, clr => clr, en => O_aux(14), I => dato_I, S => sel_registros, Q =>Q_aux(119 DOWNTO 112));
reg15: registro PORT MAP(clk => clk, clr => clr, en => O_aux(15), I => dato_I, S => sel_registros, Q =>Q_aux(127 DOWNTO 120));
reg16: registro PORT MAP(clk => clk, clr => clr, en => O_aux(16), I => dato_I, S => sel_registros, Q =>Q_aux(135 DOWNTO 128));
reg17: registro PORT MAP(clk => clk, clr => clr, en => O_aux(17), I => dato_I, S => sel_registros, Q =>Q_aux(143 DOWNTO 136));
reg18: registro PORT MAP(clk => clk, clr => clr, en => O_aux(18), I => dato_I, S => sel_registros, Q =>Q_aux(151 DOWNTO 144));
reg19: registro PORT MAP(clk => clk, clr => clr, en => O_aux(19), I => dato_I, S => sel_registros, Q =>Q_aux(159 DOWNTO 152));
reg20: registro PORT MAP(clk => clk, clr => clr, en => O_aux(20), I => dato_I, S => sel_registros, Q =>Q_aux(167 DOWNTO 160));
reg21: registro PORT MAP(clk => clk, clr => clr, en => O_aux(21), I => dato_I, S => sel_registros, Q =>Q_aux(175 DOWNTO 168));
reg22: registro PORT MAP(clk => clk, clr => clr, en => O_aux(22), I => dato_I, S => sel_registros, Q =>Q_aux(183 DOWNTO 176));
reg23: registro PORT MAP(clk => clk, clr => clr, en => O_aux(23), I => dato_I, S => sel_registros, Q =>Q_aux(191 DOWNTO 184));
reg24: registro PORT MAP(clk => clk, clr => clr, en => O_aux(24), I => dato_I, S => sel_registros, Q =>Q_aux(199 DOWNTO 192));
reg25: registro PORT MAP(clk => clk, clr => clr, en => O_aux(25), I => dato_I, S => sel_registros, Q =>Q_aux(207 DOWNTO 200));
reg26: registro PORT MAP(clk => clk, clr => clr, en => O_aux(26), I => dato_I, S => sel_registros, Q =>Q_aux(215 DOWNTO 208));
reg27: registro PORT MAP(clk => clk, clr => clr, en => O_aux(27), I => dato_I, S => sel_registros, Q =>Q_aux(223 DOWNTO 216));
reg28: registro PORT MAP(clk => clk, clr => clr, en => O_aux(28), I => dato_I, S => sel_registros, Q =>Q_aux(231 DOWNTO 224));
reg29: registro PORT MAP(clk => clk, clr => clr, en => O_aux(29), I => dato_I, S => sel_registros, Q =>Q_aux(239 DOWNTO 232));
reg30: registro PORT MAP(clk => clk, clr => clr, en => O_aux(30), I => dato_I, S => sel_registros, Q =>Q_aux(247 DOWNTO 240));
reg31: registro PORT MAP(clk => clk, clr => clr, en => O_aux(31), I => dato_I, S => sel_registros, Q =>Q_aux(255 DOWNTO 248));

END Behavioral;