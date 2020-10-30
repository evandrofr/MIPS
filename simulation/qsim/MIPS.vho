-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/30/2020 12:27:49"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FDMIPS IS
    PORT (
	clk : IN std_logic;
	ULAout : OUT std_logic_vector(31 DOWNTO 0)
	);
END FDMIPS;

-- Design Ports Information
-- ULAout[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[6]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[9]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[10]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[11]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[12]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[13]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[14]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[15]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[16]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[17]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[18]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[19]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[20]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[21]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[22]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[23]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[24]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[25]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[26]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[27]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[28]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[29]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[30]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[31]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FDMIPS IS
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
SIGNAL ww_ULAout : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \somaUm|Add0~26\ : std_logic;
SIGNAL \somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \somaUm|Add0~10\ : std_logic;
SIGNAL \somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \somaUm|Add0~22\ : std_logic;
SIGNAL \somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \somaUm|Add0~18\ : std_logic;
SIGNAL \somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \somaUm|Add0~14\ : std_logic;
SIGNAL \somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1062_combout\ : std_logic;
SIGNAL \somaUm|Add0~6\ : std_logic;
SIGNAL \somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1064_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1063_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[1]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ULA|saida~32_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~39_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1065_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \ULA|saida~33_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~40_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1066_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[2]~1_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \ULA|saida[8]~8_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \ULA|saida[9]~9_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \ULA|saida[10]~10_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \ULA|saida[11]~11_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \ULA|saida[12]~12_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \ULA|saida[13]~13_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \ULA|saida[14]~14_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \ULA|saida[15]~15_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \ULA|saida[16]~16_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \ULA|saida[17]~17_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \ULA|saida[18]~18_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \ULA|saida[19]~19_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|saida[20]~20_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \ULA|saida[21]~21_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \ULA|saida[22]~22_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \ULA|saida[23]~23_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \ULA|saida[24]~24_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \ULA|saida[25]~25_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \ULA|saida[26]~26_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \ULA|saida[27]~27_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|saida[28]~28_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|saida[29]~29_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \ULA|saida[30]~30_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \ULA|saida[31]~31_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[2]~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[1]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ULAout <= ww_ULAout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\BancoRegistradores|ALT_INV_registrador~1066_combout\ <= NOT \BancoRegistradores|registrador~1066_combout\;
\BancoRegistradores|ALT_INV_registrador~40_q\ <= NOT \BancoRegistradores|registrador~40_q\;
\BancoRegistradores|ALT_INV_saidaA[2]~1_combout\ <= NOT \BancoRegistradores|saidaA[2]~1_combout\;
\BancoRegistradores|ALT_INV_registrador~1065_combout\ <= NOT \BancoRegistradores|registrador~1065_combout\;
\BancoRegistradores|ALT_INV_registrador~39_q\ <= NOT \BancoRegistradores|registrador~39_q\;
\BancoRegistradores|ALT_INV_saidaA[1]~0_combout\ <= NOT \BancoRegistradores|saidaA[1]~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1064_combout\ <= NOT \BancoRegistradores|registrador~1064_combout\;
\BancoRegistradores|ALT_INV_registrador~1063_combout\ <= NOT \BancoRegistradores|registrador~1063_combout\;
\BancoRegistradores|ALT_INV_registrador~1062_combout\ <= NOT \BancoRegistradores|registrador~1062_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\ULA|ALT_INV_Add0~121_sumout\ <= NOT \ULA|Add0~121_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\ULA|ALT_INV_Add0~113_sumout\ <= NOT \ULA|Add0~113_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\ULA|ALT_INV_Add0~105_sumout\ <= NOT \ULA|Add0~105_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\ULA|ALT_INV_Add0~97_sumout\ <= NOT \ULA|Add0~97_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\ULA|ALT_INV_Add0~89_sumout\ <= NOT \ULA|Add0~89_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\ULA|ALT_INV_Add0~81_sumout\ <= NOT \ULA|Add0~81_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\ULA|ALT_INV_Add0~73_sumout\ <= NOT \ULA|Add0~73_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\ULA|ALT_INV_Add0~65_sumout\ <= NOT \ULA|Add0~65_sumout\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\ULA|ALT_INV_Add0~57_sumout\ <= NOT \ULA|Add0~57_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\ULA|ALT_INV_Add0~49_sumout\ <= NOT \ULA|Add0~49_sumout\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\ULA|ALT_INV_Add0~41_sumout\ <= NOT \ULA|Add0~41_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\ULA|ALT_INV_Add0~33_sumout\ <= NOT \ULA|Add0~33_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;

-- Location: IOOBUF_X11_Y0_N36
\ULAout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(0));

-- Location: IOOBUF_X12_Y0_N36
\ULAout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(1));

-- Location: IOOBUF_X12_Y0_N2
\ULAout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(2));

-- Location: IOOBUF_X11_Y0_N19
\ULAout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(3));

-- Location: IOOBUF_X14_Y0_N53
\ULAout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(4));

-- Location: IOOBUF_X16_Y0_N59
\ULAout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(5));

-- Location: IOOBUF_X16_Y0_N93
\ULAout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(6));

-- Location: IOOBUF_X14_Y0_N2
\ULAout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(7));

-- Location: IOOBUF_X12_Y0_N19
\ULAout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(8));

-- Location: IOOBUF_X16_Y0_N76
\ULAout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(9));

-- Location: IOOBUF_X14_Y0_N19
\ULAout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(10));

-- Location: IOOBUF_X16_Y0_N42
\ULAout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(11));

-- Location: IOOBUF_X14_Y0_N36
\ULAout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(12));

-- Location: IOOBUF_X12_Y0_N53
\ULAout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(13));

-- Location: IOOBUF_X24_Y0_N19
\ULAout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(14));

-- Location: IOOBUF_X23_Y0_N76
\ULAout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(15));

-- Location: IOOBUF_X19_Y0_N53
\ULAout[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(16));

-- Location: IOOBUF_X24_Y0_N36
\ULAout[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(17));

-- Location: IOOBUF_X23_Y0_N59
\ULAout[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(18));

-- Location: IOOBUF_X22_Y0_N2
\ULAout[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(19));

-- Location: IOOBUF_X18_Y0_N36
\ULAout[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(20));

-- Location: IOOBUF_X22_Y0_N53
\ULAout[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(21));

-- Location: IOOBUF_X18_Y0_N53
\ULAout[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(22));

-- Location: IOOBUF_X19_Y0_N19
\ULAout[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(23));

-- Location: IOOBUF_X23_Y0_N93
\ULAout[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(24));

-- Location: IOOBUF_X22_Y0_N19
\ULAout[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(25));

-- Location: IOOBUF_X19_Y0_N2
\ULAout[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(26));

-- Location: IOOBUF_X19_Y0_N36
\ULAout[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(27));

-- Location: IOOBUF_X18_Y0_N19
\ULAout[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(28));

-- Location: IOOBUF_X23_Y0_N42
\ULAout[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(29));

-- Location: IOOBUF_X18_Y0_N2
\ULAout[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(30));

-- Location: IOOBUF_X22_Y0_N36
\ULAout[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_ULAout(31));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X16_Y3_N0
\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = !\PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

-- Location: FF_X16_Y3_N2
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \PC|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X16_Y3_N30
\somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~25_sumout\ = SUM(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))
-- \somaUm|Add0~26\ = CARRY(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \somaUm|Add0~25_sumout\,
	cout => \somaUm|Add0~26\);

-- Location: FF_X16_Y3_N26
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \somaUm|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X16_Y3_N33
\somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \somaUm|Add0~26\ ))
-- \somaUm|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \somaUm|Add0~26\,
	sumout => \somaUm|Add0~9_sumout\,
	cout => \somaUm|Add0~10\);

-- Location: FF_X16_Y3_N35
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somaUm|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X16_Y3_N36
\somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~21_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \somaUm|Add0~10\ ))
-- \somaUm|Add0~22\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \somaUm|Add0~10\,
	sumout => \somaUm|Add0~21_sumout\,
	cout => \somaUm|Add0~22\);

-- Location: FF_X16_Y3_N38
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somaUm|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X16_Y3_N39
\somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somaUm|Add0~22\ ))
-- \somaUm|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \somaUm|Add0~22\,
	sumout => \somaUm|Add0~17_sumout\,
	cout => \somaUm|Add0~18\);

-- Location: FF_X16_Y3_N40
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somaUm|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X16_Y3_N42
\somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somaUm|Add0~18\ ))
-- \somaUm|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \somaUm|Add0~18\,
	sumout => \somaUm|Add0~13_sumout\,
	cout => \somaUm|Add0~14\);

-- Location: FF_X16_Y3_N44
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somaUm|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: FF_X16_Y3_N41
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somaUm|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N15
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(5) & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X16_Y3_N12
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT\(5) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT[4]~DUPLICATE_q\ & ( (!\PC|DOUT\(5) & !\PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X16_Y3_N45
\somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~5_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somaUm|Add0~14\ ))
-- \somaUm|Add0~6\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \somaUm|Add0~14\,
	sumout => \somaUm|Add0~5_sumout\,
	cout => \somaUm|Add0~6\);

-- Location: FF_X16_Y3_N46
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somaUm|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X17_Y3_N3
\BancoRegistradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1062_combout\ = ( !\PC|DOUT\(6) & ( (\ROM|memROM~3_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \BancoRegistradores|registrador~1062_combout\);

-- Location: FF_X16_Y3_N50
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somaUm|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X16_Y3_N48
\somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~1_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somaUm|Add0~6\,
	sumout => \somaUm|Add0~1_sumout\);

-- Location: FF_X16_Y3_N49
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somaUm|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X16_Y3_N47
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somaUm|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N6
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\PC|DOUT[6]~DUPLICATE_q\ & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(5) & ((!\PC|DOUT[4]~DUPLICATE_q\) # ((!\PC|DOUT\(2) & !\PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X16_Y3_N27
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT[6]~DUPLICATE_q\ & !\PC|DOUT[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X16_Y3_N54
\BancoRegistradores|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1064_combout\ = ( \ROM|memROM~3_combout\ ) # ( !\ROM|memROM~3_combout\ & ( ((!\ROM|memROM~1_combout\) # (\PC|DOUT[6]~DUPLICATE_q\)) # (\PC|DOUT\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111111111110111011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \BancoRegistradores|registrador~1064_combout\);

-- Location: LABCELL_X17_Y3_N48
\BancoRegistradores|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1063_combout\ = ( \ROM|memROM~1_combout\ & ( (!\ROM|memROM~0_combout\ & ((\PC|DOUT[7]~DUPLICATE_q\) # (\PC|DOUT\(6)))) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BancoRegistradores|registrador~1063_combout\);

-- Location: LABCELL_X17_Y3_N36
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\PC|DOUT\(6) & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X17_Y3_N9
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \PC|DOUT\(6) ) # ( !\PC|DOUT\(6) & ( !\ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~5_combout\);

-- Location: MLABCELL_X18_Y3_N0
\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( VCC ) + ( ((!\ROM|memROM~4_combout\) # (!\ROM|memROM~5_combout\)) # (\PC|DOUT[7]~DUPLICATE_q\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

-- Location: MLABCELL_X18_Y3_N3
\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( !\BancoRegistradores|registrador~1064_combout\ $ (\BancoRegistradores|registrador~1063_combout\) ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & \BancoRegistradores|registrador~1062_combout\) ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( !\BancoRegistradores|registrador~1064_combout\ $ (\BancoRegistradores|registrador~1063_combout\) ) + ( (!\PC|DOUT[7]~DUPLICATE_q\ & \BancoRegistradores|registrador~1062_combout\) ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1063_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1062_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

-- Location: LABCELL_X17_Y3_N6
\ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~0_combout\ = ( \ULA|Add0~1_sumout\ & ( (((\BancoRegistradores|registrador~1062_combout\ & !\PC|DOUT[7]~DUPLICATE_q\)) # (\ROM|memROM~0_combout\)) # (\ROM|memROM~2_combout\) ) ) # ( !\ULA|Add0~1_sumout\ & ( (!\ROM|memROM~2_combout\ & 
-- (((\BancoRegistradores|registrador~1062_combout\ & !\PC|DOUT[7]~DUPLICATE_q\)) # (\ROM|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011110000010000001111000001001111111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1062_combout\,
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \ULA|saida[0]~0_combout\);

-- Location: LABCELL_X17_Y3_N54
\BancoRegistradores|saidaA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[1]~0_combout\ = ( \ROM|memROM~1_combout\ & ( (\ROM|memROM~3_combout\ & (!\PC|DOUT[7]~DUPLICATE_q\ & !\PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(6),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BancoRegistradores|saidaA[1]~0_combout\);

-- Location: LABCELL_X16_Y3_N24
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(4) & \PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X16_Y3_N18
\ULA|saida~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida~32_combout\ = ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~1_combout\ & (!\PC|DOUT\(7) & !\PC|DOUT[6]~DUPLICATE_q\)) ) ) # ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~1_combout\ & (\ROM|memROM~3_combout\ & (!\PC|DOUT\(7) & 
-- !\PC|DOUT[6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ULA|saida~32_combout\);

-- Location: FF_X16_Y3_N19
\BancoRegistradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ULA|saida~32_combout\,
	ena => \ROM|ALT_INV_memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~39_q\);

-- Location: LABCELL_X16_Y3_N57
\BancoRegistradores|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1065_combout\ = ( \BancoRegistradores|registrador~39_q\ & ( (!\ROM|memROM~0_combout\ & (((!\ROM|memROM~1_combout\) # (\PC|DOUT[6]~DUPLICATE_q\)) # (\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000111100001101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \BancoRegistradores|ALT_INV_registrador~39_q\,
	combout => \BancoRegistradores|registrador~1065_combout\);

-- Location: MLABCELL_X18_Y3_N6
\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \BancoRegistradores|saidaA[1]~0_combout\ ) + ( !\BancoRegistradores|registrador~1064_combout\ $ (((!\ROM|memROM~2_combout\ & ((!\ROM|memROM~0_combout\) # (!\BancoRegistradores|registrador~1065_combout\))) # 
-- (\ROM|memROM~2_combout\ & (!\ROM|memROM~0_combout\ & !\BancoRegistradores|registrador~1065_combout\)))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \BancoRegistradores|saidaA[1]~0_combout\ ) + ( !\BancoRegistradores|registrador~1064_combout\ $ (((!\ROM|memROM~2_combout\ & ((!\ROM|memROM~0_combout\) # (!\BancoRegistradores|registrador~1065_combout\))) # (\ROM|memROM~2_combout\ & 
-- (!\ROM|memROM~0_combout\ & !\BancoRegistradores|registrador~1065_combout\)))) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010011001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[1]~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1065_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

-- Location: LABCELL_X17_Y3_N39
\ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~1_combout\ = (\ROM|memROM~2_combout\ & \ULA|Add0~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \ULA|saida[1]~1_combout\);

-- Location: LABCELL_X16_Y3_N21
\ULA|saida~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida~33_combout\ = ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\ & (!\PC|DOUT[6]~DUPLICATE_q\ & !\PC|DOUT[7]~DUPLICATE_q\))) ) ) # ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~1_combout\ & (!\PC|DOUT[6]~DUPLICATE_q\ & 
-- !\PC|DOUT[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ULA|saida~33_combout\);

-- Location: FF_X16_Y3_N22
\BancoRegistradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ULA|saida~33_combout\,
	ena => \ROM|ALT_INV_memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~40_q\);

-- Location: LABCELL_X16_Y3_N3
\BancoRegistradores|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1066_combout\ = ( \PC|DOUT\(7) & ( (\BancoRegistradores|registrador~40_q\ & !\ROM|memROM~0_combout\) ) ) # ( !\PC|DOUT\(7) & ( (\BancoRegistradores|registrador~40_q\ & (!\ROM|memROM~0_combout\ & ((!\ROM|memROM~1_combout\) # 
-- (\PC|DOUT[6]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110000001000000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~40_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \BancoRegistradores|registrador~1066_combout\);

-- Location: LABCELL_X17_Y3_N45
\BancoRegistradores|saidaA[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[2]~1_combout\ = ( !\PC|DOUT\(6) & ( (!\ROM|memROM~3_combout\ & (!\PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \BancoRegistradores|saidaA[2]~1_combout\);

-- Location: MLABCELL_X18_Y3_N9
\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( !\BancoRegistradores|registrador~1064_combout\ $ (((!\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\)) # (\ROM|memROM~0_combout\ & ((!\BancoRegistradores|registrador~1066_combout\))))) ) + ( 
-- \BancoRegistradores|saidaA[2]~1_combout\ ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( !\BancoRegistradores|registrador~1064_combout\ $ (((!\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\)) # (\ROM|memROM~0_combout\ & ((!\BancoRegistradores|registrador~1066_combout\))))) ) + ( 
-- \BancoRegistradores|saidaA[2]~1_combout\ ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1066_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[2]~1_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

-- Location: LABCELL_X17_Y3_N42
\ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~2_combout\ = (\ULA|Add0~9_sumout\ & \ROM|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Add0~9_sumout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ULA|saida[2]~2_combout\);

-- Location: MLABCELL_X18_Y3_N12
\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

-- Location: LABCELL_X17_Y3_N51
\ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~3_combout\ = ( \ULA|Add0~13_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \ULA|saida[3]~3_combout\);

-- Location: MLABCELL_X18_Y3_N15
\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

-- Location: LABCELL_X17_Y3_N0
\ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~4_combout\ = (\ROM|memROM~2_combout\ & \ULA|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ULA|ALT_INV_Add0~17_sumout\,
	combout => \ULA|saida[4]~4_combout\);

-- Location: MLABCELL_X18_Y3_N18
\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

-- Location: LABCELL_X17_Y3_N57
\ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~5_combout\ = (\ULA|Add0~21_sumout\ & \ROM|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Add0~21_sumout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ULA|saida[5]~5_combout\);

-- Location: MLABCELL_X18_Y3_N21
\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

-- Location: LABCELL_X17_Y3_N24
\ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~6_combout\ = (\ROM|memROM~2_combout\ & \ULA|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ULA|ALT_INV_Add0~25_sumout\,
	combout => \ULA|saida[6]~6_combout\);

-- Location: MLABCELL_X18_Y3_N24
\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

-- Location: LABCELL_X17_Y3_N27
\ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~7_combout\ = ( \ULA|Add0~29_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \ULA|saida[7]~7_combout\);

-- Location: MLABCELL_X18_Y3_N27
\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

-- Location: LABCELL_X17_Y3_N18
\ULA|saida[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~8_combout\ = (\ROM|memROM~2_combout\ & \ULA|Add0~33_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ULA|ALT_INV_Add0~33_sumout\,
	combout => \ULA|saida[8]~8_combout\);

-- Location: MLABCELL_X18_Y3_N30
\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

-- Location: LABCELL_X17_Y3_N21
\ULA|saida[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~9_combout\ = ( \ULA|Add0~37_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \ULA|saida[9]~9_combout\);

-- Location: MLABCELL_X18_Y3_N33
\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

-- Location: LABCELL_X17_Y3_N12
\ULA|saida[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~10_combout\ = ( \ULA|Add0~41_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~41_sumout\,
	combout => \ULA|saida[10]~10_combout\);

-- Location: MLABCELL_X18_Y3_N36
\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

-- Location: LABCELL_X17_Y3_N15
\ULA|saida[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~11_combout\ = (\ROM|memROM~2_combout\ & \ULA|Add0~45_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \ULA|saida[11]~11_combout\);

-- Location: MLABCELL_X18_Y3_N39
\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

-- Location: LABCELL_X17_Y3_N30
\ULA|saida[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~12_combout\ = ( \ULA|Add0~49_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~49_sumout\,
	combout => \ULA|saida[12]~12_combout\);

-- Location: MLABCELL_X18_Y3_N42
\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

-- Location: LABCELL_X17_Y3_N33
\ULA|saida[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~13_combout\ = (\ROM|memROM~2_combout\ & \ULA|Add0~53_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ULA|ALT_INV_Add0~53_sumout\,
	combout => \ULA|saida[13]~13_combout\);

-- Location: MLABCELL_X18_Y3_N45
\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

-- Location: LABCELL_X19_Y3_N36
\ULA|saida[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~14_combout\ = ( \ULA|Add0~57_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~57_sumout\,
	combout => \ULA|saida[14]~14_combout\);

-- Location: MLABCELL_X18_Y3_N48
\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

-- Location: LABCELL_X19_Y3_N45
\ULA|saida[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~15_combout\ = ( \ULA|Add0~61_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ALT_INV_Add0~61_sumout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ULA|saida[15]~15_combout\);

-- Location: MLABCELL_X18_Y3_N51
\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

-- Location: LABCELL_X19_Y2_N27
\ULA|saida[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~16_combout\ = ( \ROM|memROM~2_combout\ & ( \ULA|Add0~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~65_sumout\,
	combout => \ULA|saida[16]~16_combout\);

-- Location: MLABCELL_X18_Y3_N54
\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

-- Location: LABCELL_X19_Y3_N27
\ULA|saida[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~17_combout\ = ( \ULA|Add0~69_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~69_sumout\,
	combout => \ULA|saida[17]~17_combout\);

-- Location: MLABCELL_X18_Y3_N57
\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

-- Location: LABCELL_X19_Y3_N9
\ULA|saida[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~18_combout\ = ( \ULA|Add0~73_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ALT_INV_Add0~73_sumout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ULA|saida[18]~18_combout\);

-- Location: MLABCELL_X18_Y2_N0
\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

-- Location: LABCELL_X19_Y2_N57
\ULA|saida[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~19_combout\ = ( \ROM|memROM~2_combout\ & ( \ULA|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~77_sumout\,
	combout => \ULA|saida[19]~19_combout\);

-- Location: MLABCELL_X18_Y2_N3
\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

-- Location: MLABCELL_X18_Y2_N45
\ULA|saida[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~20_combout\ = (\ROM|memROM~2_combout\ & \ULA|Add0~81_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ULA|ALT_INV_Add0~81_sumout\,
	combout => \ULA|saida[20]~20_combout\);

-- Location: MLABCELL_X18_Y2_N6
\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

-- Location: LABCELL_X19_Y2_N3
\ULA|saida[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~21_combout\ = ( \ULA|Add0~85_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ULA|ALT_INV_Add0~85_sumout\,
	combout => \ULA|saida[21]~21_combout\);

-- Location: MLABCELL_X18_Y2_N9
\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

-- Location: MLABCELL_X18_Y2_N42
\ULA|saida[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~22_combout\ = ( \ULA|Add0~89_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~89_sumout\,
	combout => \ULA|saida[22]~22_combout\);

-- Location: MLABCELL_X18_Y2_N12
\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

-- Location: LABCELL_X19_Y2_N30
\ULA|saida[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~23_combout\ = ( \ULA|Add0~93_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ULA|ALT_INV_Add0~93_sumout\,
	combout => \ULA|saida[23]~23_combout\);

-- Location: MLABCELL_X18_Y2_N15
\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

-- Location: MLABCELL_X18_Y2_N48
\ULA|saida[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~24_combout\ = ( \ULA|Add0~97_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~97_sumout\,
	combout => \ULA|saida[24]~24_combout\);

-- Location: MLABCELL_X18_Y2_N18
\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

-- Location: LABCELL_X19_Y2_N15
\ULA|saida[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~25_combout\ = ( \ROM|memROM~2_combout\ & ( \ULA|Add0~101_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~101_sumout\,
	combout => \ULA|saida[25]~25_combout\);

-- Location: MLABCELL_X18_Y2_N21
\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

-- Location: LABCELL_X19_Y2_N42
\ULA|saida[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~26_combout\ = ( \ULA|Add0~105_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ULA|ALT_INV_Add0~105_sumout\,
	combout => \ULA|saida[26]~26_combout\);

-- Location: MLABCELL_X18_Y2_N24
\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

-- Location: LABCELL_X19_Y2_N48
\ULA|saida[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~27_combout\ = ( \ROM|memROM~2_combout\ & ( \ULA|Add0~109_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~109_sumout\,
	combout => \ULA|saida[27]~27_combout\);

-- Location: MLABCELL_X18_Y2_N27
\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

-- Location: MLABCELL_X18_Y2_N51
\ULA|saida[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~28_combout\ = (\ROM|memROM~2_combout\ & \ULA|Add0~113_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ULA|ALT_INV_Add0~113_sumout\,
	combout => \ULA|saida[28]~28_combout\);

-- Location: MLABCELL_X18_Y2_N30
\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

-- Location: MLABCELL_X18_Y2_N54
\ULA|saida[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~29_combout\ = ( \ULA|Add0~117_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~117_sumout\,
	combout => \ULA|saida[29]~29_combout\);

-- Location: MLABCELL_X18_Y2_N33
\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

-- Location: MLABCELL_X18_Y2_N57
\ULA|saida[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~30_combout\ = ( \ULA|Add0~121_sumout\ & ( \ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~121_sumout\,
	combout => \ULA|saida[30]~30_combout\);

-- Location: MLABCELL_X18_Y2_N36
\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( GND ) + ( \BancoRegistradores|registrador~1064_combout\ ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BancoRegistradores|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

-- Location: LABCELL_X19_Y2_N18
\ULA|saida[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~31_combout\ = ( \ROM|memROM~2_combout\ & ( \ULA|Add0~125_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ULA|ALT_INV_Add0~125_sumout\,
	combout => \ULA|saida[31]~31_combout\);

-- Location: MLABCELL_X49_Y8_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


