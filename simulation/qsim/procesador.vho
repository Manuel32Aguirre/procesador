-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "11/20/2024 17:30:23"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	procesador IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	portb : OUT std_logic_vector(7 DOWNTO 0)
	);
END procesador;

-- Design Ports Information
-- portb[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portb[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portb[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portb[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portb[4]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portb[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portb[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- portb[7]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF procesador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_portb : std_logic_vector(7 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \portb[0]~output_o\ : std_logic;
SIGNAL \portb[1]~output_o\ : std_logic;
SIGNAL \portb[2]~output_o\ : std_logic;
SIGNAL \portb[3]~output_o\ : std_logic;
SIGNAL \portb[4]~output_o\ : std_logic;
SIGNAL \portb[5]~output_o\ : std_logic;
SIGNAL \portb[6]~output_o\ : std_logic;
SIGNAL \portb[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \pc|q_aux[0]~16_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \rom|O~3_combout\ : std_logic;
SIGNAL \rom|O[0]~2_combout\ : std_logic;
SIGNAL \rom|Equal0~0_combout\ : std_logic;
SIGNAL \rom|O[4]~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \pc|q_aux[0]~17\ : std_logic;
SIGNAL \pc|q_aux[1]~19\ : std_logic;
SIGNAL \pc|q_aux[2]~21\ : std_logic;
SIGNAL \pc|q_aux[3]~22_combout\ : std_logic;
SIGNAL \pc|q_aux[3]~23\ : std_logic;
SIGNAL \pc|q_aux[4]~25\ : std_logic;
SIGNAL \pc|q_aux[5]~26_combout\ : std_logic;
SIGNAL \pc|q_aux[5]~27\ : std_logic;
SIGNAL \pc|q_aux[6]~28_combout\ : std_logic;
SIGNAL \pc|q_aux[6]~29\ : std_logic;
SIGNAL \pc|q_aux[7]~30_combout\ : std_logic;
SIGNAL \pc|q_aux[7]~31\ : std_logic;
SIGNAL \pc|q_aux[8]~32_combout\ : std_logic;
SIGNAL \pc|q_aux[8]~33\ : std_logic;
SIGNAL \pc|q_aux[9]~34_combout\ : std_logic;
SIGNAL \pc|q_aux[9]~35\ : std_logic;
SIGNAL \pc|q_aux[10]~36_combout\ : std_logic;
SIGNAL \pc|q_aux[10]~37\ : std_logic;
SIGNAL \pc|q_aux[11]~38_combout\ : std_logic;
SIGNAL \pc|q_aux[11]~39\ : std_logic;
SIGNAL \pc|q_aux[12]~40_combout\ : std_logic;
SIGNAL \pc|q_aux[12]~41\ : std_logic;
SIGNAL \pc|q_aux[13]~42_combout\ : std_logic;
SIGNAL \pc|q_aux[13]~43\ : std_logic;
SIGNAL \pc|q_aux[14]~44_combout\ : std_logic;
SIGNAL \pc|q_aux[14]~45\ : std_logic;
SIGNAL \pc|q_aux[15]~46_combout\ : std_logic;
SIGNAL \rom|Equal1~1_combout\ : std_logic;
SIGNAL \rom|Equal1~2_combout\ : std_logic;
SIGNAL \rom|Equal1~3_combout\ : std_logic;
SIGNAL \dec_int|Mux9~1_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \pc|q_aux[4]~24_combout\ : std_logic;
SIGNAL \rom|Equal1~0_combout\ : std_logic;
SIGNAL \rom|Equal4~0_combout\ : std_logic;
SIGNAL \rom|Equal4~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \pc|q_aux[1]~18_combout\ : std_logic;
SIGNAL \rom|O~1_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \pc|q_aux[2]~20_combout\ : std_logic;
SIGNAL \dec_int|Mux19~0_combout\ : std_logic;
SIGNAL \dato_I_aux[0]~6_combout\ : std_logic;
SIGNAL \archivo_r|decodificador|O[17]~0_combout\ : std_logic;
SIGNAL \rom|Equal2~0_combout\ : std_logic;
SIGNAL \archivo_r|mux_destino|O[0]~0_combout\ : std_logic;
SIGNAL \A_L_U|Add0~0_combout\ : std_logic;
SIGNAL \dato_I_aux[0]~23_combout\ : std_logic;
SIGNAL \archivo_r|decodificador|O[16]~1_combout\ : std_logic;
SIGNAL \dec_int|Mux9~0_combout\ : std_logic;
SIGNAL \archivo_r|mux_fuente|O[0]~0_combout\ : std_logic;
SIGNAL \archivo_r|mux_fuente|O[0]~1_combout\ : std_logic;
SIGNAL \dec_int|Mux24~0_combout\ : std_logic;
SIGNAL \archivo_r|mux_destino|O[1]~1_combout\ : std_logic;
SIGNAL \A_L_U|Add0~1\ : std_logic;
SIGNAL \A_L_U|Add0~2_combout\ : std_logic;
SIGNAL \dato_I_aux[1]~22_combout\ : std_logic;
SIGNAL \dato_I_aux[1]~7_combout\ : std_logic;
SIGNAL \archivo_r|mux_fuente|O[1]~2_combout\ : std_logic;
SIGNAL \dato_I_aux[2]~10_combout\ : std_logic;
SIGNAL \archivo_r|mux_destino|O[2]~2_combout\ : std_logic;
SIGNAL \A_L_U|Add0~3\ : std_logic;
SIGNAL \A_L_U|Add0~4_combout\ : std_logic;
SIGNAL \dato_I_aux[2]~21_combout\ : std_logic;
SIGNAL \dato_I_aux[2]~8_combout\ : std_logic;
SIGNAL \archivo_r|mux_fuente|O[2]~3_combout\ : std_logic;
SIGNAL \dato_I_aux[3]~11_combout\ : std_logic;
SIGNAL \archivo_r|mux_destino|O[3]~3_combout\ : std_logic;
SIGNAL \A_L_U|Add0~5\ : std_logic;
SIGNAL \A_L_U|Add0~6_combout\ : std_logic;
SIGNAL \dato_I_aux[3]~20_combout\ : std_logic;
SIGNAL \dato_I_aux[3]~9_combout\ : std_logic;
SIGNAL \archivo_r|mux_fuente|O[3]~4_combout\ : std_logic;
SIGNAL \archivo_r|mux_destino|O[4]~4_combout\ : std_logic;
SIGNAL \A_L_U|Add1~1_cout\ : std_logic;
SIGNAL \A_L_U|Add1~3_cout\ : std_logic;
SIGNAL \A_L_U|Add1~5_cout\ : std_logic;
SIGNAL \A_L_U|Add1~7_cout\ : std_logic;
SIGNAL \A_L_U|Add1~8_combout\ : std_logic;
SIGNAL \A_L_U|Add0~7\ : std_logic;
SIGNAL \A_L_U|Add0~8_combout\ : std_logic;
SIGNAL \dato_I_aux[4]~18_combout\ : std_logic;
SIGNAL \dato_I_aux[4]~19_combout\ : std_logic;
SIGNAL \archivo_r|mux_fuente|O[4]~5_combout\ : std_logic;
SIGNAL \archivo_r|mux_destino|O[5]~5_combout\ : std_logic;
SIGNAL \A_L_U|Add1~9\ : std_logic;
SIGNAL \A_L_U|Add1~10_combout\ : std_logic;
SIGNAL \A_L_U|Add0~9\ : std_logic;
SIGNAL \A_L_U|Add0~10_combout\ : std_logic;
SIGNAL \dato_I_aux[5]~16_combout\ : std_logic;
SIGNAL \dato_I_aux[5]~17_combout\ : std_logic;
SIGNAL \archivo_r|mux_fuente|O[5]~6_combout\ : std_logic;
SIGNAL \archivo_r|mux_destino|O[6]~6_combout\ : std_logic;
SIGNAL \A_L_U|Add1~11\ : std_logic;
SIGNAL \A_L_U|Add1~12_combout\ : std_logic;
SIGNAL \A_L_U|Add0~11\ : std_logic;
SIGNAL \A_L_U|Add0~12_combout\ : std_logic;
SIGNAL \dato_I_aux[6]~14_combout\ : std_logic;
SIGNAL \dato_I_aux[6]~15_combout\ : std_logic;
SIGNAL \archivo_r|mux_fuente|O[6]~7_combout\ : std_logic;
SIGNAL \archivo_r|mux_destino|O[7]~7_combout\ : std_logic;
SIGNAL \A_L_U|Add0~13\ : std_logic;
SIGNAL \A_L_U|Add0~14_combout\ : std_logic;
SIGNAL \A_L_U|Add1~13\ : std_logic;
SIGNAL \A_L_U|Add1~14_combout\ : std_logic;
SIGNAL \dato_I_aux[7]~12_combout\ : std_logic;
SIGNAL \dato_I_aux[7]~13_combout\ : std_logic;
SIGNAL \archivo_r|mux_fuente|O[7]~8_combout\ : std_logic;
SIGNAL \pc|q_aux\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \puertoB|q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \archivo_r|reg17|q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \archivo_r|reg16|q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clr~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
portb <= ww_portb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clr~inputclkctrl_outclk\ <= NOT \clr~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N2
\portb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puertoB|q_aux\(0),
	devoe => ww_devoe,
	o => \portb[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\portb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puertoB|q_aux\(1),
	devoe => ww_devoe,
	o => \portb[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\portb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puertoB|q_aux\(2),
	devoe => ww_devoe,
	o => \portb[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\portb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puertoB|q_aux\(3),
	devoe => ww_devoe,
	o => \portb[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\portb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puertoB|q_aux\(4),
	devoe => ww_devoe,
	o => \portb[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\portb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puertoB|q_aux\(5),
	devoe => ww_devoe,
	o => \portb[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\portb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puertoB|q_aux\(6),
	devoe => ww_devoe,
	o => \portb[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\portb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puertoB|q_aux\(7),
	devoe => ww_devoe,
	o => \portb[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y15_N12
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (((\rom|Equal4~1_combout\ & \dec_int|Mux9~1_combout\)))
-- \Add1~1\ = CARRY((\rom|Equal4~1_combout\ & \dec_int|Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|Equal4~1_combout\,
	datab => \dec_int|Mux9~1_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X11_Y15_N10
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\rom|O~1_combout\) # (((\Add1~0_combout\) # (!\dec_int|Mux9~1_combout\)) # (!\rom|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|O~1_combout\,
	datab => \rom|Equal4~1_combout\,
	datac => \dec_int|Mux9~1_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X12_Y15_N0
\pc|q_aux[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[0]~16_combout\ = (\Add1~5_combout\ & (\pc|q_aux\(0) $ (VCC))) # (!\Add1~5_combout\ & (\pc|q_aux\(0) & VCC))
-- \pc|q_aux[0]~17\ = CARRY((\Add1~5_combout\ & \pc|q_aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~5_combout\,
	datab => \pc|q_aux\(0),
	datad => VCC,
	combout => \pc|q_aux[0]~16_combout\,
	cout => \pc|q_aux[0]~17\);

-- Location: IOIBUF_X0_Y11_N15
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G4
\clr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: FF_X12_Y15_N1
\pc|q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[0]~16_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(0));

-- Location: LCCOMB_X10_Y15_N14
\rom|O~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|O~3_combout\ = (\rom|Equal1~3_combout\ & ((\pc|q_aux\(0) & ((!\pc|q_aux\(2)))) # (!\pc|q_aux\(0) & (!\pc|q_aux\(1) & \pc|q_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(0),
	datab => \pc|q_aux\(1),
	datac => \rom|Equal1~3_combout\,
	datad => \pc|q_aux\(2),
	combout => \rom|O~3_combout\);

-- Location: LCCOMB_X13_Y15_N6
\rom|O[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|O[0]~2_combout\ = (\pc|q_aux\(1)) # ((\pc|q_aux\(2)) # (!\rom|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(1),
	datac => \pc|q_aux\(2),
	datad => \rom|Equal1~3_combout\,
	combout => \rom|O[0]~2_combout\);

-- Location: LCCOMB_X14_Y15_N10
\rom|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|Equal0~0_combout\ = ((\pc|q_aux\(1)) # ((\pc|q_aux\(0)) # (!\rom|Equal1~3_combout\))) # (!\pc|q_aux\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(2),
	datab => \pc|q_aux\(1),
	datac => \pc|q_aux\(0),
	datad => \rom|Equal1~3_combout\,
	combout => \rom|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y15_N10
\rom|O[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|O[4]~0_combout\ = (\pc|q_aux\(1)) # ((\pc|q_aux\(0)) # (!\rom|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(1),
	datac => \pc|q_aux\(0),
	datad => \rom|Equal1~3_combout\,
	combout => \rom|O[4]~0_combout\);

-- Location: LCCOMB_X11_Y15_N14
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\rom|O[4]~0_combout\ & (!\Add1~1\)) # (!\rom|O[4]~0_combout\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\rom|O[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rom|O[4]~0_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X11_Y15_N16
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add1~3\ & (!\rom|O~1_combout\ & (\rom|O[0]~2_combout\ & VCC))) # (!\Add1~3\ & ((((!\rom|O~1_combout\ & \rom|O[0]~2_combout\)))))
-- \Add1~7\ = CARRY((!\rom|O~1_combout\ & (\rom|O[0]~2_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rom|O~1_combout\,
	datab => \rom|O[0]~2_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X11_Y15_N18
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~7\ & ((\rom|O~1_combout\) # ((!\rom|O[0]~2_combout\)))) # (!\Add1~7\ & (((!\rom|O~1_combout\ & \rom|O[0]~2_combout\)) # (GND)))
-- \Add1~9\ = CARRY((\rom|O~1_combout\) # ((!\Add1~7\) # (!\rom|O[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rom|O~1_combout\,
	datab => \rom|O[0]~2_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X11_Y15_N20
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Add1~9\ & (!\rom|O~1_combout\ & (\rom|O[0]~2_combout\ & VCC))) # (!\Add1~9\ & ((((!\rom|O~1_combout\ & \rom|O[0]~2_combout\)))))
-- \Add1~13\ = CARRY((!\rom|O~1_combout\ & (\rom|O[0]~2_combout\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rom|O~1_combout\,
	datab => \rom|O[0]~2_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X11_Y15_N22
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (\Add1~13\ & (((!\rom|Equal0~0_combout\)) # (!\rom|O[0]~2_combout\))) # (!\Add1~13\ & (((\rom|O[0]~2_combout\ & \rom|Equal0~0_combout\)) # (GND)))
-- \Add1~16\ = CARRY(((!\Add1~13\) # (!\rom|Equal0~0_combout\)) # (!\rom|O[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rom|O[0]~2_combout\,
	datab => \rom|Equal0~0_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X11_Y15_N24
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Add1~16\ & (!\rom|O~3_combout\ & (\rom|Equal4~1_combout\ & VCC))) # (!\Add1~16\ & ((((!\rom|O~3_combout\ & \rom|Equal4~1_combout\)))))
-- \Add1~19\ = CARRY((!\rom|O~3_combout\ & (\rom|Equal4~1_combout\ & !\Add1~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rom|O~3_combout\,
	datab => \rom|Equal4~1_combout\,
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X11_Y15_N26
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = \Add1~19\ $ (((\rom|Equal4~1_combout\ & !\rom|O~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rom|Equal4~1_combout\,
	datad => \rom|O~3_combout\,
	cin => \Add1~19\,
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X11_Y15_N30
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\rom|Equal4~1_combout\ & (\dec_int|Mux9~1_combout\ & (\Add1~21_combout\ & !\rom|O~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|Equal4~1_combout\,
	datab => \dec_int|Mux9~1_combout\,
	datac => \Add1~21_combout\,
	datad => \rom|O~1_combout\,
	combout => \Add1~23_combout\);

-- Location: LCCOMB_X11_Y15_N28
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (!\rom|O~1_combout\ & (\rom|Equal4~1_combout\ & (\dec_int|Mux9~1_combout\ & \Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|O~1_combout\,
	datab => \rom|Equal4~1_combout\,
	datac => \dec_int|Mux9~1_combout\,
	datad => \Add1~18_combout\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X11_Y15_N6
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (\rom|Equal4~1_combout\ & (\dec_int|Mux9~1_combout\ & (\Add1~15_combout\ & !\rom|O~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|Equal4~1_combout\,
	datab => \dec_int|Mux9~1_combout\,
	datac => \Add1~15_combout\,
	datad => \rom|O~1_combout\,
	combout => \Add1~17_combout\);

-- Location: LCCOMB_X11_Y15_N4
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (!\rom|O~1_combout\ & (\rom|Equal4~1_combout\ & (\dec_int|Mux9~1_combout\ & \Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|O~1_combout\,
	datab => \rom|Equal4~1_combout\,
	datac => \dec_int|Mux9~1_combout\,
	datad => \Add1~8_combout\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X12_Y15_N2
\pc|q_aux[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[1]~18_combout\ = (\Add1~4_combout\ & ((\pc|q_aux\(1) & (\pc|q_aux[0]~17\ & VCC)) # (!\pc|q_aux\(1) & (!\pc|q_aux[0]~17\)))) # (!\Add1~4_combout\ & ((\pc|q_aux\(1) & (!\pc|q_aux[0]~17\)) # (!\pc|q_aux\(1) & ((\pc|q_aux[0]~17\) # (GND)))))
-- \pc|q_aux[1]~19\ = CARRY((\Add1~4_combout\ & (!\pc|q_aux\(1) & !\pc|q_aux[0]~17\)) # (!\Add1~4_combout\ & ((!\pc|q_aux[0]~17\) # (!\pc|q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \pc|q_aux\(1),
	datad => VCC,
	cin => \pc|q_aux[0]~17\,
	combout => \pc|q_aux[1]~18_combout\,
	cout => \pc|q_aux[1]~19\);

-- Location: LCCOMB_X12_Y15_N4
\pc|q_aux[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[2]~20_combout\ = ((\Add1~11_combout\ $ (\pc|q_aux\(2) $ (!\pc|q_aux[1]~19\)))) # (GND)
-- \pc|q_aux[2]~21\ = CARRY((\Add1~11_combout\ & ((\pc|q_aux\(2)) # (!\pc|q_aux[1]~19\))) # (!\Add1~11_combout\ & (\pc|q_aux\(2) & !\pc|q_aux[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~11_combout\,
	datab => \pc|q_aux\(2),
	datad => VCC,
	cin => \pc|q_aux[1]~19\,
	combout => \pc|q_aux[2]~20_combout\,
	cout => \pc|q_aux[2]~21\);

-- Location: LCCOMB_X12_Y15_N6
\pc|q_aux[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[3]~22_combout\ = (\pc|q_aux\(3) & ((\Add1~10_combout\ & (\pc|q_aux[2]~21\ & VCC)) # (!\Add1~10_combout\ & (!\pc|q_aux[2]~21\)))) # (!\pc|q_aux\(3) & ((\Add1~10_combout\ & (!\pc|q_aux[2]~21\)) # (!\Add1~10_combout\ & ((\pc|q_aux[2]~21\) # 
-- (GND)))))
-- \pc|q_aux[3]~23\ = CARRY((\pc|q_aux\(3) & (!\Add1~10_combout\ & !\pc|q_aux[2]~21\)) # (!\pc|q_aux\(3) & ((!\pc|q_aux[2]~21\) # (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(3),
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \pc|q_aux[2]~21\,
	combout => \pc|q_aux[3]~22_combout\,
	cout => \pc|q_aux[3]~23\);

-- Location: FF_X12_Y15_N7
\pc|q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[3]~22_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(3));

-- Location: LCCOMB_X12_Y15_N8
\pc|q_aux[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[4]~24_combout\ = ((\Add1~14_combout\ $ (\pc|q_aux\(4) $ (!\pc|q_aux[3]~23\)))) # (GND)
-- \pc|q_aux[4]~25\ = CARRY((\Add1~14_combout\ & ((\pc|q_aux\(4)) # (!\pc|q_aux[3]~23\))) # (!\Add1~14_combout\ & (\pc|q_aux\(4) & !\pc|q_aux[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \pc|q_aux\(4),
	datad => VCC,
	cin => \pc|q_aux[3]~23\,
	combout => \pc|q_aux[4]~24_combout\,
	cout => \pc|q_aux[4]~25\);

-- Location: LCCOMB_X12_Y15_N10
\pc|q_aux[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[5]~26_combout\ = (\pc|q_aux\(5) & ((\Add1~17_combout\ & (\pc|q_aux[4]~25\ & VCC)) # (!\Add1~17_combout\ & (!\pc|q_aux[4]~25\)))) # (!\pc|q_aux\(5) & ((\Add1~17_combout\ & (!\pc|q_aux[4]~25\)) # (!\Add1~17_combout\ & ((\pc|q_aux[4]~25\) # 
-- (GND)))))
-- \pc|q_aux[5]~27\ = CARRY((\pc|q_aux\(5) & (!\Add1~17_combout\ & !\pc|q_aux[4]~25\)) # (!\pc|q_aux\(5) & ((!\pc|q_aux[4]~25\) # (!\Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(5),
	datab => \Add1~17_combout\,
	datad => VCC,
	cin => \pc|q_aux[4]~25\,
	combout => \pc|q_aux[5]~26_combout\,
	cout => \pc|q_aux[5]~27\);

-- Location: FF_X12_Y15_N11
\pc|q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[5]~26_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(5));

-- Location: LCCOMB_X12_Y15_N12
\pc|q_aux[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[6]~28_combout\ = ((\pc|q_aux\(6) $ (\Add1~20_combout\ $ (!\pc|q_aux[5]~27\)))) # (GND)
-- \pc|q_aux[6]~29\ = CARRY((\pc|q_aux\(6) & ((\Add1~20_combout\) # (!\pc|q_aux[5]~27\))) # (!\pc|q_aux\(6) & (\Add1~20_combout\ & !\pc|q_aux[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(6),
	datab => \Add1~20_combout\,
	datad => VCC,
	cin => \pc|q_aux[5]~27\,
	combout => \pc|q_aux[6]~28_combout\,
	cout => \pc|q_aux[6]~29\);

-- Location: FF_X12_Y15_N13
\pc|q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[6]~28_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(6));

-- Location: LCCOMB_X12_Y15_N14
\pc|q_aux[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[7]~30_combout\ = (\pc|q_aux\(7) & ((\Add1~23_combout\ & (\pc|q_aux[6]~29\ & VCC)) # (!\Add1~23_combout\ & (!\pc|q_aux[6]~29\)))) # (!\pc|q_aux\(7) & ((\Add1~23_combout\ & (!\pc|q_aux[6]~29\)) # (!\Add1~23_combout\ & ((\pc|q_aux[6]~29\) # 
-- (GND)))))
-- \pc|q_aux[7]~31\ = CARRY((\pc|q_aux\(7) & (!\Add1~23_combout\ & !\pc|q_aux[6]~29\)) # (!\pc|q_aux\(7) & ((!\pc|q_aux[6]~29\) # (!\Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(7),
	datab => \Add1~23_combout\,
	datad => VCC,
	cin => \pc|q_aux[6]~29\,
	combout => \pc|q_aux[7]~30_combout\,
	cout => \pc|q_aux[7]~31\);

-- Location: FF_X12_Y15_N15
\pc|q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[7]~30_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(7));

-- Location: LCCOMB_X12_Y15_N16
\pc|q_aux[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[8]~32_combout\ = ((\pc|q_aux\(8) $ (\Add1~23_combout\ $ (!\pc|q_aux[7]~31\)))) # (GND)
-- \pc|q_aux[8]~33\ = CARRY((\pc|q_aux\(8) & ((\Add1~23_combout\) # (!\pc|q_aux[7]~31\))) # (!\pc|q_aux\(8) & (\Add1~23_combout\ & !\pc|q_aux[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(8),
	datab => \Add1~23_combout\,
	datad => VCC,
	cin => \pc|q_aux[7]~31\,
	combout => \pc|q_aux[8]~32_combout\,
	cout => \pc|q_aux[8]~33\);

-- Location: FF_X12_Y15_N17
\pc|q_aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[8]~32_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(8));

-- Location: LCCOMB_X12_Y15_N18
\pc|q_aux[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[9]~34_combout\ = (\pc|q_aux\(9) & ((\Add1~23_combout\ & (\pc|q_aux[8]~33\ & VCC)) # (!\Add1~23_combout\ & (!\pc|q_aux[8]~33\)))) # (!\pc|q_aux\(9) & ((\Add1~23_combout\ & (!\pc|q_aux[8]~33\)) # (!\Add1~23_combout\ & ((\pc|q_aux[8]~33\) # 
-- (GND)))))
-- \pc|q_aux[9]~35\ = CARRY((\pc|q_aux\(9) & (!\Add1~23_combout\ & !\pc|q_aux[8]~33\)) # (!\pc|q_aux\(9) & ((!\pc|q_aux[8]~33\) # (!\Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(9),
	datab => \Add1~23_combout\,
	datad => VCC,
	cin => \pc|q_aux[8]~33\,
	combout => \pc|q_aux[9]~34_combout\,
	cout => \pc|q_aux[9]~35\);

-- Location: FF_X12_Y15_N19
\pc|q_aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[9]~34_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(9));

-- Location: LCCOMB_X12_Y15_N20
\pc|q_aux[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[10]~36_combout\ = ((\pc|q_aux\(10) $ (\Add1~23_combout\ $ (!\pc|q_aux[9]~35\)))) # (GND)
-- \pc|q_aux[10]~37\ = CARRY((\pc|q_aux\(10) & ((\Add1~23_combout\) # (!\pc|q_aux[9]~35\))) # (!\pc|q_aux\(10) & (\Add1~23_combout\ & !\pc|q_aux[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(10),
	datab => \Add1~23_combout\,
	datad => VCC,
	cin => \pc|q_aux[9]~35\,
	combout => \pc|q_aux[10]~36_combout\,
	cout => \pc|q_aux[10]~37\);

-- Location: FF_X12_Y15_N21
\pc|q_aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[10]~36_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(10));

-- Location: LCCOMB_X12_Y15_N22
\pc|q_aux[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[11]~38_combout\ = (\pc|q_aux\(11) & ((\Add1~23_combout\ & (\pc|q_aux[10]~37\ & VCC)) # (!\Add1~23_combout\ & (!\pc|q_aux[10]~37\)))) # (!\pc|q_aux\(11) & ((\Add1~23_combout\ & (!\pc|q_aux[10]~37\)) # (!\Add1~23_combout\ & ((\pc|q_aux[10]~37\) # 
-- (GND)))))
-- \pc|q_aux[11]~39\ = CARRY((\pc|q_aux\(11) & (!\Add1~23_combout\ & !\pc|q_aux[10]~37\)) # (!\pc|q_aux\(11) & ((!\pc|q_aux[10]~37\) # (!\Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(11),
	datab => \Add1~23_combout\,
	datad => VCC,
	cin => \pc|q_aux[10]~37\,
	combout => \pc|q_aux[11]~38_combout\,
	cout => \pc|q_aux[11]~39\);

-- Location: FF_X12_Y15_N23
\pc|q_aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[11]~38_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(11));

-- Location: LCCOMB_X12_Y15_N24
\pc|q_aux[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[12]~40_combout\ = ((\pc|q_aux\(12) $ (\Add1~23_combout\ $ (!\pc|q_aux[11]~39\)))) # (GND)
-- \pc|q_aux[12]~41\ = CARRY((\pc|q_aux\(12) & ((\Add1~23_combout\) # (!\pc|q_aux[11]~39\))) # (!\pc|q_aux\(12) & (\Add1~23_combout\ & !\pc|q_aux[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(12),
	datab => \Add1~23_combout\,
	datad => VCC,
	cin => \pc|q_aux[11]~39\,
	combout => \pc|q_aux[12]~40_combout\,
	cout => \pc|q_aux[12]~41\);

-- Location: FF_X12_Y15_N25
\pc|q_aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[12]~40_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(12));

-- Location: LCCOMB_X12_Y15_N26
\pc|q_aux[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[13]~42_combout\ = (\pc|q_aux\(13) & ((\Add1~23_combout\ & (\pc|q_aux[12]~41\ & VCC)) # (!\Add1~23_combout\ & (!\pc|q_aux[12]~41\)))) # (!\pc|q_aux\(13) & ((\Add1~23_combout\ & (!\pc|q_aux[12]~41\)) # (!\Add1~23_combout\ & ((\pc|q_aux[12]~41\) # 
-- (GND)))))
-- \pc|q_aux[13]~43\ = CARRY((\pc|q_aux\(13) & (!\Add1~23_combout\ & !\pc|q_aux[12]~41\)) # (!\pc|q_aux\(13) & ((!\pc|q_aux[12]~41\) # (!\Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(13),
	datab => \Add1~23_combout\,
	datad => VCC,
	cin => \pc|q_aux[12]~41\,
	combout => \pc|q_aux[13]~42_combout\,
	cout => \pc|q_aux[13]~43\);

-- Location: FF_X12_Y15_N27
\pc|q_aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[13]~42_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(13));

-- Location: LCCOMB_X12_Y15_N28
\pc|q_aux[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[14]~44_combout\ = ((\pc|q_aux\(14) $ (\Add1~23_combout\ $ (!\pc|q_aux[13]~43\)))) # (GND)
-- \pc|q_aux[14]~45\ = CARRY((\pc|q_aux\(14) & ((\Add1~23_combout\) # (!\pc|q_aux[13]~43\))) # (!\pc|q_aux\(14) & (\Add1~23_combout\ & !\pc|q_aux[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(14),
	datab => \Add1~23_combout\,
	datad => VCC,
	cin => \pc|q_aux[13]~43\,
	combout => \pc|q_aux[14]~44_combout\,
	cout => \pc|q_aux[14]~45\);

-- Location: FF_X12_Y15_N29
\pc|q_aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[14]~44_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(14));

-- Location: LCCOMB_X12_Y15_N30
\pc|q_aux[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|q_aux[15]~46_combout\ = \pc|q_aux\(15) $ (\pc|q_aux[14]~45\ $ (\Add1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(15),
	datad => \Add1~23_combout\,
	cin => \pc|q_aux[14]~45\,
	combout => \pc|q_aux[15]~46_combout\);

-- Location: FF_X12_Y15_N31
\pc|q_aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[15]~46_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(15));

-- Location: LCCOMB_X13_Y15_N14
\rom|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|Equal1~1_combout\ = (!\pc|q_aux\(7) & (!\pc|q_aux\(9) & (!\pc|q_aux\(8) & !\pc|q_aux\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(7),
	datab => \pc|q_aux\(9),
	datac => \pc|q_aux\(8),
	datad => \pc|q_aux\(10),
	combout => \rom|Equal1~1_combout\);

-- Location: LCCOMB_X13_Y15_N16
\rom|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|Equal1~2_combout\ = (!\pc|q_aux\(13) & (!\pc|q_aux\(11) & (!\pc|q_aux\(14) & !\pc|q_aux\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(13),
	datab => \pc|q_aux\(11),
	datac => \pc|q_aux\(14),
	datad => \pc|q_aux\(12),
	combout => \rom|Equal1~2_combout\);

-- Location: LCCOMB_X13_Y15_N2
\rom|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|Equal1~3_combout\ = (!\pc|q_aux\(15) & (\rom|Equal1~0_combout\ & (\rom|Equal1~1_combout\ & \rom|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(15),
	datab => \rom|Equal1~0_combout\,
	datac => \rom|Equal1~1_combout\,
	datad => \rom|Equal1~2_combout\,
	combout => \rom|Equal1~3_combout\);

-- Location: LCCOMB_X13_Y15_N4
\dec_int|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_int|Mux9~1_combout\ = ((\pc|q_aux\(1) & ((\pc|q_aux\(2)) # (\pc|q_aux\(0)))) # (!\pc|q_aux\(1) & (\pc|q_aux\(2) $ (!\pc|q_aux\(0))))) # (!\rom|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(1),
	datab => \pc|q_aux\(2),
	datac => \pc|q_aux\(0),
	datad => \rom|Equal1~3_combout\,
	combout => \dec_int|Mux9~1_combout\);

-- Location: LCCOMB_X11_Y15_N8
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (!\rom|O~1_combout\ & (\dec_int|Mux9~1_combout\ & (\rom|Equal4~1_combout\ & \Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|O~1_combout\,
	datab => \dec_int|Mux9~1_combout\,
	datac => \rom|Equal4~1_combout\,
	datad => \Add1~12_combout\,
	combout => \Add1~14_combout\);

-- Location: FF_X12_Y15_N9
\pc|q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[4]~24_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(4));

-- Location: LCCOMB_X13_Y15_N8
\rom|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|Equal1~0_combout\ = (!\pc|q_aux\(4) & (!\pc|q_aux\(3) & (!\pc|q_aux\(5) & !\pc|q_aux\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(4),
	datab => \pc|q_aux\(3),
	datac => \pc|q_aux\(5),
	datad => \pc|q_aux\(6),
	combout => \rom|Equal1~0_combout\);

-- Location: LCCOMB_X13_Y15_N20
\rom|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|Equal4~0_combout\ = (\pc|q_aux\(0)) # ((\pc|q_aux\(15)) # ((\pc|q_aux\(2)) # (\pc|q_aux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(0),
	datab => \pc|q_aux\(15),
	datac => \pc|q_aux\(2),
	datad => \pc|q_aux\(1),
	combout => \rom|Equal4~0_combout\);

-- Location: LCCOMB_X13_Y15_N26
\rom|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|Equal4~1_combout\ = (((\rom|Equal4~0_combout\) # (!\rom|Equal1~1_combout\)) # (!\rom|Equal1~2_combout\)) # (!\rom|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|Equal1~0_combout\,
	datab => \rom|Equal1~2_combout\,
	datac => \rom|Equal1~1_combout\,
	datad => \rom|Equal4~0_combout\,
	combout => \rom|Equal4~1_combout\);

-- Location: LCCOMB_X11_Y15_N0
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\rom|Equal4~1_combout\ & (\dec_int|Mux9~1_combout\ & (\Add1~2_combout\ & !\rom|O~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|Equal4~1_combout\,
	datab => \dec_int|Mux9~1_combout\,
	datac => \Add1~2_combout\,
	datad => \rom|O~1_combout\,
	combout => \Add1~4_combout\);

-- Location: FF_X12_Y15_N3
\pc|q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[1]~18_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(1));

-- Location: LCCOMB_X13_Y15_N12
\rom|O~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|O~1_combout\ = (\rom|Equal1~3_combout\ & ((\pc|q_aux\(1) & (!\pc|q_aux\(2))) # (!\pc|q_aux\(1) & (\pc|q_aux\(2) & !\pc|q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(1),
	datab => \pc|q_aux\(2),
	datac => \pc|q_aux\(0),
	datad => \rom|Equal1~3_combout\,
	combout => \rom|O~1_combout\);

-- Location: LCCOMB_X11_Y15_N2
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (!\rom|O~1_combout\ & (\rom|Equal4~1_combout\ & (\dec_int|Mux9~1_combout\ & \Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|O~1_combout\,
	datab => \rom|Equal4~1_combout\,
	datac => \dec_int|Mux9~1_combout\,
	datad => \Add1~6_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X12_Y15_N5
\pc|q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|q_aux[2]~20_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|q_aux\(2));

-- Location: LCCOMB_X14_Y15_N20
\dec_int|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_int|Mux19~0_combout\ = (\pc|q_aux\(1)) # (((\pc|q_aux\(2) & \pc|q_aux\(0))) # (!\rom|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(2),
	datab => \pc|q_aux\(1),
	datac => \pc|q_aux\(0),
	datad => \rom|Equal1~3_combout\,
	combout => \dec_int|Mux19~0_combout\);

-- Location: LCCOMB_X14_Y15_N26
\dato_I_aux[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[0]~6_combout\ = (!\pc|q_aux\(2) & (!\pc|q_aux\(1) & \rom|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(2),
	datab => \pc|q_aux\(1),
	datad => \rom|Equal1~3_combout\,
	combout => \dato_I_aux[0]~6_combout\);

-- Location: LCCOMB_X12_Y16_N12
\archivo_r|decodificador|O[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|decodificador|O[17]~0_combout\ = (!\pc|q_aux\(2) & (\rom|Equal1~3_combout\ & (\pc|q_aux\(0) $ (\pc|q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(2),
	datab => \pc|q_aux\(0),
	datac => \rom|Equal1~3_combout\,
	datad => \pc|q_aux\(1),
	combout => \archivo_r|decodificador|O[17]~0_combout\);

-- Location: FF_X13_Y16_N5
\archivo_r|reg17|q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~23_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \archivo_r|decodificador|O[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg17|q_aux\(0));

-- Location: LCCOMB_X13_Y16_N28
\rom|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|Equal2~0_combout\ = (!\pc|q_aux\(0) & (!\pc|q_aux\(2) & (\pc|q_aux\(1) & \rom|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(0),
	datab => \pc|q_aux\(2),
	datac => \pc|q_aux\(1),
	datad => \rom|Equal1~3_combout\,
	combout => \rom|Equal2~0_combout\);

-- Location: LCCOMB_X13_Y16_N2
\archivo_r|mux_destino|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_destino|O[0]~0_combout\ = (\archivo_r|reg17|q_aux\(0) & \rom|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \archivo_r|reg17|q_aux\(0),
	datad => \rom|Equal2~0_combout\,
	combout => \archivo_r|mux_destino|O[0]~0_combout\);

-- Location: LCCOMB_X13_Y16_N12
\A_L_U|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add0~0_combout\ = (\archivo_r|mux_fuente|O[0]~1_combout\ & (\archivo_r|mux_destino|O[0]~0_combout\ $ (VCC))) # (!\archivo_r|mux_fuente|O[0]~1_combout\ & (\archivo_r|mux_destino|O[0]~0_combout\ & VCC))
-- \A_L_U|Add0~1\ = CARRY((\archivo_r|mux_fuente|O[0]~1_combout\ & \archivo_r|mux_destino|O[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_fuente|O[0]~1_combout\,
	datab => \archivo_r|mux_destino|O[0]~0_combout\,
	datad => VCC,
	combout => \A_L_U|Add0~0_combout\,
	cout => \A_L_U|Add0~1\);

-- Location: LCCOMB_X14_Y15_N6
\dato_I_aux[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[0]~23_combout\ = (\dato_I_aux[0]~6_combout\) # ((\dec_int|Mux19~0_combout\ & \A_L_U|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_int|Mux19~0_combout\,
	datac => \dato_I_aux[0]~6_combout\,
	datad => \A_L_U|Add0~0_combout\,
	combout => \dato_I_aux[0]~23_combout\);

-- Location: LCCOMB_X12_Y16_N30
\archivo_r|decodificador|O[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|decodificador|O[16]~1_combout\ = (!\pc|q_aux\(2) & (!\pc|q_aux\(0) & (\rom|Equal1~3_combout\ & !\pc|q_aux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(2),
	datab => \pc|q_aux\(0),
	datac => \rom|Equal1~3_combout\,
	datad => \pc|q_aux\(1),
	combout => \archivo_r|decodificador|O[16]~1_combout\);

-- Location: FF_X14_Y15_N27
\archivo_r|reg16|q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~23_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \archivo_r|decodificador|O[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg16|q_aux\(0));

-- Location: LCCOMB_X14_Y15_N8
\dec_int|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_int|Mux9~0_combout\ = (!\pc|q_aux\(2) & (\rom|Equal1~3_combout\ & ((\pc|q_aux\(0)) # (!\pc|q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(2),
	datab => \pc|q_aux\(1),
	datac => \pc|q_aux\(0),
	datad => \rom|Equal1~3_combout\,
	combout => \dec_int|Mux9~0_combout\);

-- Location: LCCOMB_X14_Y15_N28
\archivo_r|mux_fuente|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_fuente|O[0]~0_combout\ = (!\pc|q_aux\(2) & (\pc|q_aux\(1) & \rom|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(2),
	datac => \pc|q_aux\(1),
	datad => \rom|Equal1~3_combout\,
	combout => \archivo_r|mux_fuente|O[0]~0_combout\);

-- Location: LCCOMB_X14_Y15_N0
\archivo_r|mux_fuente|O[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_fuente|O[0]~1_combout\ = (\archivo_r|mux_fuente|O[0]~0_combout\ & ((\dec_int|Mux9~0_combout\ & ((\archivo_r|reg17|q_aux\(0)))) # (!\dec_int|Mux9~0_combout\ & (\archivo_r|reg16|q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|reg16|q_aux\(0),
	datab => \archivo_r|reg17|q_aux\(0),
	datac => \dec_int|Mux9~0_combout\,
	datad => \archivo_r|mux_fuente|O[0]~0_combout\,
	combout => \archivo_r|mux_fuente|O[0]~1_combout\);

-- Location: LCCOMB_X10_Y15_N16
\dec_int|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_int|Mux24~0_combout\ = (\pc|q_aux\(0) & (\rom|Equal1~3_combout\ & (\pc|q_aux\(1) & !\pc|q_aux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|q_aux\(0),
	datab => \rom|Equal1~3_combout\,
	datac => \pc|q_aux\(1),
	datad => \pc|q_aux\(2),
	combout => \dec_int|Mux24~0_combout\);

-- Location: FF_X14_Y15_N1
\puertoB|q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \archivo_r|mux_fuente|O[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \dec_int|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puertoB|q_aux\(0));

-- Location: LCCOMB_X13_Y16_N0
\archivo_r|mux_destino|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_destino|O[1]~1_combout\ = (\archivo_r|reg17|q_aux\(1) & \rom|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \archivo_r|reg17|q_aux\(1),
	datad => \rom|Equal2~0_combout\,
	combout => \archivo_r|mux_destino|O[1]~1_combout\);

-- Location: LCCOMB_X13_Y16_N14
\A_L_U|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add0~2_combout\ = (\archivo_r|mux_destino|O[1]~1_combout\ & ((\archivo_r|mux_fuente|O[1]~2_combout\ & (\A_L_U|Add0~1\ & VCC)) # (!\archivo_r|mux_fuente|O[1]~2_combout\ & (!\A_L_U|Add0~1\)))) # (!\archivo_r|mux_destino|O[1]~1_combout\ & 
-- ((\archivo_r|mux_fuente|O[1]~2_combout\ & (!\A_L_U|Add0~1\)) # (!\archivo_r|mux_fuente|O[1]~2_combout\ & ((\A_L_U|Add0~1\) # (GND)))))
-- \A_L_U|Add0~3\ = CARRY((\archivo_r|mux_destino|O[1]~1_combout\ & (!\archivo_r|mux_fuente|O[1]~2_combout\ & !\A_L_U|Add0~1\)) # (!\archivo_r|mux_destino|O[1]~1_combout\ & ((!\A_L_U|Add0~1\) # (!\archivo_r|mux_fuente|O[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[1]~1_combout\,
	datab => \archivo_r|mux_fuente|O[1]~2_combout\,
	datad => VCC,
	cin => \A_L_U|Add0~1\,
	combout => \A_L_U|Add0~2_combout\,
	cout => \A_L_U|Add0~3\);

-- Location: LCCOMB_X13_Y15_N0
\dato_I_aux[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[1]~22_combout\ = (\dato_I_aux[0]~6_combout\ & (!\archivo_r|mux_destino|O[1]~1_combout\)) # (!\dato_I_aux[0]~6_combout\ & ((\A_L_U|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato_I_aux[0]~6_combout\,
	datab => \archivo_r|mux_destino|O[1]~1_combout\,
	datad => \A_L_U|Add0~2_combout\,
	combout => \dato_I_aux[1]~22_combout\);

-- Location: LCCOMB_X13_Y15_N24
\dato_I_aux[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[1]~7_combout\ = (\dec_int|Mux19~0_combout\ & ((\dato_I_aux[1]~22_combout\))) # (!\dec_int|Mux19~0_combout\ & (\dec_int|Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_int|Mux9~1_combout\,
	datac => \dec_int|Mux19~0_combout\,
	datad => \dato_I_aux[1]~22_combout\,
	combout => \dato_I_aux[1]~7_combout\);

-- Location: FF_X13_Y16_N11
\archivo_r|reg17|q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \archivo_r|decodificador|O[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg17|q_aux\(1));

-- Location: FF_X13_Y15_N25
\archivo_r|reg16|q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[1]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \archivo_r|decodificador|O[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg16|q_aux\(1));

-- Location: LCCOMB_X14_Y15_N2
\archivo_r|mux_fuente|O[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_fuente|O[1]~2_combout\ = (\archivo_r|mux_fuente|O[0]~0_combout\ & ((\dec_int|Mux9~0_combout\ & (\archivo_r|reg17|q_aux\(1))) # (!\dec_int|Mux9~0_combout\ & ((\archivo_r|reg16|q_aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|reg17|q_aux\(1),
	datab => \archivo_r|reg16|q_aux\(1),
	datac => \dec_int|Mux9~0_combout\,
	datad => \archivo_r|mux_fuente|O[0]~0_combout\,
	combout => \archivo_r|mux_fuente|O[1]~2_combout\);

-- Location: FF_X14_Y15_N3
\puertoB|q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \archivo_r|mux_fuente|O[1]~2_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \dec_int|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puertoB|q_aux\(1));

-- Location: LCCOMB_X14_Y15_N14
\dato_I_aux[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[2]~10_combout\ = (\archivo_r|reg17|q_aux\(2) & (\rom|Equal2~0_combout\ $ (((\archivo_r|mux_fuente|O[2]~3_combout\) # (\dato_I_aux[0]~6_combout\))))) # (!\archivo_r|reg17|q_aux\(2) & ((\archivo_r|mux_fuente|O[2]~3_combout\) # 
-- ((\dato_I_aux[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|reg17|q_aux\(2),
	datab => \archivo_r|mux_fuente|O[2]~3_combout\,
	datac => \dato_I_aux[0]~6_combout\,
	datad => \rom|Equal2~0_combout\,
	combout => \dato_I_aux[2]~10_combout\);

-- Location: LCCOMB_X13_Y16_N8
\archivo_r|mux_destino|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_destino|O[2]~2_combout\ = (\archivo_r|reg17|q_aux\(2) & \rom|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \archivo_r|reg17|q_aux\(2),
	datad => \rom|Equal2~0_combout\,
	combout => \archivo_r|mux_destino|O[2]~2_combout\);

-- Location: LCCOMB_X13_Y16_N16
\A_L_U|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add0~4_combout\ = ((\archivo_r|mux_destino|O[2]~2_combout\ $ (\archivo_r|mux_fuente|O[2]~3_combout\ $ (!\A_L_U|Add0~3\)))) # (GND)
-- \A_L_U|Add0~5\ = CARRY((\archivo_r|mux_destino|O[2]~2_combout\ & ((\archivo_r|mux_fuente|O[2]~3_combout\) # (!\A_L_U|Add0~3\))) # (!\archivo_r|mux_destino|O[2]~2_combout\ & (\archivo_r|mux_fuente|O[2]~3_combout\ & !\A_L_U|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[2]~2_combout\,
	datab => \archivo_r|mux_fuente|O[2]~3_combout\,
	datad => VCC,
	cin => \A_L_U|Add0~3\,
	combout => \A_L_U|Add0~4_combout\,
	cout => \A_L_U|Add0~5\);

-- Location: LCCOMB_X13_Y15_N18
\dato_I_aux[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[2]~21_combout\ = (\dec_int|Mux19~0_combout\ & ((\dato_I_aux[0]~6_combout\ & (\dato_I_aux[2]~10_combout\)) # (!\dato_I_aux[0]~6_combout\ & ((\A_L_U|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_int|Mux19~0_combout\,
	datab => \dato_I_aux[0]~6_combout\,
	datac => \dato_I_aux[2]~10_combout\,
	datad => \A_L_U|Add0~4_combout\,
	combout => \dato_I_aux[2]~21_combout\);

-- Location: LCCOMB_X13_Y15_N22
\dato_I_aux[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[2]~8_combout\ = (\dato_I_aux[2]~21_combout\) # ((\rom|Equal4~1_combout\ & (!\rom|O~1_combout\ & !\dec_int|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|Equal4~1_combout\,
	datab => \rom|O~1_combout\,
	datac => \dec_int|Mux19~0_combout\,
	datad => \dato_I_aux[2]~21_combout\,
	combout => \dato_I_aux[2]~8_combout\);

-- Location: FF_X13_Y16_N9
\archivo_r|reg17|q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~8_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \archivo_r|decodificador|O[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg17|q_aux\(2));

-- Location: FF_X13_Y15_N23
\archivo_r|reg16|q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[2]~8_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \archivo_r|decodificador|O[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg16|q_aux\(2));

-- Location: LCCOMB_X14_Y15_N4
\archivo_r|mux_fuente|O[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_fuente|O[2]~3_combout\ = (\archivo_r|mux_fuente|O[0]~0_combout\ & ((\dec_int|Mux9~0_combout\ & (\archivo_r|reg17|q_aux\(2))) # (!\dec_int|Mux9~0_combout\ & ((\archivo_r|reg16|q_aux\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|reg17|q_aux\(2),
	datab => \archivo_r|reg16|q_aux\(2),
	datac => \dec_int|Mux9~0_combout\,
	datad => \archivo_r|mux_fuente|O[0]~0_combout\,
	combout => \archivo_r|mux_fuente|O[2]~3_combout\);

-- Location: FF_X14_Y15_N5
\puertoB|q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \archivo_r|mux_fuente|O[2]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \dec_int|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puertoB|q_aux\(2));

-- Location: LCCOMB_X14_Y15_N24
\dato_I_aux[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[3]~11_combout\ = (\archivo_r|reg17|q_aux\(3) & (\rom|Equal2~0_combout\ $ (((\archivo_r|mux_fuente|O[3]~4_combout\) # (\dato_I_aux[0]~6_combout\))))) # (!\archivo_r|reg17|q_aux\(3) & ((\archivo_r|mux_fuente|O[3]~4_combout\) # 
-- ((\dato_I_aux[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|reg17|q_aux\(3),
	datab => \archivo_r|mux_fuente|O[3]~4_combout\,
	datac => \dato_I_aux[0]~6_combout\,
	datad => \rom|Equal2~0_combout\,
	combout => \dato_I_aux[3]~11_combout\);

-- Location: LCCOMB_X12_Y16_N16
\archivo_r|mux_destino|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_destino|O[3]~3_combout\ = (\archivo_r|reg17|q_aux\(3) & \rom|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \archivo_r|reg17|q_aux\(3),
	datad => \rom|Equal2~0_combout\,
	combout => \archivo_r|mux_destino|O[3]~3_combout\);

-- Location: LCCOMB_X13_Y16_N18
\A_L_U|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add0~6_combout\ = (\archivo_r|mux_destino|O[3]~3_combout\ & ((\archivo_r|mux_fuente|O[3]~4_combout\ & (\A_L_U|Add0~5\ & VCC)) # (!\archivo_r|mux_fuente|O[3]~4_combout\ & (!\A_L_U|Add0~5\)))) # (!\archivo_r|mux_destino|O[3]~3_combout\ & 
-- ((\archivo_r|mux_fuente|O[3]~4_combout\ & (!\A_L_U|Add0~5\)) # (!\archivo_r|mux_fuente|O[3]~4_combout\ & ((\A_L_U|Add0~5\) # (GND)))))
-- \A_L_U|Add0~7\ = CARRY((\archivo_r|mux_destino|O[3]~3_combout\ & (!\archivo_r|mux_fuente|O[3]~4_combout\ & !\A_L_U|Add0~5\)) # (!\archivo_r|mux_destino|O[3]~3_combout\ & ((!\A_L_U|Add0~5\) # (!\archivo_r|mux_fuente|O[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[3]~3_combout\,
	datab => \archivo_r|mux_fuente|O[3]~4_combout\,
	datad => VCC,
	cin => \A_L_U|Add0~5\,
	combout => \A_L_U|Add0~6_combout\,
	cout => \A_L_U|Add0~7\);

-- Location: LCCOMB_X13_Y15_N28
\dato_I_aux[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[3]~20_combout\ = (\dec_int|Mux19~0_combout\ & ((\dato_I_aux[0]~6_combout\ & (\dato_I_aux[3]~11_combout\)) # (!\dato_I_aux[0]~6_combout\ & ((\A_L_U|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_int|Mux19~0_combout\,
	datab => \dato_I_aux[0]~6_combout\,
	datac => \dato_I_aux[3]~11_combout\,
	datad => \A_L_U|Add0~6_combout\,
	combout => \dato_I_aux[3]~20_combout\);

-- Location: LCCOMB_X13_Y15_N30
\dato_I_aux[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[3]~9_combout\ = (\dato_I_aux[3]~20_combout\) # ((\rom|Equal4~1_combout\ & (\dec_int|Mux9~1_combout\ & !\dec_int|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|Equal4~1_combout\,
	datab => \dec_int|Mux9~1_combout\,
	datac => \dec_int|Mux19~0_combout\,
	datad => \dato_I_aux[3]~20_combout\,
	combout => \dato_I_aux[3]~9_combout\);

-- Location: FF_X13_Y15_N1
\archivo_r|reg17|q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \archivo_r|decodificador|O[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg17|q_aux\(3));

-- Location: FF_X13_Y15_N31
\archivo_r|reg16|q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[3]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \archivo_r|decodificador|O[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg16|q_aux\(3));

-- Location: LCCOMB_X14_Y15_N18
\archivo_r|mux_fuente|O[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_fuente|O[3]~4_combout\ = (\archivo_r|mux_fuente|O[0]~0_combout\ & ((\dec_int|Mux9~0_combout\ & (\archivo_r|reg17|q_aux\(3))) # (!\dec_int|Mux9~0_combout\ & ((\archivo_r|reg16|q_aux\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|reg17|q_aux\(3),
	datab => \archivo_r|reg16|q_aux\(3),
	datac => \dec_int|Mux9~0_combout\,
	datad => \archivo_r|mux_fuente|O[0]~0_combout\,
	combout => \archivo_r|mux_fuente|O[3]~4_combout\);

-- Location: FF_X14_Y15_N19
\puertoB|q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \archivo_r|mux_fuente|O[3]~4_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \dec_int|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puertoB|q_aux\(3));

-- Location: LCCOMB_X13_Y16_N4
\archivo_r|mux_destino|O[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_destino|O[4]~4_combout\ = (\archivo_r|reg17|q_aux\(4) & \rom|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|reg17|q_aux\(4),
	datad => \rom|Equal2~0_combout\,
	combout => \archivo_r|mux_destino|O[4]~4_combout\);

-- Location: LCCOMB_X14_Y16_N0
\A_L_U|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add1~1_cout\ = CARRY((\archivo_r|mux_destino|O[0]~0_combout\) # (!\archivo_r|mux_fuente|O[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[0]~0_combout\,
	datab => \archivo_r|mux_fuente|O[0]~1_combout\,
	datad => VCC,
	cout => \A_L_U|Add1~1_cout\);

-- Location: LCCOMB_X14_Y16_N2
\A_L_U|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add1~3_cout\ = CARRY((\archivo_r|mux_destino|O[1]~1_combout\ & (\archivo_r|mux_fuente|O[1]~2_combout\ & !\A_L_U|Add1~1_cout\)) # (!\archivo_r|mux_destino|O[1]~1_combout\ & ((\archivo_r|mux_fuente|O[1]~2_combout\) # (!\A_L_U|Add1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[1]~1_combout\,
	datab => \archivo_r|mux_fuente|O[1]~2_combout\,
	datad => VCC,
	cin => \A_L_U|Add1~1_cout\,
	cout => \A_L_U|Add1~3_cout\);

-- Location: LCCOMB_X14_Y16_N4
\A_L_U|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add1~5_cout\ = CARRY((\archivo_r|mux_destino|O[2]~2_combout\ & ((!\A_L_U|Add1~3_cout\) # (!\archivo_r|mux_fuente|O[2]~3_combout\))) # (!\archivo_r|mux_destino|O[2]~2_combout\ & (!\archivo_r|mux_fuente|O[2]~3_combout\ & !\A_L_U|Add1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[2]~2_combout\,
	datab => \archivo_r|mux_fuente|O[2]~3_combout\,
	datad => VCC,
	cin => \A_L_U|Add1~3_cout\,
	cout => \A_L_U|Add1~5_cout\);

-- Location: LCCOMB_X14_Y16_N6
\A_L_U|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add1~7_cout\ = CARRY((\archivo_r|mux_fuente|O[3]~4_combout\ & ((!\A_L_U|Add1~5_cout\) # (!\archivo_r|mux_destino|O[3]~3_combout\))) # (!\archivo_r|mux_fuente|O[3]~4_combout\ & (!\archivo_r|mux_destino|O[3]~3_combout\ & !\A_L_U|Add1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_fuente|O[3]~4_combout\,
	datab => \archivo_r|mux_destino|O[3]~3_combout\,
	datad => VCC,
	cin => \A_L_U|Add1~5_cout\,
	cout => \A_L_U|Add1~7_cout\);

-- Location: LCCOMB_X14_Y16_N8
\A_L_U|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add1~8_combout\ = ((\archivo_r|mux_fuente|O[4]~5_combout\ $ (\archivo_r|mux_destino|O[4]~4_combout\ $ (\A_L_U|Add1~7_cout\)))) # (GND)
-- \A_L_U|Add1~9\ = CARRY((\archivo_r|mux_fuente|O[4]~5_combout\ & (\archivo_r|mux_destino|O[4]~4_combout\ & !\A_L_U|Add1~7_cout\)) # (!\archivo_r|mux_fuente|O[4]~5_combout\ & ((\archivo_r|mux_destino|O[4]~4_combout\) # (!\A_L_U|Add1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_fuente|O[4]~5_combout\,
	datab => \archivo_r|mux_destino|O[4]~4_combout\,
	datad => VCC,
	cin => \A_L_U|Add1~7_cout\,
	combout => \A_L_U|Add1~8_combout\,
	cout => \A_L_U|Add1~9\);

-- Location: LCCOMB_X13_Y16_N20
\A_L_U|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add0~8_combout\ = ((\archivo_r|mux_fuente|O[4]~5_combout\ $ (\archivo_r|mux_destino|O[4]~4_combout\ $ (!\A_L_U|Add0~7\)))) # (GND)
-- \A_L_U|Add0~9\ = CARRY((\archivo_r|mux_fuente|O[4]~5_combout\ & ((\archivo_r|mux_destino|O[4]~4_combout\) # (!\A_L_U|Add0~7\))) # (!\archivo_r|mux_fuente|O[4]~5_combout\ & (\archivo_r|mux_destino|O[4]~4_combout\ & !\A_L_U|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_fuente|O[4]~5_combout\,
	datab => \archivo_r|mux_destino|O[4]~4_combout\,
	datad => VCC,
	cin => \A_L_U|Add0~7\,
	combout => \A_L_U|Add0~8_combout\,
	cout => \A_L_U|Add0~9\);

-- Location: LCCOMB_X14_Y16_N18
\dato_I_aux[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[4]~18_combout\ = (\dato_I_aux[0]~6_combout\ & (((\A_L_U|Add1~8_combout\)) # (!\archivo_r|mux_destino|O[4]~4_combout\))) # (!\dato_I_aux[0]~6_combout\ & (((\A_L_U|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato_I_aux[0]~6_combout\,
	datab => \archivo_r|mux_destino|O[4]~4_combout\,
	datac => \A_L_U|Add1~8_combout\,
	datad => \A_L_U|Add0~8_combout\,
	combout => \dato_I_aux[4]~18_combout\);

-- Location: LCCOMB_X14_Y16_N20
\dato_I_aux[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[4]~19_combout\ = (\dec_int|Mux19~0_combout\ & \dato_I_aux[4]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_int|Mux19~0_combout\,
	datad => \dato_I_aux[4]~18_combout\,
	combout => \dato_I_aux[4]~19_combout\);

-- Location: FF_X13_Y16_N3
\archivo_r|reg17|q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~19_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \archivo_r|decodificador|O[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg17|q_aux\(4));

-- Location: FF_X14_Y16_N21
\archivo_r|reg16|q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[4]~19_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \archivo_r|decodificador|O[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg16|q_aux\(4));

-- Location: LCCOMB_X14_Y15_N12
\archivo_r|mux_fuente|O[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_fuente|O[4]~5_combout\ = (\archivo_r|mux_fuente|O[0]~0_combout\ & ((\dec_int|Mux9~0_combout\ & (\archivo_r|reg17|q_aux\(4))) # (!\dec_int|Mux9~0_combout\ & ((\archivo_r|reg16|q_aux\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|reg17|q_aux\(4),
	datab => \archivo_r|reg16|q_aux\(4),
	datac => \dec_int|Mux9~0_combout\,
	datad => \archivo_r|mux_fuente|O[0]~0_combout\,
	combout => \archivo_r|mux_fuente|O[4]~5_combout\);

-- Location: FF_X14_Y15_N13
\puertoB|q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \archivo_r|mux_fuente|O[4]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \dec_int|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puertoB|q_aux\(4));

-- Location: FF_X14_Y16_N31
\archivo_r|reg17|q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~17_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \archivo_r|decodificador|O[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg17|q_aux\(5));

-- Location: LCCOMB_X14_Y16_N30
\archivo_r|mux_destino|O[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_destino|O[5]~5_combout\ = (\archivo_r|reg17|q_aux\(5) & \rom|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \archivo_r|reg17|q_aux\(5),
	datad => \rom|Equal2~0_combout\,
	combout => \archivo_r|mux_destino|O[5]~5_combout\);

-- Location: LCCOMB_X14_Y16_N10
\A_L_U|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add1~10_combout\ = (\archivo_r|mux_destino|O[5]~5_combout\ & ((\archivo_r|mux_fuente|O[5]~6_combout\ & (!\A_L_U|Add1~9\)) # (!\archivo_r|mux_fuente|O[5]~6_combout\ & (\A_L_U|Add1~9\ & VCC)))) # (!\archivo_r|mux_destino|O[5]~5_combout\ & 
-- ((\archivo_r|mux_fuente|O[5]~6_combout\ & ((\A_L_U|Add1~9\) # (GND))) # (!\archivo_r|mux_fuente|O[5]~6_combout\ & (!\A_L_U|Add1~9\))))
-- \A_L_U|Add1~11\ = CARRY((\archivo_r|mux_destino|O[5]~5_combout\ & (\archivo_r|mux_fuente|O[5]~6_combout\ & !\A_L_U|Add1~9\)) # (!\archivo_r|mux_destino|O[5]~5_combout\ & ((\archivo_r|mux_fuente|O[5]~6_combout\) # (!\A_L_U|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[5]~5_combout\,
	datab => \archivo_r|mux_fuente|O[5]~6_combout\,
	datad => VCC,
	cin => \A_L_U|Add1~9\,
	combout => \A_L_U|Add1~10_combout\,
	cout => \A_L_U|Add1~11\);

-- Location: LCCOMB_X13_Y16_N22
\A_L_U|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add0~10_combout\ = (\archivo_r|mux_destino|O[5]~5_combout\ & ((\archivo_r|mux_fuente|O[5]~6_combout\ & (\A_L_U|Add0~9\ & VCC)) # (!\archivo_r|mux_fuente|O[5]~6_combout\ & (!\A_L_U|Add0~9\)))) # (!\archivo_r|mux_destino|O[5]~5_combout\ & 
-- ((\archivo_r|mux_fuente|O[5]~6_combout\ & (!\A_L_U|Add0~9\)) # (!\archivo_r|mux_fuente|O[5]~6_combout\ & ((\A_L_U|Add0~9\) # (GND)))))
-- \A_L_U|Add0~11\ = CARRY((\archivo_r|mux_destino|O[5]~5_combout\ & (!\archivo_r|mux_fuente|O[5]~6_combout\ & !\A_L_U|Add0~9\)) # (!\archivo_r|mux_destino|O[5]~5_combout\ & ((!\A_L_U|Add0~9\) # (!\archivo_r|mux_fuente|O[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[5]~5_combout\,
	datab => \archivo_r|mux_fuente|O[5]~6_combout\,
	datad => VCC,
	cin => \A_L_U|Add0~9\,
	combout => \A_L_U|Add0~10_combout\,
	cout => \A_L_U|Add0~11\);

-- Location: LCCOMB_X14_Y16_N28
\dato_I_aux[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[5]~16_combout\ = (\dato_I_aux[0]~6_combout\ & ((\A_L_U|Add1~10_combout\) # ((!\archivo_r|mux_destino|O[5]~5_combout\)))) # (!\dato_I_aux[0]~6_combout\ & (((\A_L_U|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_L_U|Add1~10_combout\,
	datab => \dato_I_aux[0]~6_combout\,
	datac => \archivo_r|mux_destino|O[5]~5_combout\,
	datad => \A_L_U|Add0~10_combout\,
	combout => \dato_I_aux[5]~16_combout\);

-- Location: LCCOMB_X14_Y16_N16
\dato_I_aux[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[5]~17_combout\ = (\dec_int|Mux19~0_combout\ & \dato_I_aux[5]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_int|Mux19~0_combout\,
	datad => \dato_I_aux[5]~16_combout\,
	combout => \dato_I_aux[5]~17_combout\);

-- Location: FF_X14_Y16_N17
\archivo_r|reg16|q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[5]~17_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \archivo_r|decodificador|O[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg16|q_aux\(5));

-- Location: LCCOMB_X14_Y15_N30
\archivo_r|mux_fuente|O[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_fuente|O[5]~6_combout\ = (\archivo_r|mux_fuente|O[0]~0_combout\ & ((\dec_int|Mux9~0_combout\ & ((\archivo_r|reg17|q_aux\(5)))) # (!\dec_int|Mux9~0_combout\ & (\archivo_r|reg16|q_aux\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|reg16|q_aux\(5),
	datab => \archivo_r|reg17|q_aux\(5),
	datac => \dec_int|Mux9~0_combout\,
	datad => \archivo_r|mux_fuente|O[0]~0_combout\,
	combout => \archivo_r|mux_fuente|O[5]~6_combout\);

-- Location: FF_X14_Y15_N31
\puertoB|q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \archivo_r|mux_fuente|O[5]~6_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \dec_int|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puertoB|q_aux\(5));

-- Location: LCCOMB_X13_Y16_N10
\archivo_r|mux_destino|O[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_destino|O[6]~6_combout\ = (\archivo_r|reg17|q_aux\(6) & \rom|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \archivo_r|reg17|q_aux\(6),
	datad => \rom|Equal2~0_combout\,
	combout => \archivo_r|mux_destino|O[6]~6_combout\);

-- Location: LCCOMB_X14_Y16_N12
\A_L_U|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add1~12_combout\ = ((\archivo_r|mux_fuente|O[6]~7_combout\ $ (\archivo_r|mux_destino|O[6]~6_combout\ $ (\A_L_U|Add1~11\)))) # (GND)
-- \A_L_U|Add1~13\ = CARRY((\archivo_r|mux_fuente|O[6]~7_combout\ & (\archivo_r|mux_destino|O[6]~6_combout\ & !\A_L_U|Add1~11\)) # (!\archivo_r|mux_fuente|O[6]~7_combout\ & ((\archivo_r|mux_destino|O[6]~6_combout\) # (!\A_L_U|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_fuente|O[6]~7_combout\,
	datab => \archivo_r|mux_destino|O[6]~6_combout\,
	datad => VCC,
	cin => \A_L_U|Add1~11\,
	combout => \A_L_U|Add1~12_combout\,
	cout => \A_L_U|Add1~13\);

-- Location: LCCOMB_X13_Y16_N24
\A_L_U|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add0~12_combout\ = ((\archivo_r|mux_destino|O[6]~6_combout\ $ (\archivo_r|mux_fuente|O[6]~7_combout\ $ (!\A_L_U|Add0~11\)))) # (GND)
-- \A_L_U|Add0~13\ = CARRY((\archivo_r|mux_destino|O[6]~6_combout\ & ((\archivo_r|mux_fuente|O[6]~7_combout\) # (!\A_L_U|Add0~11\))) # (!\archivo_r|mux_destino|O[6]~6_combout\ & (\archivo_r|mux_fuente|O[6]~7_combout\ & !\A_L_U|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[6]~6_combout\,
	datab => \archivo_r|mux_fuente|O[6]~7_combout\,
	datad => VCC,
	cin => \A_L_U|Add0~11\,
	combout => \A_L_U|Add0~12_combout\,
	cout => \A_L_U|Add0~13\);

-- Location: LCCOMB_X13_Y16_N6
\dato_I_aux[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[6]~14_combout\ = (\dato_I_aux[0]~6_combout\ & (((\A_L_U|Add1~12_combout\)) # (!\archivo_r|mux_destino|O[6]~6_combout\))) # (!\dato_I_aux[0]~6_combout\ & (((\A_L_U|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[6]~6_combout\,
	datab => \dato_I_aux[0]~6_combout\,
	datac => \A_L_U|Add1~12_combout\,
	datad => \A_L_U|Add0~12_combout\,
	combout => \dato_I_aux[6]~14_combout\);

-- Location: LCCOMB_X13_Y16_N30
\dato_I_aux[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[6]~15_combout\ = (\dec_int|Mux19~0_combout\ & \dato_I_aux[6]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_int|Mux19~0_combout\,
	datad => \dato_I_aux[6]~14_combout\,
	combout => \dato_I_aux[6]~15_combout\);

-- Location: FF_X13_Y16_N1
\archivo_r|reg17|q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \archivo_r|decodificador|O[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg17|q_aux\(6));

-- Location: FF_X13_Y16_N31
\archivo_r|reg16|q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[6]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \archivo_r|decodificador|O[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg16|q_aux\(6));

-- Location: LCCOMB_X14_Y15_N16
\archivo_r|mux_fuente|O[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_fuente|O[6]~7_combout\ = (\archivo_r|mux_fuente|O[0]~0_combout\ & ((\dec_int|Mux9~0_combout\ & (\archivo_r|reg17|q_aux\(6))) # (!\dec_int|Mux9~0_combout\ & ((\archivo_r|reg16|q_aux\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|reg17|q_aux\(6),
	datab => \dec_int|Mux9~0_combout\,
	datac => \archivo_r|reg16|q_aux\(6),
	datad => \archivo_r|mux_fuente|O[0]~0_combout\,
	combout => \archivo_r|mux_fuente|O[6]~7_combout\);

-- Location: FF_X14_Y15_N17
\puertoB|q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \archivo_r|mux_fuente|O[6]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \dec_int|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puertoB|q_aux\(6));

-- Location: LCCOMB_X14_Y16_N22
\archivo_r|mux_destino|O[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_destino|O[7]~7_combout\ = (\archivo_r|reg17|q_aux\(7) & \rom|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \archivo_r|reg17|q_aux\(7),
	datad => \rom|Equal2~0_combout\,
	combout => \archivo_r|mux_destino|O[7]~7_combout\);

-- Location: LCCOMB_X13_Y16_N26
\A_L_U|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add0~14_combout\ = \archivo_r|mux_fuente|O[7]~8_combout\ $ (\A_L_U|Add0~13\ $ (\archivo_r|mux_destino|O[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_fuente|O[7]~8_combout\,
	datad => \archivo_r|mux_destino|O[7]~7_combout\,
	cin => \A_L_U|Add0~13\,
	combout => \A_L_U|Add0~14_combout\);

-- Location: LCCOMB_X14_Y16_N14
\A_L_U|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_L_U|Add1~14_combout\ = \archivo_r|mux_destino|O[7]~7_combout\ $ (\A_L_U|Add1~13\ $ (!\archivo_r|mux_fuente|O[7]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[7]~7_combout\,
	datad => \archivo_r|mux_fuente|O[7]~8_combout\,
	cin => \A_L_U|Add1~13\,
	combout => \A_L_U|Add1~14_combout\);

-- Location: LCCOMB_X14_Y16_N26
\dato_I_aux[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[7]~12_combout\ = (\dato_I_aux[0]~6_combout\ & (((\A_L_U|Add1~14_combout\)) # (!\archivo_r|mux_destino|O[7]~7_combout\))) # (!\dato_I_aux[0]~6_combout\ & (((\A_L_U|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|mux_destino|O[7]~7_combout\,
	datab => \dato_I_aux[0]~6_combout\,
	datac => \A_L_U|Add0~14_combout\,
	datad => \A_L_U|Add1~14_combout\,
	combout => \dato_I_aux[7]~12_combout\);

-- Location: LCCOMB_X14_Y16_N24
\dato_I_aux[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[7]~13_combout\ = (\dec_int|Mux19~0_combout\ & \dato_I_aux[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_int|Mux19~0_combout\,
	datac => \dato_I_aux[7]~12_combout\,
	combout => \dato_I_aux[7]~13_combout\);

-- Location: FF_X14_Y16_N23
\archivo_r|reg17|q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \archivo_r|decodificador|O[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg17|q_aux\(7));

-- Location: FF_X14_Y16_N25
\archivo_r|reg16|q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[7]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \archivo_r|decodificador|O[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \archivo_r|reg16|q_aux\(7));

-- Location: LCCOMB_X14_Y15_N22
\archivo_r|mux_fuente|O[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \archivo_r|mux_fuente|O[7]~8_combout\ = (\archivo_r|mux_fuente|O[0]~0_combout\ & ((\dec_int|Mux9~0_combout\ & (\archivo_r|reg17|q_aux\(7))) # (!\dec_int|Mux9~0_combout\ & ((\archivo_r|reg16|q_aux\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \archivo_r|reg17|q_aux\(7),
	datab => \archivo_r|mux_fuente|O[0]~0_combout\,
	datac => \archivo_r|reg16|q_aux\(7),
	datad => \dec_int|Mux9~0_combout\,
	combout => \archivo_r|mux_fuente|O[7]~8_combout\);

-- Location: FF_X14_Y15_N23
\puertoB|q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \archivo_r|mux_fuente|O[7]~8_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \dec_int|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puertoB|q_aux\(7));

ww_portb(0) <= \portb[0]~output_o\;

ww_portb(1) <= \portb[1]~output_o\;

ww_portb(2) <= \portb[2]~output_o\;

ww_portb(3) <= \portb[3]~output_o\;

ww_portb(4) <= \portb[4]~output_o\;

ww_portb(5) <= \portb[5]~output_o\;

ww_portb(6) <= \portb[6]~output_o\;

ww_portb(7) <= \portb[7]~output_o\;
END structure;


