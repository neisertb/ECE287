-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "12/10/2015 13:26:13"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lights IS
    PORT (
	Clock : IN std_logic;
	Resetn : IN std_logic;
	r0 : IN std_logic;
	g0 : IN std_logic;
	b0 : IN std_logic;
	i0 : IN std_logic;
	i1 : IN std_logic;
	i2 : IN std_logic;
	i3 : IN std_logic;
	i4 : IN std_logic;
	i5 : IN std_logic;
	i6 : IN std_logic;
	i7 : IN std_logic;
	s : IN std_logic;
	serial : OUT std_logic;
	a1 : OUT std_logic;
	b1 : OUT std_logic;
	c1 : OUT std_logic;
	d1 : OUT std_logic;
	e1 : OUT std_logic;
	f1 : OUT std_logic;
	g1 : OUT std_logic
	);
END lights;

-- Design Ports Information
-- i0	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i1	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i3	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i4	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i5	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i6	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i7	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- serial	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resetn	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g0	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lights IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Resetn : std_logic;
SIGNAL ww_r0 : std_logic;
SIGNAL ww_g0 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_i0 : std_logic;
SIGNAL ww_i1 : std_logic;
SIGNAL ww_i2 : std_logic;
SIGNAL ww_i3 : std_logic;
SIGNAL ww_i4 : std_logic;
SIGNAL ww_i5 : std_logic;
SIGNAL ww_i6 : std_logic;
SIGNAL ww_i7 : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_serial : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_e1 : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i0~input_o\ : std_logic;
SIGNAL \i1~input_o\ : std_logic;
SIGNAL \i2~input_o\ : std_logic;
SIGNAL \i3~input_o\ : std_logic;
SIGNAL \i4~input_o\ : std_logic;
SIGNAL \i5~input_o\ : std_logic;
SIGNAL \i6~input_o\ : std_logic;
SIGNAL \i7~input_o\ : std_logic;
SIGNAL \serial~output_o\ : std_logic;
SIGNAL \a1~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \c1~output_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \e1~output_o\ : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \g1~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Resetn~input_o\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \trace[0]~93_combout\ : std_logic;
SIGNAL \count[0]~40_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \count[11]~70\ : std_logic;
SIGNAL \count[12]~71_combout\ : std_logic;
SIGNAL \count[12]~72\ : std_logic;
SIGNAL \count[13]~73_combout\ : std_logic;
SIGNAL \count[13]~74\ : std_logic;
SIGNAL \count[14]~75_combout\ : std_logic;
SIGNAL \count[14]~76\ : std_logic;
SIGNAL \count[15]~77_combout\ : std_logic;
SIGNAL \count[15]~78\ : std_logic;
SIGNAL \count[16]~79_combout\ : std_logic;
SIGNAL \count[16]~80\ : std_logic;
SIGNAL \count[17]~81_combout\ : std_logic;
SIGNAL \count[17]~82\ : std_logic;
SIGNAL \count[18]~83_combout\ : std_logic;
SIGNAL \count[18]~84\ : std_logic;
SIGNAL \count[19]~85_combout\ : std_logic;
SIGNAL \count[19]~86\ : std_logic;
SIGNAL \count[20]~87_combout\ : std_logic;
SIGNAL \count[20]~88\ : std_logic;
SIGNAL \count[21]~89_combout\ : std_logic;
SIGNAL \count[21]~90\ : std_logic;
SIGNAL \count[22]~91_combout\ : std_logic;
SIGNAL \count[22]~92\ : std_logic;
SIGNAL \count[23]~93_combout\ : std_logic;
SIGNAL \count[23]~94\ : std_logic;
SIGNAL \count[24]~95_combout\ : std_logic;
SIGNAL \count[24]~96\ : std_logic;
SIGNAL \count[25]~97_combout\ : std_logic;
SIGNAL \count[25]~98\ : std_logic;
SIGNAL \count[26]~99_combout\ : std_logic;
SIGNAL \count[26]~100\ : std_logic;
SIGNAL \count[27]~101_combout\ : std_logic;
SIGNAL \count[27]~102\ : std_logic;
SIGNAL \count[28]~103_combout\ : std_logic;
SIGNAL \count[28]~104\ : std_logic;
SIGNAL \count[29]~105_combout\ : std_logic;
SIGNAL \count[29]~106\ : std_logic;
SIGNAL \count[30]~107_combout\ : std_logic;
SIGNAL \count[30]~108\ : std_logic;
SIGNAL \count[31]~109_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \count[28]~36_combout\ : std_logic;
SIGNAL \cycle[0]~32_combout\ : std_logic;
SIGNAL \season[31]~0_combout\ : std_logic;
SIGNAL \cycle[14]~34_combout\ : std_logic;
SIGNAL \cycle[0]~33\ : std_logic;
SIGNAL \cycle[1]~35_combout\ : std_logic;
SIGNAL \cycle[1]~36\ : std_logic;
SIGNAL \cycle[2]~37_combout\ : std_logic;
SIGNAL \cycle[2]~38\ : std_logic;
SIGNAL \cycle[3]~39_combout\ : std_logic;
SIGNAL \cycle[3]~40\ : std_logic;
SIGNAL \cycle[4]~41_combout\ : std_logic;
SIGNAL \cycle[4]~42\ : std_logic;
SIGNAL \cycle[5]~43_combout\ : std_logic;
SIGNAL \cycle[5]~44\ : std_logic;
SIGNAL \cycle[6]~45_combout\ : std_logic;
SIGNAL \cycle[6]~46\ : std_logic;
SIGNAL \cycle[7]~47_combout\ : std_logic;
SIGNAL \cycle[7]~48\ : std_logic;
SIGNAL \cycle[8]~49_combout\ : std_logic;
SIGNAL \cycle[8]~50\ : std_logic;
SIGNAL \cycle[9]~51_combout\ : std_logic;
SIGNAL \cycle[9]~52\ : std_logic;
SIGNAL \cycle[10]~53_combout\ : std_logic;
SIGNAL \cycle[10]~54\ : std_logic;
SIGNAL \cycle[11]~55_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \cycle[11]~56\ : std_logic;
SIGNAL \cycle[12]~57_combout\ : std_logic;
SIGNAL \cycle[12]~58\ : std_logic;
SIGNAL \cycle[13]~59_combout\ : std_logic;
SIGNAL \cycle[13]~60\ : std_logic;
SIGNAL \cycle[14]~61_combout\ : std_logic;
SIGNAL \cycle[14]~62\ : std_logic;
SIGNAL \cycle[15]~63_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \cycle[15]~64\ : std_logic;
SIGNAL \cycle[16]~65_combout\ : std_logic;
SIGNAL \cycle[16]~66\ : std_logic;
SIGNAL \cycle[17]~67_combout\ : std_logic;
SIGNAL \cycle[17]~68\ : std_logic;
SIGNAL \cycle[18]~69_combout\ : std_logic;
SIGNAL \cycle[18]~70\ : std_logic;
SIGNAL \cycle[19]~71_combout\ : std_logic;
SIGNAL \cycle[19]~72\ : std_logic;
SIGNAL \cycle[20]~73_combout\ : std_logic;
SIGNAL \cycle[20]~74\ : std_logic;
SIGNAL \cycle[21]~75_combout\ : std_logic;
SIGNAL \cycle[21]~76\ : std_logic;
SIGNAL \cycle[22]~77_combout\ : std_logic;
SIGNAL \cycle[22]~78\ : std_logic;
SIGNAL \cycle[23]~79_combout\ : std_logic;
SIGNAL \cycle[23]~80\ : std_logic;
SIGNAL \cycle[24]~81_combout\ : std_logic;
SIGNAL \cycle[24]~82\ : std_logic;
SIGNAL \cycle[25]~83_combout\ : std_logic;
SIGNAL \cycle[25]~84\ : std_logic;
SIGNAL \cycle[26]~85_combout\ : std_logic;
SIGNAL \cycle[26]~86\ : std_logic;
SIGNAL \cycle[27]~87_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \cycle[27]~88\ : std_logic;
SIGNAL \cycle[28]~89_combout\ : std_logic;
SIGNAL \cycle[28]~90\ : std_logic;
SIGNAL \cycle[29]~91_combout\ : std_logic;
SIGNAL \cycle[29]~92\ : std_logic;
SIGNAL \cycle[30]~93_combout\ : std_logic;
SIGNAL \cycle[30]~94\ : std_logic;
SIGNAL \cycle[31]~95_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Equal4~9_combout\ : std_logic;
SIGNAL \Equal4~10_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \x.C~q\ : std_logic;
SIGNAL \r0~input_o\ : std_logic;
SIGNAL \trace[1]~31_combout\ : std_logic;
SIGNAL \trace[1]~32\ : std_logic;
SIGNAL \trace[2]~33_combout\ : std_logic;
SIGNAL \trace[2]~34\ : std_logic;
SIGNAL \trace[3]~35_combout\ : std_logic;
SIGNAL \trace[3]~36\ : std_logic;
SIGNAL \trace[4]~37_combout\ : std_logic;
SIGNAL \temp[0]~9\ : std_logic;
SIGNAL \temp[1]~11\ : std_logic;
SIGNAL \temp[2]~13\ : std_logic;
SIGNAL \temp[3]~15\ : std_logic;
SIGNAL \temp[4]~16_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~8_wirecell_combout\ : std_logic;
SIGNAL \trace[4]~38\ : std_logic;
SIGNAL \trace[5]~39_combout\ : std_logic;
SIGNAL \trace[5]~40\ : std_logic;
SIGNAL \trace[6]~41_combout\ : std_logic;
SIGNAL \trace[6]~42\ : std_logic;
SIGNAL \trace[7]~43_combout\ : std_logic;
SIGNAL \trace[7]~44\ : std_logic;
SIGNAL \trace[8]~45_combout\ : std_logic;
SIGNAL \trace[8]~46\ : std_logic;
SIGNAL \trace[9]~47_combout\ : std_logic;
SIGNAL \trace[9]~48\ : std_logic;
SIGNAL \trace[10]~49_combout\ : std_logic;
SIGNAL \trace[10]~50\ : std_logic;
SIGNAL \trace[11]~51_combout\ : std_logic;
SIGNAL \trace[11]~52\ : std_logic;
SIGNAL \trace[12]~53_combout\ : std_logic;
SIGNAL \trace[12]~54\ : std_logic;
SIGNAL \trace[13]~55_combout\ : std_logic;
SIGNAL \trace[13]~56\ : std_logic;
SIGNAL \trace[14]~57_combout\ : std_logic;
SIGNAL \trace[14]~58\ : std_logic;
SIGNAL \trace[15]~59_combout\ : std_logic;
SIGNAL \trace[15]~60\ : std_logic;
SIGNAL \trace[16]~61_combout\ : std_logic;
SIGNAL \trace[16]~62\ : std_logic;
SIGNAL \trace[17]~63_combout\ : std_logic;
SIGNAL \trace[17]~64\ : std_logic;
SIGNAL \trace[18]~65_combout\ : std_logic;
SIGNAL \trace[18]~66\ : std_logic;
SIGNAL \trace[19]~67_combout\ : std_logic;
SIGNAL \trace[19]~68\ : std_logic;
SIGNAL \trace[20]~69_combout\ : std_logic;
SIGNAL \trace[20]~70\ : std_logic;
SIGNAL \trace[21]~71_combout\ : std_logic;
SIGNAL \trace[21]~72\ : std_logic;
SIGNAL \trace[22]~73_combout\ : std_logic;
SIGNAL \trace[22]~74\ : std_logic;
SIGNAL \trace[23]~75_combout\ : std_logic;
SIGNAL \trace[23]~76\ : std_logic;
SIGNAL \trace[24]~77_combout\ : std_logic;
SIGNAL \trace[24]~78\ : std_logic;
SIGNAL \trace[25]~79_combout\ : std_logic;
SIGNAL \trace[25]~80\ : std_logic;
SIGNAL \trace[26]~81_combout\ : std_logic;
SIGNAL \trace[26]~82\ : std_logic;
SIGNAL \trace[27]~83_combout\ : std_logic;
SIGNAL \trace[27]~84\ : std_logic;
SIGNAL \trace[28]~85_combout\ : std_logic;
SIGNAL \trace[28]~86\ : std_logic;
SIGNAL \trace[29]~87_combout\ : std_logic;
SIGNAL \trace[29]~88\ : std_logic;
SIGNAL \trace[30]~89_combout\ : std_logic;
SIGNAL \trace[30]~90\ : std_logic;
SIGNAL \trace[31]~91_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \vectorR~7_combout\ : std_logic;
SIGNAL \temp[4]~17\ : std_logic;
SIGNAL \temp[5]~18_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~10_wirecell_combout\ : std_logic;
SIGNAL \vectorR~4_combout\ : std_logic;
SIGNAL \temp[5]~19\ : std_logic;
SIGNAL \temp[6]~21\ : std_logic;
SIGNAL \temp[7]~22_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \season~5_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \season~4_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \season~3_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \season~2_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62_combout\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Equal6~9_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~10_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \season~6_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \vectorR~6_combout\ : std_logic;
SIGNAL \temp[6]~20_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~12_wirecell_combout\ : std_logic;
SIGNAL \vectorR~5_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \vectorR~3_combout\ : std_logic;
SIGNAL \temp[2]~12_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~4_wirecell_combout\ : std_logic;
SIGNAL \vectorR~0_combout\ : std_logic;
SIGNAL \temp[1]~10_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~2_wirecell_combout\ : std_logic;
SIGNAL \vectorR~1_combout\ : std_logic;
SIGNAL \temp[3]~14_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~6_wirecell_combout\ : std_logic;
SIGNAL \vectorR~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \x~18_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \x.B~q\ : std_logic;
SIGNAL \count[28]~38_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \x.A~q\ : std_logic;
SIGNAL \g0~input_o\ : std_logic;
SIGNAL \vectorG~0_combout\ : std_logic;
SIGNAL \vectorG~3_combout\ : std_logic;
SIGNAL \vectorG~1_combout\ : std_logic;
SIGNAL \vectorG~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \vectorG~7_combout\ : std_logic;
SIGNAL \vectorG~4_combout\ : std_logic;
SIGNAL \vectorG~6_combout\ : std_logic;
SIGNAL \vectorG~5_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \count[28]~63_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \x.E~q\ : std_logic;
SIGNAL \count[28]~37_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \x.F~q\ : std_logic;
SIGNAL \count[28]~64_combout\ : std_logic;
SIGNAL \count[28]~65_combout\ : std_logic;
SIGNAL \count[28]~111_combout\ : std_logic;
SIGNAL \count[28]~60_combout\ : std_logic;
SIGNAL \count[28]~61_combout\ : std_logic;
SIGNAL \count[28]~62_combout\ : std_logic;
SIGNAL \count[28]~66_combout\ : std_logic;
SIGNAL \count[28]~112_combout\ : std_logic;
SIGNAL \count[0]~41\ : std_logic;
SIGNAL \count[1]~42_combout\ : std_logic;
SIGNAL \count[1]~43\ : std_logic;
SIGNAL \count[2]~44_combout\ : std_logic;
SIGNAL \count[2]~45\ : std_logic;
SIGNAL \count[3]~46_combout\ : std_logic;
SIGNAL \count[3]~47\ : std_logic;
SIGNAL \count[4]~48_combout\ : std_logic;
SIGNAL \count[4]~49\ : std_logic;
SIGNAL \count[5]~50_combout\ : std_logic;
SIGNAL \count[5]~51\ : std_logic;
SIGNAL \count[6]~52_combout\ : std_logic;
SIGNAL \count[6]~53\ : std_logic;
SIGNAL \count[7]~54_combout\ : std_logic;
SIGNAL \count[7]~55\ : std_logic;
SIGNAL \count[8]~56_combout\ : std_logic;
SIGNAL \count[8]~57\ : std_logic;
SIGNAL \count[9]~58_combout\ : std_logic;
SIGNAL \count[9]~59\ : std_logic;
SIGNAL \count[10]~67_combout\ : std_logic;
SIGNAL \count[10]~68\ : std_logic;
SIGNAL \count[11]~69_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \season[31]~1_combout\ : std_logic;
SIGNAL \temp[0]~8_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~0_wirecell_combout\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \vectorB~3_combout\ : std_logic;
SIGNAL \vectorB~0_combout\ : std_logic;
SIGNAL \vectorB~1_combout\ : std_logic;
SIGNAL \vectorB~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \vectorB~7_combout\ : std_logic;
SIGNAL \vectorB~4_combout\ : std_logic;
SIGNAL \vectorB~5_combout\ : std_logic;
SIGNAL \vectorB~6_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \x.G~q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \count[28]~39_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Equal7~8_combout\ : std_logic;
SIGNAL \Equal7~7_combout\ : std_logic;
SIGNAL \Equal7~9_combout\ : std_logic;
SIGNAL \Equal7~10_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \x.D~q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \serial~reg0_q\ : std_logic;
SIGNAL \e1~0_combout\ : std_logic;
SIGNAL \e1~reg0_q\ : std_logic;
SIGNAL \f1~0_combout\ : std_logic;
SIGNAL \f1~1_combout\ : std_logic;
SIGNAL \f1~reg0_q\ : std_logic;
SIGNAL \g1~0_combout\ : std_logic;
SIGNAL \g1~reg0_q\ : std_logic;
SIGNAL vectorB : std_logic_vector(7 DOWNTO 0);
SIGNAL trc : std_logic_vector(7 DOWNTO 0);
SIGNAL trace : std_logic_vector(31 DOWNTO 0);
SIGNAL temp : std_logic_vector(31 DOWNTO 0);
SIGNAL season : std_logic_vector(31 DOWNTO 0);
SIGNAL cycle : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL bits : std_logic_vector(31 DOWNTO 0);
SIGNAL vectorG : std_logic_vector(7 DOWNTO 0);
SIGNAL vectorR : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Resetn~input_o\ : std_logic;
SIGNAL \ALT_INV_x.G~q\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Resetn <= Resetn;
ww_r0 <= r0;
ww_g0 <= g0;
ww_b0 <= b0;
ww_i0 <= i0;
ww_i1 <= i1;
ww_i2 <= i2;
ww_i3 <= i3;
ww_i4 <= i4;
ww_i5 <= i5;
ww_i6 <= i6;
ww_i7 <= i7;
ww_s <= s;
serial <= ww_serial;
a1 <= ww_a1;
b1 <= ww_b1;
c1 <= ww_c1;
d1 <= ww_d1;
e1 <= ww_e1;
f1 <= ww_f1;
g1 <= ww_g1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_Resetn~input_o\ <= NOT \Resetn~input_o\;
\ALT_INV_x.G~q\ <= NOT \x.G~q\;

-- Location: IOOBUF_X107_Y0_N2
\serial~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial~reg0_q\,
	devoe => ww_devoe,
	o => \serial~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\a1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a1~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\b1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b1~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\c1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \c1~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\d1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\e1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e1~reg0_q\,
	devoe => ww_devoe,
	o => \e1~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\f1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1~reg0_q\,
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\g1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1~reg0_q\,
	devoe => ww_devoe,
	o => \g1~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G4
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X91_Y25_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = bits(0) $ (VCC)
-- \Add3~1\ = CARRY(bits(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bits(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: IOIBUF_X115_Y14_N8
\Resetn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Resetn,
	o => \Resetn~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\s~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: LCCOMB_X83_Y24_N0
\trace[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[0]~93_combout\ = !trace(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trace(0),
	combout => \trace[0]~93_combout\);

-- Location: LCCOMB_X87_Y27_N0
\count[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~40_combout\ = count(0) $ (VCC)
-- \count[0]~41\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~40_combout\,
	cout => \count[0]~41\);

-- Location: LCCOMB_X86_Y27_N8
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (count(1) & (!count(0) & (count(4) & !count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datac => count(4),
	datad => count(5),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X87_Y25_N16
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(11) & (!count(6) & (!count(7) & !count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(6),
	datac => count(7),
	datad => count(8),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X87_Y27_N22
\count[11]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~69_combout\ = (count(11) & (!\count[10]~68\)) # (!count(11) & ((\count[10]~68\) # (GND)))
-- \count[11]~70\ = CARRY((!\count[10]~68\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~68\,
	combout => \count[11]~69_combout\,
	cout => \count[11]~70\);

-- Location: LCCOMB_X87_Y27_N24
\count[12]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~71_combout\ = (count(12) & (\count[11]~70\ $ (GND))) # (!count(12) & (!\count[11]~70\ & VCC))
-- \count[12]~72\ = CARRY((count(12) & !\count[11]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~70\,
	combout => \count[12]~71_combout\,
	cout => \count[12]~72\);

-- Location: FF_X87_Y27_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[12]~71_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X87_Y27_N26
\count[13]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~73_combout\ = (count(13) & (!\count[12]~72\)) # (!count(13) & ((\count[12]~72\) # (GND)))
-- \count[13]~74\ = CARRY((!\count[12]~72\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~72\,
	combout => \count[13]~73_combout\,
	cout => \count[13]~74\);

-- Location: FF_X87_Y25_N25
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \count[13]~73_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X87_Y27_N28
\count[14]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~75_combout\ = (count(14) & (\count[13]~74\ $ (GND))) # (!count(14) & (!\count[13]~74\ & VCC))
-- \count[14]~76\ = CARRY((count(14) & !\count[13]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~74\,
	combout => \count[14]~75_combout\,
	cout => \count[14]~76\);

-- Location: FF_X87_Y27_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[14]~75_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X87_Y27_N30
\count[15]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~77_combout\ = (count(15) & (!\count[14]~76\)) # (!count(15) & ((\count[14]~76\) # (GND)))
-- \count[15]~78\ = CARRY((!\count[14]~76\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~76\,
	combout => \count[15]~77_combout\,
	cout => \count[15]~78\);

-- Location: FF_X87_Y27_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[15]~77_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X87_Y26_N0
\count[16]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~79_combout\ = (count(16) & (\count[15]~78\ $ (GND))) # (!count(16) & (!\count[15]~78\ & VCC))
-- \count[16]~80\ = CARRY((count(16) & !\count[15]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~78\,
	combout => \count[16]~79_combout\,
	cout => \count[16]~80\);

-- Location: FF_X87_Y26_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[16]~79_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X87_Y26_N2
\count[17]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~81_combout\ = (count(17) & (!\count[16]~80\)) # (!count(17) & ((\count[16]~80\) # (GND)))
-- \count[17]~82\ = CARRY((!\count[16]~80\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \count[16]~80\,
	combout => \count[17]~81_combout\,
	cout => \count[17]~82\);

-- Location: FF_X87_Y25_N15
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \count[17]~81_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X87_Y26_N4
\count[18]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~83_combout\ = (count(18) & (\count[17]~82\ $ (GND))) # (!count(18) & (!\count[17]~82\ & VCC))
-- \count[18]~84\ = CARRY((count(18) & !\count[17]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~82\,
	combout => \count[18]~83_combout\,
	cout => \count[18]~84\);

-- Location: FF_X88_Y26_N9
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \count[18]~83_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X87_Y26_N6
\count[19]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~85_combout\ = (count(19) & (!\count[18]~84\)) # (!count(19) & ((\count[18]~84\) # (GND)))
-- \count[19]~86\ = CARRY((!\count[18]~84\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \count[18]~84\,
	combout => \count[19]~85_combout\,
	cout => \count[19]~86\);

-- Location: FF_X88_Y26_N23
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \count[19]~85_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X87_Y26_N8
\count[20]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~87_combout\ = (count(20) & (\count[19]~86\ $ (GND))) # (!count(20) & (!\count[19]~86\ & VCC))
-- \count[20]~88\ = CARRY((count(20) & !\count[19]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~86\,
	combout => \count[20]~87_combout\,
	cout => \count[20]~88\);

-- Location: FF_X88_Y26_N25
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \count[20]~87_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X87_Y26_N10
\count[21]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~89_combout\ = (count(21) & (!\count[20]~88\)) # (!count(21) & ((\count[20]~88\) # (GND)))
-- \count[21]~90\ = CARRY((!\count[20]~88\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~88\,
	combout => \count[21]~89_combout\,
	cout => \count[21]~90\);

-- Location: FF_X88_Y26_N19
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \count[21]~89_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X87_Y26_N12
\count[22]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~91_combout\ = (count(22) & (\count[21]~90\ $ (GND))) # (!count(22) & (!\count[21]~90\ & VCC))
-- \count[22]~92\ = CARRY((count(22) & !\count[21]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~90\,
	combout => \count[22]~91_combout\,
	cout => \count[22]~92\);

-- Location: FF_X87_Y26_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[22]~91_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X87_Y26_N14
\count[23]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~93_combout\ = (count(23) & (!\count[22]~92\)) # (!count(23) & ((\count[22]~92\) # (GND)))
-- \count[23]~94\ = CARRY((!\count[22]~92\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~92\,
	combout => \count[23]~93_combout\,
	cout => \count[23]~94\);

-- Location: FF_X87_Y26_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[23]~93_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X87_Y26_N16
\count[24]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~95_combout\ = (count(24) & (\count[23]~94\ $ (GND))) # (!count(24) & (!\count[23]~94\ & VCC))
-- \count[24]~96\ = CARRY((count(24) & !\count[23]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~94\,
	combout => \count[24]~95_combout\,
	cout => \count[24]~96\);

-- Location: FF_X87_Y26_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[24]~95_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X87_Y26_N18
\count[25]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~97_combout\ = (count(25) & (!\count[24]~96\)) # (!count(25) & ((\count[24]~96\) # (GND)))
-- \count[25]~98\ = CARRY((!\count[24]~96\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~96\,
	combout => \count[25]~97_combout\,
	cout => \count[25]~98\);

-- Location: FF_X88_Y25_N21
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \count[25]~97_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X87_Y26_N20
\count[26]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[26]~99_combout\ = (count(26) & (\count[25]~98\ $ (GND))) # (!count(26) & (!\count[25]~98\ & VCC))
-- \count[26]~100\ = CARRY((count(26) & !\count[25]~98\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \count[25]~98\,
	combout => \count[26]~99_combout\,
	cout => \count[26]~100\);

-- Location: FF_X87_Y26_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[26]~99_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X87_Y26_N22
\count[27]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[27]~101_combout\ = (count(27) & (!\count[26]~100\)) # (!count(27) & ((\count[26]~100\) # (GND)))
-- \count[27]~102\ = CARRY((!\count[26]~100\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \count[26]~100\,
	combout => \count[27]~101_combout\,
	cout => \count[27]~102\);

-- Location: FF_X87_Y26_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[27]~101_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X87_Y26_N24
\count[28]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~103_combout\ = (count(28) & (\count[27]~102\ $ (GND))) # (!count(28) & (!\count[27]~102\ & VCC))
-- \count[28]~104\ = CARRY((count(28) & !\count[27]~102\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \count[27]~102\,
	combout => \count[28]~103_combout\,
	cout => \count[28]~104\);

-- Location: FF_X87_Y25_N1
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \count[28]~103_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X87_Y26_N26
\count[29]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[29]~105_combout\ = (count(29) & (!\count[28]~104\)) # (!count(29) & ((\count[28]~104\) # (GND)))
-- \count[29]~106\ = CARRY((!\count[28]~104\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \count[28]~104\,
	combout => \count[29]~105_combout\,
	cout => \count[29]~106\);

-- Location: FF_X87_Y26_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[29]~105_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X87_Y26_N28
\count[30]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[30]~107_combout\ = (count(30) & (\count[29]~106\ $ (GND))) # (!count(30) & (!\count[29]~106\ & VCC))
-- \count[30]~108\ = CARRY((count(30) & !\count[29]~106\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \count[29]~106\,
	combout => \count[30]~107_combout\,
	cout => \count[30]~108\);

-- Location: FF_X87_Y26_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[30]~107_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X87_Y26_N30
\count[31]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[31]~109_combout\ = count(31) $ (\count[30]~108\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(31),
	cin => \count[30]~108\,
	combout => \count[31]~109_combout\);

-- Location: FF_X87_Y25_N27
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \count[31]~109_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X87_Y25_N0
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(26) & (!count(27) & (!count(28) & !count(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(27),
	datac => count(28),
	datad => count(29),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X87_Y25_N26
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(30) & (!count(31) & \Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datac => count(31),
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X87_Y25_N12
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(25) & (!count(23) & (!count(24) & !count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => count(23),
	datac => count(24),
	datad => count(22),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X87_Y25_N14
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(14) & (!count(16) & (!count(17) & !count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(16),
	datac => count(17),
	datad => count(15),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X88_Y26_N12
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(19) & (!count(20) & (!count(18) & !count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(20),
	datac => count(18),
	datad => count(21),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X87_Y25_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(9) & (!count(10) & (!count(13) & !count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(10),
	datac => count(13),
	datad => count(12),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X87_Y25_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X87_Y25_N2
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X87_Y25_N4
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\Equal0~9_combout\ & (count(2) & (count(3) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => count(2),
	datac => count(3),
	datad => \Equal0~8_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X87_Y25_N30
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (count(1) & (count(0) & (!count(3) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datac => count(3),
	datad => count(4),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X87_Y25_N10
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (count(5) & !count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(5),
	datad => count(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X87_Y25_N28
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal2~0_combout\ & (\Equal0~7_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X87_Y25_N8
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Equal2~2_combout\ & \Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~2_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X87_Y25_N6
\count[28]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~36_combout\ = (\x.G~q\ & ((\Mux2~4_combout\ & (\Equal3~0_combout\)) # (!\Mux2~4_combout\ & ((\Equal2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.G~q\,
	datab => \Equal3~0_combout\,
	datac => \Equal2~3_combout\,
	datad => \Mux2~4_combout\,
	combout => \count[28]~36_combout\);

-- Location: LCCOMB_X85_Y24_N0
\cycle[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[0]~32_combout\ = cycle(0) $ (VCC)
-- \cycle[0]~33\ = CARRY(cycle(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cycle(0),
	datad => VCC,
	combout => \cycle[0]~32_combout\,
	cout => \cycle[0]~33\);

-- Location: LCCOMB_X86_Y25_N14
\season[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \season[31]~0_combout\ = (!\Equal5~3_combout\ & (\x.C~q\ & !\Equal4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \x.C~q\,
	datad => \Equal4~10_combout\,
	combout => \season[31]~0_combout\);

-- Location: LCCOMB_X86_Y25_N16
\cycle[14]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[14]~34_combout\ = (\season[31]~0_combout\) # ((\count[28]~36_combout\ & !\Equal7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[28]~36_combout\,
	datac => \season[31]~0_combout\,
	datad => \Equal7~10_combout\,
	combout => \cycle[14]~34_combout\);

-- Location: FF_X85_Y24_N1
\cycle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[0]~32_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(0));

-- Location: LCCOMB_X85_Y24_N2
\cycle[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[1]~35_combout\ = (cycle(1) & (!\cycle[0]~33\)) # (!cycle(1) & ((\cycle[0]~33\) # (GND)))
-- \cycle[1]~36\ = CARRY((!\cycle[0]~33\) # (!cycle(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(1),
	datad => VCC,
	cin => \cycle[0]~33\,
	combout => \cycle[1]~35_combout\,
	cout => \cycle[1]~36\);

-- Location: FF_X85_Y24_N3
\cycle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[1]~35_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(1));

-- Location: LCCOMB_X85_Y24_N4
\cycle[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[2]~37_combout\ = (cycle(2) & (\cycle[1]~36\ $ (GND))) # (!cycle(2) & (!\cycle[1]~36\ & VCC))
-- \cycle[2]~38\ = CARRY((cycle(2) & !\cycle[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(2),
	datad => VCC,
	cin => \cycle[1]~36\,
	combout => \cycle[2]~37_combout\,
	cout => \cycle[2]~38\);

-- Location: FF_X85_Y24_N5
\cycle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[2]~37_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(2));

-- Location: LCCOMB_X85_Y24_N6
\cycle[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[3]~39_combout\ = (cycle(3) & (!\cycle[2]~38\)) # (!cycle(3) & ((\cycle[2]~38\) # (GND)))
-- \cycle[3]~40\ = CARRY((!\cycle[2]~38\) # (!cycle(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(3),
	datad => VCC,
	cin => \cycle[2]~38\,
	combout => \cycle[3]~39_combout\,
	cout => \cycle[3]~40\);

-- Location: FF_X85_Y24_N7
\cycle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[3]~39_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(3));

-- Location: LCCOMB_X85_Y24_N8
\cycle[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[4]~41_combout\ = (cycle(4) & (\cycle[3]~40\ $ (GND))) # (!cycle(4) & (!\cycle[3]~40\ & VCC))
-- \cycle[4]~42\ = CARRY((cycle(4) & !\cycle[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(4),
	datad => VCC,
	cin => \cycle[3]~40\,
	combout => \cycle[4]~41_combout\,
	cout => \cycle[4]~42\);

-- Location: FF_X85_Y24_N9
\cycle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[4]~41_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(4));

-- Location: LCCOMB_X85_Y24_N10
\cycle[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[5]~43_combout\ = (cycle(5) & (!\cycle[4]~42\)) # (!cycle(5) & ((\cycle[4]~42\) # (GND)))
-- \cycle[5]~44\ = CARRY((!\cycle[4]~42\) # (!cycle(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(5),
	datad => VCC,
	cin => \cycle[4]~42\,
	combout => \cycle[5]~43_combout\,
	cout => \cycle[5]~44\);

-- Location: FF_X85_Y24_N11
\cycle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[5]~43_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(5));

-- Location: LCCOMB_X85_Y24_N12
\cycle[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[6]~45_combout\ = (cycle(6) & (\cycle[5]~44\ $ (GND))) # (!cycle(6) & (!\cycle[5]~44\ & VCC))
-- \cycle[6]~46\ = CARRY((cycle(6) & !\cycle[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(6),
	datad => VCC,
	cin => \cycle[5]~44\,
	combout => \cycle[6]~45_combout\,
	cout => \cycle[6]~46\);

-- Location: FF_X85_Y24_N13
\cycle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[6]~45_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(6));

-- Location: LCCOMB_X85_Y24_N14
\cycle[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[7]~47_combout\ = (cycle(7) & (!\cycle[6]~46\)) # (!cycle(7) & ((\cycle[6]~46\) # (GND)))
-- \cycle[7]~48\ = CARRY((!\cycle[6]~46\) # (!cycle(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(7),
	datad => VCC,
	cin => \cycle[6]~46\,
	combout => \cycle[7]~47_combout\,
	cout => \cycle[7]~48\);

-- Location: FF_X85_Y24_N15
\cycle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[7]~47_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(7));

-- Location: LCCOMB_X85_Y24_N16
\cycle[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[8]~49_combout\ = (cycle(8) & (\cycle[7]~48\ $ (GND))) # (!cycle(8) & (!\cycle[7]~48\ & VCC))
-- \cycle[8]~50\ = CARRY((cycle(8) & !\cycle[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(8),
	datad => VCC,
	cin => \cycle[7]~48\,
	combout => \cycle[8]~49_combout\,
	cout => \cycle[8]~50\);

-- Location: FF_X85_Y24_N17
\cycle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[8]~49_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(8));

-- Location: LCCOMB_X85_Y24_N18
\cycle[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[9]~51_combout\ = (cycle(9) & (!\cycle[8]~50\)) # (!cycle(9) & ((\cycle[8]~50\) # (GND)))
-- \cycle[9]~52\ = CARRY((!\cycle[8]~50\) # (!cycle(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(9),
	datad => VCC,
	cin => \cycle[8]~50\,
	combout => \cycle[9]~51_combout\,
	cout => \cycle[9]~52\);

-- Location: FF_X85_Y24_N19
\cycle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[9]~51_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(9));

-- Location: LCCOMB_X85_Y24_N20
\cycle[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[10]~53_combout\ = (cycle(10) & (\cycle[9]~52\ $ (GND))) # (!cycle(10) & (!\cycle[9]~52\ & VCC))
-- \cycle[10]~54\ = CARRY((cycle(10) & !\cycle[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(10),
	datad => VCC,
	cin => \cycle[9]~52\,
	combout => \cycle[10]~53_combout\,
	cout => \cycle[10]~54\);

-- Location: FF_X85_Y24_N21
\cycle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[10]~53_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(10));

-- Location: LCCOMB_X85_Y24_N22
\cycle[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[11]~55_combout\ = (cycle(11) & (!\cycle[10]~54\)) # (!cycle(11) & ((\cycle[10]~54\) # (GND)))
-- \cycle[11]~56\ = CARRY((!\cycle[10]~54\) # (!cycle(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(11),
	datad => VCC,
	cin => \cycle[10]~54\,
	combout => \cycle[11]~55_combout\,
	cout => \cycle[11]~56\);

-- Location: FF_X85_Y24_N23
\cycle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[11]~55_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(11));

-- Location: LCCOMB_X86_Y24_N2
\Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (cycle(8)) # ((cycle(9)) # ((cycle(10)) # (cycle(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle(8),
	datab => cycle(9),
	datac => cycle(10),
	datad => cycle(11),
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X86_Y24_N0
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (cycle(1)) # ((cycle(3)) # ((cycle(0)) # (cycle(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle(1),
	datab => cycle(3),
	datac => cycle(0),
	datad => cycle(2),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X86_Y25_N18
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!cycle(7)) # (!cycle(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cycle(6),
	datad => cycle(7),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X86_Y25_N4
\Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = ((\Equal4~0_combout\) # ((\Equal4~1_combout\) # (!cycle(5)))) # (!cycle(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle(4),
	datab => \Equal4~0_combout\,
	datac => cycle(5),
	datad => \Equal4~1_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X85_Y24_N24
\cycle[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[12]~57_combout\ = (cycle(12) & (\cycle[11]~56\ $ (GND))) # (!cycle(12) & (!\cycle[11]~56\ & VCC))
-- \cycle[12]~58\ = CARRY((cycle(12) & !\cycle[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(12),
	datad => VCC,
	cin => \cycle[11]~56\,
	combout => \cycle[12]~57_combout\,
	cout => \cycle[12]~58\);

-- Location: FF_X85_Y24_N25
\cycle[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[12]~57_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(12));

-- Location: LCCOMB_X85_Y24_N26
\cycle[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[13]~59_combout\ = (cycle(13) & (!\cycle[12]~58\)) # (!cycle(13) & ((\cycle[12]~58\) # (GND)))
-- \cycle[13]~60\ = CARRY((!\cycle[12]~58\) # (!cycle(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(13),
	datad => VCC,
	cin => \cycle[12]~58\,
	combout => \cycle[13]~59_combout\,
	cout => \cycle[13]~60\);

-- Location: FF_X85_Y24_N27
\cycle[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[13]~59_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(13));

-- Location: LCCOMB_X85_Y24_N28
\cycle[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[14]~61_combout\ = (cycle(14) & (\cycle[13]~60\ $ (GND))) # (!cycle(14) & (!\cycle[13]~60\ & VCC))
-- \cycle[14]~62\ = CARRY((cycle(14) & !\cycle[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(14),
	datad => VCC,
	cin => \cycle[13]~60\,
	combout => \cycle[14]~61_combout\,
	cout => \cycle[14]~62\);

-- Location: FF_X85_Y24_N29
\cycle[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[14]~61_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(14));

-- Location: LCCOMB_X85_Y24_N30
\cycle[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[15]~63_combout\ = (cycle(15) & (!\cycle[14]~62\)) # (!cycle(15) & ((\cycle[14]~62\) # (GND)))
-- \cycle[15]~64\ = CARRY((!\cycle[14]~62\) # (!cycle(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(15),
	datad => VCC,
	cin => \cycle[14]~62\,
	combout => \cycle[15]~63_combout\,
	cout => \cycle[15]~64\);

-- Location: FF_X85_Y24_N31
\cycle[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[15]~63_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(15));

-- Location: LCCOMB_X86_Y24_N4
\Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (cycle(12)) # ((cycle(14)) # ((cycle(13)) # (cycle(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle(12),
	datab => cycle(14),
	datac => cycle(13),
	datad => cycle(15),
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X85_Y23_N0
\cycle[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[16]~65_combout\ = (cycle(16) & (\cycle[15]~64\ $ (GND))) # (!cycle(16) & (!\cycle[15]~64\ & VCC))
-- \cycle[16]~66\ = CARRY((cycle(16) & !\cycle[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(16),
	datad => VCC,
	cin => \cycle[15]~64\,
	combout => \cycle[16]~65_combout\,
	cout => \cycle[16]~66\);

-- Location: FF_X85_Y23_N1
\cycle[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[16]~65_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(16));

-- Location: LCCOMB_X85_Y23_N2
\cycle[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[17]~67_combout\ = (cycle(17) & (!\cycle[16]~66\)) # (!cycle(17) & ((\cycle[16]~66\) # (GND)))
-- \cycle[17]~68\ = CARRY((!\cycle[16]~66\) # (!cycle(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(17),
	datad => VCC,
	cin => \cycle[16]~66\,
	combout => \cycle[17]~67_combout\,
	cout => \cycle[17]~68\);

-- Location: FF_X85_Y23_N3
\cycle[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[17]~67_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(17));

-- Location: LCCOMB_X85_Y23_N4
\cycle[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[18]~69_combout\ = (cycle(18) & (\cycle[17]~68\ $ (GND))) # (!cycle(18) & (!\cycle[17]~68\ & VCC))
-- \cycle[18]~70\ = CARRY((cycle(18) & !\cycle[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(18),
	datad => VCC,
	cin => \cycle[17]~68\,
	combout => \cycle[18]~69_combout\,
	cout => \cycle[18]~70\);

-- Location: FF_X85_Y23_N5
\cycle[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[18]~69_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(18));

-- Location: LCCOMB_X85_Y23_N6
\cycle[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[19]~71_combout\ = (cycle(19) & (!\cycle[18]~70\)) # (!cycle(19) & ((\cycle[18]~70\) # (GND)))
-- \cycle[19]~72\ = CARRY((!\cycle[18]~70\) # (!cycle(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(19),
	datad => VCC,
	cin => \cycle[18]~70\,
	combout => \cycle[19]~71_combout\,
	cout => \cycle[19]~72\);

-- Location: FF_X85_Y23_N7
\cycle[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[19]~71_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(19));

-- Location: LCCOMB_X85_Y23_N8
\cycle[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[20]~73_combout\ = (cycle(20) & (\cycle[19]~72\ $ (GND))) # (!cycle(20) & (!\cycle[19]~72\ & VCC))
-- \cycle[20]~74\ = CARRY((cycle(20) & !\cycle[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(20),
	datad => VCC,
	cin => \cycle[19]~72\,
	combout => \cycle[20]~73_combout\,
	cout => \cycle[20]~74\);

-- Location: FF_X85_Y23_N9
\cycle[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[20]~73_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(20));

-- Location: LCCOMB_X85_Y23_N10
\cycle[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[21]~75_combout\ = (cycle(21) & (!\cycle[20]~74\)) # (!cycle(21) & ((\cycle[20]~74\) # (GND)))
-- \cycle[21]~76\ = CARRY((!\cycle[20]~74\) # (!cycle(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(21),
	datad => VCC,
	cin => \cycle[20]~74\,
	combout => \cycle[21]~75_combout\,
	cout => \cycle[21]~76\);

-- Location: FF_X85_Y23_N11
\cycle[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[21]~75_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(21));

-- Location: LCCOMB_X85_Y23_N12
\cycle[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[22]~77_combout\ = (cycle(22) & (\cycle[21]~76\ $ (GND))) # (!cycle(22) & (!\cycle[21]~76\ & VCC))
-- \cycle[22]~78\ = CARRY((cycle(22) & !\cycle[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(22),
	datad => VCC,
	cin => \cycle[21]~76\,
	combout => \cycle[22]~77_combout\,
	cout => \cycle[22]~78\);

-- Location: FF_X85_Y23_N13
\cycle[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[22]~77_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(22));

-- Location: LCCOMB_X85_Y23_N14
\cycle[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[23]~79_combout\ = (cycle(23) & (!\cycle[22]~78\)) # (!cycle(23) & ((\cycle[22]~78\) # (GND)))
-- \cycle[23]~80\ = CARRY((!\cycle[22]~78\) # (!cycle(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(23),
	datad => VCC,
	cin => \cycle[22]~78\,
	combout => \cycle[23]~79_combout\,
	cout => \cycle[23]~80\);

-- Location: FF_X85_Y23_N15
\cycle[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[23]~79_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(23));

-- Location: LCCOMB_X85_Y23_N16
\cycle[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[24]~81_combout\ = (cycle(24) & (\cycle[23]~80\ $ (GND))) # (!cycle(24) & (!\cycle[23]~80\ & VCC))
-- \cycle[24]~82\ = CARRY((cycle(24) & !\cycle[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(24),
	datad => VCC,
	cin => \cycle[23]~80\,
	combout => \cycle[24]~81_combout\,
	cout => \cycle[24]~82\);

-- Location: FF_X85_Y23_N17
\cycle[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[24]~81_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(24));

-- Location: LCCOMB_X85_Y23_N18
\cycle[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[25]~83_combout\ = (cycle(25) & (!\cycle[24]~82\)) # (!cycle(25) & ((\cycle[24]~82\) # (GND)))
-- \cycle[25]~84\ = CARRY((!\cycle[24]~82\) # (!cycle(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(25),
	datad => VCC,
	cin => \cycle[24]~82\,
	combout => \cycle[25]~83_combout\,
	cout => \cycle[25]~84\);

-- Location: FF_X85_Y23_N19
\cycle[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[25]~83_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(25));

-- Location: LCCOMB_X85_Y23_N20
\cycle[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[26]~85_combout\ = (cycle(26) & (\cycle[25]~84\ $ (GND))) # (!cycle(26) & (!\cycle[25]~84\ & VCC))
-- \cycle[26]~86\ = CARRY((cycle(26) & !\cycle[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(26),
	datad => VCC,
	cin => \cycle[25]~84\,
	combout => \cycle[26]~85_combout\,
	cout => \cycle[26]~86\);

-- Location: FF_X85_Y23_N21
\cycle[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[26]~85_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(26));

-- Location: LCCOMB_X85_Y23_N22
\cycle[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[27]~87_combout\ = (cycle(27) & (!\cycle[26]~86\)) # (!cycle(27) & ((\cycle[26]~86\) # (GND)))
-- \cycle[27]~88\ = CARRY((!\cycle[26]~86\) # (!cycle(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(27),
	datad => VCC,
	cin => \cycle[26]~86\,
	combout => \cycle[27]~87_combout\,
	cout => \cycle[27]~88\);

-- Location: FF_X85_Y23_N23
\cycle[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[27]~87_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(27));

-- Location: LCCOMB_X86_Y25_N10
\Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (cycle(26)) # ((cycle(24)) # ((cycle(25)) # (cycle(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle(26),
	datab => cycle(24),
	datac => cycle(25),
	datad => cycle(27),
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X86_Y23_N2
\Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (cycle(20)) # ((cycle(23)) # ((cycle(21)) # (cycle(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle(20),
	datab => cycle(23),
	datac => cycle(21),
	datad => cycle(22),
	combout => \Equal4~6_combout\);

-- Location: LCCOMB_X85_Y23_N24
\cycle[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[28]~89_combout\ = (cycle(28) & (\cycle[27]~88\ $ (GND))) # (!cycle(28) & (!\cycle[27]~88\ & VCC))
-- \cycle[28]~90\ = CARRY((cycle(28) & !\cycle[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(28),
	datad => VCC,
	cin => \cycle[27]~88\,
	combout => \cycle[28]~89_combout\,
	cout => \cycle[28]~90\);

-- Location: FF_X85_Y23_N25
\cycle[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[28]~89_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(28));

-- Location: LCCOMB_X85_Y23_N26
\cycle[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[29]~91_combout\ = (cycle(29) & (!\cycle[28]~90\)) # (!cycle(29) & ((\cycle[28]~90\) # (GND)))
-- \cycle[29]~92\ = CARRY((!\cycle[28]~90\) # (!cycle(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(29),
	datad => VCC,
	cin => \cycle[28]~90\,
	combout => \cycle[29]~91_combout\,
	cout => \cycle[29]~92\);

-- Location: FF_X85_Y23_N27
\cycle[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[29]~91_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(29));

-- Location: LCCOMB_X85_Y23_N28
\cycle[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[30]~93_combout\ = (cycle(30) & (\cycle[29]~92\ $ (GND))) # (!cycle(30) & (!\cycle[29]~92\ & VCC))
-- \cycle[30]~94\ = CARRY((cycle(30) & !\cycle[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cycle(30),
	datad => VCC,
	cin => \cycle[29]~92\,
	combout => \cycle[30]~93_combout\,
	cout => \cycle[30]~94\);

-- Location: FF_X85_Y23_N29
\cycle[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[30]~93_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(30));

-- Location: LCCOMB_X85_Y23_N30
\cycle[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[31]~95_combout\ = cycle(31) $ (\cycle[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(31),
	cin => \cycle[30]~94\,
	combout => \cycle[31]~95_combout\);

-- Location: FF_X85_Y23_N31
\cycle[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \cycle[31]~95_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \ALT_INV_x.G~q\,
	ena => \cycle[14]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cycle(31));

-- Location: LCCOMB_X85_Y25_N4
\Equal4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (cycle(31)) # ((cycle(28)) # ((cycle(30)) # (cycle(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle(31),
	datab => cycle(28),
	datac => cycle(30),
	datad => cycle(29),
	combout => \Equal4~8_combout\);

-- Location: LCCOMB_X86_Y23_N0
\Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (cycle(16)) # ((cycle(18)) # ((cycle(19)) # (cycle(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle(16),
	datab => cycle(18),
	datac => cycle(19),
	datad => cycle(17),
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X86_Y25_N28
\Equal4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~9_combout\ = (\Equal4~7_combout\) # ((\Equal4~6_combout\) # ((\Equal4~8_combout\) # (\Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~7_combout\,
	datab => \Equal4~6_combout\,
	datac => \Equal4~8_combout\,
	datad => \Equal4~5_combout\,
	combout => \Equal4~9_combout\);

-- Location: LCCOMB_X86_Y25_N6
\Equal4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~10_combout\ = (\Equal4~3_combout\) # ((\Equal4~2_combout\) # ((\Equal4~4_combout\) # (\Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal4~4_combout\,
	datad => \Equal4~9_combout\,
	combout => \Equal4~10_combout\);

-- Location: LCCOMB_X85_Y25_N18
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\x.C~q\ & (\Equal5~3_combout\ & !\Equal4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x.C~q\,
	datac => \Equal5~3_combout\,
	datad => \Equal4~10_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X86_Y25_N8
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\count[28]~36_combout\ & !\Equal7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[28]~36_combout\,
	datac => \Equal7~10_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X86_Y25_N9
\x.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x.C~q\);

-- Location: IOIBUF_X115_Y15_N8
\r0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r0,
	o => \r0~input_o\);

-- Location: LCCOMB_X83_Y24_N2
\trace[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[1]~31_combout\ = (trace(1) & (trace(0) $ (VCC))) # (!trace(1) & (trace(0) & VCC))
-- \trace[1]~32\ = CARRY((trace(1) & trace(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trace(1),
	datab => trace(0),
	datad => VCC,
	combout => \trace[1]~31_combout\,
	cout => \trace[1]~32\);

-- Location: FF_X83_Y24_N3
\trace[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[1]~31_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(1));

-- Location: LCCOMB_X83_Y24_N4
\trace[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[2]~33_combout\ = (trace(2) & (!\trace[1]~32\)) # (!trace(2) & ((\trace[1]~32\) # (GND)))
-- \trace[2]~34\ = CARRY((!\trace[1]~32\) # (!trace(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(2),
	datad => VCC,
	cin => \trace[1]~32\,
	combout => \trace[2]~33_combout\,
	cout => \trace[2]~34\);

-- Location: FF_X83_Y24_N5
\trace[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[2]~33_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(2));

-- Location: LCCOMB_X83_Y24_N6
\trace[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[3]~35_combout\ = (trace(3) & (\trace[2]~34\ $ (GND))) # (!trace(3) & (!\trace[2]~34\ & VCC))
-- \trace[3]~36\ = CARRY((trace(3) & !\trace[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(3),
	datad => VCC,
	cin => \trace[2]~34\,
	combout => \trace[3]~35_combout\,
	cout => \trace[3]~36\);

-- Location: FF_X83_Y24_N7
\trace[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[3]~35_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(3));

-- Location: LCCOMB_X83_Y24_N8
\trace[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[4]~37_combout\ = (trace(4) & (!\trace[3]~36\)) # (!trace(4) & ((\trace[3]~36\) # (GND)))
-- \trace[4]~38\ = CARRY((!\trace[3]~36\) # (!trace(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(4),
	datad => VCC,
	cin => \trace[3]~36\,
	combout => \trace[4]~37_combout\,
	cout => \trace[4]~38\);

-- Location: FF_X83_Y24_N9
\trace[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[4]~37_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(4));

-- Location: LCCOMB_X86_Y23_N8
\temp[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[0]~8_combout\ = (trace(0) & (cycle(0))) # (!trace(0) & ((GND) # (!cycle(0))))
-- \temp[0]~9\ = CARRY((cycle(0)) # (!trace(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trace(0),
	datab => cycle(0),
	datad => VCC,
	combout => \temp[0]~8_combout\,
	cout => \temp[0]~9\);

-- Location: LCCOMB_X86_Y23_N10
\temp[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[1]~10_combout\ = ((cycle(1) $ (trace(1) $ (\temp[0]~9\)))) # (GND)
-- \temp[1]~11\ = CARRY((cycle(1) & (trace(1) & !\temp[0]~9\)) # (!cycle(1) & ((trace(1)) # (!\temp[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(1),
	datab => trace(1),
	datad => VCC,
	cin => \temp[0]~9\,
	combout => \temp[1]~10_combout\,
	cout => \temp[1]~11\);

-- Location: LCCOMB_X86_Y23_N12
\temp[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[2]~12_combout\ = (cycle(2) & ((trace(2) & (!\temp[1]~11\)) # (!trace(2) & ((\temp[1]~11\) # (GND))))) # (!cycle(2) & ((trace(2) & (\temp[1]~11\ & VCC)) # (!trace(2) & (!\temp[1]~11\))))
-- \temp[2]~13\ = CARRY((cycle(2) & ((!\temp[1]~11\) # (!trace(2)))) # (!cycle(2) & (!trace(2) & !\temp[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(2),
	datab => trace(2),
	datad => VCC,
	cin => \temp[1]~11\,
	combout => \temp[2]~12_combout\,
	cout => \temp[2]~13\);

-- Location: LCCOMB_X86_Y23_N14
\temp[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[3]~14_combout\ = ((trace(3) $ (cycle(3) $ (\temp[2]~13\)))) # (GND)
-- \temp[3]~15\ = CARRY((trace(3) & ((!\temp[2]~13\) # (!cycle(3)))) # (!trace(3) & (!cycle(3) & !\temp[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(3),
	datab => cycle(3),
	datad => VCC,
	cin => \temp[2]~13\,
	combout => \temp[3]~14_combout\,
	cout => \temp[3]~15\);

-- Location: LCCOMB_X86_Y23_N16
\temp[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[4]~16_combout\ = (cycle(4) & ((trace(4) & (!\temp[3]~15\)) # (!trace(4) & ((\temp[3]~15\) # (GND))))) # (!cycle(4) & ((trace(4) & (\temp[3]~15\ & VCC)) # (!trace(4) & (!\temp[3]~15\))))
-- \temp[4]~17\ = CARRY((cycle(4) & ((!\temp[3]~15\) # (!trace(4)))) # (!cycle(4) & (!trace(4) & !\temp[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(4),
	datab => trace(4),
	datad => VCC,
	cin => \temp[3]~15\,
	combout => \temp[4]~16_combout\,
	cout => \temp[4]~17\);

-- Location: LCCOMB_X86_Y24_N16
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (cycle(0) & (trace(0) $ (VCC))) # (!cycle(0) & ((trace(0)) # (GND)))
-- \Add1~1\ = CARRY((trace(0)) # (!cycle(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle(0),
	datab => trace(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X86_Y24_N18
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (cycle(1) & ((trace(1) & (!\Add1~1\)) # (!trace(1) & ((\Add1~1\) # (GND))))) # (!cycle(1) & ((trace(1) & (\Add1~1\ & VCC)) # (!trace(1) & (!\Add1~1\))))
-- \Add1~3\ = CARRY((cycle(1) & ((!\Add1~1\) # (!trace(1)))) # (!cycle(1) & (!trace(1) & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(1),
	datab => trace(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X86_Y24_N20
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((cycle(2) $ (trace(2) $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((cycle(2) & (trace(2) & !\Add1~3\)) # (!cycle(2) & ((trace(2)) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(2),
	datab => trace(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X86_Y24_N22
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (trace(3) & ((cycle(3) & (!\Add1~5\)) # (!cycle(3) & (\Add1~5\ & VCC)))) # (!trace(3) & ((cycle(3) & ((\Add1~5\) # (GND))) # (!cycle(3) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((trace(3) & (cycle(3) & !\Add1~5\)) # (!trace(3) & ((cycle(3)) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(3),
	datab => cycle(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X86_Y24_N24
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((cycle(4) $ (trace(4) $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((cycle(4) & (trace(4) & !\Add1~7\)) # (!cycle(4) & ((trace(4)) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(4),
	datab => trace(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X86_Y23_N30
\Add1~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_wirecell_combout\ = !\Add1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~8_combout\,
	combout => \Add1~8_wirecell_combout\);

-- Location: LCCOMB_X83_Y24_N10
\trace[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[5]~39_combout\ = (trace(5) & (\trace[4]~38\ $ (GND))) # (!trace(5) & (!\trace[4]~38\ & VCC))
-- \trace[5]~40\ = CARRY((trace(5) & !\trace[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(5),
	datad => VCC,
	cin => \trace[4]~38\,
	combout => \trace[5]~39_combout\,
	cout => \trace[5]~40\);

-- Location: FF_X83_Y24_N11
\trace[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[5]~39_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(5));

-- Location: LCCOMB_X83_Y24_N12
\trace[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[6]~41_combout\ = (trace(6) & (!\trace[5]~40\)) # (!trace(6) & ((\trace[5]~40\) # (GND)))
-- \trace[6]~42\ = CARRY((!\trace[5]~40\) # (!trace(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(6),
	datad => VCC,
	cin => \trace[5]~40\,
	combout => \trace[6]~41_combout\,
	cout => \trace[6]~42\);

-- Location: FF_X83_Y24_N13
\trace[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[6]~41_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(6));

-- Location: LCCOMB_X83_Y24_N14
\trace[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[7]~43_combout\ = (trace(7) & (\trace[6]~42\ $ (GND))) # (!trace(7) & (!\trace[6]~42\ & VCC))
-- \trace[7]~44\ = CARRY((trace(7) & !\trace[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(7),
	datad => VCC,
	cin => \trace[6]~42\,
	combout => \trace[7]~43_combout\,
	cout => \trace[7]~44\);

-- Location: FF_X83_Y24_N15
\trace[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[7]~43_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(7));

-- Location: LCCOMB_X83_Y24_N16
\trace[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[8]~45_combout\ = (trace(8) & (!\trace[7]~44\)) # (!trace(8) & ((\trace[7]~44\) # (GND)))
-- \trace[8]~46\ = CARRY((!\trace[7]~44\) # (!trace(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(8),
	datad => VCC,
	cin => \trace[7]~44\,
	combout => \trace[8]~45_combout\,
	cout => \trace[8]~46\);

-- Location: FF_X83_Y24_N17
\trace[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[8]~45_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(8));

-- Location: LCCOMB_X83_Y24_N18
\trace[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[9]~47_combout\ = (trace(9) & (\trace[8]~46\ $ (GND))) # (!trace(9) & (!\trace[8]~46\ & VCC))
-- \trace[9]~48\ = CARRY((trace(9) & !\trace[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(9),
	datad => VCC,
	cin => \trace[8]~46\,
	combout => \trace[9]~47_combout\,
	cout => \trace[9]~48\);

-- Location: FF_X83_Y24_N19
\trace[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[9]~47_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(9));

-- Location: LCCOMB_X83_Y24_N20
\trace[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[10]~49_combout\ = (trace(10) & (!\trace[9]~48\)) # (!trace(10) & ((\trace[9]~48\) # (GND)))
-- \trace[10]~50\ = CARRY((!\trace[9]~48\) # (!trace(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(10),
	datad => VCC,
	cin => \trace[9]~48\,
	combout => \trace[10]~49_combout\,
	cout => \trace[10]~50\);

-- Location: FF_X83_Y24_N21
\trace[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[10]~49_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(10));

-- Location: LCCOMB_X83_Y24_N22
\trace[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[11]~51_combout\ = (trace(11) & (\trace[10]~50\ $ (GND))) # (!trace(11) & (!\trace[10]~50\ & VCC))
-- \trace[11]~52\ = CARRY((trace(11) & !\trace[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(11),
	datad => VCC,
	cin => \trace[10]~50\,
	combout => \trace[11]~51_combout\,
	cout => \trace[11]~52\);

-- Location: FF_X83_Y24_N23
\trace[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[11]~51_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(11));

-- Location: LCCOMB_X83_Y24_N24
\trace[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[12]~53_combout\ = (trace(12) & (!\trace[11]~52\)) # (!trace(12) & ((\trace[11]~52\) # (GND)))
-- \trace[12]~54\ = CARRY((!\trace[11]~52\) # (!trace(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(12),
	datad => VCC,
	cin => \trace[11]~52\,
	combout => \trace[12]~53_combout\,
	cout => \trace[12]~54\);

-- Location: FF_X83_Y24_N25
\trace[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[12]~53_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(12));

-- Location: LCCOMB_X83_Y24_N26
\trace[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[13]~55_combout\ = (trace(13) & (\trace[12]~54\ $ (GND))) # (!trace(13) & (!\trace[12]~54\ & VCC))
-- \trace[13]~56\ = CARRY((trace(13) & !\trace[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(13),
	datad => VCC,
	cin => \trace[12]~54\,
	combout => \trace[13]~55_combout\,
	cout => \trace[13]~56\);

-- Location: FF_X83_Y24_N27
\trace[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[13]~55_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(13));

-- Location: LCCOMB_X83_Y24_N28
\trace[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[14]~57_combout\ = (trace(14) & (!\trace[13]~56\)) # (!trace(14) & ((\trace[13]~56\) # (GND)))
-- \trace[14]~58\ = CARRY((!\trace[13]~56\) # (!trace(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(14),
	datad => VCC,
	cin => \trace[13]~56\,
	combout => \trace[14]~57_combout\,
	cout => \trace[14]~58\);

-- Location: FF_X83_Y24_N29
\trace[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[14]~57_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(14));

-- Location: LCCOMB_X83_Y24_N30
\trace[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[15]~59_combout\ = (trace(15) & (\trace[14]~58\ $ (GND))) # (!trace(15) & (!\trace[14]~58\ & VCC))
-- \trace[15]~60\ = CARRY((trace(15) & !\trace[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(15),
	datad => VCC,
	cin => \trace[14]~58\,
	combout => \trace[15]~59_combout\,
	cout => \trace[15]~60\);

-- Location: FF_X83_Y24_N31
\trace[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[15]~59_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(15));

-- Location: LCCOMB_X83_Y23_N0
\trace[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[16]~61_combout\ = (trace(16) & (!\trace[15]~60\)) # (!trace(16) & ((\trace[15]~60\) # (GND)))
-- \trace[16]~62\ = CARRY((!\trace[15]~60\) # (!trace(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(16),
	datad => VCC,
	cin => \trace[15]~60\,
	combout => \trace[16]~61_combout\,
	cout => \trace[16]~62\);

-- Location: FF_X83_Y23_N1
\trace[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[16]~61_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(16));

-- Location: LCCOMB_X83_Y23_N2
\trace[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[17]~63_combout\ = (trace(17) & (\trace[16]~62\ $ (GND))) # (!trace(17) & (!\trace[16]~62\ & VCC))
-- \trace[17]~64\ = CARRY((trace(17) & !\trace[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(17),
	datad => VCC,
	cin => \trace[16]~62\,
	combout => \trace[17]~63_combout\,
	cout => \trace[17]~64\);

-- Location: FF_X83_Y23_N3
\trace[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[17]~63_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(17));

-- Location: LCCOMB_X83_Y23_N4
\trace[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[18]~65_combout\ = (trace(18) & (!\trace[17]~64\)) # (!trace(18) & ((\trace[17]~64\) # (GND)))
-- \trace[18]~66\ = CARRY((!\trace[17]~64\) # (!trace(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(18),
	datad => VCC,
	cin => \trace[17]~64\,
	combout => \trace[18]~65_combout\,
	cout => \trace[18]~66\);

-- Location: FF_X83_Y23_N5
\trace[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[18]~65_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(18));

-- Location: LCCOMB_X83_Y23_N6
\trace[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[19]~67_combout\ = (trace(19) & (\trace[18]~66\ $ (GND))) # (!trace(19) & (!\trace[18]~66\ & VCC))
-- \trace[19]~68\ = CARRY((trace(19) & !\trace[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(19),
	datad => VCC,
	cin => \trace[18]~66\,
	combout => \trace[19]~67_combout\,
	cout => \trace[19]~68\);

-- Location: FF_X83_Y23_N7
\trace[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[19]~67_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(19));

-- Location: LCCOMB_X83_Y23_N8
\trace[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[20]~69_combout\ = (trace(20) & (!\trace[19]~68\)) # (!trace(20) & ((\trace[19]~68\) # (GND)))
-- \trace[20]~70\ = CARRY((!\trace[19]~68\) # (!trace(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(20),
	datad => VCC,
	cin => \trace[19]~68\,
	combout => \trace[20]~69_combout\,
	cout => \trace[20]~70\);

-- Location: FF_X83_Y23_N9
\trace[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[20]~69_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(20));

-- Location: LCCOMB_X83_Y23_N10
\trace[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[21]~71_combout\ = (trace(21) & (\trace[20]~70\ $ (GND))) # (!trace(21) & (!\trace[20]~70\ & VCC))
-- \trace[21]~72\ = CARRY((trace(21) & !\trace[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(21),
	datad => VCC,
	cin => \trace[20]~70\,
	combout => \trace[21]~71_combout\,
	cout => \trace[21]~72\);

-- Location: FF_X83_Y23_N11
\trace[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[21]~71_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(21));

-- Location: LCCOMB_X83_Y23_N12
\trace[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[22]~73_combout\ = (trace(22) & (!\trace[21]~72\)) # (!trace(22) & ((\trace[21]~72\) # (GND)))
-- \trace[22]~74\ = CARRY((!\trace[21]~72\) # (!trace(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(22),
	datad => VCC,
	cin => \trace[21]~72\,
	combout => \trace[22]~73_combout\,
	cout => \trace[22]~74\);

-- Location: FF_X83_Y23_N13
\trace[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[22]~73_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(22));

-- Location: LCCOMB_X83_Y23_N14
\trace[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[23]~75_combout\ = (trace(23) & (\trace[22]~74\ $ (GND))) # (!trace(23) & (!\trace[22]~74\ & VCC))
-- \trace[23]~76\ = CARRY((trace(23) & !\trace[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(23),
	datad => VCC,
	cin => \trace[22]~74\,
	combout => \trace[23]~75_combout\,
	cout => \trace[23]~76\);

-- Location: FF_X83_Y23_N15
\trace[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[23]~75_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(23));

-- Location: LCCOMB_X83_Y23_N16
\trace[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[24]~77_combout\ = (trace(24) & (!\trace[23]~76\)) # (!trace(24) & ((\trace[23]~76\) # (GND)))
-- \trace[24]~78\ = CARRY((!\trace[23]~76\) # (!trace(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(24),
	datad => VCC,
	cin => \trace[23]~76\,
	combout => \trace[24]~77_combout\,
	cout => \trace[24]~78\);

-- Location: FF_X83_Y23_N17
\trace[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[24]~77_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(24));

-- Location: LCCOMB_X83_Y23_N18
\trace[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[25]~79_combout\ = (trace(25) & (\trace[24]~78\ $ (GND))) # (!trace(25) & (!\trace[24]~78\ & VCC))
-- \trace[25]~80\ = CARRY((trace(25) & !\trace[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(25),
	datad => VCC,
	cin => \trace[24]~78\,
	combout => \trace[25]~79_combout\,
	cout => \trace[25]~80\);

-- Location: FF_X83_Y23_N19
\trace[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[25]~79_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(25));

-- Location: LCCOMB_X83_Y23_N20
\trace[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[26]~81_combout\ = (trace(26) & (!\trace[25]~80\)) # (!trace(26) & ((\trace[25]~80\) # (GND)))
-- \trace[26]~82\ = CARRY((!\trace[25]~80\) # (!trace(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(26),
	datad => VCC,
	cin => \trace[25]~80\,
	combout => \trace[26]~81_combout\,
	cout => \trace[26]~82\);

-- Location: FF_X83_Y23_N21
\trace[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[26]~81_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(26));

-- Location: LCCOMB_X83_Y23_N22
\trace[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[27]~83_combout\ = (trace(27) & (\trace[26]~82\ $ (GND))) # (!trace(27) & (!\trace[26]~82\ & VCC))
-- \trace[27]~84\ = CARRY((trace(27) & !\trace[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(27),
	datad => VCC,
	cin => \trace[26]~82\,
	combout => \trace[27]~83_combout\,
	cout => \trace[27]~84\);

-- Location: FF_X83_Y23_N23
\trace[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[27]~83_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(27));

-- Location: LCCOMB_X83_Y23_N24
\trace[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[28]~85_combout\ = (trace(28) & (!\trace[27]~84\)) # (!trace(28) & ((\trace[27]~84\) # (GND)))
-- \trace[28]~86\ = CARRY((!\trace[27]~84\) # (!trace(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(28),
	datad => VCC,
	cin => \trace[27]~84\,
	combout => \trace[28]~85_combout\,
	cout => \trace[28]~86\);

-- Location: FF_X83_Y23_N25
\trace[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[28]~85_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(28));

-- Location: LCCOMB_X83_Y23_N26
\trace[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[29]~87_combout\ = (trace(29) & (\trace[28]~86\ $ (GND))) # (!trace(29) & (!\trace[28]~86\ & VCC))
-- \trace[29]~88\ = CARRY((trace(29) & !\trace[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(29),
	datad => VCC,
	cin => \trace[28]~86\,
	combout => \trace[29]~87_combout\,
	cout => \trace[29]~88\);

-- Location: FF_X83_Y23_N27
\trace[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[29]~87_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(29));

-- Location: LCCOMB_X83_Y23_N28
\trace[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[30]~89_combout\ = (trace(30) & (!\trace[29]~88\)) # (!trace(30) & ((\trace[29]~88\) # (GND)))
-- \trace[30]~90\ = CARRY((!\trace[29]~88\) # (!trace(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trace(30),
	datad => VCC,
	cin => \trace[29]~88\,
	combout => \trace[30]~89_combout\,
	cout => \trace[30]~90\);

-- Location: FF_X83_Y23_N29
\trace[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[30]~89_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(30));

-- Location: LCCOMB_X83_Y23_N30
\trace[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \trace[31]~91_combout\ = trace(31) $ (!\trace[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(31),
	cin => \trace[30]~90\,
	combout => \trace[31]~91_combout\);

-- Location: FF_X83_Y23_N31
\trace[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \trace[31]~91_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(31));

-- Location: LCCOMB_X84_Y24_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((trace(0) & !cycle(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(0),
	datab => cycle(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X84_Y24_N2
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((trace(1) & (cycle(1) & !\LessThan0~1_cout\)) # (!trace(1) & ((cycle(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(1),
	datab => cycle(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X84_Y24_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((cycle(2) & (trace(2) & !\LessThan0~3_cout\)) # (!cycle(2) & ((trace(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(2),
	datab => trace(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X84_Y24_N6
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((trace(3) & (cycle(3) & !\LessThan0~5_cout\)) # (!trace(3) & ((cycle(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(3),
	datab => cycle(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X84_Y24_N8
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((trace(4) & ((!\LessThan0~7_cout\) # (!cycle(4)))) # (!trace(4) & (!cycle(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(4),
	datab => cycle(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X84_Y24_N10
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((trace(5) & (cycle(5) & !\LessThan0~9_cout\)) # (!trace(5) & ((cycle(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(5),
	datab => cycle(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X84_Y24_N12
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((trace(6) & ((!\LessThan0~11_cout\) # (!cycle(6)))) # (!trace(6) & (!cycle(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(6),
	datab => cycle(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X84_Y24_N14
\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((trace(7) & (cycle(7) & !\LessThan0~13_cout\)) # (!trace(7) & ((cycle(7)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(7),
	datab => cycle(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X84_Y24_N16
\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((trace(8) & ((!\LessThan0~15_cout\) # (!cycle(8)))) # (!trace(8) & (!cycle(8) & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(8),
	datab => cycle(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X84_Y24_N18
\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((cycle(9) & ((!\LessThan0~17_cout\) # (!trace(9)))) # (!cycle(9) & (!trace(9) & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(9),
	datab => trace(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X84_Y24_N20
\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((cycle(10) & (trace(10) & !\LessThan0~19_cout\)) # (!cycle(10) & ((trace(10)) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(10),
	datab => trace(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X84_Y24_N22
\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((cycle(11) & ((!\LessThan0~21_cout\) # (!trace(11)))) # (!cycle(11) & (!trace(11) & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(11),
	datab => trace(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X84_Y24_N24
\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((cycle(12) & (trace(12) & !\LessThan0~23_cout\)) # (!cycle(12) & ((trace(12)) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(12),
	datab => trace(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X84_Y24_N26
\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((trace(13) & (cycle(13) & !\LessThan0~25_cout\)) # (!trace(13) & ((cycle(13)) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(13),
	datab => cycle(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X84_Y24_N28
\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((cycle(14) & (trace(14) & !\LessThan0~27_cout\)) # (!cycle(14) & ((trace(14)) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(14),
	datab => trace(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X84_Y24_N30
\LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((cycle(15) & ((!\LessThan0~29_cout\) # (!trace(15)))) # (!cycle(15) & (!trace(15) & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(15),
	datab => trace(15),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X84_Y23_N0
\LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((trace(16) & ((!\LessThan0~31_cout\) # (!cycle(16)))) # (!trace(16) & (!cycle(16) & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(16),
	datab => cycle(16),
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X84_Y23_N2
\LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((cycle(17) & ((!\LessThan0~33_cout\) # (!trace(17)))) # (!cycle(17) & (!trace(17) & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(17),
	datab => trace(17),
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X84_Y23_N4
\LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((cycle(18) & (trace(18) & !\LessThan0~35_cout\)) # (!cycle(18) & ((trace(18)) # (!\LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(18),
	datab => trace(18),
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X84_Y23_N6
\LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((cycle(19) & ((!\LessThan0~37_cout\) # (!trace(19)))) # (!cycle(19) & (!trace(19) & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(19),
	datab => trace(19),
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X84_Y23_N8
\LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((trace(20) & ((!\LessThan0~39_cout\) # (!cycle(20)))) # (!trace(20) & (!cycle(20) & !\LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(20),
	datab => cycle(20),
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X84_Y23_N10
\LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((trace(21) & (cycle(21) & !\LessThan0~41_cout\)) # (!trace(21) & ((cycle(21)) # (!\LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(21),
	datab => cycle(21),
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X84_Y23_N12
\LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((trace(22) & ((!\LessThan0~43_cout\) # (!cycle(22)))) # (!trace(22) & (!cycle(22) & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(22),
	datab => cycle(22),
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X84_Y23_N14
\LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((trace(23) & (cycle(23) & !\LessThan0~45_cout\)) # (!trace(23) & ((cycle(23)) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(23),
	datab => cycle(23),
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X84_Y23_N16
\LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((trace(24) & ((!\LessThan0~47_cout\) # (!cycle(24)))) # (!trace(24) & (!cycle(24) & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(24),
	datab => cycle(24),
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X84_Y23_N18
\LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((cycle(25) & ((!\LessThan0~49_cout\) # (!trace(25)))) # (!cycle(25) & (!trace(25) & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(25),
	datab => trace(25),
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X84_Y23_N20
\LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((cycle(26) & (trace(26) & !\LessThan0~51_cout\)) # (!cycle(26) & ((trace(26)) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(26),
	datab => trace(26),
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X84_Y23_N22
\LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((cycle(27) & ((!\LessThan0~53_cout\) # (!trace(27)))) # (!cycle(27) & (!trace(27) & !\LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(27),
	datab => trace(27),
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X84_Y23_N24
\LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((trace(28) & ((!\LessThan0~55_cout\) # (!cycle(28)))) # (!trace(28) & (!cycle(28) & !\LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(28),
	datab => cycle(28),
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X84_Y23_N26
\LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((trace(29) & (cycle(29) & !\LessThan0~57_cout\)) # (!trace(29) & ((cycle(29)) # (!\LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(29),
	datab => cycle(29),
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X84_Y23_N28
\LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((trace(30) & ((!\LessThan0~59_cout\) # (!cycle(30)))) # (!trace(30) & (!cycle(30) & !\LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(30),
	datab => cycle(30),
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X84_Y23_N30
\LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (cycle(31) & ((\LessThan0~61_cout\) # (!trace(31)))) # (!cycle(31) & (\LessThan0~61_cout\ & !trace(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(31),
	datad => trace(31),
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: FF_X86_Y23_N17
\temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp[4]~16_combout\,
	asdata => \Add1~8_wirecell_combout\,
	sload => \LessThan0~62_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(4));

-- Location: FF_X89_Y25_N15
\trc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => temp(4),
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trc(4));

-- Location: LCCOMB_X89_Y25_N26
\vectorR~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorR~7_combout\ = (\r0~input_o\ & (!\s~input_o\ & trc(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r0~input_o\,
	datac => \s~input_o\,
	datad => trc(4),
	combout => \vectorR~7_combout\);

-- Location: FF_X89_Y25_N27
\vectorR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorR~7_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorR(3));

-- Location: LCCOMB_X86_Y23_N18
\temp[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[5]~18_combout\ = ((trace(5) $ (cycle(5) $ (\temp[4]~17\)))) # (GND)
-- \temp[5]~19\ = CARRY((trace(5) & ((!\temp[4]~17\) # (!cycle(5)))) # (!trace(5) & (!cycle(5) & !\temp[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trace(5),
	datab => cycle(5),
	datad => VCC,
	cin => \temp[4]~17\,
	combout => \temp[5]~18_combout\,
	cout => \temp[5]~19\);

-- Location: LCCOMB_X86_Y24_N26
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (cycle(5) & ((trace(5) & (!\Add1~9\)) # (!trace(5) & ((\Add1~9\) # (GND))))) # (!cycle(5) & ((trace(5) & (\Add1~9\ & VCC)) # (!trace(5) & (!\Add1~9\))))
-- \Add1~11\ = CARRY((cycle(5) & ((!\Add1~9\) # (!trace(5)))) # (!cycle(5) & (!trace(5) & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(5),
	datab => trace(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X86_Y24_N6
\Add1~10_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_wirecell_combout\ = !\Add1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~10_combout\,
	combout => \Add1~10_wirecell_combout\);

-- Location: FF_X86_Y23_N19
\temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp[5]~18_combout\,
	asdata => \Add1~10_wirecell_combout\,
	sload => \LessThan0~62_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(5));

-- Location: FF_X90_Y25_N1
\trc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => temp(5),
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trc(5));

-- Location: LCCOMB_X89_Y25_N6
\vectorR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorR~4_combout\ = (!\s~input_o\ & (trc(5) & \r0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~input_o\,
	datab => trc(5),
	datad => \r0~input_o\,
	combout => \vectorR~4_combout\);

-- Location: FF_X89_Y25_N9
\vectorR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \vectorR~4_combout\,
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorR(2));

-- Location: LCCOMB_X86_Y23_N20
\temp[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[6]~20_combout\ = (cycle(6) & ((trace(6) & (!\temp[5]~19\)) # (!trace(6) & ((\temp[5]~19\) # (GND))))) # (!cycle(6) & ((trace(6) & (\temp[5]~19\ & VCC)) # (!trace(6) & (!\temp[5]~19\))))
-- \temp[6]~21\ = CARRY((cycle(6) & ((!\temp[5]~19\) # (!trace(6)))) # (!cycle(6) & (!trace(6) & !\temp[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(6),
	datab => trace(6),
	datad => VCC,
	cin => \temp[5]~19\,
	combout => \temp[6]~20_combout\,
	cout => \temp[6]~21\);

-- Location: LCCOMB_X86_Y23_N22
\temp[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[7]~22_combout\ = cycle(7) $ (trace(7) $ (\temp[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(7),
	datab => trace(7),
	cin => \temp[6]~21\,
	combout => \temp[7]~22_combout\);

-- Location: LCCOMB_X86_Y24_N28
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((cycle(6) $ (trace(6) $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((cycle(6) & (trace(6) & !\Add1~11\)) # (!cycle(6) & ((trace(6)) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(6),
	datab => trace(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X86_Y24_N30
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = cycle(7) $ (\Add1~13\ $ (trace(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cycle(7),
	datad => trace(7),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: FF_X86_Y23_N23
\temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp[7]~22_combout\,
	asdata => \Add1~14_combout\,
	sload => \LessThan0~62_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(7));

-- Location: FF_X90_Y25_N5
\trc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => temp(7),
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trc(7));

-- Location: LCCOMB_X87_Y23_N0
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = season(0) $ (VCC)
-- \Add4~1\ = CARRY(season(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => season(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X87_Y23_N2
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (season(1) & (!\Add4~1\)) # (!season(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!season(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: FF_X87_Y23_N3
\season[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~2_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(1));

-- Location: LCCOMB_X87_Y23_N4
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (season(2) & (\Add4~3\ $ (GND))) # (!season(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((season(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: FF_X87_Y23_N5
\season[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~4_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(2));

-- Location: LCCOMB_X87_Y23_N6
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (season(3) & (!\Add4~5\)) # (!season(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!season(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: FF_X87_Y23_N7
\season[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~6_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(3));

-- Location: LCCOMB_X87_Y23_N8
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (season(4) & (\Add4~7\ $ (GND))) # (!season(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((season(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X88_Y23_N20
\season~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \season~5_combout\ = (!\Equal6~10_combout\ & \Add4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~10_combout\,
	datad => \Add4~8_combout\,
	combout => \season~5_combout\);

-- Location: FF_X88_Y23_N21
\season[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \season~5_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(4));

-- Location: LCCOMB_X87_Y23_N10
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (season(5) & (!\Add4~9\)) # (!season(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!season(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X88_Y23_N2
\season~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \season~4_combout\ = (!\Equal6~10_combout\ & \Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~10_combout\,
	datad => \Add4~10_combout\,
	combout => \season~4_combout\);

-- Location: FF_X88_Y23_N3
\season[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \season~4_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(5));

-- Location: LCCOMB_X87_Y23_N12
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (season(6) & (\Add4~11\ $ (GND))) # (!season(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((season(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X88_Y23_N16
\season~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \season~3_combout\ = (!\Equal6~10_combout\ & \Add4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~10_combout\,
	datad => \Add4~12_combout\,
	combout => \season~3_combout\);

-- Location: FF_X88_Y23_N17
\season[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \season~3_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(6));

-- Location: LCCOMB_X87_Y23_N14
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (season(7) & (!\Add4~13\)) # (!season(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!season(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X88_Y23_N28
\season~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \season~2_combout\ = (!\Equal6~10_combout\ & \Add4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~10_combout\,
	datad => \Add4~14_combout\,
	combout => \season~2_combout\);

-- Location: FF_X88_Y23_N29
\season[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \season~2_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(7));

-- Location: LCCOMB_X87_Y23_N16
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (season(8) & (\Add4~15\ $ (GND))) # (!season(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((season(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: FF_X87_Y23_N17
\season[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~16_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(8));

-- Location: LCCOMB_X87_Y23_N18
\Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (season(9) & (!\Add4~17\)) # (!season(9) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!season(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: FF_X87_Y23_N19
\season[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~18_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(9));

-- Location: LCCOMB_X87_Y23_N20
\Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (season(10) & (\Add4~19\ $ (GND))) # (!season(10) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((season(10) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: FF_X87_Y23_N21
\season[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~20_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(10));

-- Location: LCCOMB_X88_Y23_N30
\Equal6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (!season(10) & (!season(8) & !season(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => season(10),
	datac => season(8),
	datad => season(9),
	combout => \Equal6~6_combout\);

-- Location: LCCOMB_X87_Y23_N22
\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (season(11) & (!\Add4~21\)) # (!season(11) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!season(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(11),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: FF_X87_Y23_N23
\season[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~22_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(11));

-- Location: LCCOMB_X87_Y23_N24
\Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (season(12) & (\Add4~23\ $ (GND))) # (!season(12) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((season(12) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(12),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: FF_X87_Y23_N25
\season[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~24_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(12));

-- Location: LCCOMB_X87_Y23_N26
\Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (season(13) & (!\Add4~25\)) # (!season(13) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!season(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(13),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: FF_X87_Y23_N27
\season[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~26_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(13));

-- Location: LCCOMB_X87_Y23_N28
\Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (season(14) & (\Add4~27\ $ (GND))) # (!season(14) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((season(14) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(14),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: FF_X87_Y23_N29
\season[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~28_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(14));

-- Location: LCCOMB_X87_Y23_N30
\Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (season(15) & (!\Add4~29\)) # (!season(15) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!season(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(15),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: FF_X87_Y23_N31
\season[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~30_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(15));

-- Location: LCCOMB_X87_Y22_N0
\Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (season(16) & (\Add4~31\ $ (GND))) # (!season(16) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((season(16) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(16),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: FF_X87_Y22_N1
\season[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~32_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(16));

-- Location: LCCOMB_X87_Y22_N2
\Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (season(17) & (!\Add4~33\)) # (!season(17) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!season(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(17),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: FF_X87_Y22_N3
\season[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~34_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(17));

-- Location: LCCOMB_X87_Y22_N4
\Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (season(18) & (\Add4~35\ $ (GND))) # (!season(18) & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((season(18) & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(18),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: FF_X87_Y22_N5
\season[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~36_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(18));

-- Location: LCCOMB_X87_Y22_N6
\Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (season(19) & (!\Add4~37\)) # (!season(19) & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!season(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(19),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: FF_X87_Y22_N7
\season[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~38_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(19));

-- Location: LCCOMB_X87_Y22_N8
\Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (season(20) & (\Add4~39\ $ (GND))) # (!season(20) & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((season(20) & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(20),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: FF_X87_Y22_N9
\season[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~40_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(20));

-- Location: LCCOMB_X87_Y22_N10
\Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (season(21) & (!\Add4~41\)) # (!season(21) & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!season(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(21),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: FF_X87_Y22_N11
\season[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~42_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(21));

-- Location: LCCOMB_X87_Y22_N12
\Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (season(22) & (\Add4~43\ $ (GND))) # (!season(22) & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((season(22) & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(22),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: FF_X87_Y22_N13
\season[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~44_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(22));

-- Location: LCCOMB_X87_Y22_N14
\Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (season(23) & (!\Add4~45\)) # (!season(23) & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!season(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(23),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: FF_X87_Y22_N15
\season[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~46_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(23));

-- Location: LCCOMB_X87_Y22_N16
\Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (season(24) & (\Add4~47\ $ (GND))) # (!season(24) & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((season(24) & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(24),
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: FF_X87_Y22_N17
\season[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~48_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(24));

-- Location: LCCOMB_X87_Y22_N18
\Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (season(25) & (!\Add4~49\)) # (!season(25) & ((\Add4~49\) # (GND)))
-- \Add4~51\ = CARRY((!\Add4~49\) # (!season(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(25),
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: FF_X87_Y22_N19
\season[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~50_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(25));

-- Location: LCCOMB_X87_Y22_N20
\Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (season(26) & (\Add4~51\ $ (GND))) # (!season(26) & (!\Add4~51\ & VCC))
-- \Add4~53\ = CARRY((season(26) & !\Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(26),
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: FF_X87_Y22_N21
\season[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~52_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(26));

-- Location: LCCOMB_X87_Y22_N22
\Add4~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (season(27) & (!\Add4~53\)) # (!season(27) & ((\Add4~53\) # (GND)))
-- \Add4~55\ = CARRY((!\Add4~53\) # (!season(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(27),
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: FF_X87_Y22_N23
\season[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~54_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(27));

-- Location: LCCOMB_X87_Y22_N24
\Add4~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (season(28) & (\Add4~55\ $ (GND))) # (!season(28) & (!\Add4~55\ & VCC))
-- \Add4~57\ = CARRY((season(28) & !\Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(28),
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: FF_X87_Y22_N25
\season[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~56_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(28));

-- Location: LCCOMB_X87_Y22_N26
\Add4~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (season(29) & (!\Add4~57\)) # (!season(29) & ((\Add4~57\) # (GND)))
-- \Add4~59\ = CARRY((!\Add4~57\) # (!season(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(29),
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: FF_X87_Y22_N27
\season[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~58_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(29));

-- Location: LCCOMB_X87_Y22_N28
\Add4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = (season(30) & (\Add4~59\ $ (GND))) # (!season(30) & (!\Add4~59\ & VCC))
-- \Add4~61\ = CARRY((season(30) & !\Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => season(30),
	datad => VCC,
	cin => \Add4~59\,
	combout => \Add4~60_combout\,
	cout => \Add4~61\);

-- Location: FF_X87_Y22_N29
\season[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~60_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(30));

-- Location: LCCOMB_X88_Y22_N12
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!season(28) & (!season(27) & (!season(29) & !season(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => season(28),
	datab => season(27),
	datac => season(29),
	datad => season(30),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X88_Y22_N18
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!season(23) & (!season(25) & (!season(24) & !season(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => season(23),
	datab => season(25),
	datac => season(24),
	datad => season(26),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X88_Y22_N30
\Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (!season(16) & (!season(15) & (!season(18) & !season(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => season(16),
	datab => season(15),
	datac => season(18),
	datad => season(17),
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X88_Y22_N28
\Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (!season(21) & (!season(22) & (!season(19) & !season(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => season(21),
	datab => season(22),
	datac => season(19),
	datad => season(20),
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X88_Y22_N0
\Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (\Equal6~0_combout\ & (\Equal6~1_combout\ & (\Equal6~3_combout\ & \Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal6~1_combout\,
	datac => \Equal6~3_combout\,
	datad => \Equal6~2_combout\,
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X87_Y22_N30
\Add4~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~62_combout\ = season(31) $ (\Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => season(31),
	cin => \Add4~61\,
	combout => \Add4~62_combout\);

-- Location: FF_X87_Y22_N31
\season[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add4~62_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(31));

-- Location: LCCOMB_X88_Y23_N12
\Equal6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (season(4) & (season(5) & (!season(31) & season(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => season(4),
	datab => season(5),
	datac => season(31),
	datad => season(6),
	combout => \Equal6~8_combout\);

-- Location: LCCOMB_X88_Y23_N26
\Equal6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~9_combout\ = (\Equal6~8_combout\ & (!season(3) & (\Equal6~7_combout\ & season(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~8_combout\,
	datab => season(3),
	datac => \Equal6~7_combout\,
	datad => season(7),
	combout => \Equal6~9_combout\);

-- Location: LCCOMB_X88_Y23_N24
\Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (!season(12) & (!season(14) & (!season(13) & !season(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => season(12),
	datab => season(14),
	datac => season(13),
	datad => season(11),
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X88_Y23_N8
\Equal6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~10_combout\ = (\Equal6~6_combout\ & (\Equal6~4_combout\ & (\Equal6~9_combout\ & \Equal6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~6_combout\,
	datab => \Equal6~4_combout\,
	datac => \Equal6~9_combout\,
	datad => \Equal6~5_combout\,
	combout => \Equal6~10_combout\);

-- Location: LCCOMB_X88_Y23_N4
\season~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \season~6_combout\ = (!\Equal6~10_combout\ & \Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~10_combout\,
	datac => \Add4~0_combout\,
	combout => \season~6_combout\);

-- Location: FF_X88_Y23_N5
\season[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \season~6_combout\,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => season(0));

-- Location: LCCOMB_X88_Y23_N22
\Equal6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (!season(0) & (!season(2) & !season(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => season(0),
	datac => season(2),
	datad => season(1),
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X88_Y23_N18
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (season(4) & (season(5) & (season(3) & season(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => season(4),
	datab => season(5),
	datac => season(3),
	datad => season(6),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X88_Y23_N0
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\LessThan2~0_combout\ & ((cycle(0)) # (!\Equal6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~7_combout\,
	datac => cycle(0),
	datad => \LessThan2~0_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X88_Y23_N6
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!season(7) & (\Equal6~4_combout\ & (\Equal6~6_combout\ & \Equal6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => season(7),
	datab => \Equal6~4_combout\,
	datac => \Equal6~6_combout\,
	datad => \Equal6~5_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X88_Y23_N14
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = cycle(0) $ (((!season(31) & ((\process_0~1_combout\) # (!\process_0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cycle(0),
	datab => \process_0~1_combout\,
	datac => season(31),
	datad => \process_0~0_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X89_Y25_N24
\vectorR~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorR~6_combout\ = (\s~input_o\ & (((\process_0~2_combout\)))) # (!\s~input_o\ & (trc(7) & (\r0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trc(7),
	datab => \r0~input_o\,
	datac => \s~input_o\,
	datad => \process_0~2_combout\,
	combout => \vectorR~6_combout\);

-- Location: FF_X89_Y25_N25
\vectorR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorR~6_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorR(0));

-- Location: LCCOMB_X86_Y23_N26
\Add1~12_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_wirecell_combout\ = !\Add1~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~12_combout\,
	combout => \Add1~12_wirecell_combout\);

-- Location: FF_X86_Y23_N21
\temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp[6]~20_combout\,
	asdata => \Add1~12_wirecell_combout\,
	sload => \LessThan0~62_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(6));

-- Location: FF_X90_Y25_N11
\trc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => temp(6),
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trc(6));

-- Location: LCCOMB_X92_Y25_N22
\vectorR~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorR~5_combout\ = (!\s~input_o\ & (trc(6) & \r0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~input_o\,
	datac => trc(6),
	datad => \r0~input_o\,
	combout => \vectorR~5_combout\);

-- Location: FF_X89_Y25_N3
\vectorR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \vectorR~5_combout\,
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorR(1));

-- Location: LCCOMB_X89_Y25_N2
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (bits(0) & (((vectorR(1)) # (bits(1))))) # (!bits(0) & (vectorR(0) & ((!bits(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vectorR(0),
	datab => bits(0),
	datac => vectorR(1),
	datad => bits(1),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X89_Y25_N8
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (bits(1) & ((\Mux0~2_combout\ & (vectorR(3))) # (!\Mux0~2_combout\ & ((vectorR(2)))))) # (!bits(1) & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vectorR(3),
	datab => bits(1),
	datac => vectorR(2),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X92_Y25_N30
\vectorR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorR~3_combout\ = (!\s~input_o\ & (trc(0) & \r0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~input_o\,
	datac => trc(0),
	datad => \r0~input_o\,
	combout => \vectorR~3_combout\);

-- Location: FF_X92_Y25_N31
\vectorR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorR~3_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorR(7));

-- Location: LCCOMB_X86_Y23_N6
\Add1~4_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_wirecell_combout\ = !\Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~4_combout\,
	combout => \Add1~4_wirecell_combout\);

-- Location: FF_X86_Y23_N13
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp[2]~12_combout\,
	asdata => \Add1~4_wirecell_combout\,
	sload => \LessThan0~62_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: FF_X90_Y25_N15
\trc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => temp(2),
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trc(2));

-- Location: LCCOMB_X92_Y25_N28
\vectorR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorR~0_combout\ = (!\s~input_o\ & (trc(2) & \r0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~input_o\,
	datac => trc(2),
	datad => \r0~input_o\,
	combout => \vectorR~0_combout\);

-- Location: FF_X92_Y25_N29
\vectorR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorR~0_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorR(5));

-- Location: LCCOMB_X86_Y23_N28
\Add1~2_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_wirecell_combout\ = !\Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~2_combout\,
	combout => \Add1~2_wirecell_combout\);

-- Location: FF_X86_Y23_N11
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp[1]~10_combout\,
	asdata => \Add1~2_wirecell_combout\,
	sload => \LessThan0~62_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: FF_X90_Y25_N17
\trc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => temp(1),
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trc(1));

-- Location: LCCOMB_X92_Y25_N18
\vectorR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorR~1_combout\ = (!\s~input_o\ & (trc(1) & \r0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~input_o\,
	datac => trc(1),
	datad => \r0~input_o\,
	combout => \vectorR~1_combout\);

-- Location: FF_X92_Y25_N19
\vectorR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorR~1_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorR(6));

-- Location: LCCOMB_X86_Y23_N4
\Add1~6_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_wirecell_combout\ = !\Add1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~6_combout\,
	combout => \Add1~6_wirecell_combout\);

-- Location: FF_X86_Y23_N15
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp[3]~14_combout\,
	asdata => \Add1~6_wirecell_combout\,
	sload => \LessThan0~62_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: FF_X90_Y25_N31
\trc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => temp(3),
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trc(3));

-- Location: LCCOMB_X92_Y25_N8
\vectorR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorR~2_combout\ = (!\s~input_o\ & (trc(3) & \r0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~input_o\,
	datac => trc(3),
	datad => \r0~input_o\,
	combout => \vectorR~2_combout\);

-- Location: FF_X92_Y25_N21
\vectorR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \vectorR~2_combout\,
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorR(4));

-- Location: LCCOMB_X92_Y25_N20
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (bits(0) & (((bits(1))))) # (!bits(0) & ((bits(1) & (vectorR(6))) # (!bits(1) & ((vectorR(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(0),
	datab => vectorR(6),
	datac => vectorR(4),
	datad => bits(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X92_Y25_N12
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (bits(0) & ((\Mux0~0_combout\ & (vectorR(7))) # (!\Mux0~0_combout\ & ((vectorR(5)))))) # (!bits(0) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vectorR(7),
	datab => vectorR(5),
	datac => bits(0),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X89_Y25_N12
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (bits(2) & ((\Mux0~1_combout\))) # (!bits(2) & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(2),
	datab => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X86_Y25_N24
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\x.C~q\ & ((\Equal4~10_combout\) # (!\Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~10_combout\,
	datab => \x.C~q\,
	datac => \Equal5~3_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X88_Y24_N10
\x~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \x~18_combout\ = (\Mux0~4_combout\ & (((\Equal3~0_combout\)))) # (!\Mux0~4_combout\ & (\Equal2~2_combout\ & (\Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~1_combout\,
	datac => \Mux0~4_combout\,
	datad => \Equal3~0_combout\,
	combout => \x~18_combout\);

-- Location: LCCOMB_X88_Y27_N28
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count(4) & (!count(0) & !count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datac => count(0),
	datad => count(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X88_Y25_N20
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ((!\Equal2~1_combout\) # (!\Equal1~0_combout\)) # (!count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \Equal1~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X87_Y25_N22
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (!count(2) & (!count(3) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => count(2),
	datac => count(3),
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X88_Y24_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\x.A~q\ & ((\Mux0~4_combout\ & (!\Equal1~1_combout\)) # (!\Mux0~4_combout\ & ((\Equal0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.A~q\,
	datab => \Equal1~1_combout\,
	datac => \Mux0~4_combout\,
	datad => \Equal0~10_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X88_Y24_N8
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((!\x~18_combout\ & \x.B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~18_combout\,
	datac => \x.B~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X88_Y24_N9
\x.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x.B~q\);

-- Location: LCCOMB_X88_Y25_N30
\count[28]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~38_combout\ = (\x.B~q\ & ((\Mux0~4_combout\ & (\Equal3~0_combout\)) # (!\Mux0~4_combout\ & ((\Equal2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.B~q\,
	datab => \Equal3~0_combout\,
	datac => \Mux0~4_combout\,
	datad => \Equal2~3_combout\,
	combout => \count[28]~38_combout\);

-- Location: LCCOMB_X88_Y25_N0
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\x.A~q\ & ((\Mux0~4_combout\ & (\Equal1~1_combout\)) # (!\Mux0~4_combout\ & ((!\Equal0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal0~10_combout\,
	datac => \Mux0~4_combout\,
	datad => \x.A~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X88_Y25_N28
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector0~0_combout\ & (!\Selector0~1_combout\ & ((!\count[28]~38_combout\) # (!\Equal7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~10_combout\,
	datab => \Selector0~0_combout\,
	datac => \count[28]~38_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X88_Y25_N29
\x.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x.A~q\);

-- Location: IOIBUF_X115_Y14_N1
\g0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g0,
	o => \g0~input_o\);

-- Location: LCCOMB_X92_Y25_N2
\vectorG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorG~0_combout\ = (!\s~input_o\ & (trc(2) & \g0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~input_o\,
	datac => trc(2),
	datad => \g0~input_o\,
	combout => \vectorG~0_combout\);

-- Location: FF_X89_Y25_N13
\vectorG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \vectorG~0_combout\,
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorG(5));

-- Location: LCCOMB_X92_Y25_N26
\vectorG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorG~3_combout\ = (!\s~input_o\ & (trc(0) & \g0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~input_o\,
	datac => trc(0),
	datad => \g0~input_o\,
	combout => \vectorG~3_combout\);

-- Location: FF_X89_Y25_N23
\vectorG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \vectorG~3_combout\,
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorG(7));

-- Location: LCCOMB_X92_Y25_N4
\vectorG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorG~1_combout\ = (!\s~input_o\ & (trc(1) & \g0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~input_o\,
	datac => trc(1),
	datad => \g0~input_o\,
	combout => \vectorG~1_combout\);

-- Location: FF_X89_Y25_N7
\vectorG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \vectorG~1_combout\,
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorG(6));

-- Location: LCCOMB_X90_Y25_N30
\vectorG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorG~2_combout\ = (\g0~input_o\ & (trc(3) & !\s~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g0~input_o\,
	datac => trc(3),
	datad => \s~input_o\,
	combout => \vectorG~2_combout\);

-- Location: FF_X89_Y25_N21
\vectorG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \vectorG~2_combout\,
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorG(4));

-- Location: LCCOMB_X89_Y25_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (bits(0) & (((bits(1))))) # (!bits(0) & ((bits(1) & (vectorG(6))) # (!bits(1) & ((vectorG(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vectorG(6),
	datab => bits(0),
	datac => vectorG(4),
	datad => bits(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X89_Y25_N28
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (bits(0) & ((\Mux1~0_combout\ & ((vectorG(7)))) # (!\Mux1~0_combout\ & (vectorG(5))))) # (!bits(0) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vectorG(5),
	datab => vectorG(7),
	datac => bits(0),
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X89_Y25_N4
\vectorG~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorG~7_combout\ = (\g0~input_o\ & (!\s~input_o\ & trc(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g0~input_o\,
	datac => \s~input_o\,
	datad => trc(4),
	combout => \vectorG~7_combout\);

-- Location: FF_X89_Y25_N5
\vectorG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorG~7_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorG(3));

-- Location: LCCOMB_X90_Y25_N10
\vectorG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorG~4_combout\ = (!\s~input_o\ & (\g0~input_o\ & trc(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~input_o\,
	datab => \g0~input_o\,
	datad => trc(5),
	combout => \vectorG~4_combout\);

-- Location: FF_X89_Y25_N19
\vectorG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \vectorG~4_combout\,
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorG(2));

-- Location: LCCOMB_X89_Y25_N10
\vectorG~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorG~6_combout\ = (\s~input_o\ & (((!\process_0~2_combout\)))) # (!\s~input_o\ & (trc(7) & (\g0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trc(7),
	datab => \g0~input_o\,
	datac => \s~input_o\,
	datad => \process_0~2_combout\,
	combout => \vectorG~6_combout\);

-- Location: FF_X89_Y25_N11
\vectorG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorG~6_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorG(0));

-- Location: LCCOMB_X90_Y25_N14
\vectorG~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorG~5_combout\ = (trc(6) & (!\s~input_o\ & \g0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trc(6),
	datab => \s~input_o\,
	datad => \g0~input_o\,
	combout => \vectorG~5_combout\);

-- Location: FF_X89_Y25_N1
\vectorG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \vectorG~5_combout\,
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorG(1));

-- Location: LCCOMB_X89_Y25_N0
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (bits(0) & (((vectorG(1)) # (bits(1))))) # (!bits(0) & (vectorG(0) & ((!bits(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vectorG(0),
	datab => bits(0),
	datac => vectorG(1),
	datad => bits(1),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X89_Y25_N18
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (bits(1) & ((\Mux1~2_combout\ & (vectorG(3))) # (!\Mux1~2_combout\ & ((vectorG(2)))))) # (!bits(1) & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(1),
	datab => vectorG(3),
	datac => vectorG(2),
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X89_Y25_N14
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (bits(2) & (\Mux1~1_combout\)) # (!bits(2) & ((\Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(2),
	datab => \Mux1~1_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X89_Y25_N22
\count[28]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~63_combout\ = (\WideOr1~0_combout\ & ((!\Mux1~4_combout\) # (!\x.D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \x.D~q\,
	datad => \Mux1~4_combout\,
	combout => \count[28]~63_combout\);

-- Location: LCCOMB_X86_Y25_N2
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\x.E~q\ & ((\Mux1~4_combout\ & ((!\Equal3~0_combout\))) # (!\Mux1~4_combout\ & (!\Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.E~q\,
	datab => \Equal2~3_combout\,
	datac => \Equal3~0_combout\,
	datad => \Mux1~4_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X88_Y24_N18
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\x.D~q\ & ((\Mux1~4_combout\ & (!\Equal1~1_combout\)) # (!\Mux1~4_combout\ & ((\Equal0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.D~q\,
	datab => \Equal1~1_combout\,
	datac => \Mux1~4_combout\,
	datad => \Equal0~10_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X88_Y24_N0
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Selector4~0_combout\) # (\Selector4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector4~0_combout\,
	datad => \Selector4~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: FF_X88_Y24_N1
\x.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector4~2_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x.E~q\);

-- Location: LCCOMB_X88_Y25_N10
\count[28]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~37_combout\ = (\x.E~q\ & ((\Mux1~4_combout\ & (\Equal3~0_combout\)) # (!\Mux1~4_combout\ & ((\Equal2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.E~q\,
	datab => \Mux1~4_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~3_combout\,
	combout => \count[28]~37_combout\);

-- Location: LCCOMB_X87_Y25_N20
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\x.F~q\ & ((\Mux2~4_combout\ & ((\Equal1~1_combout\))) # (!\Mux2~4_combout\ & (!\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \x.F~q\,
	datac => \Equal0~10_combout\,
	datad => \Equal1~1_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X88_Y25_N16
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\Equal7~10_combout\ & (\count[28]~36_combout\)) # (!\Equal7~10_combout\ & ((\count[28]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~10_combout\,
	datab => \count[28]~36_combout\,
	datac => \count[28]~37_combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X88_Y25_N17
\x.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x.F~q\);

-- Location: LCCOMB_X89_Y25_N16
\count[28]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~64_combout\ = (\Mux2~4_combout\ & ((\x.F~q\) # ((\Mux1~4_combout\ & \Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.F~q\,
	datab => \Mux1~4_combout\,
	datac => \Mux2~4_combout\,
	datad => \Mux0~4_combout\,
	combout => \count[28]~64_combout\);

-- Location: LCCOMB_X89_Y25_N30
\count[28]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~65_combout\ = (\count[28]~63_combout\ & (!\count[28]~64_combout\ & ((\x.A~q\) # (!\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => \x.A~q\,
	datac => \count[28]~63_combout\,
	datad => \count[28]~64_combout\,
	combout => \count[28]~65_combout\);

-- Location: LCCOMB_X88_Y25_N12
\count[28]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~111_combout\ = (\x.A~q\) # ((bits(2) & ((\Mux0~1_combout\))) # (!bits(2) & (\Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(2),
	datab => \x.A~q\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \count[28]~111_combout\);

-- Location: LCCOMB_X88_Y25_N4
\count[28]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~60_combout\ = (\x.D~q\ & (\Mux1~4_combout\ & ((\Mux2~4_combout\) # (!\x.F~q\)))) # (!\x.D~q\ & (((\Mux2~4_combout\)) # (!\x.F~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.D~q\,
	datab => \x.F~q\,
	datac => \Mux1~4_combout\,
	datad => \Mux2~4_combout\,
	combout => \count[28]~60_combout\);

-- Location: LCCOMB_X88_Y25_N6
\count[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~61_combout\ = (\Equal1~1_combout\) # ((!\x.F~q\ & (\x.A~q\ & !\x.D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.F~q\,
	datab => \x.A~q\,
	datac => \x.D~q\,
	datad => \Equal1~1_combout\,
	combout => \count[28]~61_combout\);

-- Location: LCCOMB_X88_Y25_N8
\count[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~62_combout\ = (\count[28]~61_combout\ & (((\count[28]~111_combout\ & \count[28]~60_combout\)) # (!\Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[28]~111_combout\,
	datab => \Equal0~10_combout\,
	datac => \count[28]~60_combout\,
	datad => \count[28]~61_combout\,
	combout => \count[28]~62_combout\);

-- Location: LCCOMB_X88_Y25_N18
\count[28]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~66_combout\ = (\count[28]~65_combout\ & (((\count[28]~62_combout\ & !\count[28]~39_combout\)) # (!\Equal0~10_combout\))) # (!\count[28]~65_combout\ & (((\count[28]~62_combout\ & !\count[28]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[28]~65_combout\,
	datab => \Equal0~10_combout\,
	datac => \count[28]~62_combout\,
	datad => \count[28]~39_combout\,
	combout => \count[28]~66_combout\);

-- Location: LCCOMB_X88_Y25_N14
\count[28]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~112_combout\ = (\x.C~q\ & (((\Equal4~10_combout\)) # (!\Equal5~3_combout\))) # (!\x.C~q\ & (((!\count[28]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.C~q\,
	datab => \Equal5~3_combout\,
	datac => \Equal4~10_combout\,
	datad => \count[28]~66_combout\,
	combout => \count[28]~112_combout\);

-- Location: FF_X87_Y27_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[0]~40_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X87_Y27_N2
\count[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~42_combout\ = (count(1) & (!\count[0]~41\)) # (!count(1) & ((\count[0]~41\) # (GND)))
-- \count[1]~43\ = CARRY((!\count[0]~41\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~41\,
	combout => \count[1]~42_combout\,
	cout => \count[1]~43\);

-- Location: FF_X87_Y27_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[1]~42_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X87_Y27_N4
\count[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~44_combout\ = (count(2) & (\count[1]~43\ $ (GND))) # (!count(2) & (!\count[1]~43\ & VCC))
-- \count[2]~45\ = CARRY((count(2) & !\count[1]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~43\,
	combout => \count[2]~44_combout\,
	cout => \count[2]~45\);

-- Location: FF_X87_Y27_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[2]~44_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X87_Y27_N6
\count[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~46_combout\ = (count(3) & (!\count[2]~45\)) # (!count(3) & ((\count[2]~45\) # (GND)))
-- \count[3]~47\ = CARRY((!\count[2]~45\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~45\,
	combout => \count[3]~46_combout\,
	cout => \count[3]~47\);

-- Location: FF_X87_Y27_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[3]~46_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X87_Y27_N8
\count[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~48_combout\ = (count(4) & (\count[3]~47\ $ (GND))) # (!count(4) & (!\count[3]~47\ & VCC))
-- \count[4]~49\ = CARRY((count(4) & !\count[3]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~47\,
	combout => \count[4]~48_combout\,
	cout => \count[4]~49\);

-- Location: FF_X87_Y27_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[4]~48_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X87_Y27_N10
\count[5]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~50_combout\ = (count(5) & (!\count[4]~49\)) # (!count(5) & ((\count[4]~49\) # (GND)))
-- \count[5]~51\ = CARRY((!\count[4]~49\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~49\,
	combout => \count[5]~50_combout\,
	cout => \count[5]~51\);

-- Location: FF_X87_Y27_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[5]~50_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X87_Y27_N12
\count[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~52_combout\ = (count(6) & (\count[5]~51\ $ (GND))) # (!count(6) & (!\count[5]~51\ & VCC))
-- \count[6]~53\ = CARRY((count(6) & !\count[5]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~51\,
	combout => \count[6]~52_combout\,
	cout => \count[6]~53\);

-- Location: FF_X87_Y27_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[6]~52_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X87_Y27_N14
\count[7]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~54_combout\ = (count(7) & (!\count[6]~53\)) # (!count(7) & ((\count[6]~53\) # (GND)))
-- \count[7]~55\ = CARRY((!\count[6]~53\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~53\,
	combout => \count[7]~54_combout\,
	cout => \count[7]~55\);

-- Location: FF_X87_Y27_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[7]~54_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X87_Y27_N16
\count[8]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~56_combout\ = (count(8) & (\count[7]~55\ $ (GND))) # (!count(8) & (!\count[7]~55\ & VCC))
-- \count[8]~57\ = CARRY((count(8) & !\count[7]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~55\,
	combout => \count[8]~56_combout\,
	cout => \count[8]~57\);

-- Location: FF_X87_Y27_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[8]~56_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X87_Y27_N18
\count[9]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~58_combout\ = (count(9) & (!\count[8]~57\)) # (!count(9) & ((\count[8]~57\) # (GND)))
-- \count[9]~59\ = CARRY((!\count[8]~57\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~57\,
	combout => \count[9]~58_combout\,
	cout => \count[9]~59\);

-- Location: FF_X87_Y27_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[9]~58_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X87_Y27_N20
\count[10]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~67_combout\ = (count(10) & (\count[9]~59\ $ (GND))) # (!count(10) & (!\count[9]~59\ & VCC))
-- \count[10]~68\ = CARRY((count(10) & !\count[9]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~59\,
	combout => \count[10]~67_combout\,
	cout => \count[10]~68\);

-- Location: FF_X87_Y27_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[10]~67_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: FF_X87_Y27_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \count[11]~69_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	sclr => \count[28]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X86_Y25_N26
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (count(5)) # (((count(3)) # (!count(6))) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(7),
	datac => count(3),
	datad => count(6),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X86_Y25_N12
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = ((\Equal5~1_combout\) # (!count(8))) # (!count(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datac => \Equal5~1_combout\,
	datad => count(8),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X86_Y25_N20
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (count(4)) # ((count(0)) # ((count(1)) # (!count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(0),
	datac => count(1),
	datad => count(2),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X86_Y25_N22
\Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (\Equal5~2_combout\) # ((\Equal5~0_combout\) # ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X86_Y25_N30
\season[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \season[31]~1_combout\ = (!\Equal5~3_combout\ & (!\Resetn~input_o\ & (\x.C~q\ & !\Equal4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Resetn~input_o\,
	datac => \x.C~q\,
	datad => \Equal4~10_combout\,
	combout => \season[31]~1_combout\);

-- Location: FF_X84_Y24_N19
\trace[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \trace[0]~93_combout\,
	sload => VCC,
	ena => \season[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trace(0));

-- Location: LCCOMB_X86_Y23_N24
\Add1~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_wirecell_combout\ = !\Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~0_combout\,
	combout => \Add1~0_wirecell_combout\);

-- Location: FF_X86_Y23_N9
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \temp[0]~8_combout\,
	asdata => \Add1~0_wirecell_combout\,
	sload => \LessThan0~62_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: FF_X86_Y25_N15
\trc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => temp(0),
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trc(0));

-- Location: IOIBUF_X115_Y17_N1
\b0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: LCCOMB_X90_Y25_N26
\vectorB~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorB~3_combout\ = (!\s~input_o\ & (trc(0) & \b0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~input_o\,
	datac => trc(0),
	datad => \b0~input_o\,
	combout => \vectorB~3_combout\);

-- Location: FF_X90_Y25_N27
\vectorB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorB~3_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorB(7));

-- Location: LCCOMB_X90_Y25_N28
\vectorB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorB~0_combout\ = (!\s~input_o\ & (trc(2) & \b0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~input_o\,
	datac => trc(2),
	datad => \b0~input_o\,
	combout => \vectorB~0_combout\);

-- Location: FF_X90_Y25_N29
\vectorB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorB~0_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorB(5));

-- Location: LCCOMB_X90_Y25_N6
\vectorB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorB~1_combout\ = (trc(1) & (!\s~input_o\ & \b0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => trc(1),
	datac => \s~input_o\,
	datad => \b0~input_o\,
	combout => \vectorB~1_combout\);

-- Location: FF_X90_Y25_N7
\vectorB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorB~1_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorB(6));

-- Location: LCCOMB_X90_Y25_N0
\vectorB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorB~2_combout\ = (trc(3) & (!\s~input_o\ & \b0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trc(3),
	datab => \s~input_o\,
	datad => \b0~input_o\,
	combout => \vectorB~2_combout\);

-- Location: FF_X90_Y25_N25
\vectorB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \vectorB~2_combout\,
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorB(4));

-- Location: LCCOMB_X90_Y25_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (bits(0) & (((bits(1))))) # (!bits(0) & ((bits(1) & (vectorB(6))) # (!bits(1) & ((vectorB(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vectorB(6),
	datab => bits(0),
	datac => vectorB(4),
	datad => bits(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X90_Y25_N8
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (bits(0) & ((\Mux2~0_combout\ & (vectorB(7))) # (!\Mux2~0_combout\ & ((vectorB(5)))))) # (!bits(0) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vectorB(7),
	datab => vectorB(5),
	datac => bits(0),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X90_Y25_N20
\vectorB~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorB~7_combout\ = (trc(4) & (!\s~input_o\ & \b0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trc(4),
	datac => \s~input_o\,
	datad => \b0~input_o\,
	combout => \vectorB~7_combout\);

-- Location: FF_X90_Y25_N21
\vectorB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorB~7_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorB(3));

-- Location: LCCOMB_X90_Y25_N22
\vectorB~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorB~4_combout\ = (trc(5) & (!\s~input_o\ & \b0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trc(5),
	datac => \s~input_o\,
	datad => \b0~input_o\,
	combout => \vectorB~4_combout\);

-- Location: FF_X90_Y25_N23
\vectorB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorB~4_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorB(2));

-- Location: LCCOMB_X90_Y25_N12
\vectorB~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorB~5_combout\ = (trc(6) & (!\s~input_o\ & \b0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trc(6),
	datac => \s~input_o\,
	datad => \b0~input_o\,
	combout => \vectorB~5_combout\);

-- Location: FF_X90_Y25_N13
\vectorB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \vectorB~5_combout\,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorB(1));

-- Location: LCCOMB_X90_Y25_N16
\vectorB~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vectorB~6_combout\ = (!\s~input_o\ & (trc(7) & \b0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~input_o\,
	datab => trc(7),
	datad => \b0~input_o\,
	combout => \vectorB~6_combout\);

-- Location: FF_X90_Y25_N19
\vectorB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \vectorB~6_combout\,
	sload => VCC,
	ena => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vectorB(0));

-- Location: LCCOMB_X90_Y25_N18
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (bits(0) & ((vectorB(1)) # ((bits(1))))) # (!bits(0) & (((vectorB(0) & !bits(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vectorB(1),
	datab => bits(0),
	datac => vectorB(0),
	datad => bits(1),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X90_Y25_N2
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (bits(1) & ((\Mux2~2_combout\ & (vectorB(3))) # (!\Mux2~2_combout\ & ((vectorB(2)))))) # (!bits(1) & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(1),
	datab => vectorB(3),
	datac => vectorB(2),
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X90_Y25_N4
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (bits(2) & (\Mux2~1_combout\)) # (!bits(2) & ((\Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(2),
	datab => \Mux2~1_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X88_Y24_N30
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\x.F~q\ & ((\Mux2~4_combout\ & (!\Equal1~1_combout\)) # (!\Mux2~4_combout\ & ((\Equal0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \Equal1~1_combout\,
	datac => \x.F~q\,
	datad => \Equal0~10_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X87_Y24_N20
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\x.G~q\ & ((\Mux2~4_combout\ & ((!\Equal3~0_combout\))) # (!\Mux2~4_combout\ & (!\Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.G~q\,
	datab => \Equal2~3_combout\,
	datac => \Mux2~4_combout\,
	datad => \Equal3~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X88_Y24_N6
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~1_combout\) # (\Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector6~1_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X88_Y24_N7
\x.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector6~2_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x.G~q\);

-- Location: LCCOMB_X88_Y24_N4
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\x.G~q\ & (!\x.B~q\ & !\x.E~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.G~q\,
	datac => \x.B~q\,
	datad => \x.E~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X88_Y25_N2
\count[28]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~39_combout\ = (!\WideOr1~0_combout\ & ((\count[28]~36_combout\) # ((\count[28]~38_combout\) # (\count[28]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \count[28]~36_combout\,
	datac => \count[28]~38_combout\,
	datad => \count[28]~37_combout\,
	combout => \count[28]~39_combout\);

-- Location: FF_X91_Y25_N1
\bits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~0_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(0));

-- Location: LCCOMB_X91_Y25_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (bits(1) & (!\Add3~1\)) # (!bits(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!bits(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X91_Y25_N3
\bits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~2_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(1));

-- Location: LCCOMB_X91_Y25_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (bits(2) & (\Add3~3\ $ (GND))) # (!bits(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((bits(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: FF_X91_Y25_N5
\bits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~4_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(2));

-- Location: LCCOMB_X91_Y25_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (bits(3) & (!\Add3~5\)) # (!bits(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!bits(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X90_Y24_N0
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\Add3~6_combout\ & \Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~6_combout\,
	datac => \Equal7~10_combout\,
	combout => \Selector67~0_combout\);

-- Location: FF_X90_Y24_N1
\bits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector67~0_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(3));

-- Location: LCCOMB_X91_Y25_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (bits(4) & (\Add3~7\ $ (GND))) # (!bits(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((bits(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: FF_X91_Y25_N9
\bits[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~8_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(4));

-- Location: LCCOMB_X91_Y25_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (bits(5) & (!\Add3~9\)) # (!bits(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!bits(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: FF_X91_Y25_N11
\bits[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~10_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(5));

-- Location: LCCOMB_X91_Y25_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (bits(6) & (\Add3~11\ $ (GND))) # (!bits(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((bits(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X91_Y25_N13
\bits[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~12_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(6));

-- Location: LCCOMB_X91_Y25_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (bits(7) & (!\Add3~13\)) # (!bits(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!bits(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: FF_X91_Y25_N15
\bits[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~14_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(7));

-- Location: LCCOMB_X91_Y25_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (bits(8) & (\Add3~15\ $ (GND))) # (!bits(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((bits(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: FF_X91_Y25_N17
\bits[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~16_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(8));

-- Location: LCCOMB_X91_Y25_N18
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (bits(9) & (!\Add3~17\)) # (!bits(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!bits(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X91_Y25_N19
\bits[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~18_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(9));

-- Location: LCCOMB_X91_Y25_N20
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (bits(10) & (\Add3~19\ $ (GND))) # (!bits(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((bits(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: FF_X91_Y25_N21
\bits[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~20_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(10));

-- Location: LCCOMB_X91_Y25_N22
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (bits(11) & (!\Add3~21\)) # (!bits(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!bits(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: FF_X91_Y25_N23
\bits[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~22_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(11));

-- Location: LCCOMB_X91_Y25_N24
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (bits(12) & (\Add3~23\ $ (GND))) # (!bits(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((bits(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: FF_X91_Y25_N25
\bits[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~24_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(12));

-- Location: LCCOMB_X91_Y25_N26
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (bits(13) & (!\Add3~25\)) # (!bits(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!bits(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: FF_X91_Y25_N27
\bits[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~26_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(13));

-- Location: LCCOMB_X91_Y25_N28
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (bits(14) & (\Add3~27\ $ (GND))) # (!bits(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((bits(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: FF_X91_Y25_N29
\bits[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~28_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(14));

-- Location: LCCOMB_X91_Y25_N30
\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (bits(15) & (!\Add3~29\)) # (!bits(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!bits(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: FF_X91_Y25_N31
\bits[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~30_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(15));

-- Location: LCCOMB_X91_Y24_N0
\Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (bits(16) & (\Add3~31\ $ (GND))) # (!bits(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((bits(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: FF_X91_Y24_N1
\bits[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~32_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(16));

-- Location: LCCOMB_X91_Y24_N2
\Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (bits(17) & (!\Add3~33\)) # (!bits(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!bits(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: FF_X91_Y24_N3
\bits[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~34_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(17));

-- Location: LCCOMB_X91_Y24_N4
\Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (bits(18) & (\Add3~35\ $ (GND))) # (!bits(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((bits(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: FF_X91_Y24_N5
\bits[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~36_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(18));

-- Location: LCCOMB_X91_Y24_N6
\Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (bits(19) & (!\Add3~37\)) # (!bits(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!bits(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: FF_X91_Y24_N7
\bits[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~38_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(19));

-- Location: LCCOMB_X91_Y24_N8
\Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (bits(20) & (\Add3~39\ $ (GND))) # (!bits(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((bits(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: FF_X91_Y24_N9
\bits[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~40_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(20));

-- Location: LCCOMB_X91_Y24_N10
\Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (bits(21) & (!\Add3~41\)) # (!bits(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!bits(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: FF_X91_Y24_N11
\bits[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~42_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(21));

-- Location: LCCOMB_X91_Y24_N12
\Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (bits(22) & (\Add3~43\ $ (GND))) # (!bits(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((bits(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: FF_X91_Y24_N13
\bits[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~44_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(22));

-- Location: LCCOMB_X91_Y24_N14
\Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (bits(23) & (!\Add3~45\)) # (!bits(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!bits(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: FF_X91_Y24_N15
\bits[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~46_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(23));

-- Location: LCCOMB_X91_Y24_N16
\Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (bits(24) & (\Add3~47\ $ (GND))) # (!bits(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((bits(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: FF_X91_Y24_N17
\bits[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~48_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(24));

-- Location: LCCOMB_X91_Y24_N18
\Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (bits(25) & (!\Add3~49\)) # (!bits(25) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!bits(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: FF_X91_Y24_N19
\bits[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~50_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(25));

-- Location: LCCOMB_X91_Y24_N20
\Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (bits(26) & (\Add3~51\ $ (GND))) # (!bits(26) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((bits(26) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: FF_X91_Y24_N21
\bits[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~52_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(26));

-- Location: LCCOMB_X91_Y24_N22
\Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (bits(27) & (!\Add3~53\)) # (!bits(27) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!bits(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: FF_X91_Y24_N23
\bits[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~54_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(27));

-- Location: LCCOMB_X91_Y24_N24
\Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (bits(28) & (\Add3~55\ $ (GND))) # (!bits(28) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((bits(28) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: FF_X91_Y24_N25
\bits[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~56_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(28));

-- Location: LCCOMB_X91_Y24_N26
\Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (bits(29) & (!\Add3~57\)) # (!bits(29) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!bits(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: FF_X91_Y24_N27
\bits[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~58_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(29));

-- Location: LCCOMB_X90_Y24_N22
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (bits(27)) # ((bits(25)) # ((bits(26)) # (bits(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(27),
	datab => bits(25),
	datac => bits(26),
	datad => bits(24),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X91_Y24_N28
\Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (bits(30) & (\Add3~59\ $ (GND))) # (!bits(30) & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((bits(30) & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: FF_X91_Y24_N29
\bits[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~60_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(30));

-- Location: LCCOMB_X91_Y24_N30
\Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = bits(31) $ (\Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: FF_X91_Y24_N31
\bits[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add3~62_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	ena => \count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits(31));

-- Location: LCCOMB_X90_Y24_N28
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (bits(31)) # (bits(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bits(31),
	datad => bits(30),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X90_Y24_N12
\Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (bits(29)) # ((bits(28)) # ((\Equal7~1_combout\) # (\Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(29),
	datab => bits(28),
	datac => \Equal7~1_combout\,
	datad => \Equal7~0_combout\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X90_Y24_N18
\Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (bits(22)) # ((bits(20)) # ((bits(21)) # (bits(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(22),
	datab => bits(20),
	datac => bits(21),
	datad => bits(23),
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X90_Y24_N8
\Equal7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (bits(18)) # ((bits(19)) # ((bits(16)) # (bits(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(18),
	datab => bits(19),
	datac => bits(16),
	datad => bits(17),
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X90_Y24_N10
\Equal7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (bits(15)) # ((bits(12)) # ((bits(13)) # (bits(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(15),
	datab => bits(12),
	datac => bits(13),
	datad => bits(14),
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X90_Y24_N24
\Equal7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (bits(8)) # ((bits(9)) # ((bits(10)) # (bits(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(8),
	datab => bits(9),
	datac => bits(10),
	datad => bits(11),
	combout => \Equal7~6_combout\);

-- Location: LCCOMB_X90_Y24_N14
\Equal7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~8_combout\ = ((bits(3)) # ((!bits(2)) # (!bits(0)))) # (!bits(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(1),
	datab => bits(3),
	datac => bits(0),
	datad => bits(2),
	combout => \Equal7~8_combout\);

-- Location: LCCOMB_X90_Y24_N6
\Equal7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~7_combout\ = (bits(6)) # ((bits(4)) # ((bits(7)) # (bits(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits(6),
	datab => bits(4),
	datac => bits(7),
	datad => bits(5),
	combout => \Equal7~7_combout\);

-- Location: LCCOMB_X90_Y24_N20
\Equal7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~9_combout\ = (\Equal7~5_combout\) # ((\Equal7~6_combout\) # ((\Equal7~8_combout\) # (\Equal7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~5_combout\,
	datab => \Equal7~6_combout\,
	datac => \Equal7~8_combout\,
	datad => \Equal7~7_combout\,
	combout => \Equal7~9_combout\);

-- Location: LCCOMB_X90_Y24_N26
\Equal7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~10_combout\ = (\Equal7~2_combout\) # ((\Equal7~3_combout\) # ((\Equal7~4_combout\) # (\Equal7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \Equal7~3_combout\,
	datac => \Equal7~4_combout\,
	datad => \Equal7~9_combout\,
	combout => \Equal7~10_combout\);

-- Location: LCCOMB_X88_Y25_N24
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\x.D~q\ & ((\Mux1~4_combout\ & (\Equal1~1_combout\)) # (!\Mux1~4_combout\ & ((!\Equal0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.D~q\,
	datab => \Mux1~4_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal0~10_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X88_Y25_N22
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\Equal7~10_combout\ & (\count[28]~37_combout\)) # (!\Equal7~10_combout\ & ((\count[28]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~10_combout\,
	datab => \count[28]~37_combout\,
	datac => \count[28]~38_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X88_Y25_N23
\x.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x.D~q\);

-- Location: LCCOMB_X88_Y24_N24
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\x.D~q\) # ((\x.F~q\) # (!\x.A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.D~q\,
	datac => \x.F~q\,
	datad => \x.A~q\,
	combout => \WideOr0~combout\);

-- Location: FF_X88_Y24_N25
\serial~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \WideOr0~combout\,
	clrn => \ALT_INV_Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial~reg0_q\);

-- Location: LCCOMB_X86_Y25_N0
\e1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e1~0_combout\ = (\Resetn~input_o\ & (((\e1~reg0_q\)))) # (!\Resetn~input_o\ & ((\Selector4~0_combout\) # ((!\x.E~q\ & \e1~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.E~q\,
	datab => \Resetn~input_o\,
	datac => \e1~reg0_q\,
	datad => \Selector4~0_combout\,
	combout => \e1~0_combout\);

-- Location: FF_X86_Y25_N1
\e1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \e1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e1~reg0_q\);

-- Location: LCCOMB_X88_Y26_N24
\f1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1~0_combout\ = (\x.F~q\ & !\Resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x.F~q\,
	datad => \Resetn~input_o\,
	combout => \f1~0_combout\);

-- Location: LCCOMB_X88_Y25_N26
\f1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1~1_combout\ = (\f1~0_combout\ & (\Mux2~4_combout\ & ((\Equal1~1_combout\)))) # (!\f1~0_combout\ & (((\f1~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \f1~0_combout\,
	datac => \f1~reg0_q\,
	datad => \Equal1~1_combout\,
	combout => \f1~1_combout\);

-- Location: FF_X88_Y25_N27
\f1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \f1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1~reg0_q\);

-- Location: LCCOMB_X88_Y24_N22
\g1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1~0_combout\ = (\Resetn~input_o\ & (((\g1~reg0_q\)))) # (!\Resetn~input_o\ & ((\Selector6~0_combout\) # ((!\x.G~q\ & \g1~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x.G~q\,
	datab => \Resetn~input_o\,
	datac => \g1~reg0_q\,
	datad => \Selector6~0_combout\,
	combout => \g1~0_combout\);

-- Location: FF_X88_Y24_N23
\g1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \g1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g1~reg0_q\);

-- Location: IOIBUF_X94_Y0_N8
\i0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i0,
	o => \i0~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\i1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i1,
	o => \i1~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\i2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2,
	o => \i2~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\i3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i3,
	o => \i3~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\i4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i4,
	o => \i4~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\i5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i5,
	o => \i5~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\i6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i6,
	o => \i6~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\i7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i7,
	o => \i7~input_o\);

ww_serial <= \serial~output_o\;

ww_a1 <= \a1~output_o\;

ww_b1 <= \b1~output_o\;

ww_c1 <= \c1~output_o\;

ww_d1 <= \d1~output_o\;

ww_e1 <= \e1~output_o\;

ww_f1 <= \f1~output_o\;

ww_g1 <= \g1~output_o\;
END structure;


