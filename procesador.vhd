LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

entity procesador is
port(
	clk, clr: in std_logic;
	portb : out std_logic_vector(7 downto 0)
);

end procesador;

architecture Behavioral of procesador is
//
component ALU IS
PORT(
	A, B : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
	SEL : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	F : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
	Z, N, C: OUT STD_LOGIC
);
END component;

component archivo_registros IS
PORT(
	clk, clr, en_w : IN STD_LOGIC;
	sel_w_d, sel_r_r, sel_r_d : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	sel_registros: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	dato_I : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	o_r, o_d : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
);
END component;

component dec_instruccion is
port(
	I : in STD_LOGIC_VECTOR(15 downto 0);
	sel_r_d, sel_r_r, sel_w_d : out STD_LOGIC_VECTOR (4 downto 0);
	sel_alu : out STD_LOGIC_VECTOR(2 downto 0);
	ld, ld_mov, sel_rel, br, bn, en_w, en_port, en_sreg, ret_s, s1, s0 : out STD_LOGIC
);
end component;

component mem_prog is
port (
	A : in STD_LOGIC_VECTOR(15 downto 0);
	O : out STD_LOGIC_VECTOR(15 downto 0)
);
end component;

component Program_C is
port(
	clk,clr: in std_logic;
	I: in std_logic_vector (15 downto 0);
	O: out std_logic_vector (15 downto 0)
);
end component;

component registro is
PORT (
	clk, clr, en: IN STD_LOGIC;
	I: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	S: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END component;

component ext_sig_br is
	port(
			Ibr : in STD_LOGIC_VECTOR(15 downto 0);
			Obr : out STD_LOGIC_VECTOR(15 downto 0)
);
end component;

component ext_sig_rjump is
	port (
		I_r : in std_logic_vector(15 downto 0);
		O_r : out std_logic_vector(15 downto 0)
	);
end component;

component sreg is
	port(
			clk, clr, en, I: in STD_LOGIC;
			Q : out STD_LOGIC
	);
end component;

component RAM is
port(
	clk, we: in STD_LOGIC;
	A: in STD_LOGIC_VECTOR(3 downto 0);
	WD: in STD_LOGIC_VECTOR(15 downto 0);
	RD: out STD_LOGIC_VECTOR(15 downto 0)
);
end component;

component Stack_P is
port(
	clk,clr: in std_logic;
	I_sp: in std_logic_vector (3 downto 0);
	O_sp: out std_logic_vector (3 downto 0)
);
end component;


signal I_pc_aux, I_aux, pc_aux, off_br_aux, off_rjmp_aux: STD_LOGIC_VECTOR(15 downto 0)
signal rd_aux, wd_aux, offset_aux, br_mux_aux: STD_LOGIC_VECTOR(15 downto 0);
signal O_r_aux, O_d_aux, F_aux, dato_I_aux: STD_LOGIC_VECTOR(7 downto 0);
signal sel_w_d_aux, sel_r_d_aux,, sel_r_r_aux: std_logic_vector(4 downto 0);
signal A_aux, i_sp_aux o_sp_aux, call_aux, ret_aux_ std_logic_vector(3 downto 0);
signal sel_alu_aux: STD_LOGIC_VECTOR(2 downto 0);
signal ld_aux, ld_mov_aux, sel_rel_aux, br_aux, bn_aux, en_w_aux, en_port_aux, en_sreg_aux: std_logic;
signal ret_s_aux, s1_aux, s0_aux, s_sreg_aux, ent_sreg_aux, branch_aux: std_logic;

offset_aux <= x"0001" when sel_rel_aux = '0' and branch_aux = '0' else
	off_br_aux when sel_rel_aux = '0' and branch_aux = '1' else
	off_rjmp_aux;

branch_aux <= bn_aux when s_sreg_aux = '0' else
	br_aux;

br_mux_aux <= I_pc_aux when ret_s_aux = '0' else
	rd_aux;

dato_i_aux <= I_aux(11 downto 8) & I_aux(3 downto 0) when ld_mov_aux = '0' and ld_aux = '0' else
	O_r_aux when ld_mov_aux = '0' and ld_aux '1' else
		F_aux;

i_sp_aux <= o_sp_aux when s1='0' and s0='0' else
	call_aux when s1='0' and s0='1' else
	ret_aux;

A_aux <= o_sp_aux when s1 = '0' else
	ret_aux;

I_pc_aux <= offset_aux + pc_aux;
wd_aux <= x"0001" + pc_aux;

call_aux <= o_sp_aux - 2;

ret_aux <= o_sp_aux + 2;

dec_int: dec_instruccion port map(
	I => I_aux,
	sel_r_d => sel_r_d_aux,
	sel_r_r => sel_r_r_aux,
	sel_w_d => sel_w_d_aux,
	sel_alu => sel_alu_aux,
	ld => ld_aux,
	ld_mov => ld_mov_aux,
	sel_rel => sel_rel_aux,
	br => br_aux,
	bn => bn_aux,
	en_w => en_w_aux,
	en_port => en_port_aux,
	en_sreg => en_sreg_aux,
	ret_s => ret_s_aux,
	s1 => s1_aux,
	s0 => s0_aux
)

ext_s1: ext_sig_br port map(Ibr=>I_aux, Obr=>off_br_aux);

ext_s2: ext_sig_rjmp port map(I_r=>I_aux, O_r=>off_rjmp_aux);

pc: program_c port map(clk=>clk, clr=>clr, I=>br_mux_aux, O=>pc_aux);

rom: mem_prog port map(A=>pc_aux, O=>I_aux);

archivo_r: archivo_registros port map(
	clk=>clk,
	clr=>clr,
	en_w=>en_w_aux,
	sel_w_d=>sel_w_d_aux,
	sel_r_r=>sel_r_r_aux,
	sel_r_d=>sel_r_d_aux,
	dato_I=>dato_I_aux,
	O_r=>O_r_aux,
	O_d=>O_d_aux
);

A_L_U: ALU port map(
	A=>O_d_aux,
	B=>O_r_aux,
	SEL=>sel_alu_aux,
	F=>F_aux,
	Z=>ent_sreg_aux
);

puertoB: regsitro port map(
	clk=>clk,
	clr=>clr,
	en=>en_port_aux,
	I=> O_r_aux,
	Q=>portb
);

registro_s: sreg port map(
	clk=>clk,
	clr=>clr,
	en=>en_sreg_aux,
	I=>ent_sreg_aux,
	Q=>s_sreg_aux
);

R_A_M: RAM port map(
	clk=>clk,
	we=>s0_aux,
	A=>A_aux,
	WD=>wd_aux,
	RD=>rd_aux
);

stack_p: Stack_P port map(
	clk=>clk,
	clr=>clr,
	I_sp=>i_sp_aux,
	O_sp=>o_sp_aux
);

end Behavioral;	

begin
end Behavioral;
