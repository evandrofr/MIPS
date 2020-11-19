-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/19/2020 18:59:41"

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
	ULAout : OUT std_logic_vector(31 DOWNTO 0);
	PCout : OUT std_logic_vector(31 DOWNTO 0);
	MuxBEQout : OUT std_logic_vector(31 DOWNTO 0);
	flagZeroOut : OUT std_logic;
	BEQOut : OUT std_logic;
	andOut : OUT std_logic;
	UlaAout : OUT std_logic_vector(31 DOWNTO 0);
	UlaBOut : OUT std_logic_vector(31 DOWNTO 0)
	);
END FDMIPS;

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
SIGNAL ww_PCout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_MuxBEQout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_flagZeroOut : std_logic;
SIGNAL ww_BEQOut : std_logic;
SIGNAL ww_andOut : std_logic;
SIGNAL ww_UlaAout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_UlaBOut : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULAout[0]~output_o\ : std_logic;
SIGNAL \ULAout[1]~output_o\ : std_logic;
SIGNAL \ULAout[2]~output_o\ : std_logic;
SIGNAL \ULAout[3]~output_o\ : std_logic;
SIGNAL \ULAout[4]~output_o\ : std_logic;
SIGNAL \ULAout[5]~output_o\ : std_logic;
SIGNAL \ULAout[6]~output_o\ : std_logic;
SIGNAL \ULAout[7]~output_o\ : std_logic;
SIGNAL \ULAout[8]~output_o\ : std_logic;
SIGNAL \ULAout[9]~output_o\ : std_logic;
SIGNAL \ULAout[10]~output_o\ : std_logic;
SIGNAL \ULAout[11]~output_o\ : std_logic;
SIGNAL \ULAout[12]~output_o\ : std_logic;
SIGNAL \ULAout[13]~output_o\ : std_logic;
SIGNAL \ULAout[14]~output_o\ : std_logic;
SIGNAL \ULAout[15]~output_o\ : std_logic;
SIGNAL \ULAout[16]~output_o\ : std_logic;
SIGNAL \ULAout[17]~output_o\ : std_logic;
SIGNAL \ULAout[18]~output_o\ : std_logic;
SIGNAL \ULAout[19]~output_o\ : std_logic;
SIGNAL \ULAout[20]~output_o\ : std_logic;
SIGNAL \ULAout[21]~output_o\ : std_logic;
SIGNAL \ULAout[22]~output_o\ : std_logic;
SIGNAL \ULAout[23]~output_o\ : std_logic;
SIGNAL \ULAout[24]~output_o\ : std_logic;
SIGNAL \ULAout[25]~output_o\ : std_logic;
SIGNAL \ULAout[26]~output_o\ : std_logic;
SIGNAL \ULAout[27]~output_o\ : std_logic;
SIGNAL \ULAout[28]~output_o\ : std_logic;
SIGNAL \ULAout[29]~output_o\ : std_logic;
SIGNAL \ULAout[30]~output_o\ : std_logic;
SIGNAL \ULAout[31]~output_o\ : std_logic;
SIGNAL \PCout[0]~output_o\ : std_logic;
SIGNAL \PCout[1]~output_o\ : std_logic;
SIGNAL \PCout[2]~output_o\ : std_logic;
SIGNAL \PCout[3]~output_o\ : std_logic;
SIGNAL \PCout[4]~output_o\ : std_logic;
SIGNAL \PCout[5]~output_o\ : std_logic;
SIGNAL \PCout[6]~output_o\ : std_logic;
SIGNAL \PCout[7]~output_o\ : std_logic;
SIGNAL \PCout[8]~output_o\ : std_logic;
SIGNAL \PCout[9]~output_o\ : std_logic;
SIGNAL \PCout[10]~output_o\ : std_logic;
SIGNAL \PCout[11]~output_o\ : std_logic;
SIGNAL \PCout[12]~output_o\ : std_logic;
SIGNAL \PCout[13]~output_o\ : std_logic;
SIGNAL \PCout[14]~output_o\ : std_logic;
SIGNAL \PCout[15]~output_o\ : std_logic;
SIGNAL \PCout[16]~output_o\ : std_logic;
SIGNAL \PCout[17]~output_o\ : std_logic;
SIGNAL \PCout[18]~output_o\ : std_logic;
SIGNAL \PCout[19]~output_o\ : std_logic;
SIGNAL \PCout[20]~output_o\ : std_logic;
SIGNAL \PCout[21]~output_o\ : std_logic;
SIGNAL \PCout[22]~output_o\ : std_logic;
SIGNAL \PCout[23]~output_o\ : std_logic;
SIGNAL \PCout[24]~output_o\ : std_logic;
SIGNAL \PCout[25]~output_o\ : std_logic;
SIGNAL \PCout[26]~output_o\ : std_logic;
SIGNAL \PCout[27]~output_o\ : std_logic;
SIGNAL \PCout[28]~output_o\ : std_logic;
SIGNAL \PCout[29]~output_o\ : std_logic;
SIGNAL \PCout[30]~output_o\ : std_logic;
SIGNAL \PCout[31]~output_o\ : std_logic;
SIGNAL \MuxBEQout[0]~output_o\ : std_logic;
SIGNAL \MuxBEQout[1]~output_o\ : std_logic;
SIGNAL \MuxBEQout[2]~output_o\ : std_logic;
SIGNAL \MuxBEQout[3]~output_o\ : std_logic;
SIGNAL \MuxBEQout[4]~output_o\ : std_logic;
SIGNAL \MuxBEQout[5]~output_o\ : std_logic;
SIGNAL \MuxBEQout[6]~output_o\ : std_logic;
SIGNAL \MuxBEQout[7]~output_o\ : std_logic;
SIGNAL \MuxBEQout[8]~output_o\ : std_logic;
SIGNAL \MuxBEQout[9]~output_o\ : std_logic;
SIGNAL \MuxBEQout[10]~output_o\ : std_logic;
SIGNAL \MuxBEQout[11]~output_o\ : std_logic;
SIGNAL \MuxBEQout[12]~output_o\ : std_logic;
SIGNAL \MuxBEQout[13]~output_o\ : std_logic;
SIGNAL \MuxBEQout[14]~output_o\ : std_logic;
SIGNAL \MuxBEQout[15]~output_o\ : std_logic;
SIGNAL \MuxBEQout[16]~output_o\ : std_logic;
SIGNAL \MuxBEQout[17]~output_o\ : std_logic;
SIGNAL \MuxBEQout[18]~output_o\ : std_logic;
SIGNAL \MuxBEQout[19]~output_o\ : std_logic;
SIGNAL \MuxBEQout[20]~output_o\ : std_logic;
SIGNAL \MuxBEQout[21]~output_o\ : std_logic;
SIGNAL \MuxBEQout[22]~output_o\ : std_logic;
SIGNAL \MuxBEQout[23]~output_o\ : std_logic;
SIGNAL \MuxBEQout[24]~output_o\ : std_logic;
SIGNAL \MuxBEQout[25]~output_o\ : std_logic;
SIGNAL \MuxBEQout[26]~output_o\ : std_logic;
SIGNAL \MuxBEQout[27]~output_o\ : std_logic;
SIGNAL \MuxBEQout[28]~output_o\ : std_logic;
SIGNAL \MuxBEQout[29]~output_o\ : std_logic;
SIGNAL \MuxBEQout[30]~output_o\ : std_logic;
SIGNAL \MuxBEQout[31]~output_o\ : std_logic;
SIGNAL \flagZeroOut~output_o\ : std_logic;
SIGNAL \BEQOut~output_o\ : std_logic;
SIGNAL \andOut~output_o\ : std_logic;
SIGNAL \UlaAout[0]~output_o\ : std_logic;
SIGNAL \UlaAout[1]~output_o\ : std_logic;
SIGNAL \UlaAout[2]~output_o\ : std_logic;
SIGNAL \UlaAout[3]~output_o\ : std_logic;
SIGNAL \UlaAout[4]~output_o\ : std_logic;
SIGNAL \UlaAout[5]~output_o\ : std_logic;
SIGNAL \UlaAout[6]~output_o\ : std_logic;
SIGNAL \UlaAout[7]~output_o\ : std_logic;
SIGNAL \UlaAout[8]~output_o\ : std_logic;
SIGNAL \UlaAout[9]~output_o\ : std_logic;
SIGNAL \UlaAout[10]~output_o\ : std_logic;
SIGNAL \UlaAout[11]~output_o\ : std_logic;
SIGNAL \UlaAout[12]~output_o\ : std_logic;
SIGNAL \UlaAout[13]~output_o\ : std_logic;
SIGNAL \UlaAout[14]~output_o\ : std_logic;
SIGNAL \UlaAout[15]~output_o\ : std_logic;
SIGNAL \UlaAout[16]~output_o\ : std_logic;
SIGNAL \UlaAout[17]~output_o\ : std_logic;
SIGNAL \UlaAout[18]~output_o\ : std_logic;
SIGNAL \UlaAout[19]~output_o\ : std_logic;
SIGNAL \UlaAout[20]~output_o\ : std_logic;
SIGNAL \UlaAout[21]~output_o\ : std_logic;
SIGNAL \UlaAout[22]~output_o\ : std_logic;
SIGNAL \UlaAout[23]~output_o\ : std_logic;
SIGNAL \UlaAout[24]~output_o\ : std_logic;
SIGNAL \UlaAout[25]~output_o\ : std_logic;
SIGNAL \UlaAout[26]~output_o\ : std_logic;
SIGNAL \UlaAout[27]~output_o\ : std_logic;
SIGNAL \UlaAout[28]~output_o\ : std_logic;
SIGNAL \UlaAout[29]~output_o\ : std_logic;
SIGNAL \UlaAout[30]~output_o\ : std_logic;
SIGNAL \UlaAout[31]~output_o\ : std_logic;
SIGNAL \UlaBOut[0]~output_o\ : std_logic;
SIGNAL \UlaBOut[1]~output_o\ : std_logic;
SIGNAL \UlaBOut[2]~output_o\ : std_logic;
SIGNAL \UlaBOut[3]~output_o\ : std_logic;
SIGNAL \UlaBOut[4]~output_o\ : std_logic;
SIGNAL \UlaBOut[5]~output_o\ : std_logic;
SIGNAL \UlaBOut[6]~output_o\ : std_logic;
SIGNAL \UlaBOut[7]~output_o\ : std_logic;
SIGNAL \UlaBOut[8]~output_o\ : std_logic;
SIGNAL \UlaBOut[9]~output_o\ : std_logic;
SIGNAL \UlaBOut[10]~output_o\ : std_logic;
SIGNAL \UlaBOut[11]~output_o\ : std_logic;
SIGNAL \UlaBOut[12]~output_o\ : std_logic;
SIGNAL \UlaBOut[13]~output_o\ : std_logic;
SIGNAL \UlaBOut[14]~output_o\ : std_logic;
SIGNAL \UlaBOut[15]~output_o\ : std_logic;
SIGNAL \UlaBOut[16]~output_o\ : std_logic;
SIGNAL \UlaBOut[17]~output_o\ : std_logic;
SIGNAL \UlaBOut[18]~output_o\ : std_logic;
SIGNAL \UlaBOut[19]~output_o\ : std_logic;
SIGNAL \UlaBOut[20]~output_o\ : std_logic;
SIGNAL \UlaBOut[21]~output_o\ : std_logic;
SIGNAL \UlaBOut[22]~output_o\ : std_logic;
SIGNAL \UlaBOut[23]~output_o\ : std_logic;
SIGNAL \UlaBOut[24]~output_o\ : std_logic;
SIGNAL \UlaBOut[25]~output_o\ : std_logic;
SIGNAL \UlaBOut[26]~output_o\ : std_logic;
SIGNAL \UlaBOut[27]~output_o\ : std_logic;
SIGNAL \UlaBOut[28]~output_o\ : std_logic;
SIGNAL \UlaBOut[29]~output_o\ : std_logic;
SIGNAL \UlaBOut[30]~output_o\ : std_logic;
SIGNAL \UlaBOut[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~2\ : std_logic;
SIGNAL \somaQuatro|Add0~6\ : std_logic;
SIGNAL \somaQuatro|Add0~10\ : std_logic;
SIGNAL \somaQuatro|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \ROM|memROM~24_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~14\ : std_logic;
SIGNAL \somaQuatro|Add0~21_sumout\ : std_logic;
SIGNAL \somaQuatro|Add0~9_sumout\ : std_logic;
SIGNAL \somaQuatro|Add0~5_sumout\ : std_logic;
SIGNAL \somaQuatro|Add0~1_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~2\ : std_logic;
SIGNAL \somaSHIFT|Add0~6\ : std_logic;
SIGNAL \somaSHIFT|Add0~10\ : std_logic;
SIGNAL \somaSHIFT|Add0~14\ : std_logic;
SIGNAL \somaSHIFT|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \UC|Equal9~0_combout\ : std_logic;
SIGNAL \UC|palavraControle[3]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \UC|palavraControle[2]~1_combout\ : std_logic;
SIGNAL \UC|palavraControle[4]~2_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp~0_combout\ : std_logic;
SIGNAL \ROM|memROM~22_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp[2]~1_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp[2]~2_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp~4_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp[2]~8_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp[2]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \BancoRegistradores|Equal0~0_combout\ : std_logic;
SIGNAL \ROM|memROM~26_combout\ : std_logic;
SIGNAL \ROM|memROM~27_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp[0]~5_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp[0]~6_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp~9_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp[1]~3_combout\ : std_logic;
SIGNAL \ULA|saida[1]~4_combout\ : std_logic;
SIGNAL \ULA|saida[1]~5_combout\ : std_logic;
SIGNAL \ULA|saida[1]~6_combout\ : std_logic;
SIGNAL \BancoRegistradores|Equal1~0_combout\ : std_logic;
SIGNAL \MUXBCREG3|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1457_combout\ : std_logic;
SIGNAL \MUXBCREG3|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MUXBCREG3|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1330_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~335_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1329_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~303_q\ : std_logic;
SIGNAL \ROM|memROM~28_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1326_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~79_q\ : std_logic;
SIGNAL \ROM|memROM~29_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1365_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1136_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[9]~8_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1325_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~46_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~78_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1327_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~110_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1328_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~142_q\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1133_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~302_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1331_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~366_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1332_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~398_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1134_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1135_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~45_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~301_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1124_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~77_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1125_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~109_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~365_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1126_combout\ : std_logic;
SIGNAL \MUXUlaRam|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~141_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~397_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1127_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1128_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~44_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~76_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~108_q\ : std_logic;
SIGNAL \MUXUlaRam|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~140_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1117_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~300_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~364_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~396_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1118_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1068_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1119_combout\ : std_logic;
SIGNAL \ROM|memROM~25_combout\ : std_logic;
SIGNAL \ULA|saida[1]~7_combout\ : std_logic;
SIGNAL \ULA|saida[1]~8_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~43_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~299_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1108_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~75_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1109_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~107_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~363_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1110_combout\ : std_logic;
SIGNAL \MUXUlaRam|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~139_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~395_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1111_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1112_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~42_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~74_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~106_q\ : std_logic;
SIGNAL \MUXUlaRam|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~138_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1100_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~298_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~362_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~394_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1101_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1102_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1103_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~41_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~297_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1091_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~73_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1092_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~105_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~361_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1093_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~137_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~393_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1094_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1095_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~40_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~72_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~104_q\ : std_logic;
SIGNAL \MUXUlaRam|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~136_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1083_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~296_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~360_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~392_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1084_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1085_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1086_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~39_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~295_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1074_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~71_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1075_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~103_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~359_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1076_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~135_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~391_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1077_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1078_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[0]~31_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~38_q\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|Add1~130_cout\ : std_logic;
SIGNAL \ULA|Add1~5_sumout\ : std_logic;
SIGNAL \ULA|saida[0]~1_combout\ : std_logic;
SIGNAL \MUXUlaRam|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~70_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~102_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~134_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1066_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~294_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~358_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~390_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1067_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1069_combout\ : std_logic;
SIGNAL \ULA|Add1~6\ : std_logic;
SIGNAL \ULA|Add1~9_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ULA|saida[1]~3_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|saida[1]~9_combout\ : std_logic;
SIGNAL \ULA|saida[1]~10_combout\ : std_logic;
SIGNAL \MUXUlaRam|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~327_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1333_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1070_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[1]~0_combout\ : std_logic;
SIGNAL \ULA|Add1~10\ : std_logic;
SIGNAL \ULA|Add1~13_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ULA|saida[2]~11_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|saida[2]~12_combout\ : std_logic;
SIGNAL \ULA|saida[2]~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~328_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1337_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1079_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[2]~1_combout\ : std_logic;
SIGNAL \ULA|Add1~14\ : std_logic;
SIGNAL \ULA|Add1~17_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ULA|saida[3]~14_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|saida[3]~15_combout\ : std_logic;
SIGNAL \ULA|saida[3]~16_combout\ : std_logic;
SIGNAL \MUXUlaRam|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~329_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1341_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1087_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[3]~2_combout\ : std_logic;
SIGNAL \ULA|Add1~18\ : std_logic;
SIGNAL \ULA|Add1~21_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[4]~17_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|saida[4]~18_combout\ : std_logic;
SIGNAL \ULA|saida[4]~19_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~330_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1345_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1096_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[4]~3_combout\ : std_logic;
SIGNAL \ULA|Add1~22\ : std_logic;
SIGNAL \ULA|Add1~25_sumout\ : std_logic;
SIGNAL \ULA|saida[5]~20_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|saida[5]~21_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~331_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1349_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1104_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[5]~4_combout\ : std_logic;
SIGNAL \ULA|Add1~26\ : std_logic;
SIGNAL \ULA|Add1~29_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ULA|saida[6]~22_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|saida[6]~23_combout\ : std_logic;
SIGNAL \ULA|saida[6]~24_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~332_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1353_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1113_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[6]~5_combout\ : std_logic;
SIGNAL \ULA|Add1~30\ : std_logic;
SIGNAL \ULA|Add1~33_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ULA|saida[7]~25_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \ULA|saida[7]~26_combout\ : std_logic;
SIGNAL \ULA|saida[7]~27_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~333_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1357_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1120_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[7]~6_combout\ : std_logic;
SIGNAL \ULA|Add1~34\ : std_logic;
SIGNAL \ULA|Add1~37_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ULA|saida[8]~28_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \ULA|saida[8]~29_combout\ : std_logic;
SIGNAL \ULA|saida[8]~30_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~334_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1361_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1129_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[8]~7_combout\ : std_logic;
SIGNAL \ULA|Add1~38\ : std_logic;
SIGNAL \ULA|Add1~41_sumout\ : std_logic;
SIGNAL \ULA|saida[9]~31_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \ULA|saida[9]~32_combout\ : std_logic;
SIGNAL \ULA|saida[9]~33_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~47_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1140_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1141_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~111_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~367_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1142_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~143_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~399_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1143_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1144_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[9]~9_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~351_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~319_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~95_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1429_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1269_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[25]~24_combout\ : std_logic;
SIGNAL \ULA|saida[31]~100_combout\ : std_logic;
SIGNAL \ULA|saida[25]~80_combout\ : std_logic;
SIGNAL \ULA|saida[25]~81_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~63_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1264_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1265_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~127_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~383_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1266_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~159_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~415_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1267_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1268_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[25]~25_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~62_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~94_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~126_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~158_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1257_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~318_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~382_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~414_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1258_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1259_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[24]~24_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~61_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~317_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1248_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~93_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1249_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~125_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~381_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1250_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~157_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~413_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1251_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1252_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[23]~23_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~60_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~92_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~124_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~156_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1241_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~316_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~380_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~412_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1242_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1243_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[22]~22_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~59_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~315_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1232_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~91_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1233_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~123_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~379_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1234_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~155_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~411_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1235_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1236_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[21]~21_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~58_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~90_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~122_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~154_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1225_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~314_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~378_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~410_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1226_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1227_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[20]~20_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~57_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~313_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1216_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~89_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1217_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~121_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~377_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1218_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~153_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~409_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1219_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1220_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[19]~19_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~56_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~88_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~120_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~152_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1209_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~312_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~376_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~408_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1210_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1211_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[18]~18_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~55_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~311_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1200_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~87_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1201_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~119_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~375_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1202_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~151_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~407_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1203_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1204_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[17]~17_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~54_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~86_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~118_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~150_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1193_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~310_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~374_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~406_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1194_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1195_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[16]~16_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~53_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~309_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1188_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~85_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1189_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~117_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~373_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1190_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~149_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~405_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1191_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1192_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~52_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~84_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~116_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~148_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1181_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~308_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~372_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~404_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1182_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1183_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~51_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~307_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1172_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~83_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1173_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~115_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~371_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1174_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~147_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~403_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1175_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1176_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~50_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~82_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~114_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~146_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1165_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~306_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~370_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~402_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1166_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1167_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~49_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~305_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1156_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~81_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1157_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~113_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~369_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1158_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~145_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~401_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1159_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1160_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~48_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~80_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~112_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~144_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1149_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~304_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~368_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~400_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1150_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1151_combout\ : std_logic;
SIGNAL \ULA|Add1~42\ : std_logic;
SIGNAL \ULA|Add1~45_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[10]~10_combout\ : std_logic;
SIGNAL \ULA|saida[10]~34_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \ULA|saida[10]~35_combout\ : std_logic;
SIGNAL \ULA|saida[10]~36_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~336_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1369_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1145_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[10]~9_combout\ : std_logic;
SIGNAL \ULA|Add1~46\ : std_logic;
SIGNAL \ULA|Add1~49_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[11]~11_combout\ : std_logic;
SIGNAL \ULA|saida[11]~37_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \ULA|saida[11]~38_combout\ : std_logic;
SIGNAL \ULA|saida[11]~39_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~337_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1373_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1152_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[11]~10_combout\ : std_logic;
SIGNAL \ULA|Add1~50\ : std_logic;
SIGNAL \ULA|Add1~53_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[12]~12_combout\ : std_logic;
SIGNAL \ULA|saida[12]~40_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \ULA|saida[12]~41_combout\ : std_logic;
SIGNAL \ULA|saida[12]~42_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~338_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1377_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1161_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[12]~11_combout\ : std_logic;
SIGNAL \ULA|Add1~54\ : std_logic;
SIGNAL \ULA|Add1~57_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[13]~13_combout\ : std_logic;
SIGNAL \ULA|saida[13]~43_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \ULA|saida[13]~44_combout\ : std_logic;
SIGNAL \ULA|saida[13]~45_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~339_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1381_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1168_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[13]~12_combout\ : std_logic;
SIGNAL \ULA|Add1~58\ : std_logic;
SIGNAL \ULA|Add1~61_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[14]~14_combout\ : std_logic;
SIGNAL \ULA|saida[14]~46_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \ULA|saida[14]~47_combout\ : std_logic;
SIGNAL \ULA|saida[14]~48_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~340_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1385_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1177_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[14]~13_combout\ : std_logic;
SIGNAL \ULA|Add1~62\ : std_logic;
SIGNAL \ULA|Add1~65_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[15]~15_combout\ : std_logic;
SIGNAL \ULA|saida[15]~49_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \ULA|saida[15]~50_combout\ : std_logic;
SIGNAL \ULA|saida[15]~51_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~341_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1389_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1184_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[15]~14_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \ULA|Add1~66\ : std_logic;
SIGNAL \ULA|Add1~69_sumout\ : std_logic;
SIGNAL \ULA|saida[16]~52_combout\ : std_logic;
SIGNAL \ULA|saida[16]~53_combout\ : std_logic;
SIGNAL \ULA|saida[16]~54_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~342_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1393_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1196_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[16]~15_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \ULA|Add1~70\ : std_logic;
SIGNAL \ULA|Add1~73_sumout\ : std_logic;
SIGNAL \ULA|saida[17]~55_combout\ : std_logic;
SIGNAL \ULA|saida[17]~56_combout\ : std_logic;
SIGNAL \ULA|saida[17]~57_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~343_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1397_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1205_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[17]~16_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \ULA|Add1~74\ : std_logic;
SIGNAL \ULA|Add1~77_sumout\ : std_logic;
SIGNAL \ULA|saida[18]~58_combout\ : std_logic;
SIGNAL \ULA|saida[18]~59_combout\ : std_logic;
SIGNAL \ULA|saida[18]~60_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~344_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1401_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1212_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[18]~17_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \ULA|Add1~78\ : std_logic;
SIGNAL \ULA|Add1~81_sumout\ : std_logic;
SIGNAL \ULA|saida[19]~61_combout\ : std_logic;
SIGNAL \ULA|saida[19]~62_combout\ : std_logic;
SIGNAL \ULA|saida[19]~63_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~345_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1405_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1221_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[19]~18_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|Add1~82\ : std_logic;
SIGNAL \ULA|Add1~85_sumout\ : std_logic;
SIGNAL \ULA|saida[20]~64_combout\ : std_logic;
SIGNAL \ULA|saida[20]~65_combout\ : std_logic;
SIGNAL \ULA|saida[20]~66_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~346_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1409_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1228_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[20]~19_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \ULA|Add1~86\ : std_logic;
SIGNAL \ULA|Add1~89_sumout\ : std_logic;
SIGNAL \ULA|saida[21]~67_combout\ : std_logic;
SIGNAL \ULA|saida[21]~68_combout\ : std_logic;
SIGNAL \ULA|saida[21]~69_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~347_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1413_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1237_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[21]~20_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \ULA|Add1~90\ : std_logic;
SIGNAL \ULA|Add1~93_sumout\ : std_logic;
SIGNAL \ULA|saida[22]~70_combout\ : std_logic;
SIGNAL \ULA|saida[22]~71_combout\ : std_logic;
SIGNAL \ULA|saida[22]~72_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~348_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1417_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1244_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[22]~21_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \ULA|Add1~94\ : std_logic;
SIGNAL \ULA|Add1~97_sumout\ : std_logic;
SIGNAL \ULA|saida[23]~73_combout\ : std_logic;
SIGNAL \ULA|saida[23]~74_combout\ : std_logic;
SIGNAL \ULA|saida[23]~75_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~349_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1421_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1253_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[23]~22_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \ULA|Add1~98\ : std_logic;
SIGNAL \ULA|Add1~101_sumout\ : std_logic;
SIGNAL \ULA|saida[24]~76_combout\ : std_logic;
SIGNAL \ULA|saida[24]~77_combout\ : std_logic;
SIGNAL \ULA|saida[24]~78_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~350_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1425_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1260_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[24]~23_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \ULA|Add1~102\ : std_logic;
SIGNAL \ULA|Add1~105_sumout\ : std_logic;
SIGNAL \ULA|saida[25]~79_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~354_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~322_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~98_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1441_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1292_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[28]~27_combout\ : std_logic;
SIGNAL \ULA|saida[28]~89_combout\ : std_logic;
SIGNAL \ULA|saida[28]~90_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~66_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~130_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~162_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1289_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~386_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~418_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1290_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1291_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[28]~28_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~65_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~321_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1280_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~97_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1281_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~129_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~385_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1282_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~161_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~417_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1283_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1284_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[27]~27_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~64_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~96_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~128_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~160_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1273_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~320_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~384_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~416_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1274_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1275_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[26]~26_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \ULA|Add1~106\ : std_logic;
SIGNAL \ULA|Add1~109_sumout\ : std_logic;
SIGNAL \ULA|saida[26]~82_combout\ : std_logic;
SIGNAL \ULA|saida[26]~83_combout\ : std_logic;
SIGNAL \ULA|saida[26]~84_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~352_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1433_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1276_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[26]~25_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \ULA|Add1~110\ : std_logic;
SIGNAL \ULA|Add1~113_sumout\ : std_logic;
SIGNAL \ULA|saida[27]~85_combout\ : std_logic;
SIGNAL \ULA|saida[27]~86_combout\ : std_logic;
SIGNAL \ULA|saida[27]~87_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~353_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1437_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1285_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[27]~26_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|Add1~114\ : std_logic;
SIGNAL \ULA|Add1~117_sumout\ : std_logic;
SIGNAL \ULA|saida[28]~88_combout\ : std_logic;
SIGNAL \ULA|Equal8~0_combout\ : std_logic;
SIGNAL \ULA|Equal8~1_combout\ : std_logic;
SIGNAL \ULA|Equal8~2_combout\ : std_logic;
SIGNAL \ULA|Equal8~3_combout\ : std_logic;
SIGNAL \ULA|Equal8~4_combout\ : std_logic;
SIGNAL \ULA|Equal8~5_combout\ : std_logic;
SIGNAL \ULA|Equal8~6_combout\ : std_logic;
SIGNAL \ULA|Equal8~7_combout\ : std_logic;
SIGNAL \ULA|Equal8~8_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~69_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~325_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1312_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~101_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1313_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~133_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~389_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1314_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~165_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~421_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1315_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1316_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[31]~31_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~68_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~100_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~132_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~164_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1305_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~324_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~388_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~420_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1306_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1307_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[30]~30_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~67_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~323_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1296_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~99_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1297_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~131_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~387_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1298_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~163_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~419_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1299_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1300_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[29]~29_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|Add1~118\ : std_logic;
SIGNAL \ULA|Add1~121_sumout\ : std_logic;
SIGNAL \ULA|saida[29]~91_combout\ : std_logic;
SIGNAL \ULA|saida[29]~92_combout\ : std_logic;
SIGNAL \ULA|saida[29]~93_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~355_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1445_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1301_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[29]~28_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \ULA|Add1~122\ : std_logic;
SIGNAL \ULA|Add1~125_sumout\ : std_logic;
SIGNAL \ULA|saida[30]~94_combout\ : std_logic;
SIGNAL \ULA|saida[30]~95_combout\ : std_logic;
SIGNAL \ULA|saida[30]~96_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~356_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1449_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1308_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[30]~29_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \ULA|Add1~126\ : std_logic;
SIGNAL \ULA|Add1~1_sumout\ : std_logic;
SIGNAL \ULA|saida[31]~97_combout\ : std_logic;
SIGNAL \ULA|saida[31]~99_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~357_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1453_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1317_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[31]~30_combout\ : std_logic;
SIGNAL \ULA|saida[31]~98_combout\ : std_logic;
SIGNAL \ULA|Equal8~20_combout\ : std_logic;
SIGNAL \ULA|Equal8~21_combout\ : std_logic;
SIGNAL \ULA|Equal8~9_combout\ : std_logic;
SIGNAL \ULA|Equal8~17_combout\ : std_logic;
SIGNAL \ULA|Equal8~18_combout\ : std_logic;
SIGNAL \ULA|Equal8~19_combout\ : std_logic;
SIGNAL \ULA|Equal8~16_combout\ : std_logic;
SIGNAL \seletorBranchSignal~1_combout\ : std_logic;
SIGNAL \UC|Equal8~0_combout\ : std_logic;
SIGNAL \seletorBranchSignal~2_combout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \somaSHIFT|Add0~13_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \ROM|memROM~23_combout\ : std_logic;
SIGNAL \somaSHIFT|Add0~9_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \somaSHIFT|Add0~5_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \somaSHIFT|Add0~1_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \UC|Equal11~0_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~22\ : std_logic;
SIGNAL \somaQuatro|Add0~17_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~18\ : std_logic;
SIGNAL \somaSHIFT|Add0~21_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \UC|Equal10~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~326_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1321_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1062_combout\ : std_logic;
SIGNAL \ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA|saida[0]~2_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~18\ : std_logic;
SIGNAL \somaQuatro|Add0~25_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~22\ : std_logic;
SIGNAL \somaSHIFT|Add0~25_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[8]~6_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~26\ : std_logic;
SIGNAL \somaQuatro|Add0~29_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~26\ : std_logic;
SIGNAL \somaSHIFT|Add0~29_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[9]~7_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~30\ : std_logic;
SIGNAL \somaQuatro|Add0~33_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~30\ : std_logic;
SIGNAL \somaSHIFT|Add0~33_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[10]~8_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~34\ : std_logic;
SIGNAL \somaQuatro|Add0~37_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~34\ : std_logic;
SIGNAL \somaSHIFT|Add0~37_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[11]~9_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~38\ : std_logic;
SIGNAL \somaQuatro|Add0~41_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~38\ : std_logic;
SIGNAL \somaSHIFT|Add0~41_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[12]~10_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~42\ : std_logic;
SIGNAL \somaQuatro|Add0~45_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~42\ : std_logic;
SIGNAL \somaSHIFT|Add0~45_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[13]~11_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~46\ : std_logic;
SIGNAL \somaQuatro|Add0~49_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~46\ : std_logic;
SIGNAL \somaSHIFT|Add0~49_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[14]~12_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~50\ : std_logic;
SIGNAL \somaQuatro|Add0~53_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~50\ : std_logic;
SIGNAL \somaSHIFT|Add0~53_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[15]~13_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~54\ : std_logic;
SIGNAL \somaQuatro|Add0~57_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~54\ : std_logic;
SIGNAL \somaSHIFT|Add0~57_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[16]~14_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~58\ : std_logic;
SIGNAL \somaQuatro|Add0~61_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~58\ : std_logic;
SIGNAL \somaSHIFT|Add0~61_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[17]~15_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~62\ : std_logic;
SIGNAL \somaQuatro|Add0~65_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~62\ : std_logic;
SIGNAL \somaSHIFT|Add0~65_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[18]~16_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~66\ : std_logic;
SIGNAL \somaQuatro|Add0~69_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~66\ : std_logic;
SIGNAL \somaSHIFT|Add0~69_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[19]~17_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~70\ : std_logic;
SIGNAL \somaQuatro|Add0~73_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~70\ : std_logic;
SIGNAL \somaSHIFT|Add0~73_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[20]~18_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~74\ : std_logic;
SIGNAL \somaQuatro|Add0~77_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~74\ : std_logic;
SIGNAL \somaSHIFT|Add0~77_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[21]~19_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~78\ : std_logic;
SIGNAL \somaQuatro|Add0~81_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~78\ : std_logic;
SIGNAL \somaSHIFT|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|Equal8~10_combout\ : std_logic;
SIGNAL \ULA|Equal8~11_combout\ : std_logic;
SIGNAL \ULA|Equal8~12_combout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[22]~20_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~82\ : std_logic;
SIGNAL \somaQuatro|Add0~85_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~82\ : std_logic;
SIGNAL \somaSHIFT|Add0~85_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[23]~21_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~86\ : std_logic;
SIGNAL \somaQuatro|Add0~89_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~86\ : std_logic;
SIGNAL \somaSHIFT|Add0~89_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[24]~22_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~90\ : std_logic;
SIGNAL \somaQuatro|Add0~93_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~90\ : std_logic;
SIGNAL \somaSHIFT|Add0~93_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[25]~23_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~94\ : std_logic;
SIGNAL \somaQuatro|Add0~97_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~94\ : std_logic;
SIGNAL \somaSHIFT|Add0~97_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[26]~24_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~98\ : std_logic;
SIGNAL \somaQuatro|Add0~101_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~98\ : std_logic;
SIGNAL \somaSHIFT|Add0~101_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[27]~25_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~102\ : std_logic;
SIGNAL \somaQuatro|Add0~105_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~102\ : std_logic;
SIGNAL \somaSHIFT|Add0~105_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[28]~26_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~106\ : std_logic;
SIGNAL \somaQuatro|Add0~109_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~106\ : std_logic;
SIGNAL \somaSHIFT|Add0~109_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[29]~27_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~110\ : std_logic;
SIGNAL \somaQuatro|Add0~113_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~110\ : std_logic;
SIGNAL \somaSHIFT|Add0~113_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[30]~28_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~114\ : std_logic;
SIGNAL \somaQuatro|Add0~117_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~114\ : std_logic;
SIGNAL \somaSHIFT|Add0~117_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[31]~29_combout\ : std_logic;
SIGNAL \ULA|Equal8~13_combout\ : std_logic;
SIGNAL \ULA|Equal8~14_combout\ : std_logic;
SIGNAL \ULA|Equal8~15_combout\ : std_logic;
SIGNAL \seletorBranchSignal~0_combout\ : std_logic;
SIGNAL \UC|palavraControle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BancoRegistradores|ALT_INV_registrador~335_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~79_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1136_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~398_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~366_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~334_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~142_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~110_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~78_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1129_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~397_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~365_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~109_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~333_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~77_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1120_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~396_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~364_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~332_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~108_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~76_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1113_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~395_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~363_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~107_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~331_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~75_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1104_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~394_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~362_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~330_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~106_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~74_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1096_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~105_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~73_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~360_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~328_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~104_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~72_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~391_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~135_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~71_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~390_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~326_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~102_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~345_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~89_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1212_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~408_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~376_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~344_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~152_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~120_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~88_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1205_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~407_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~151_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~375_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~119_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~343_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~87_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1196_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~406_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~374_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~342_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~150_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~118_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~86_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~405_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~149_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~373_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~117_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~341_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~85_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1184_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~404_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~372_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~340_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~148_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~116_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~84_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1177_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~403_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~147_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~371_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~115_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~339_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~83_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1168_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~402_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~370_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~338_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~146_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~114_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~82_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1161_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~401_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~145_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~369_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~113_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~337_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~81_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1152_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~400_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~368_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~336_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~144_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~112_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~80_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1145_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~399_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~143_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~367_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~111_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1292_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~418_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~386_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~354_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~162_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~130_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~98_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1285_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~417_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~161_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~385_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~129_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~353_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~97_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1276_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~416_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~384_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~352_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~160_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~128_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~96_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1269_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~415_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~159_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~383_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~127_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~351_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~95_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1260_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~414_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~382_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~350_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~158_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~126_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~94_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1253_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~413_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~157_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~381_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~125_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~349_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~93_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1244_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~412_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~380_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~348_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~156_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~124_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~92_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1237_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~411_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~155_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~379_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~123_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~347_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~91_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1228_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~410_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~378_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~346_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~154_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~122_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~90_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1221_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~409_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~153_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~377_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~121_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1405_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1401_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1397_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1393_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1389_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1385_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1381_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1377_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1373_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1369_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1365_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1361_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1357_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1353_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1349_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1345_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1341_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1337_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1333_combout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1321_combout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \somaSHIFT|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1317_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~421_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~165_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~389_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~133_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~357_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~101_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1308_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~420_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~388_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~356_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~164_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~132_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~100_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1301_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~419_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~163_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~387_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~131_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~355_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~99_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~4_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~359_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~103_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~327_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[1]~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp[2]~7_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp[0]~6_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp[0]~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp~4_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp[1]~3_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp[2]~2_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp[2]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \UC|ALT_INV_palavraControle[4]~2_combout\ : std_logic;
SIGNAL \UC|ALT_INV_palavraControle[2]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \UC|ALT_INV_palavraControle[3]~0_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~358_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~134_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~70_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \UC|ALT_INV_palavraControle\ : std_logic_vector(7 DOWNTO 7);
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \somaQuatro|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1453_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1449_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1445_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1441_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1437_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1433_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1429_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1425_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1421_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1417_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1413_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1409_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[13]~43_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[13]~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1176_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1175_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1174_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1173_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1172_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[13]~12_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[12]~41_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[12]~40_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[12]~12_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1167_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1166_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1165_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[12]~11_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[11]~38_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[11]~37_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[11]~11_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1160_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1159_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1158_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1157_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1156_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[11]~10_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[10]~35_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[10]~34_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[10]~10_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1151_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1150_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1149_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[10]~9_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[9]~32_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[9]~31_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[9]~9_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1144_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1143_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1142_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1141_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1140_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[9]~8_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[8]~29_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[8]~28_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1135_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1134_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1133_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[8]~7_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[7]~27_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[7]~26_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[7]~25_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1128_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1127_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~141_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1126_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1125_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1124_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[7]~6_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[6]~24_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[6]~23_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[6]~22_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1119_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1118_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1117_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~140_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[6]~5_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[5]~21_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[5]~20_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1112_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1111_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~139_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1110_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1109_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1108_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[5]~4_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[4]~19_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[4]~18_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[4]~17_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1103_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1101_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1100_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~138_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[4]~3_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~16_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~15_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~14_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1095_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~393_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~137_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~361_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~329_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[3]~2_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~13_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~12_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~11_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~392_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~136_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[2]~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~10_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~9_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~8_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~7_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~6_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~5_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[27]~86_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[27]~26_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[27]~85_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[27]~27_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1284_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1283_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1282_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1281_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1280_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[26]~83_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[26]~25_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[26]~82_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[26]~26_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1275_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1274_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1273_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[25]~80_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[25]~24_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[25]~79_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[25]~25_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1268_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1267_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1266_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1265_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1264_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[24]~77_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[24]~23_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[24]~76_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[24]~24_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1259_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1258_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1257_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[23]~74_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[23]~22_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[23]~73_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[23]~23_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1252_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1251_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1250_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1249_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1248_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[22]~71_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[22]~21_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[22]~70_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[22]~22_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1243_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1242_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1241_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[21]~68_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[21]~20_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[21]~67_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[21]~21_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1236_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1235_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1234_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1233_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1232_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[20]~65_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[20]~19_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[20]~64_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[20]~20_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1227_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1226_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1225_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[19]~62_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[19]~18_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[19]~61_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[19]~19_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1220_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1219_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1218_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1217_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1216_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[18]~59_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[18]~17_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[18]~58_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[18]~18_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1211_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1210_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1209_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~56_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~55_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[17]~17_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1204_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1203_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1202_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1201_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1200_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[16]~54_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[16]~53_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[16]~15_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[16]~52_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[16]~16_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1195_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1194_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1193_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[15]~50_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[15]~49_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[15]~15_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1192_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1191_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1190_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1189_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1188_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[15]~14_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[14]~47_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[14]~46_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[14]~14_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1183_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1182_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1181_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[14]~13_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[13]~44_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \MUXBCREG3|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MUXBCREG3|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ALT_INV_seletorBranchSignal~2_combout\ : std_logic;
SIGNAL \ALT_INV_seletorBranchSignal~1_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[0]~31_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~16_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~15_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~14_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~13_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~12_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~11_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~10_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~9_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~8_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~7_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~6_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~5_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~4_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~3_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[31]~98_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[31]~30_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[31]~97_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[31]~31_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1316_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1315_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1314_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1313_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1312_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[30]~95_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[30]~29_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[30]~94_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[30]~30_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1307_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1306_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1305_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[29]~92_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[29]~28_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[29]~91_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[29]~29_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1300_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1299_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1298_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1297_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1296_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[28]~89_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[28]~27_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[28]~88_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[28]~28_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1291_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1290_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1289_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp~9_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp[2]~8_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[31]~100_combout\ : std_logic;
SIGNAL \MUXBCREG3|ALT_INV_saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1457_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~21_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~20_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~19_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~18_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~17_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ULAout <= ww_ULAout;
PCout <= ww_PCout;
MuxBEQout <= ww_MuxBEQout;
flagZeroOut <= ww_flagZeroOut;
BEQOut <= ww_BEQOut;
andOut <= ww_andOut;
UlaAout <= ww_UlaAout;
UlaBOut <= ww_UlaBOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\BancoRegistradores|ALT_INV_registrador~335_q\ <= NOT \BancoRegistradores|registrador~335_q\;
\BancoRegistradores|ALT_INV_registrador~79_q\ <= NOT \BancoRegistradores|registrador~79_q\;
\BancoRegistradores|ALT_INV_registrador~303_q\ <= NOT \BancoRegistradores|registrador~303_q\;
\BancoRegistradores|ALT_INV_registrador~47_q\ <= NOT \BancoRegistradores|registrador~47_q\;
\BancoRegistradores|ALT_INV_registrador~1136_combout\ <= NOT \BancoRegistradores|registrador~1136_combout\;
\ULA|ALT_INV_Add1~41_sumout\ <= NOT \ULA|Add1~41_sumout\;
\ULA|ALT_INV_Add0~33_sumout\ <= NOT \ULA|Add0~33_sumout\;
\BancoRegistradores|ALT_INV_registrador~398_q\ <= NOT \BancoRegistradores|registrador~398_q\;
\BancoRegistradores|ALT_INV_registrador~366_q\ <= NOT \BancoRegistradores|registrador~366_q\;
\BancoRegistradores|ALT_INV_registrador~334_q\ <= NOT \BancoRegistradores|registrador~334_q\;
\BancoRegistradores|ALT_INV_registrador~302_q\ <= NOT \BancoRegistradores|registrador~302_q\;
\BancoRegistradores|ALT_INV_registrador~142_q\ <= NOT \BancoRegistradores|registrador~142_q\;
\BancoRegistradores|ALT_INV_registrador~110_q\ <= NOT \BancoRegistradores|registrador~110_q\;
\BancoRegistradores|ALT_INV_registrador~78_q\ <= NOT \BancoRegistradores|registrador~78_q\;
\BancoRegistradores|ALT_INV_registrador~46_q\ <= NOT \BancoRegistradores|registrador~46_q\;
\BancoRegistradores|ALT_INV_registrador~1129_combout\ <= NOT \BancoRegistradores|registrador~1129_combout\;
\ULA|ALT_INV_Add1~37_sumout\ <= NOT \ULA|Add1~37_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\BancoRegistradores|ALT_INV_registrador~397_q\ <= NOT \BancoRegistradores|registrador~397_q\;
\BancoRegistradores|ALT_INV_registrador~365_q\ <= NOT \BancoRegistradores|registrador~365_q\;
\BancoRegistradores|ALT_INV_registrador~109_q\ <= NOT \BancoRegistradores|registrador~109_q\;
\BancoRegistradores|ALT_INV_registrador~333_q\ <= NOT \BancoRegistradores|registrador~333_q\;
\BancoRegistradores|ALT_INV_registrador~77_q\ <= NOT \BancoRegistradores|registrador~77_q\;
\BancoRegistradores|ALT_INV_registrador~301_q\ <= NOT \BancoRegistradores|registrador~301_q\;
\BancoRegistradores|ALT_INV_registrador~45_q\ <= NOT \BancoRegistradores|registrador~45_q\;
\BancoRegistradores|ALT_INV_registrador~1120_combout\ <= NOT \BancoRegistradores|registrador~1120_combout\;
\ULA|ALT_INV_Add1~33_sumout\ <= NOT \ULA|Add1~33_sumout\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\BancoRegistradores|ALT_INV_registrador~396_q\ <= NOT \BancoRegistradores|registrador~396_q\;
\BancoRegistradores|ALT_INV_registrador~364_q\ <= NOT \BancoRegistradores|registrador~364_q\;
\BancoRegistradores|ALT_INV_registrador~332_q\ <= NOT \BancoRegistradores|registrador~332_q\;
\BancoRegistradores|ALT_INV_registrador~300_q\ <= NOT \BancoRegistradores|registrador~300_q\;
\BancoRegistradores|ALT_INV_registrador~108_q\ <= NOT \BancoRegistradores|registrador~108_q\;
\BancoRegistradores|ALT_INV_registrador~76_q\ <= NOT \BancoRegistradores|registrador~76_q\;
\BancoRegistradores|ALT_INV_registrador~44_q\ <= NOT \BancoRegistradores|registrador~44_q\;
\BancoRegistradores|ALT_INV_registrador~1113_combout\ <= NOT \BancoRegistradores|registrador~1113_combout\;
\ULA|ALT_INV_Add1~29_sumout\ <= NOT \ULA|Add1~29_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add1~25_sumout\ <= NOT \ULA|Add1~25_sumout\;
\BancoRegistradores|ALT_INV_registrador~395_q\ <= NOT \BancoRegistradores|registrador~395_q\;
\BancoRegistradores|ALT_INV_registrador~363_q\ <= NOT \BancoRegistradores|registrador~363_q\;
\BancoRegistradores|ALT_INV_registrador~107_q\ <= NOT \BancoRegistradores|registrador~107_q\;
\BancoRegistradores|ALT_INV_registrador~331_q\ <= NOT \BancoRegistradores|registrador~331_q\;
\BancoRegistradores|ALT_INV_registrador~75_q\ <= NOT \BancoRegistradores|registrador~75_q\;
\BancoRegistradores|ALT_INV_registrador~299_q\ <= NOT \BancoRegistradores|registrador~299_q\;
\BancoRegistradores|ALT_INV_registrador~43_q\ <= NOT \BancoRegistradores|registrador~43_q\;
\BancoRegistradores|ALT_INV_registrador~1104_combout\ <= NOT \BancoRegistradores|registrador~1104_combout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\BancoRegistradores|ALT_INV_registrador~394_q\ <= NOT \BancoRegistradores|registrador~394_q\;
\BancoRegistradores|ALT_INV_registrador~362_q\ <= NOT \BancoRegistradores|registrador~362_q\;
\BancoRegistradores|ALT_INV_registrador~330_q\ <= NOT \BancoRegistradores|registrador~330_q\;
\BancoRegistradores|ALT_INV_registrador~298_q\ <= NOT \BancoRegistradores|registrador~298_q\;
\BancoRegistradores|ALT_INV_registrador~106_q\ <= NOT \BancoRegistradores|registrador~106_q\;
\BancoRegistradores|ALT_INV_registrador~74_q\ <= NOT \BancoRegistradores|registrador~74_q\;
\BancoRegistradores|ALT_INV_registrador~42_q\ <= NOT \BancoRegistradores|registrador~42_q\;
\BancoRegistradores|ALT_INV_registrador~1096_combout\ <= NOT \BancoRegistradores|registrador~1096_combout\;
\ULA|ALT_INV_Add1~21_sumout\ <= NOT \ULA|Add1~21_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\BancoRegistradores|ALT_INV_registrador~105_q\ <= NOT \BancoRegistradores|registrador~105_q\;
\BancoRegistradores|ALT_INV_registrador~73_q\ <= NOT \BancoRegistradores|registrador~73_q\;
\BancoRegistradores|ALT_INV_registrador~297_q\ <= NOT \BancoRegistradores|registrador~297_q\;
\BancoRegistradores|ALT_INV_registrador~41_q\ <= NOT \BancoRegistradores|registrador~41_q\;
\BancoRegistradores|ALT_INV_registrador~1087_combout\ <= NOT \BancoRegistradores|registrador~1087_combout\;
\ULA|ALT_INV_Add1~17_sumout\ <= NOT \ULA|Add1~17_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\BancoRegistradores|ALT_INV_registrador~360_q\ <= NOT \BancoRegistradores|registrador~360_q\;
\BancoRegistradores|ALT_INV_registrador~328_q\ <= NOT \BancoRegistradores|registrador~328_q\;
\BancoRegistradores|ALT_INV_registrador~296_q\ <= NOT \BancoRegistradores|registrador~296_q\;
\BancoRegistradores|ALT_INV_registrador~104_q\ <= NOT \BancoRegistradores|registrador~104_q\;
\BancoRegistradores|ALT_INV_registrador~72_q\ <= NOT \BancoRegistradores|registrador~72_q\;
\BancoRegistradores|ALT_INV_registrador~40_q\ <= NOT \BancoRegistradores|registrador~40_q\;
\BancoRegistradores|ALT_INV_registrador~1079_combout\ <= NOT \BancoRegistradores|registrador~1079_combout\;
\ULA|ALT_INV_Add1~13_sumout\ <= NOT \ULA|Add1~13_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\BancoRegistradores|ALT_INV_registrador~391_q\ <= NOT \BancoRegistradores|registrador~391_q\;
\BancoRegistradores|ALT_INV_registrador~135_q\ <= NOT \BancoRegistradores|registrador~135_q\;
\BancoRegistradores|ALT_INV_registrador~71_q\ <= NOT \BancoRegistradores|registrador~71_q\;
\BancoRegistradores|ALT_INV_registrador~295_q\ <= NOT \BancoRegistradores|registrador~295_q\;
\BancoRegistradores|ALT_INV_registrador~39_q\ <= NOT \BancoRegistradores|registrador~39_q\;
\BancoRegistradores|ALT_INV_registrador~1070_combout\ <= NOT \BancoRegistradores|registrador~1070_combout\;
\ULA|ALT_INV_Add1~9_sumout\ <= NOT \ULA|Add1~9_sumout\;
\ULA|ALT_INV_Add1~5_sumout\ <= NOT \ULA|Add1~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\ULA|ALT_INV_Add1~1_sumout\ <= NOT \ULA|Add1~1_sumout\;
\BancoRegistradores|ALT_INV_registrador~390_q\ <= NOT \BancoRegistradores|registrador~390_q\;
\BancoRegistradores|ALT_INV_registrador~326_q\ <= NOT \BancoRegistradores|registrador~326_q\;
\BancoRegistradores|ALT_INV_registrador~294_q\ <= NOT \BancoRegistradores|registrador~294_q\;
\BancoRegistradores|ALT_INV_registrador~102_q\ <= NOT \BancoRegistradores|registrador~102_q\;
\BancoRegistradores|ALT_INV_registrador~38_q\ <= NOT \BancoRegistradores|registrador~38_q\;
\BancoRegistradores|ALT_INV_registrador~1062_combout\ <= NOT \BancoRegistradores|registrador~1062_combout\;
\BancoRegistradores|ALT_INV_registrador~345_q\ <= NOT \BancoRegistradores|registrador~345_q\;
\BancoRegistradores|ALT_INV_registrador~89_q\ <= NOT \BancoRegistradores|registrador~89_q\;
\BancoRegistradores|ALT_INV_registrador~313_q\ <= NOT \BancoRegistradores|registrador~313_q\;
\BancoRegistradores|ALT_INV_registrador~57_q\ <= NOT \BancoRegistradores|registrador~57_q\;
\BancoRegistradores|ALT_INV_registrador~1212_combout\ <= NOT \BancoRegistradores|registrador~1212_combout\;
\ULA|ALT_INV_Add1~77_sumout\ <= NOT \ULA|Add1~77_sumout\;
\ULA|ALT_INV_Add0~73_sumout\ <= NOT \ULA|Add0~73_sumout\;
\BancoRegistradores|ALT_INV_registrador~408_q\ <= NOT \BancoRegistradores|registrador~408_q\;
\BancoRegistradores|ALT_INV_registrador~376_q\ <= NOT \BancoRegistradores|registrador~376_q\;
\BancoRegistradores|ALT_INV_registrador~344_q\ <= NOT \BancoRegistradores|registrador~344_q\;
\BancoRegistradores|ALT_INV_registrador~312_q\ <= NOT \BancoRegistradores|registrador~312_q\;
\BancoRegistradores|ALT_INV_registrador~152_q\ <= NOT \BancoRegistradores|registrador~152_q\;
\BancoRegistradores|ALT_INV_registrador~120_q\ <= NOT \BancoRegistradores|registrador~120_q\;
\BancoRegistradores|ALT_INV_registrador~88_q\ <= NOT \BancoRegistradores|registrador~88_q\;
\BancoRegistradores|ALT_INV_registrador~56_q\ <= NOT \BancoRegistradores|registrador~56_q\;
\BancoRegistradores|ALT_INV_registrador~1205_combout\ <= NOT \BancoRegistradores|registrador~1205_combout\;
\ULA|ALT_INV_Add1~73_sumout\ <= NOT \ULA|Add1~73_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\BancoRegistradores|ALT_INV_registrador~407_q\ <= NOT \BancoRegistradores|registrador~407_q\;
\BancoRegistradores|ALT_INV_registrador~151_q\ <= NOT \BancoRegistradores|registrador~151_q\;
\BancoRegistradores|ALT_INV_registrador~375_q\ <= NOT \BancoRegistradores|registrador~375_q\;
\BancoRegistradores|ALT_INV_registrador~119_q\ <= NOT \BancoRegistradores|registrador~119_q\;
\BancoRegistradores|ALT_INV_registrador~343_q\ <= NOT \BancoRegistradores|registrador~343_q\;
\BancoRegistradores|ALT_INV_registrador~87_q\ <= NOT \BancoRegistradores|registrador~87_q\;
\BancoRegistradores|ALT_INV_registrador~311_q\ <= NOT \BancoRegistradores|registrador~311_q\;
\BancoRegistradores|ALT_INV_registrador~55_q\ <= NOT \BancoRegistradores|registrador~55_q\;
\BancoRegistradores|ALT_INV_registrador~1196_combout\ <= NOT \BancoRegistradores|registrador~1196_combout\;
\ULA|ALT_INV_Add1~69_sumout\ <= NOT \ULA|Add1~69_sumout\;
\ULA|ALT_INV_Add0~65_sumout\ <= NOT \ULA|Add0~65_sumout\;
\BancoRegistradores|ALT_INV_registrador~406_q\ <= NOT \BancoRegistradores|registrador~406_q\;
\BancoRegistradores|ALT_INV_registrador~374_q\ <= NOT \BancoRegistradores|registrador~374_q\;
\BancoRegistradores|ALT_INV_registrador~342_q\ <= NOT \BancoRegistradores|registrador~342_q\;
\BancoRegistradores|ALT_INV_registrador~310_q\ <= NOT \BancoRegistradores|registrador~310_q\;
\BancoRegistradores|ALT_INV_registrador~150_q\ <= NOT \BancoRegistradores|registrador~150_q\;
\BancoRegistradores|ALT_INV_registrador~118_q\ <= NOT \BancoRegistradores|registrador~118_q\;
\BancoRegistradores|ALT_INV_registrador~86_q\ <= NOT \BancoRegistradores|registrador~86_q\;
\BancoRegistradores|ALT_INV_registrador~54_q\ <= NOT \BancoRegistradores|registrador~54_q\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\BancoRegistradores|ALT_INV_registrador~405_q\ <= NOT \BancoRegistradores|registrador~405_q\;
\BancoRegistradores|ALT_INV_registrador~149_q\ <= NOT \BancoRegistradores|registrador~149_q\;
\BancoRegistradores|ALT_INV_registrador~373_q\ <= NOT \BancoRegistradores|registrador~373_q\;
\BancoRegistradores|ALT_INV_registrador~117_q\ <= NOT \BancoRegistradores|registrador~117_q\;
\BancoRegistradores|ALT_INV_registrador~341_q\ <= NOT \BancoRegistradores|registrador~341_q\;
\BancoRegistradores|ALT_INV_registrador~85_q\ <= NOT \BancoRegistradores|registrador~85_q\;
\BancoRegistradores|ALT_INV_registrador~309_q\ <= NOT \BancoRegistradores|registrador~309_q\;
\BancoRegistradores|ALT_INV_registrador~53_q\ <= NOT \BancoRegistradores|registrador~53_q\;
\BancoRegistradores|ALT_INV_registrador~1184_combout\ <= NOT \BancoRegistradores|registrador~1184_combout\;
\ULA|ALT_INV_Add1~65_sumout\ <= NOT \ULA|Add1~65_sumout\;
\ULA|ALT_INV_Add0~57_sumout\ <= NOT \ULA|Add0~57_sumout\;
\BancoRegistradores|ALT_INV_registrador~404_q\ <= NOT \BancoRegistradores|registrador~404_q\;
\BancoRegistradores|ALT_INV_registrador~372_q\ <= NOT \BancoRegistradores|registrador~372_q\;
\BancoRegistradores|ALT_INV_registrador~340_q\ <= NOT \BancoRegistradores|registrador~340_q\;
\BancoRegistradores|ALT_INV_registrador~308_q\ <= NOT \BancoRegistradores|registrador~308_q\;
\BancoRegistradores|ALT_INV_registrador~148_q\ <= NOT \BancoRegistradores|registrador~148_q\;
\BancoRegistradores|ALT_INV_registrador~116_q\ <= NOT \BancoRegistradores|registrador~116_q\;
\BancoRegistradores|ALT_INV_registrador~84_q\ <= NOT \BancoRegistradores|registrador~84_q\;
\BancoRegistradores|ALT_INV_registrador~52_q\ <= NOT \BancoRegistradores|registrador~52_q\;
\BancoRegistradores|ALT_INV_registrador~1177_combout\ <= NOT \BancoRegistradores|registrador~1177_combout\;
\ULA|ALT_INV_Add1~61_sumout\ <= NOT \ULA|Add1~61_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\BancoRegistradores|ALT_INV_registrador~403_q\ <= NOT \BancoRegistradores|registrador~403_q\;
\BancoRegistradores|ALT_INV_registrador~147_q\ <= NOT \BancoRegistradores|registrador~147_q\;
\BancoRegistradores|ALT_INV_registrador~371_q\ <= NOT \BancoRegistradores|registrador~371_q\;
\BancoRegistradores|ALT_INV_registrador~115_q\ <= NOT \BancoRegistradores|registrador~115_q\;
\BancoRegistradores|ALT_INV_registrador~339_q\ <= NOT \BancoRegistradores|registrador~339_q\;
\BancoRegistradores|ALT_INV_registrador~83_q\ <= NOT \BancoRegistradores|registrador~83_q\;
\BancoRegistradores|ALT_INV_registrador~307_q\ <= NOT \BancoRegistradores|registrador~307_q\;
\BancoRegistradores|ALT_INV_registrador~51_q\ <= NOT \BancoRegistradores|registrador~51_q\;
\BancoRegistradores|ALT_INV_registrador~1168_combout\ <= NOT \BancoRegistradores|registrador~1168_combout\;
\ULA|ALT_INV_Add1~57_sumout\ <= NOT \ULA|Add1~57_sumout\;
\ULA|ALT_INV_Add0~49_sumout\ <= NOT \ULA|Add0~49_sumout\;
\BancoRegistradores|ALT_INV_registrador~402_q\ <= NOT \BancoRegistradores|registrador~402_q\;
\BancoRegistradores|ALT_INV_registrador~370_q\ <= NOT \BancoRegistradores|registrador~370_q\;
\BancoRegistradores|ALT_INV_registrador~338_q\ <= NOT \BancoRegistradores|registrador~338_q\;
\BancoRegistradores|ALT_INV_registrador~306_q\ <= NOT \BancoRegistradores|registrador~306_q\;
\BancoRegistradores|ALT_INV_registrador~146_q\ <= NOT \BancoRegistradores|registrador~146_q\;
\BancoRegistradores|ALT_INV_registrador~114_q\ <= NOT \BancoRegistradores|registrador~114_q\;
\BancoRegistradores|ALT_INV_registrador~82_q\ <= NOT \BancoRegistradores|registrador~82_q\;
\BancoRegistradores|ALT_INV_registrador~50_q\ <= NOT \BancoRegistradores|registrador~50_q\;
\BancoRegistradores|ALT_INV_registrador~1161_combout\ <= NOT \BancoRegistradores|registrador~1161_combout\;
\ULA|ALT_INV_Add1~53_sumout\ <= NOT \ULA|Add1~53_sumout\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\BancoRegistradores|ALT_INV_registrador~401_q\ <= NOT \BancoRegistradores|registrador~401_q\;
\BancoRegistradores|ALT_INV_registrador~145_q\ <= NOT \BancoRegistradores|registrador~145_q\;
\BancoRegistradores|ALT_INV_registrador~369_q\ <= NOT \BancoRegistradores|registrador~369_q\;
\BancoRegistradores|ALT_INV_registrador~113_q\ <= NOT \BancoRegistradores|registrador~113_q\;
\BancoRegistradores|ALT_INV_registrador~337_q\ <= NOT \BancoRegistradores|registrador~337_q\;
\BancoRegistradores|ALT_INV_registrador~81_q\ <= NOT \BancoRegistradores|registrador~81_q\;
\BancoRegistradores|ALT_INV_registrador~305_q\ <= NOT \BancoRegistradores|registrador~305_q\;
\BancoRegistradores|ALT_INV_registrador~49_q\ <= NOT \BancoRegistradores|registrador~49_q\;
\BancoRegistradores|ALT_INV_registrador~1152_combout\ <= NOT \BancoRegistradores|registrador~1152_combout\;
\ULA|ALT_INV_Add1~49_sumout\ <= NOT \ULA|Add1~49_sumout\;
\ULA|ALT_INV_Add0~41_sumout\ <= NOT \ULA|Add0~41_sumout\;
\BancoRegistradores|ALT_INV_registrador~400_q\ <= NOT \BancoRegistradores|registrador~400_q\;
\BancoRegistradores|ALT_INV_registrador~368_q\ <= NOT \BancoRegistradores|registrador~368_q\;
\BancoRegistradores|ALT_INV_registrador~336_q\ <= NOT \BancoRegistradores|registrador~336_q\;
\BancoRegistradores|ALT_INV_registrador~304_q\ <= NOT \BancoRegistradores|registrador~304_q\;
\BancoRegistradores|ALT_INV_registrador~144_q\ <= NOT \BancoRegistradores|registrador~144_q\;
\BancoRegistradores|ALT_INV_registrador~112_q\ <= NOT \BancoRegistradores|registrador~112_q\;
\BancoRegistradores|ALT_INV_registrador~80_q\ <= NOT \BancoRegistradores|registrador~80_q\;
\BancoRegistradores|ALT_INV_registrador~48_q\ <= NOT \BancoRegistradores|registrador~48_q\;
\BancoRegistradores|ALT_INV_registrador~1145_combout\ <= NOT \BancoRegistradores|registrador~1145_combout\;
\ULA|ALT_INV_Add1~45_sumout\ <= NOT \ULA|Add1~45_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\BancoRegistradores|ALT_INV_registrador~399_q\ <= NOT \BancoRegistradores|registrador~399_q\;
\BancoRegistradores|ALT_INV_registrador~143_q\ <= NOT \BancoRegistradores|registrador~143_q\;
\BancoRegistradores|ALT_INV_registrador~367_q\ <= NOT \BancoRegistradores|registrador~367_q\;
\BancoRegistradores|ALT_INV_registrador~111_q\ <= NOT \BancoRegistradores|registrador~111_q\;
\BancoRegistradores|ALT_INV_registrador~67_q\ <= NOT \BancoRegistradores|registrador~67_q\;
\BancoRegistradores|ALT_INV_registrador~1292_combout\ <= NOT \BancoRegistradores|registrador~1292_combout\;
\ULA|ALT_INV_Add1~117_sumout\ <= NOT \ULA|Add1~117_sumout\;
\ULA|ALT_INV_Add0~113_sumout\ <= NOT \ULA|Add0~113_sumout\;
\BancoRegistradores|ALT_INV_registrador~418_q\ <= NOT \BancoRegistradores|registrador~418_q\;
\BancoRegistradores|ALT_INV_registrador~386_q\ <= NOT \BancoRegistradores|registrador~386_q\;
\BancoRegistradores|ALT_INV_registrador~354_q\ <= NOT \BancoRegistradores|registrador~354_q\;
\BancoRegistradores|ALT_INV_registrador~322_q\ <= NOT \BancoRegistradores|registrador~322_q\;
\BancoRegistradores|ALT_INV_registrador~162_q\ <= NOT \BancoRegistradores|registrador~162_q\;
\BancoRegistradores|ALT_INV_registrador~130_q\ <= NOT \BancoRegistradores|registrador~130_q\;
\BancoRegistradores|ALT_INV_registrador~98_q\ <= NOT \BancoRegistradores|registrador~98_q\;
\BancoRegistradores|ALT_INV_registrador~66_q\ <= NOT \BancoRegistradores|registrador~66_q\;
\BancoRegistradores|ALT_INV_registrador~1285_combout\ <= NOT \BancoRegistradores|registrador~1285_combout\;
\ULA|ALT_INV_Add1~113_sumout\ <= NOT \ULA|Add1~113_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\BancoRegistradores|ALT_INV_registrador~417_q\ <= NOT \BancoRegistradores|registrador~417_q\;
\BancoRegistradores|ALT_INV_registrador~161_q\ <= NOT \BancoRegistradores|registrador~161_q\;
\BancoRegistradores|ALT_INV_registrador~385_q\ <= NOT \BancoRegistradores|registrador~385_q\;
\BancoRegistradores|ALT_INV_registrador~129_q\ <= NOT \BancoRegistradores|registrador~129_q\;
\BancoRegistradores|ALT_INV_registrador~353_q\ <= NOT \BancoRegistradores|registrador~353_q\;
\BancoRegistradores|ALT_INV_registrador~97_q\ <= NOT \BancoRegistradores|registrador~97_q\;
\BancoRegistradores|ALT_INV_registrador~321_q\ <= NOT \BancoRegistradores|registrador~321_q\;
\BancoRegistradores|ALT_INV_registrador~65_q\ <= NOT \BancoRegistradores|registrador~65_q\;
\BancoRegistradores|ALT_INV_registrador~1276_combout\ <= NOT \BancoRegistradores|registrador~1276_combout\;
\ULA|ALT_INV_Add1~109_sumout\ <= NOT \ULA|Add1~109_sumout\;
\ULA|ALT_INV_Add0~105_sumout\ <= NOT \ULA|Add0~105_sumout\;
\BancoRegistradores|ALT_INV_registrador~416_q\ <= NOT \BancoRegistradores|registrador~416_q\;
\BancoRegistradores|ALT_INV_registrador~384_q\ <= NOT \BancoRegistradores|registrador~384_q\;
\BancoRegistradores|ALT_INV_registrador~352_q\ <= NOT \BancoRegistradores|registrador~352_q\;
\BancoRegistradores|ALT_INV_registrador~320_q\ <= NOT \BancoRegistradores|registrador~320_q\;
\BancoRegistradores|ALT_INV_registrador~160_q\ <= NOT \BancoRegistradores|registrador~160_q\;
\BancoRegistradores|ALT_INV_registrador~128_q\ <= NOT \BancoRegistradores|registrador~128_q\;
\BancoRegistradores|ALT_INV_registrador~96_q\ <= NOT \BancoRegistradores|registrador~96_q\;
\BancoRegistradores|ALT_INV_registrador~64_q\ <= NOT \BancoRegistradores|registrador~64_q\;
\BancoRegistradores|ALT_INV_registrador~1269_combout\ <= NOT \BancoRegistradores|registrador~1269_combout\;
\ULA|ALT_INV_Add1~105_sumout\ <= NOT \ULA|Add1~105_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\BancoRegistradores|ALT_INV_registrador~415_q\ <= NOT \BancoRegistradores|registrador~415_q\;
\BancoRegistradores|ALT_INV_registrador~159_q\ <= NOT \BancoRegistradores|registrador~159_q\;
\BancoRegistradores|ALT_INV_registrador~383_q\ <= NOT \BancoRegistradores|registrador~383_q\;
\BancoRegistradores|ALT_INV_registrador~127_q\ <= NOT \BancoRegistradores|registrador~127_q\;
\BancoRegistradores|ALT_INV_registrador~351_q\ <= NOT \BancoRegistradores|registrador~351_q\;
\BancoRegistradores|ALT_INV_registrador~95_q\ <= NOT \BancoRegistradores|registrador~95_q\;
\BancoRegistradores|ALT_INV_registrador~319_q\ <= NOT \BancoRegistradores|registrador~319_q\;
\BancoRegistradores|ALT_INV_registrador~63_q\ <= NOT \BancoRegistradores|registrador~63_q\;
\BancoRegistradores|ALT_INV_registrador~1260_combout\ <= NOT \BancoRegistradores|registrador~1260_combout\;
\ULA|ALT_INV_Add1~101_sumout\ <= NOT \ULA|Add1~101_sumout\;
\ULA|ALT_INV_Add0~97_sumout\ <= NOT \ULA|Add0~97_sumout\;
\BancoRegistradores|ALT_INV_registrador~414_q\ <= NOT \BancoRegistradores|registrador~414_q\;
\BancoRegistradores|ALT_INV_registrador~382_q\ <= NOT \BancoRegistradores|registrador~382_q\;
\BancoRegistradores|ALT_INV_registrador~350_q\ <= NOT \BancoRegistradores|registrador~350_q\;
\BancoRegistradores|ALT_INV_registrador~318_q\ <= NOT \BancoRegistradores|registrador~318_q\;
\BancoRegistradores|ALT_INV_registrador~158_q\ <= NOT \BancoRegistradores|registrador~158_q\;
\BancoRegistradores|ALT_INV_registrador~126_q\ <= NOT \BancoRegistradores|registrador~126_q\;
\BancoRegistradores|ALT_INV_registrador~94_q\ <= NOT \BancoRegistradores|registrador~94_q\;
\BancoRegistradores|ALT_INV_registrador~62_q\ <= NOT \BancoRegistradores|registrador~62_q\;
\BancoRegistradores|ALT_INV_registrador~1253_combout\ <= NOT \BancoRegistradores|registrador~1253_combout\;
\ULA|ALT_INV_Add1~97_sumout\ <= NOT \ULA|Add1~97_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\BancoRegistradores|ALT_INV_registrador~413_q\ <= NOT \BancoRegistradores|registrador~413_q\;
\BancoRegistradores|ALT_INV_registrador~157_q\ <= NOT \BancoRegistradores|registrador~157_q\;
\BancoRegistradores|ALT_INV_registrador~381_q\ <= NOT \BancoRegistradores|registrador~381_q\;
\BancoRegistradores|ALT_INV_registrador~125_q\ <= NOT \BancoRegistradores|registrador~125_q\;
\BancoRegistradores|ALT_INV_registrador~349_q\ <= NOT \BancoRegistradores|registrador~349_q\;
\BancoRegistradores|ALT_INV_registrador~93_q\ <= NOT \BancoRegistradores|registrador~93_q\;
\BancoRegistradores|ALT_INV_registrador~317_q\ <= NOT \BancoRegistradores|registrador~317_q\;
\BancoRegistradores|ALT_INV_registrador~61_q\ <= NOT \BancoRegistradores|registrador~61_q\;
\BancoRegistradores|ALT_INV_registrador~1244_combout\ <= NOT \BancoRegistradores|registrador~1244_combout\;
\ULA|ALT_INV_Add1~93_sumout\ <= NOT \ULA|Add1~93_sumout\;
\ULA|ALT_INV_Add0~89_sumout\ <= NOT \ULA|Add0~89_sumout\;
\BancoRegistradores|ALT_INV_registrador~412_q\ <= NOT \BancoRegistradores|registrador~412_q\;
\BancoRegistradores|ALT_INV_registrador~380_q\ <= NOT \BancoRegistradores|registrador~380_q\;
\BancoRegistradores|ALT_INV_registrador~348_q\ <= NOT \BancoRegistradores|registrador~348_q\;
\BancoRegistradores|ALT_INV_registrador~316_q\ <= NOT \BancoRegistradores|registrador~316_q\;
\BancoRegistradores|ALT_INV_registrador~156_q\ <= NOT \BancoRegistradores|registrador~156_q\;
\BancoRegistradores|ALT_INV_registrador~124_q\ <= NOT \BancoRegistradores|registrador~124_q\;
\BancoRegistradores|ALT_INV_registrador~92_q\ <= NOT \BancoRegistradores|registrador~92_q\;
\BancoRegistradores|ALT_INV_registrador~60_q\ <= NOT \BancoRegistradores|registrador~60_q\;
\BancoRegistradores|ALT_INV_registrador~1237_combout\ <= NOT \BancoRegistradores|registrador~1237_combout\;
\ULA|ALT_INV_Add1~89_sumout\ <= NOT \ULA|Add1~89_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\BancoRegistradores|ALT_INV_registrador~411_q\ <= NOT \BancoRegistradores|registrador~411_q\;
\BancoRegistradores|ALT_INV_registrador~155_q\ <= NOT \BancoRegistradores|registrador~155_q\;
\BancoRegistradores|ALT_INV_registrador~379_q\ <= NOT \BancoRegistradores|registrador~379_q\;
\BancoRegistradores|ALT_INV_registrador~123_q\ <= NOT \BancoRegistradores|registrador~123_q\;
\BancoRegistradores|ALT_INV_registrador~347_q\ <= NOT \BancoRegistradores|registrador~347_q\;
\BancoRegistradores|ALT_INV_registrador~91_q\ <= NOT \BancoRegistradores|registrador~91_q\;
\BancoRegistradores|ALT_INV_registrador~315_q\ <= NOT \BancoRegistradores|registrador~315_q\;
\BancoRegistradores|ALT_INV_registrador~59_q\ <= NOT \BancoRegistradores|registrador~59_q\;
\BancoRegistradores|ALT_INV_registrador~1228_combout\ <= NOT \BancoRegistradores|registrador~1228_combout\;
\ULA|ALT_INV_Add1~85_sumout\ <= NOT \ULA|Add1~85_sumout\;
\ULA|ALT_INV_Add0~81_sumout\ <= NOT \ULA|Add0~81_sumout\;
\BancoRegistradores|ALT_INV_registrador~410_q\ <= NOT \BancoRegistradores|registrador~410_q\;
\BancoRegistradores|ALT_INV_registrador~378_q\ <= NOT \BancoRegistradores|registrador~378_q\;
\BancoRegistradores|ALT_INV_registrador~346_q\ <= NOT \BancoRegistradores|registrador~346_q\;
\BancoRegistradores|ALT_INV_registrador~314_q\ <= NOT \BancoRegistradores|registrador~314_q\;
\BancoRegistradores|ALT_INV_registrador~154_q\ <= NOT \BancoRegistradores|registrador~154_q\;
\BancoRegistradores|ALT_INV_registrador~122_q\ <= NOT \BancoRegistradores|registrador~122_q\;
\BancoRegistradores|ALT_INV_registrador~90_q\ <= NOT \BancoRegistradores|registrador~90_q\;
\BancoRegistradores|ALT_INV_registrador~58_q\ <= NOT \BancoRegistradores|registrador~58_q\;
\BancoRegistradores|ALT_INV_registrador~1221_combout\ <= NOT \BancoRegistradores|registrador~1221_combout\;
\ULA|ALT_INV_Add1~81_sumout\ <= NOT \ULA|Add1~81_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\BancoRegistradores|ALT_INV_registrador~409_q\ <= NOT \BancoRegistradores|registrador~409_q\;
\BancoRegistradores|ALT_INV_registrador~153_q\ <= NOT \BancoRegistradores|registrador~153_q\;
\BancoRegistradores|ALT_INV_registrador~377_q\ <= NOT \BancoRegistradores|registrador~377_q\;
\BancoRegistradores|ALT_INV_registrador~121_q\ <= NOT \BancoRegistradores|registrador~121_q\;
\BancoRegistradores|ALT_INV_registrador~1405_combout\ <= NOT \BancoRegistradores|registrador~1405_combout\;
\BancoRegistradores|ALT_INV_registrador~1401_combout\ <= NOT \BancoRegistradores|registrador~1401_combout\;
\BancoRegistradores|ALT_INV_registrador~1397_combout\ <= NOT \BancoRegistradores|registrador~1397_combout\;
\BancoRegistradores|ALT_INV_registrador~1393_combout\ <= NOT \BancoRegistradores|registrador~1393_combout\;
\BancoRegistradores|ALT_INV_registrador~1389_combout\ <= NOT \BancoRegistradores|registrador~1389_combout\;
\BancoRegistradores|ALT_INV_registrador~1385_combout\ <= NOT \BancoRegistradores|registrador~1385_combout\;
\BancoRegistradores|ALT_INV_registrador~1381_combout\ <= NOT \BancoRegistradores|registrador~1381_combout\;
\BancoRegistradores|ALT_INV_registrador~1377_combout\ <= NOT \BancoRegistradores|registrador~1377_combout\;
\BancoRegistradores|ALT_INV_registrador~1373_combout\ <= NOT \BancoRegistradores|registrador~1373_combout\;
\BancoRegistradores|ALT_INV_registrador~1369_combout\ <= NOT \BancoRegistradores|registrador~1369_combout\;
\BancoRegistradores|ALT_INV_registrador~1365_combout\ <= NOT \BancoRegistradores|registrador~1365_combout\;
\BancoRegistradores|ALT_INV_registrador~1361_combout\ <= NOT \BancoRegistradores|registrador~1361_combout\;
\BancoRegistradores|ALT_INV_registrador~1357_combout\ <= NOT \BancoRegistradores|registrador~1357_combout\;
\BancoRegistradores|ALT_INV_registrador~1353_combout\ <= NOT \BancoRegistradores|registrador~1353_combout\;
\BancoRegistradores|ALT_INV_registrador~1349_combout\ <= NOT \BancoRegistradores|registrador~1349_combout\;
\BancoRegistradores|ALT_INV_registrador~1345_combout\ <= NOT \BancoRegistradores|registrador~1345_combout\;
\BancoRegistradores|ALT_INV_registrador~1341_combout\ <= NOT \BancoRegistradores|registrador~1341_combout\;
\BancoRegistradores|ALT_INV_registrador~1337_combout\ <= NOT \BancoRegistradores|registrador~1337_combout\;
\BancoRegistradores|ALT_INV_registrador~1333_combout\ <= NOT \BancoRegistradores|registrador~1333_combout\;
\somaQuatro|ALT_INV_Add0~21_sumout\ <= NOT \somaQuatro|Add0~21_sumout\;
\somaQuatro|ALT_INV_Add0~17_sumout\ <= NOT \somaQuatro|Add0~17_sumout\;
\somaQuatro|ALT_INV_Add0~13_sumout\ <= NOT \somaQuatro|Add0~13_sumout\;
\somaQuatro|ALT_INV_Add0~9_sumout\ <= NOT \somaQuatro|Add0~9_sumout\;
\somaQuatro|ALT_INV_Add0~5_sumout\ <= NOT \somaQuatro|Add0~5_sumout\;
\somaQuatro|ALT_INV_Add0~1_sumout\ <= NOT \somaQuatro|Add0~1_sumout\;
\BancoRegistradores|ALT_INV_registrador~1321_combout\ <= NOT \BancoRegistradores|registrador~1321_combout\;
\somaSHIFT|ALT_INV_Add0~117_sumout\ <= NOT \somaSHIFT|Add0~117_sumout\;
\somaSHIFT|ALT_INV_Add0~113_sumout\ <= NOT \somaSHIFT|Add0~113_sumout\;
\somaSHIFT|ALT_INV_Add0~109_sumout\ <= NOT \somaSHIFT|Add0~109_sumout\;
\somaSHIFT|ALT_INV_Add0~105_sumout\ <= NOT \somaSHIFT|Add0~105_sumout\;
\somaSHIFT|ALT_INV_Add0~101_sumout\ <= NOT \somaSHIFT|Add0~101_sumout\;
\somaSHIFT|ALT_INV_Add0~97_sumout\ <= NOT \somaSHIFT|Add0~97_sumout\;
\somaSHIFT|ALT_INV_Add0~93_sumout\ <= NOT \somaSHIFT|Add0~93_sumout\;
\somaSHIFT|ALT_INV_Add0~89_sumout\ <= NOT \somaSHIFT|Add0~89_sumout\;
\somaSHIFT|ALT_INV_Add0~85_sumout\ <= NOT \somaSHIFT|Add0~85_sumout\;
\somaSHIFT|ALT_INV_Add0~81_sumout\ <= NOT \somaSHIFT|Add0~81_sumout\;
\somaSHIFT|ALT_INV_Add0~77_sumout\ <= NOT \somaSHIFT|Add0~77_sumout\;
\somaSHIFT|ALT_INV_Add0~73_sumout\ <= NOT \somaSHIFT|Add0~73_sumout\;
\somaSHIFT|ALT_INV_Add0~69_sumout\ <= NOT \somaSHIFT|Add0~69_sumout\;
\somaSHIFT|ALT_INV_Add0~65_sumout\ <= NOT \somaSHIFT|Add0~65_sumout\;
\somaSHIFT|ALT_INV_Add0~61_sumout\ <= NOT \somaSHIFT|Add0~61_sumout\;
\somaSHIFT|ALT_INV_Add0~57_sumout\ <= NOT \somaSHIFT|Add0~57_sumout\;
\somaSHIFT|ALT_INV_Add0~53_sumout\ <= NOT \somaSHIFT|Add0~53_sumout\;
\somaSHIFT|ALT_INV_Add0~49_sumout\ <= NOT \somaSHIFT|Add0~49_sumout\;
\somaSHIFT|ALT_INV_Add0~45_sumout\ <= NOT \somaSHIFT|Add0~45_sumout\;
\somaSHIFT|ALT_INV_Add0~41_sumout\ <= NOT \somaSHIFT|Add0~41_sumout\;
\somaSHIFT|ALT_INV_Add0~37_sumout\ <= NOT \somaSHIFT|Add0~37_sumout\;
\somaSHIFT|ALT_INV_Add0~33_sumout\ <= NOT \somaSHIFT|Add0~33_sumout\;
\somaSHIFT|ALT_INV_Add0~29_sumout\ <= NOT \somaSHIFT|Add0~29_sumout\;
\somaSHIFT|ALT_INV_Add0~25_sumout\ <= NOT \somaSHIFT|Add0~25_sumout\;
\somaSHIFT|ALT_INV_Add0~21_sumout\ <= NOT \somaSHIFT|Add0~21_sumout\;
\somaSHIFT|ALT_INV_Add0~17_sumout\ <= NOT \somaSHIFT|Add0~17_sumout\;
\somaSHIFT|ALT_INV_Add0~13_sumout\ <= NOT \somaSHIFT|Add0~13_sumout\;
\somaSHIFT|ALT_INV_Add0~9_sumout\ <= NOT \somaSHIFT|Add0~9_sumout\;
\somaSHIFT|ALT_INV_Add0~5_sumout\ <= NOT \somaSHIFT|Add0~5_sumout\;
\somaSHIFT|ALT_INV_Add0~1_sumout\ <= NOT \somaSHIFT|Add0~1_sumout\;
\BancoRegistradores|ALT_INV_registrador~1317_combout\ <= NOT \BancoRegistradores|registrador~1317_combout\;
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\BancoRegistradores|ALT_INV_registrador~421_q\ <= NOT \BancoRegistradores|registrador~421_q\;
\BancoRegistradores|ALT_INV_registrador~165_q\ <= NOT \BancoRegistradores|registrador~165_q\;
\BancoRegistradores|ALT_INV_registrador~389_q\ <= NOT \BancoRegistradores|registrador~389_q\;
\BancoRegistradores|ALT_INV_registrador~133_q\ <= NOT \BancoRegistradores|registrador~133_q\;
\BancoRegistradores|ALT_INV_registrador~357_q\ <= NOT \BancoRegistradores|registrador~357_q\;
\BancoRegistradores|ALT_INV_registrador~101_q\ <= NOT \BancoRegistradores|registrador~101_q\;
\BancoRegistradores|ALT_INV_registrador~325_q\ <= NOT \BancoRegistradores|registrador~325_q\;
\BancoRegistradores|ALT_INV_registrador~69_q\ <= NOT \BancoRegistradores|registrador~69_q\;
\BancoRegistradores|ALT_INV_registrador~1308_combout\ <= NOT \BancoRegistradores|registrador~1308_combout\;
\ULA|ALT_INV_Add1~125_sumout\ <= NOT \ULA|Add1~125_sumout\;
\ULA|ALT_INV_Add0~121_sumout\ <= NOT \ULA|Add0~121_sumout\;
\BancoRegistradores|ALT_INV_registrador~420_q\ <= NOT \BancoRegistradores|registrador~420_q\;
\BancoRegistradores|ALT_INV_registrador~388_q\ <= NOT \BancoRegistradores|registrador~388_q\;
\BancoRegistradores|ALT_INV_registrador~356_q\ <= NOT \BancoRegistradores|registrador~356_q\;
\BancoRegistradores|ALT_INV_registrador~324_q\ <= NOT \BancoRegistradores|registrador~324_q\;
\BancoRegistradores|ALT_INV_registrador~164_q\ <= NOT \BancoRegistradores|registrador~164_q\;
\BancoRegistradores|ALT_INV_registrador~132_q\ <= NOT \BancoRegistradores|registrador~132_q\;
\BancoRegistradores|ALT_INV_registrador~100_q\ <= NOT \BancoRegistradores|registrador~100_q\;
\BancoRegistradores|ALT_INV_registrador~68_q\ <= NOT \BancoRegistradores|registrador~68_q\;
\BancoRegistradores|ALT_INV_registrador~1301_combout\ <= NOT \BancoRegistradores|registrador~1301_combout\;
\ULA|ALT_INV_Add1~121_sumout\ <= NOT \ULA|Add1~121_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\BancoRegistradores|ALT_INV_registrador~419_q\ <= NOT \BancoRegistradores|registrador~419_q\;
\BancoRegistradores|ALT_INV_registrador~163_q\ <= NOT \BancoRegistradores|registrador~163_q\;
\BancoRegistradores|ALT_INV_registrador~387_q\ <= NOT \BancoRegistradores|registrador~387_q\;
\BancoRegistradores|ALT_INV_registrador~131_q\ <= NOT \BancoRegistradores|registrador~131_q\;
\BancoRegistradores|ALT_INV_registrador~355_q\ <= NOT \BancoRegistradores|registrador~355_q\;
\BancoRegistradores|ALT_INV_registrador~99_q\ <= NOT \BancoRegistradores|registrador~99_q\;
\BancoRegistradores|ALT_INV_registrador~323_q\ <= NOT \BancoRegistradores|registrador~323_q\;
\ULA|ALT_INV_saida[1]~4_combout\ <= NOT \ULA|saida[1]~4_combout\;
\ULA|ALT_INV_saida[1]~3_combout\ <= NOT \ULA|saida[1]~3_combout\;
\MUXRegImed|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUXRegImed|saida_MUX[1]~1_combout\;
\BancoRegistradores|ALT_INV_registrador~1078_combout\ <= NOT \BancoRegistradores|registrador~1078_combout\;
\BancoRegistradores|ALT_INV_registrador~1077_combout\ <= NOT \BancoRegistradores|registrador~1077_combout\;
\BancoRegistradores|ALT_INV_registrador~1076_combout\ <= NOT \BancoRegistradores|registrador~1076_combout\;
\BancoRegistradores|ALT_INV_registrador~359_q\ <= NOT \BancoRegistradores|registrador~359_q\;
\BancoRegistradores|ALT_INV_registrador~103_q\ <= NOT \BancoRegistradores|registrador~103_q\;
\BancoRegistradores|ALT_INV_registrador~1075_combout\ <= NOT \BancoRegistradores|registrador~1075_combout\;
\BancoRegistradores|ALT_INV_registrador~327_q\ <= NOT \BancoRegistradores|registrador~327_q\;
\BancoRegistradores|ALT_INV_registrador~1074_combout\ <= NOT \BancoRegistradores|registrador~1074_combout\;
\BancoRegistradores|ALT_INV_saidaA[1]~0_combout\ <= NOT \BancoRegistradores|saidaA[1]~0_combout\;
\ULA|ALT_INV_saida[0]~1_combout\ <= NOT \ULA|saida[0]~1_combout\;
\ulaUC|ALT_INV_ulaOp[2]~7_combout\ <= NOT \ulaUC|ulaOp[2]~7_combout\;
\ULA|ALT_INV_saida[0]~0_combout\ <= NOT \ULA|saida[0]~0_combout\;
\ulaUC|ALT_INV_ulaOp[0]~6_combout\ <= NOT \ulaUC|ulaOp[0]~6_combout\;
\ulaUC|ALT_INV_ulaOp[0]~5_combout\ <= NOT \ulaUC|ulaOp[0]~5_combout\;
\ROM|ALT_INV_memROM~23_combout\ <= NOT \ROM|memROM~23_combout\;
\ulaUC|ALT_INV_ulaOp~4_combout\ <= NOT \ulaUC|ulaOp~4_combout\;
\ulaUC|ALT_INV_ulaOp[1]~3_combout\ <= NOT \ulaUC|ulaOp[1]~3_combout\;
\ulaUC|ALT_INV_ulaOp[2]~2_combout\ <= NOT \ulaUC|ulaOp[2]~2_combout\;
\ulaUC|ALT_INV_ulaOp[2]~1_combout\ <= NOT \ulaUC|ulaOp[2]~1_combout\;
\ROM|ALT_INV_memROM~22_combout\ <= NOT \ROM|memROM~22_combout\;
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\ulaUC|ALT_INV_ulaOp~0_combout\ <= NOT \ulaUC|ulaOp~0_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\UC|ALT_INV_palavraControle[4]~2_combout\ <= NOT \UC|palavraControle[4]~2_combout\;
\UC|ALT_INV_palavraControle[2]~1_combout\ <= NOT \UC|palavraControle[2]~1_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\UC|ALT_INV_palavraControle[3]~0_combout\ <= NOT \UC|palavraControle[3]~0_combout\;
\MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUXRegImed|saida_MUX[0]~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1069_combout\ <= NOT \BancoRegistradores|registrador~1069_combout\;
\BancoRegistradores|ALT_INV_registrador~1068_combout\ <= NOT \BancoRegistradores|registrador~1068_combout\;
\BancoRegistradores|ALT_INV_registrador~1067_combout\ <= NOT \BancoRegistradores|registrador~1067_combout\;
\BancoRegistradores|ALT_INV_registrador~358_q\ <= NOT \BancoRegistradores|registrador~358_q\;
\BancoRegistradores|ALT_INV_registrador~1066_combout\ <= NOT \BancoRegistradores|registrador~1066_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\BancoRegistradores|ALT_INV_registrador~134_q\ <= NOT \BancoRegistradores|registrador~134_q\;
\BancoRegistradores|ALT_INV_registrador~70_q\ <= NOT \BancoRegistradores|registrador~70_q\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\BancoRegistradores|ALT_INV_Equal0~0_combout\ <= NOT \BancoRegistradores|Equal0~0_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\UC|ALT_INV_palavraControle\(7) <= NOT \UC|palavraControle\(7);
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\somaQuatro|ALT_INV_Add0~117_sumout\ <= NOT \somaQuatro|Add0~117_sumout\;
\somaQuatro|ALT_INV_Add0~113_sumout\ <= NOT \somaQuatro|Add0~113_sumout\;
\somaQuatro|ALT_INV_Add0~109_sumout\ <= NOT \somaQuatro|Add0~109_sumout\;
\somaQuatro|ALT_INV_Add0~105_sumout\ <= NOT \somaQuatro|Add0~105_sumout\;
\somaQuatro|ALT_INV_Add0~101_sumout\ <= NOT \somaQuatro|Add0~101_sumout\;
\somaQuatro|ALT_INV_Add0~97_sumout\ <= NOT \somaQuatro|Add0~97_sumout\;
\somaQuatro|ALT_INV_Add0~93_sumout\ <= NOT \somaQuatro|Add0~93_sumout\;
\somaQuatro|ALT_INV_Add0~89_sumout\ <= NOT \somaQuatro|Add0~89_sumout\;
\somaQuatro|ALT_INV_Add0~85_sumout\ <= NOT \somaQuatro|Add0~85_sumout\;
\somaQuatro|ALT_INV_Add0~81_sumout\ <= NOT \somaQuatro|Add0~81_sumout\;
\somaQuatro|ALT_INV_Add0~77_sumout\ <= NOT \somaQuatro|Add0~77_sumout\;
\somaQuatro|ALT_INV_Add0~73_sumout\ <= NOT \somaQuatro|Add0~73_sumout\;
\somaQuatro|ALT_INV_Add0~69_sumout\ <= NOT \somaQuatro|Add0~69_sumout\;
\somaQuatro|ALT_INV_Add0~65_sumout\ <= NOT \somaQuatro|Add0~65_sumout\;
\somaQuatro|ALT_INV_Add0~61_sumout\ <= NOT \somaQuatro|Add0~61_sumout\;
\somaQuatro|ALT_INV_Add0~57_sumout\ <= NOT \somaQuatro|Add0~57_sumout\;
\somaQuatro|ALT_INV_Add0~53_sumout\ <= NOT \somaQuatro|Add0~53_sumout\;
\somaQuatro|ALT_INV_Add0~49_sumout\ <= NOT \somaQuatro|Add0~49_sumout\;
\somaQuatro|ALT_INV_Add0~45_sumout\ <= NOT \somaQuatro|Add0~45_sumout\;
\somaQuatro|ALT_INV_Add0~41_sumout\ <= NOT \somaQuatro|Add0~41_sumout\;
\somaQuatro|ALT_INV_Add0~37_sumout\ <= NOT \somaQuatro|Add0~37_sumout\;
\somaQuatro|ALT_INV_Add0~33_sumout\ <= NOT \somaQuatro|Add0~33_sumout\;
\somaQuatro|ALT_INV_Add0~29_sumout\ <= NOT \somaQuatro|Add0~29_sumout\;
\somaQuatro|ALT_INV_Add0~25_sumout\ <= NOT \somaQuatro|Add0~25_sumout\;
\BancoRegistradores|ALT_INV_registrador~1453_combout\ <= NOT \BancoRegistradores|registrador~1453_combout\;
\BancoRegistradores|ALT_INV_registrador~1449_combout\ <= NOT \BancoRegistradores|registrador~1449_combout\;
\BancoRegistradores|ALT_INV_registrador~1445_combout\ <= NOT \BancoRegistradores|registrador~1445_combout\;
\BancoRegistradores|ALT_INV_registrador~1441_combout\ <= NOT \BancoRegistradores|registrador~1441_combout\;
\BancoRegistradores|ALT_INV_registrador~1437_combout\ <= NOT \BancoRegistradores|registrador~1437_combout\;
\BancoRegistradores|ALT_INV_registrador~1433_combout\ <= NOT \BancoRegistradores|registrador~1433_combout\;
\BancoRegistradores|ALT_INV_registrador~1429_combout\ <= NOT \BancoRegistradores|registrador~1429_combout\;
\BancoRegistradores|ALT_INV_registrador~1425_combout\ <= NOT \BancoRegistradores|registrador~1425_combout\;
\BancoRegistradores|ALT_INV_registrador~1421_combout\ <= NOT \BancoRegistradores|registrador~1421_combout\;
\BancoRegistradores|ALT_INV_registrador~1417_combout\ <= NOT \BancoRegistradores|registrador~1417_combout\;
\BancoRegistradores|ALT_INV_registrador~1413_combout\ <= NOT \BancoRegistradores|registrador~1413_combout\;
\BancoRegistradores|ALT_INV_registrador~1409_combout\ <= NOT \BancoRegistradores|registrador~1409_combout\;
\ULA|ALT_INV_saida[13]~43_combout\ <= NOT \ULA|saida[13]~43_combout\;
\MUXRegImed|ALT_INV_saida_MUX[13]~13_combout\ <= NOT \MUXRegImed|saida_MUX[13]~13_combout\;
\BancoRegistradores|ALT_INV_registrador~1176_combout\ <= NOT \BancoRegistradores|registrador~1176_combout\;
\BancoRegistradores|ALT_INV_registrador~1175_combout\ <= NOT \BancoRegistradores|registrador~1175_combout\;
\BancoRegistradores|ALT_INV_registrador~1174_combout\ <= NOT \BancoRegistradores|registrador~1174_combout\;
\BancoRegistradores|ALT_INV_registrador~1173_combout\ <= NOT \BancoRegistradores|registrador~1173_combout\;
\BancoRegistradores|ALT_INV_registrador~1172_combout\ <= NOT \BancoRegistradores|registrador~1172_combout\;
\BancoRegistradores|ALT_INV_saidaA[13]~12_combout\ <= NOT \BancoRegistradores|saidaA[13]~12_combout\;
\ULA|ALT_INV_saida[12]~41_combout\ <= NOT \ULA|saida[12]~41_combout\;
\ULA|ALT_INV_saida[12]~40_combout\ <= NOT \ULA|saida[12]~40_combout\;
\MUXRegImed|ALT_INV_saida_MUX[12]~12_combout\ <= NOT \MUXRegImed|saida_MUX[12]~12_combout\;
\BancoRegistradores|ALT_INV_registrador~1167_combout\ <= NOT \BancoRegistradores|registrador~1167_combout\;
\BancoRegistradores|ALT_INV_registrador~1166_combout\ <= NOT \BancoRegistradores|registrador~1166_combout\;
\BancoRegistradores|ALT_INV_registrador~1165_combout\ <= NOT \BancoRegistradores|registrador~1165_combout\;
\BancoRegistradores|ALT_INV_saidaA[12]~11_combout\ <= NOT \BancoRegistradores|saidaA[12]~11_combout\;
\ULA|ALT_INV_saida[11]~38_combout\ <= NOT \ULA|saida[11]~38_combout\;
\ULA|ALT_INV_saida[11]~37_combout\ <= NOT \ULA|saida[11]~37_combout\;
\MUXRegImed|ALT_INV_saida_MUX[11]~11_combout\ <= NOT \MUXRegImed|saida_MUX[11]~11_combout\;
\BancoRegistradores|ALT_INV_registrador~1160_combout\ <= NOT \BancoRegistradores|registrador~1160_combout\;
\BancoRegistradores|ALT_INV_registrador~1159_combout\ <= NOT \BancoRegistradores|registrador~1159_combout\;
\BancoRegistradores|ALT_INV_registrador~1158_combout\ <= NOT \BancoRegistradores|registrador~1158_combout\;
\BancoRegistradores|ALT_INV_registrador~1157_combout\ <= NOT \BancoRegistradores|registrador~1157_combout\;
\BancoRegistradores|ALT_INV_registrador~1156_combout\ <= NOT \BancoRegistradores|registrador~1156_combout\;
\BancoRegistradores|ALT_INV_saidaA[11]~10_combout\ <= NOT \BancoRegistradores|saidaA[11]~10_combout\;
\ULA|ALT_INV_saida[10]~35_combout\ <= NOT \ULA|saida[10]~35_combout\;
\ULA|ALT_INV_saida[10]~34_combout\ <= NOT \ULA|saida[10]~34_combout\;
\MUXRegImed|ALT_INV_saida_MUX[10]~10_combout\ <= NOT \MUXRegImed|saida_MUX[10]~10_combout\;
\BancoRegistradores|ALT_INV_registrador~1151_combout\ <= NOT \BancoRegistradores|registrador~1151_combout\;
\BancoRegistradores|ALT_INV_registrador~1150_combout\ <= NOT \BancoRegistradores|registrador~1150_combout\;
\BancoRegistradores|ALT_INV_registrador~1149_combout\ <= NOT \BancoRegistradores|registrador~1149_combout\;
\BancoRegistradores|ALT_INV_saidaA[10]~9_combout\ <= NOT \BancoRegistradores|saidaA[10]~9_combout\;
\ULA|ALT_INV_saida[9]~32_combout\ <= NOT \ULA|saida[9]~32_combout\;
\ULA|ALT_INV_saida[9]~31_combout\ <= NOT \ULA|saida[9]~31_combout\;
\MUXRegImed|ALT_INV_saida_MUX[9]~9_combout\ <= NOT \MUXRegImed|saida_MUX[9]~9_combout\;
\BancoRegistradores|ALT_INV_registrador~1144_combout\ <= NOT \BancoRegistradores|registrador~1144_combout\;
\BancoRegistradores|ALT_INV_registrador~1143_combout\ <= NOT \BancoRegistradores|registrador~1143_combout\;
\BancoRegistradores|ALT_INV_registrador~1142_combout\ <= NOT \BancoRegistradores|registrador~1142_combout\;
\BancoRegistradores|ALT_INV_registrador~1141_combout\ <= NOT \BancoRegistradores|registrador~1141_combout\;
\BancoRegistradores|ALT_INV_registrador~1140_combout\ <= NOT \BancoRegistradores|registrador~1140_combout\;
\BancoRegistradores|ALT_INV_saidaA[9]~8_combout\ <= NOT \BancoRegistradores|saidaA[9]~8_combout\;
\ULA|ALT_INV_saida[8]~29_combout\ <= NOT \ULA|saida[8]~29_combout\;
\ULA|ALT_INV_saida[8]~28_combout\ <= NOT \ULA|saida[8]~28_combout\;
\MUXRegImed|ALT_INV_saida_MUX[8]~8_combout\ <= NOT \MUXRegImed|saida_MUX[8]~8_combout\;
\BancoRegistradores|ALT_INV_registrador~1135_combout\ <= NOT \BancoRegistradores|registrador~1135_combout\;
\BancoRegistradores|ALT_INV_registrador~1134_combout\ <= NOT \BancoRegistradores|registrador~1134_combout\;
\BancoRegistradores|ALT_INV_registrador~1133_combout\ <= NOT \BancoRegistradores|registrador~1133_combout\;
\BancoRegistradores|ALT_INV_saidaA[8]~7_combout\ <= NOT \BancoRegistradores|saidaA[8]~7_combout\;
\ULA|ALT_INV_saida[7]~27_combout\ <= NOT \ULA|saida[7]~27_combout\;
\ULA|ALT_INV_saida[7]~26_combout\ <= NOT \ULA|saida[7]~26_combout\;
\ULA|ALT_INV_saida[7]~25_combout\ <= NOT \ULA|saida[7]~25_combout\;
\MUXRegImed|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUXRegImed|saida_MUX[7]~7_combout\;
\BancoRegistradores|ALT_INV_registrador~1128_combout\ <= NOT \BancoRegistradores|registrador~1128_combout\;
\BancoRegistradores|ALT_INV_registrador~1127_combout\ <= NOT \BancoRegistradores|registrador~1127_combout\;
\BancoRegistradores|ALT_INV_registrador~141_q\ <= NOT \BancoRegistradores|registrador~141_q\;
\BancoRegistradores|ALT_INV_registrador~1126_combout\ <= NOT \BancoRegistradores|registrador~1126_combout\;
\BancoRegistradores|ALT_INV_registrador~1125_combout\ <= NOT \BancoRegistradores|registrador~1125_combout\;
\BancoRegistradores|ALT_INV_registrador~1124_combout\ <= NOT \BancoRegistradores|registrador~1124_combout\;
\BancoRegistradores|ALT_INV_saidaA[7]~6_combout\ <= NOT \BancoRegistradores|saidaA[7]~6_combout\;
\ULA|ALT_INV_saida[6]~24_combout\ <= NOT \ULA|saida[6]~24_combout\;
\ULA|ALT_INV_saida[6]~23_combout\ <= NOT \ULA|saida[6]~23_combout\;
\ULA|ALT_INV_saida[6]~22_combout\ <= NOT \ULA|saida[6]~22_combout\;
\MUXRegImed|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUXRegImed|saida_MUX[6]~6_combout\;
\BancoRegistradores|ALT_INV_registrador~1119_combout\ <= NOT \BancoRegistradores|registrador~1119_combout\;
\BancoRegistradores|ALT_INV_registrador~1118_combout\ <= NOT \BancoRegistradores|registrador~1118_combout\;
\BancoRegistradores|ALT_INV_registrador~1117_combout\ <= NOT \BancoRegistradores|registrador~1117_combout\;
\BancoRegistradores|ALT_INV_registrador~140_q\ <= NOT \BancoRegistradores|registrador~140_q\;
\ROM|ALT_INV_memROM~27_combout\ <= NOT \ROM|memROM~27_combout\;
\ROM|ALT_INV_memROM~26_combout\ <= NOT \ROM|memROM~26_combout\;
\BancoRegistradores|ALT_INV_saidaA[6]~5_combout\ <= NOT \BancoRegistradores|saidaA[6]~5_combout\;
\ULA|ALT_INV_saida[5]~21_combout\ <= NOT \ULA|saida[5]~21_combout\;
\ULA|ALT_INV_saida[5]~20_combout\ <= NOT \ULA|saida[5]~20_combout\;
\MUXRegImed|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUXRegImed|saida_MUX[5]~5_combout\;
\BancoRegistradores|ALT_INV_registrador~1112_combout\ <= NOT \BancoRegistradores|registrador~1112_combout\;
\BancoRegistradores|ALT_INV_registrador~1111_combout\ <= NOT \BancoRegistradores|registrador~1111_combout\;
\BancoRegistradores|ALT_INV_registrador~139_q\ <= NOT \BancoRegistradores|registrador~139_q\;
\BancoRegistradores|ALT_INV_registrador~1110_combout\ <= NOT \BancoRegistradores|registrador~1110_combout\;
\BancoRegistradores|ALT_INV_registrador~1109_combout\ <= NOT \BancoRegistradores|registrador~1109_combout\;
\BancoRegistradores|ALT_INV_registrador~1108_combout\ <= NOT \BancoRegistradores|registrador~1108_combout\;
\ROM|ALT_INV_memROM~25_combout\ <= NOT \ROM|memROM~25_combout\;
\BancoRegistradores|ALT_INV_saidaA[5]~4_combout\ <= NOT \BancoRegistradores|saidaA[5]~4_combout\;
\ULA|ALT_INV_saida[4]~19_combout\ <= NOT \ULA|saida[4]~19_combout\;
\ULA|ALT_INV_saida[4]~18_combout\ <= NOT \ULA|saida[4]~18_combout\;
\ULA|ALT_INV_saida[4]~17_combout\ <= NOT \ULA|saida[4]~17_combout\;
\MUXRegImed|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUXRegImed|saida_MUX[4]~4_combout\;
\BancoRegistradores|ALT_INV_registrador~1103_combout\ <= NOT \BancoRegistradores|registrador~1103_combout\;
\BancoRegistradores|ALT_INV_registrador~1102_combout\ <= NOT \BancoRegistradores|registrador~1102_combout\;
\BancoRegistradores|ALT_INV_registrador~1101_combout\ <= NOT \BancoRegistradores|registrador~1101_combout\;
\BancoRegistradores|ALT_INV_registrador~1100_combout\ <= NOT \BancoRegistradores|registrador~1100_combout\;
\BancoRegistradores|ALT_INV_registrador~138_q\ <= NOT \BancoRegistradores|registrador~138_q\;
\ROM|ALT_INV_memROM~24_combout\ <= NOT \ROM|memROM~24_combout\;
\BancoRegistradores|ALT_INV_saidaA[4]~3_combout\ <= NOT \BancoRegistradores|saidaA[4]~3_combout\;
\ULA|ALT_INV_saida[3]~16_combout\ <= NOT \ULA|saida[3]~16_combout\;
\ULA|ALT_INV_saida[3]~15_combout\ <= NOT \ULA|saida[3]~15_combout\;
\ULA|ALT_INV_saida[3]~14_combout\ <= NOT \ULA|saida[3]~14_combout\;
\MUXRegImed|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUXRegImed|saida_MUX[3]~3_combout\;
\BancoRegistradores|ALT_INV_registrador~1095_combout\ <= NOT \BancoRegistradores|registrador~1095_combout\;
\BancoRegistradores|ALT_INV_registrador~1094_combout\ <= NOT \BancoRegistradores|registrador~1094_combout\;
\BancoRegistradores|ALT_INV_registrador~393_q\ <= NOT \BancoRegistradores|registrador~393_q\;
\BancoRegistradores|ALT_INV_registrador~137_q\ <= NOT \BancoRegistradores|registrador~137_q\;
\BancoRegistradores|ALT_INV_registrador~1093_combout\ <= NOT \BancoRegistradores|registrador~1093_combout\;
\BancoRegistradores|ALT_INV_registrador~361_q\ <= NOT \BancoRegistradores|registrador~361_q\;
\BancoRegistradores|ALT_INV_registrador~1092_combout\ <= NOT \BancoRegistradores|registrador~1092_combout\;
\BancoRegistradores|ALT_INV_registrador~329_q\ <= NOT \BancoRegistradores|registrador~329_q\;
\BancoRegistradores|ALT_INV_registrador~1091_combout\ <= NOT \BancoRegistradores|registrador~1091_combout\;
\BancoRegistradores|ALT_INV_saidaA[3]~2_combout\ <= NOT \BancoRegistradores|saidaA[3]~2_combout\;
\ULA|ALT_INV_saida[2]~13_combout\ <= NOT \ULA|saida[2]~13_combout\;
\ULA|ALT_INV_saida[2]~12_combout\ <= NOT \ULA|saida[2]~12_combout\;
\ULA|ALT_INV_saida[2]~11_combout\ <= NOT \ULA|saida[2]~11_combout\;
\MUXRegImed|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUXRegImed|saida_MUX[2]~2_combout\;
\BancoRegistradores|ALT_INV_registrador~1086_combout\ <= NOT \BancoRegistradores|registrador~1086_combout\;
\BancoRegistradores|ALT_INV_registrador~1085_combout\ <= NOT \BancoRegistradores|registrador~1085_combout\;
\BancoRegistradores|ALT_INV_registrador~1084_combout\ <= NOT \BancoRegistradores|registrador~1084_combout\;
\BancoRegistradores|ALT_INV_registrador~392_q\ <= NOT \BancoRegistradores|registrador~392_q\;
\BancoRegistradores|ALT_INV_registrador~1083_combout\ <= NOT \BancoRegistradores|registrador~1083_combout\;
\BancoRegistradores|ALT_INV_registrador~136_q\ <= NOT \BancoRegistradores|registrador~136_q\;
\BancoRegistradores|ALT_INV_saidaA[2]~1_combout\ <= NOT \BancoRegistradores|saidaA[2]~1_combout\;
\ULA|ALT_INV_saida[1]~10_combout\ <= NOT \ULA|saida[1]~10_combout\;
\ULA|ALT_INV_saida[1]~9_combout\ <= NOT \ULA|saida[1]~9_combout\;
\ULA|ALT_INV_saida[1]~8_combout\ <= NOT \ULA|saida[1]~8_combout\;
\ULA|ALT_INV_saida[1]~7_combout\ <= NOT \ULA|saida[1]~7_combout\;
\ULA|ALT_INV_saida[1]~6_combout\ <= NOT \ULA|saida[1]~6_combout\;
\ULA|ALT_INV_saida[1]~5_combout\ <= NOT \ULA|saida[1]~5_combout\;
\ULA|ALT_INV_saida[27]~86_combout\ <= NOT \ULA|saida[27]~86_combout\;
\BancoRegistradores|ALT_INV_saidaA[27]~26_combout\ <= NOT \BancoRegistradores|saidaA[27]~26_combout\;
\ULA|ALT_INV_saida[27]~85_combout\ <= NOT \ULA|saida[27]~85_combout\;
\MUXRegImed|ALT_INV_saida_MUX[27]~27_combout\ <= NOT \MUXRegImed|saida_MUX[27]~27_combout\;
\BancoRegistradores|ALT_INV_registrador~1284_combout\ <= NOT \BancoRegistradores|registrador~1284_combout\;
\BancoRegistradores|ALT_INV_registrador~1283_combout\ <= NOT \BancoRegistradores|registrador~1283_combout\;
\BancoRegistradores|ALT_INV_registrador~1282_combout\ <= NOT \BancoRegistradores|registrador~1282_combout\;
\BancoRegistradores|ALT_INV_registrador~1281_combout\ <= NOT \BancoRegistradores|registrador~1281_combout\;
\BancoRegistradores|ALT_INV_registrador~1280_combout\ <= NOT \BancoRegistradores|registrador~1280_combout\;
\ULA|ALT_INV_saida[26]~83_combout\ <= NOT \ULA|saida[26]~83_combout\;
\BancoRegistradores|ALT_INV_saidaA[26]~25_combout\ <= NOT \BancoRegistradores|saidaA[26]~25_combout\;
\ULA|ALT_INV_saida[26]~82_combout\ <= NOT \ULA|saida[26]~82_combout\;
\MUXRegImed|ALT_INV_saida_MUX[26]~26_combout\ <= NOT \MUXRegImed|saida_MUX[26]~26_combout\;
\BancoRegistradores|ALT_INV_registrador~1275_combout\ <= NOT \BancoRegistradores|registrador~1275_combout\;
\BancoRegistradores|ALT_INV_registrador~1274_combout\ <= NOT \BancoRegistradores|registrador~1274_combout\;
\BancoRegistradores|ALT_INV_registrador~1273_combout\ <= NOT \BancoRegistradores|registrador~1273_combout\;
\ULA|ALT_INV_saida[25]~80_combout\ <= NOT \ULA|saida[25]~80_combout\;
\BancoRegistradores|ALT_INV_saidaA[25]~24_combout\ <= NOT \BancoRegistradores|saidaA[25]~24_combout\;
\ULA|ALT_INV_saida[25]~79_combout\ <= NOT \ULA|saida[25]~79_combout\;
\MUXRegImed|ALT_INV_saida_MUX[25]~25_combout\ <= NOT \MUXRegImed|saida_MUX[25]~25_combout\;
\BancoRegistradores|ALT_INV_registrador~1268_combout\ <= NOT \BancoRegistradores|registrador~1268_combout\;
\BancoRegistradores|ALT_INV_registrador~1267_combout\ <= NOT \BancoRegistradores|registrador~1267_combout\;
\BancoRegistradores|ALT_INV_registrador~1266_combout\ <= NOT \BancoRegistradores|registrador~1266_combout\;
\BancoRegistradores|ALT_INV_registrador~1265_combout\ <= NOT \BancoRegistradores|registrador~1265_combout\;
\BancoRegistradores|ALT_INV_registrador~1264_combout\ <= NOT \BancoRegistradores|registrador~1264_combout\;
\ULA|ALT_INV_saida[24]~77_combout\ <= NOT \ULA|saida[24]~77_combout\;
\BancoRegistradores|ALT_INV_saidaA[24]~23_combout\ <= NOT \BancoRegistradores|saidaA[24]~23_combout\;
\ULA|ALT_INV_saida[24]~76_combout\ <= NOT \ULA|saida[24]~76_combout\;
\MUXRegImed|ALT_INV_saida_MUX[24]~24_combout\ <= NOT \MUXRegImed|saida_MUX[24]~24_combout\;
\BancoRegistradores|ALT_INV_registrador~1259_combout\ <= NOT \BancoRegistradores|registrador~1259_combout\;
\BancoRegistradores|ALT_INV_registrador~1258_combout\ <= NOT \BancoRegistradores|registrador~1258_combout\;
\BancoRegistradores|ALT_INV_registrador~1257_combout\ <= NOT \BancoRegistradores|registrador~1257_combout\;
\ULA|ALT_INV_saida[23]~74_combout\ <= NOT \ULA|saida[23]~74_combout\;
\BancoRegistradores|ALT_INV_saidaA[23]~22_combout\ <= NOT \BancoRegistradores|saidaA[23]~22_combout\;
\ULA|ALT_INV_saida[23]~73_combout\ <= NOT \ULA|saida[23]~73_combout\;
\MUXRegImed|ALT_INV_saida_MUX[23]~23_combout\ <= NOT \MUXRegImed|saida_MUX[23]~23_combout\;
\BancoRegistradores|ALT_INV_registrador~1252_combout\ <= NOT \BancoRegistradores|registrador~1252_combout\;
\BancoRegistradores|ALT_INV_registrador~1251_combout\ <= NOT \BancoRegistradores|registrador~1251_combout\;
\BancoRegistradores|ALT_INV_registrador~1250_combout\ <= NOT \BancoRegistradores|registrador~1250_combout\;
\BancoRegistradores|ALT_INV_registrador~1249_combout\ <= NOT \BancoRegistradores|registrador~1249_combout\;
\BancoRegistradores|ALT_INV_registrador~1248_combout\ <= NOT \BancoRegistradores|registrador~1248_combout\;
\ULA|ALT_INV_saida[22]~71_combout\ <= NOT \ULA|saida[22]~71_combout\;
\BancoRegistradores|ALT_INV_saidaA[22]~21_combout\ <= NOT \BancoRegistradores|saidaA[22]~21_combout\;
\ULA|ALT_INV_saida[22]~70_combout\ <= NOT \ULA|saida[22]~70_combout\;
\MUXRegImed|ALT_INV_saida_MUX[22]~22_combout\ <= NOT \MUXRegImed|saida_MUX[22]~22_combout\;
\BancoRegistradores|ALT_INV_registrador~1243_combout\ <= NOT \BancoRegistradores|registrador~1243_combout\;
\BancoRegistradores|ALT_INV_registrador~1242_combout\ <= NOT \BancoRegistradores|registrador~1242_combout\;
\BancoRegistradores|ALT_INV_registrador~1241_combout\ <= NOT \BancoRegistradores|registrador~1241_combout\;
\ULA|ALT_INV_saida[21]~68_combout\ <= NOT \ULA|saida[21]~68_combout\;
\BancoRegistradores|ALT_INV_saidaA[21]~20_combout\ <= NOT \BancoRegistradores|saidaA[21]~20_combout\;
\ULA|ALT_INV_saida[21]~67_combout\ <= NOT \ULA|saida[21]~67_combout\;
\MUXRegImed|ALT_INV_saida_MUX[21]~21_combout\ <= NOT \MUXRegImed|saida_MUX[21]~21_combout\;
\BancoRegistradores|ALT_INV_registrador~1236_combout\ <= NOT \BancoRegistradores|registrador~1236_combout\;
\BancoRegistradores|ALT_INV_registrador~1235_combout\ <= NOT \BancoRegistradores|registrador~1235_combout\;
\BancoRegistradores|ALT_INV_registrador~1234_combout\ <= NOT \BancoRegistradores|registrador~1234_combout\;
\BancoRegistradores|ALT_INV_registrador~1233_combout\ <= NOT \BancoRegistradores|registrador~1233_combout\;
\BancoRegistradores|ALT_INV_registrador~1232_combout\ <= NOT \BancoRegistradores|registrador~1232_combout\;
\ULA|ALT_INV_saida[20]~65_combout\ <= NOT \ULA|saida[20]~65_combout\;
\BancoRegistradores|ALT_INV_saidaA[20]~19_combout\ <= NOT \BancoRegistradores|saidaA[20]~19_combout\;
\ULA|ALT_INV_saida[20]~64_combout\ <= NOT \ULA|saida[20]~64_combout\;
\MUXRegImed|ALT_INV_saida_MUX[20]~20_combout\ <= NOT \MUXRegImed|saida_MUX[20]~20_combout\;
\BancoRegistradores|ALT_INV_registrador~1227_combout\ <= NOT \BancoRegistradores|registrador~1227_combout\;
\BancoRegistradores|ALT_INV_registrador~1226_combout\ <= NOT \BancoRegistradores|registrador~1226_combout\;
\BancoRegistradores|ALT_INV_registrador~1225_combout\ <= NOT \BancoRegistradores|registrador~1225_combout\;
\ULA|ALT_INV_saida[19]~62_combout\ <= NOT \ULA|saida[19]~62_combout\;
\BancoRegistradores|ALT_INV_saidaA[19]~18_combout\ <= NOT \BancoRegistradores|saidaA[19]~18_combout\;
\ULA|ALT_INV_saida[19]~61_combout\ <= NOT \ULA|saida[19]~61_combout\;
\MUXRegImed|ALT_INV_saida_MUX[19]~19_combout\ <= NOT \MUXRegImed|saida_MUX[19]~19_combout\;
\BancoRegistradores|ALT_INV_registrador~1220_combout\ <= NOT \BancoRegistradores|registrador~1220_combout\;
\BancoRegistradores|ALT_INV_registrador~1219_combout\ <= NOT \BancoRegistradores|registrador~1219_combout\;
\BancoRegistradores|ALT_INV_registrador~1218_combout\ <= NOT \BancoRegistradores|registrador~1218_combout\;
\BancoRegistradores|ALT_INV_registrador~1217_combout\ <= NOT \BancoRegistradores|registrador~1217_combout\;
\BancoRegistradores|ALT_INV_registrador~1216_combout\ <= NOT \BancoRegistradores|registrador~1216_combout\;
\ULA|ALT_INV_saida[18]~59_combout\ <= NOT \ULA|saida[18]~59_combout\;
\BancoRegistradores|ALT_INV_saidaA[18]~17_combout\ <= NOT \BancoRegistradores|saidaA[18]~17_combout\;
\ULA|ALT_INV_saida[18]~58_combout\ <= NOT \ULA|saida[18]~58_combout\;
\MUXRegImed|ALT_INV_saida_MUX[18]~18_combout\ <= NOT \MUXRegImed|saida_MUX[18]~18_combout\;
\BancoRegistradores|ALT_INV_registrador~1211_combout\ <= NOT \BancoRegistradores|registrador~1211_combout\;
\BancoRegistradores|ALT_INV_registrador~1210_combout\ <= NOT \BancoRegistradores|registrador~1210_combout\;
\BancoRegistradores|ALT_INV_registrador~1209_combout\ <= NOT \BancoRegistradores|registrador~1209_combout\;
\ULA|ALT_INV_saida[17]~56_combout\ <= NOT \ULA|saida[17]~56_combout\;
\BancoRegistradores|ALT_INV_saidaA[17]~16_combout\ <= NOT \BancoRegistradores|saidaA[17]~16_combout\;
\ULA|ALT_INV_saida[17]~55_combout\ <= NOT \ULA|saida[17]~55_combout\;
\MUXRegImed|ALT_INV_saida_MUX[17]~17_combout\ <= NOT \MUXRegImed|saida_MUX[17]~17_combout\;
\BancoRegistradores|ALT_INV_registrador~1204_combout\ <= NOT \BancoRegistradores|registrador~1204_combout\;
\BancoRegistradores|ALT_INV_registrador~1203_combout\ <= NOT \BancoRegistradores|registrador~1203_combout\;
\BancoRegistradores|ALT_INV_registrador~1202_combout\ <= NOT \BancoRegistradores|registrador~1202_combout\;
\BancoRegistradores|ALT_INV_registrador~1201_combout\ <= NOT \BancoRegistradores|registrador~1201_combout\;
\BancoRegistradores|ALT_INV_registrador~1200_combout\ <= NOT \BancoRegistradores|registrador~1200_combout\;
\ULA|ALT_INV_saida[16]~54_combout\ <= NOT \ULA|saida[16]~54_combout\;
\ULA|ALT_INV_saida[16]~53_combout\ <= NOT \ULA|saida[16]~53_combout\;
\BancoRegistradores|ALT_INV_saidaA[16]~15_combout\ <= NOT \BancoRegistradores|saidaA[16]~15_combout\;
\ULA|ALT_INV_saida[16]~52_combout\ <= NOT \ULA|saida[16]~52_combout\;
\MUXRegImed|ALT_INV_saida_MUX[16]~16_combout\ <= NOT \MUXRegImed|saida_MUX[16]~16_combout\;
\BancoRegistradores|ALT_INV_registrador~1195_combout\ <= NOT \BancoRegistradores|registrador~1195_combout\;
\BancoRegistradores|ALT_INV_registrador~1194_combout\ <= NOT \BancoRegistradores|registrador~1194_combout\;
\BancoRegistradores|ALT_INV_registrador~1193_combout\ <= NOT \BancoRegistradores|registrador~1193_combout\;
\ULA|ALT_INV_saida[15]~50_combout\ <= NOT \ULA|saida[15]~50_combout\;
\ULA|ALT_INV_saida[15]~49_combout\ <= NOT \ULA|saida[15]~49_combout\;
\MUXRegImed|ALT_INV_saida_MUX[15]~15_combout\ <= NOT \MUXRegImed|saida_MUX[15]~15_combout\;
\BancoRegistradores|ALT_INV_registrador~1192_combout\ <= NOT \BancoRegistradores|registrador~1192_combout\;
\BancoRegistradores|ALT_INV_registrador~1191_combout\ <= NOT \BancoRegistradores|registrador~1191_combout\;
\BancoRegistradores|ALT_INV_registrador~1190_combout\ <= NOT \BancoRegistradores|registrador~1190_combout\;
\BancoRegistradores|ALT_INV_registrador~1189_combout\ <= NOT \BancoRegistradores|registrador~1189_combout\;
\BancoRegistradores|ALT_INV_registrador~1188_combout\ <= NOT \BancoRegistradores|registrador~1188_combout\;
\BancoRegistradores|ALT_INV_saidaA[15]~14_combout\ <= NOT \BancoRegistradores|saidaA[15]~14_combout\;
\ULA|ALT_INV_saida[14]~47_combout\ <= NOT \ULA|saida[14]~47_combout\;
\ULA|ALT_INV_saida[14]~46_combout\ <= NOT \ULA|saida[14]~46_combout\;
\MUXRegImed|ALT_INV_saida_MUX[14]~14_combout\ <= NOT \MUXRegImed|saida_MUX[14]~14_combout\;
\BancoRegistradores|ALT_INV_registrador~1183_combout\ <= NOT \BancoRegistradores|registrador~1183_combout\;
\BancoRegistradores|ALT_INV_registrador~1182_combout\ <= NOT \BancoRegistradores|registrador~1182_combout\;
\BancoRegistradores|ALT_INV_registrador~1181_combout\ <= NOT \BancoRegistradores|registrador~1181_combout\;
\BancoRegistradores|ALT_INV_saidaA[14]~13_combout\ <= NOT \BancoRegistradores|saidaA[14]~13_combout\;
\ULA|ALT_INV_saida[13]~44_combout\ <= NOT \ULA|saida[13]~44_combout\;
\ROM|ALT_INV_memROM~29_combout\ <= NOT \ROM|memROM~29_combout\;
\MUXBCREG3|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUXBCREG3|saida_MUX[1]~1_combout\;
\MUXBCREG3|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUXBCREG3|saida_MUX[0]~0_combout\;
\UC|ALT_INV_Equal10~0_combout\ <= NOT \UC|Equal10~0_combout\;
\ALT_INV_seletorBranchSignal~2_combout\ <= NOT \seletorBranchSignal~2_combout\;
\ALT_INV_seletorBranchSignal~1_combout\ <= NOT \seletorBranchSignal~1_combout\;
\UC|ALT_INV_Equal11~0_combout\ <= NOT \UC|Equal11~0_combout\;
\ROM|ALT_INV_memROM~28_combout\ <= NOT \ROM|memROM~28_combout\;
\BancoRegistradores|ALT_INV_saidaA[0]~31_combout\ <= NOT \BancoRegistradores|saidaA[0]~31_combout\;
\ULA|ALT_INV_Equal8~16_combout\ <= NOT \ULA|Equal8~16_combout\;
\ULA|ALT_INV_Equal8~15_combout\ <= NOT \ULA|Equal8~15_combout\;
\ULA|ALT_INV_Equal8~14_combout\ <= NOT \ULA|Equal8~14_combout\;
\ULA|ALT_INV_Equal8~13_combout\ <= NOT \ULA|Equal8~13_combout\;
\UC|ALT_INV_Equal8~0_combout\ <= NOT \UC|Equal8~0_combout\;
\UC|ALT_INV_Equal9~0_combout\ <= NOT \UC|Equal9~0_combout\;
\ULA|ALT_INV_Equal8~12_combout\ <= NOT \ULA|Equal8~12_combout\;
\ULA|ALT_INV_Equal8~11_combout\ <= NOT \ULA|Equal8~11_combout\;
\ULA|ALT_INV_Equal8~10_combout\ <= NOT \ULA|Equal8~10_combout\;
\ULA|ALT_INV_Equal8~9_combout\ <= NOT \ULA|Equal8~9_combout\;
\ULA|ALT_INV_Equal8~8_combout\ <= NOT \ULA|Equal8~8_combout\;
\ULA|ALT_INV_Equal8~7_combout\ <= NOT \ULA|Equal8~7_combout\;
\ULA|ALT_INV_Equal8~6_combout\ <= NOT \ULA|Equal8~6_combout\;
\ULA|ALT_INV_Equal8~5_combout\ <= NOT \ULA|Equal8~5_combout\;
\ULA|ALT_INV_Equal8~4_combout\ <= NOT \ULA|Equal8~4_combout\;
\ULA|ALT_INV_Equal8~3_combout\ <= NOT \ULA|Equal8~3_combout\;
\ULA|ALT_INV_Equal8~2_combout\ <= NOT \ULA|Equal8~2_combout\;
\ULA|ALT_INV_Equal8~1_combout\ <= NOT \ULA|Equal8~1_combout\;
\ULA|ALT_INV_Equal8~0_combout\ <= NOT \ULA|Equal8~0_combout\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ULA|ALT_INV_saida[31]~98_combout\ <= NOT \ULA|saida[31]~98_combout\;
\BancoRegistradores|ALT_INV_saidaA[31]~30_combout\ <= NOT \BancoRegistradores|saidaA[31]~30_combout\;
\ULA|ALT_INV_saida[31]~97_combout\ <= NOT \ULA|saida[31]~97_combout\;
\MUXRegImed|ALT_INV_saida_MUX[31]~31_combout\ <= NOT \MUXRegImed|saida_MUX[31]~31_combout\;
\BancoRegistradores|ALT_INV_registrador~1316_combout\ <= NOT \BancoRegistradores|registrador~1316_combout\;
\BancoRegistradores|ALT_INV_registrador~1315_combout\ <= NOT \BancoRegistradores|registrador~1315_combout\;
\BancoRegistradores|ALT_INV_registrador~1314_combout\ <= NOT \BancoRegistradores|registrador~1314_combout\;
\BancoRegistradores|ALT_INV_registrador~1313_combout\ <= NOT \BancoRegistradores|registrador~1313_combout\;
\BancoRegistradores|ALT_INV_registrador~1312_combout\ <= NOT \BancoRegistradores|registrador~1312_combout\;
\ULA|ALT_INV_saida[30]~95_combout\ <= NOT \ULA|saida[30]~95_combout\;
\BancoRegistradores|ALT_INV_saidaA[30]~29_combout\ <= NOT \BancoRegistradores|saidaA[30]~29_combout\;
\ULA|ALT_INV_saida[30]~94_combout\ <= NOT \ULA|saida[30]~94_combout\;
\MUXRegImed|ALT_INV_saida_MUX[30]~30_combout\ <= NOT \MUXRegImed|saida_MUX[30]~30_combout\;
\BancoRegistradores|ALT_INV_registrador~1307_combout\ <= NOT \BancoRegistradores|registrador~1307_combout\;
\BancoRegistradores|ALT_INV_registrador~1306_combout\ <= NOT \BancoRegistradores|registrador~1306_combout\;
\BancoRegistradores|ALT_INV_registrador~1305_combout\ <= NOT \BancoRegistradores|registrador~1305_combout\;
\ULA|ALT_INV_saida[29]~92_combout\ <= NOT \ULA|saida[29]~92_combout\;
\BancoRegistradores|ALT_INV_saidaA[29]~28_combout\ <= NOT \BancoRegistradores|saidaA[29]~28_combout\;
\ULA|ALT_INV_saida[29]~91_combout\ <= NOT \ULA|saida[29]~91_combout\;
\MUXRegImed|ALT_INV_saida_MUX[29]~29_combout\ <= NOT \MUXRegImed|saida_MUX[29]~29_combout\;
\BancoRegistradores|ALT_INV_registrador~1300_combout\ <= NOT \BancoRegistradores|registrador~1300_combout\;
\BancoRegistradores|ALT_INV_registrador~1299_combout\ <= NOT \BancoRegistradores|registrador~1299_combout\;
\BancoRegistradores|ALT_INV_registrador~1298_combout\ <= NOT \BancoRegistradores|registrador~1298_combout\;
\BancoRegistradores|ALT_INV_registrador~1297_combout\ <= NOT \BancoRegistradores|registrador~1297_combout\;
\BancoRegistradores|ALT_INV_registrador~1296_combout\ <= NOT \BancoRegistradores|registrador~1296_combout\;
\ULA|ALT_INV_saida[28]~89_combout\ <= NOT \ULA|saida[28]~89_combout\;
\BancoRegistradores|ALT_INV_saidaA[28]~27_combout\ <= NOT \BancoRegistradores|saidaA[28]~27_combout\;
\ULA|ALT_INV_saida[28]~88_combout\ <= NOT \ULA|saida[28]~88_combout\;
\MUXRegImed|ALT_INV_saida_MUX[28]~28_combout\ <= NOT \MUXRegImed|saida_MUX[28]~28_combout\;
\BancoRegistradores|ALT_INV_registrador~1291_combout\ <= NOT \BancoRegistradores|registrador~1291_combout\;
\BancoRegistradores|ALT_INV_registrador~1290_combout\ <= NOT \BancoRegistradores|registrador~1290_combout\;
\BancoRegistradores|ALT_INV_registrador~1289_combout\ <= NOT \BancoRegistradores|registrador~1289_combout\;
\BancoRegistradores|ALT_INV_Equal1~0_combout\ <= NOT \BancoRegistradores|Equal1~0_combout\;
\ulaUC|ALT_INV_ulaOp~9_combout\ <= NOT \ulaUC|ulaOp~9_combout\;
\ulaUC|ALT_INV_ulaOp[2]~8_combout\ <= NOT \ulaUC|ulaOp[2]~8_combout\;
\ULA|ALT_INV_saida[31]~100_combout\ <= NOT \ULA|saida[31]~100_combout\;
\MUXBCREG3|ALT_INV_saida_MUX[3]~2_combout\ <= NOT \MUXBCREG3|saida_MUX[3]~2_combout\;
\BancoRegistradores|ALT_INV_registrador~1457_combout\ <= NOT \BancoRegistradores|registrador~1457_combout\;
\ULA|ALT_INV_Equal8~21_combout\ <= NOT \ULA|Equal8~21_combout\;
\ULA|ALT_INV_Equal8~20_combout\ <= NOT \ULA|Equal8~20_combout\;
\ULA|ALT_INV_Equal8~19_combout\ <= NOT \ULA|Equal8~19_combout\;
\ULA|ALT_INV_Equal8~18_combout\ <= NOT \ULA|Equal8~18_combout\;
\ULA|ALT_INV_Equal8~17_combout\ <= NOT \ULA|Equal8~17_combout\;

\ULAout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[0]~2_combout\,
	devoe => ww_devoe,
	o => \ULAout[0]~output_o\);

\ULAout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[1]~10_combout\,
	devoe => ww_devoe,
	o => \ULAout[1]~output_o\);

\ULAout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[2]~13_combout\,
	devoe => ww_devoe,
	o => \ULAout[2]~output_o\);

\ULAout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[3]~16_combout\,
	devoe => ww_devoe,
	o => \ULAout[3]~output_o\);

\ULAout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[4]~19_combout\,
	devoe => ww_devoe,
	o => \ULAout[4]~output_o\);

\ULAout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[5]~21_combout\,
	devoe => ww_devoe,
	o => \ULAout[5]~output_o\);

\ULAout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[6]~24_combout\,
	devoe => ww_devoe,
	o => \ULAout[6]~output_o\);

\ULAout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[7]~27_combout\,
	devoe => ww_devoe,
	o => \ULAout[7]~output_o\);

\ULAout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[8]~30_combout\,
	devoe => ww_devoe,
	o => \ULAout[8]~output_o\);

\ULAout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[9]~33_combout\,
	devoe => ww_devoe,
	o => \ULAout[9]~output_o\);

\ULAout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[10]~36_combout\,
	devoe => ww_devoe,
	o => \ULAout[10]~output_o\);

\ULAout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[11]~39_combout\,
	devoe => ww_devoe,
	o => \ULAout[11]~output_o\);

\ULAout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[12]~42_combout\,
	devoe => ww_devoe,
	o => \ULAout[12]~output_o\);

\ULAout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[13]~45_combout\,
	devoe => ww_devoe,
	o => \ULAout[13]~output_o\);

\ULAout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[14]~48_combout\,
	devoe => ww_devoe,
	o => \ULAout[14]~output_o\);

\ULAout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[15]~51_combout\,
	devoe => ww_devoe,
	o => \ULAout[15]~output_o\);

\ULAout[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[16]~54_combout\,
	devoe => ww_devoe,
	o => \ULAout[16]~output_o\);

\ULAout[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[17]~57_combout\,
	devoe => ww_devoe,
	o => \ULAout[17]~output_o\);

\ULAout[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[18]~60_combout\,
	devoe => ww_devoe,
	o => \ULAout[18]~output_o\);

\ULAout[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[19]~63_combout\,
	devoe => ww_devoe,
	o => \ULAout[19]~output_o\);

\ULAout[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[20]~66_combout\,
	devoe => ww_devoe,
	o => \ULAout[20]~output_o\);

\ULAout[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[21]~69_combout\,
	devoe => ww_devoe,
	o => \ULAout[21]~output_o\);

\ULAout[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[22]~72_combout\,
	devoe => ww_devoe,
	o => \ULAout[22]~output_o\);

\ULAout[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[23]~75_combout\,
	devoe => ww_devoe,
	o => \ULAout[23]~output_o\);

\ULAout[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[24]~78_combout\,
	devoe => ww_devoe,
	o => \ULAout[24]~output_o\);

\ULAout[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[25]~81_combout\,
	devoe => ww_devoe,
	o => \ULAout[25]~output_o\);

\ULAout[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[26]~84_combout\,
	devoe => ww_devoe,
	o => \ULAout[26]~output_o\);

\ULAout[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[27]~87_combout\,
	devoe => ww_devoe,
	o => \ULAout[27]~output_o\);

\ULAout[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[28]~90_combout\,
	devoe => ww_devoe,
	o => \ULAout[28]~output_o\);

\ULAout[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[29]~93_combout\,
	devoe => ww_devoe,
	o => \ULAout[29]~output_o\);

\ULAout[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[30]~96_combout\,
	devoe => ww_devoe,
	o => \ULAout[30]~output_o\);

\ULAout[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[31]~99_combout\,
	devoe => ww_devoe,
	o => \ULAout[31]~output_o\);

\PCout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCout[0]~output_o\);

\PCout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCout[1]~output_o\);

\PCout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PCout[2]~output_o\);

\PCout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PCout[3]~output_o\);

\PCout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PCout[4]~output_o\);

\PCout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PCout[5]~output_o\);

\PCout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PCout[6]~output_o\);

\PCout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PCout[7]~output_o\);

\PCout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PCout[8]~output_o\);

\PCout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => \PCout[9]~output_o\);

\PCout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => \PCout[10]~output_o\);

\PCout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => \PCout[11]~output_o\);

\PCout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => \PCout[12]~output_o\);

\PCout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => \PCout[13]~output_o\);

\PCout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => \PCout[14]~output_o\);

\PCout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => \PCout[15]~output_o\);

\PCout[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => \PCout[16]~output_o\);

\PCout[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => \PCout[17]~output_o\);

\PCout[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => \PCout[18]~output_o\);

\PCout[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => \PCout[19]~output_o\);

\PCout[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => \PCout[20]~output_o\);

\PCout[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => \PCout[21]~output_o\);

\PCout[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => \PCout[22]~output_o\);

\PCout[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => \PCout[23]~output_o\);

\PCout[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => \PCout[24]~output_o\);

\PCout[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => \PCout[25]~output_o\);

\PCout[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => \PCout[26]~output_o\);

\PCout[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => \PCout[27]~output_o\);

\PCout[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => \PCout[28]~output_o\);

\PCout[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => \PCout[29]~output_o\);

\PCout[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => \PCout[30]~output_o\);

\PCout[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => \PCout[31]~output_o\);

\MuxBEQout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxBEQout[0]~output_o\);

\MuxBEQout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxBEQout[1]~output_o\);

\MuxBEQout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[2]~output_o\);

\MuxBEQout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[3]~output_o\);

\MuxBEQout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[4]~output_o\);

\MuxBEQout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[5]~output_o\);

\MuxBEQout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[6]~output_o\);

\MuxBEQout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[7]~output_o\);

\MuxBEQout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[8]~output_o\);

\MuxBEQout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[9]~output_o\);

\MuxBEQout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[10]~output_o\);

\MuxBEQout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[11]~output_o\);

\MuxBEQout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[12]~output_o\);

\MuxBEQout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[13]~output_o\);

\MuxBEQout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[14]~output_o\);

\MuxBEQout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[15]~output_o\);

\MuxBEQout[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[16]~output_o\);

\MuxBEQout[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[17]~output_o\);

\MuxBEQout[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~65_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[18]~output_o\);

\MuxBEQout[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~69_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[19]~output_o\);

\MuxBEQout[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~73_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[20]~output_o\);

\MuxBEQout[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~77_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[21]~output_o\);

\MuxBEQout[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~81_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[22]~output_o\);

\MuxBEQout[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~85_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[23]~output_o\);

\MuxBEQout[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~89_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[24]~output_o\);

\MuxBEQout[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~93_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[25]~output_o\);

\MuxBEQout[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~97_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[26]~output_o\);

\MuxBEQout[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~101_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[27]~output_o\);

\MuxBEQout[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~105_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[28]~output_o\);

\MuxBEQout[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~109_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[29]~output_o\);

\MuxBEQout[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~113_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[30]~output_o\);

\MuxBEQout[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \somaSHIFT|Add0~117_sumout\,
	devoe => ww_devoe,
	o => \MuxBEQout[31]~output_o\);

\flagZeroOut~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Equal8~12_combout\,
	devoe => ww_devoe,
	o => \flagZeroOut~output_o\);

\BEQOut~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|Equal9~0_combout\,
	devoe => ww_devoe,
	o => \BEQOut~output_o\);

\andOut~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seletorBranchSignal~0_combout\,
	devoe => ww_devoe,
	o => \andOut~output_o\);

\UlaAout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[0]~31_combout\,
	devoe => ww_devoe,
	o => \UlaAout[0]~output_o\);

\UlaAout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[1]~0_combout\,
	devoe => ww_devoe,
	o => \UlaAout[1]~output_o\);

\UlaAout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[2]~1_combout\,
	devoe => ww_devoe,
	o => \UlaAout[2]~output_o\);

\UlaAout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[3]~2_combout\,
	devoe => ww_devoe,
	o => \UlaAout[3]~output_o\);

\UlaAout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[4]~3_combout\,
	devoe => ww_devoe,
	o => \UlaAout[4]~output_o\);

\UlaAout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[5]~4_combout\,
	devoe => ww_devoe,
	o => \UlaAout[5]~output_o\);

\UlaAout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[6]~5_combout\,
	devoe => ww_devoe,
	o => \UlaAout[6]~output_o\);

\UlaAout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[7]~6_combout\,
	devoe => ww_devoe,
	o => \UlaAout[7]~output_o\);

\UlaAout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[8]~7_combout\,
	devoe => ww_devoe,
	o => \UlaAout[8]~output_o\);

\UlaAout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[9]~8_combout\,
	devoe => ww_devoe,
	o => \UlaAout[9]~output_o\);

\UlaAout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[10]~9_combout\,
	devoe => ww_devoe,
	o => \UlaAout[10]~output_o\);

\UlaAout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[11]~10_combout\,
	devoe => ww_devoe,
	o => \UlaAout[11]~output_o\);

\UlaAout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[12]~11_combout\,
	devoe => ww_devoe,
	o => \UlaAout[12]~output_o\);

\UlaAout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[13]~12_combout\,
	devoe => ww_devoe,
	o => \UlaAout[13]~output_o\);

\UlaAout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[14]~13_combout\,
	devoe => ww_devoe,
	o => \UlaAout[14]~output_o\);

\UlaAout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[15]~14_combout\,
	devoe => ww_devoe,
	o => \UlaAout[15]~output_o\);

\UlaAout[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[16]~15_combout\,
	devoe => ww_devoe,
	o => \UlaAout[16]~output_o\);

\UlaAout[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[17]~16_combout\,
	devoe => ww_devoe,
	o => \UlaAout[17]~output_o\);

\UlaAout[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[18]~17_combout\,
	devoe => ww_devoe,
	o => \UlaAout[18]~output_o\);

\UlaAout[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[19]~18_combout\,
	devoe => ww_devoe,
	o => \UlaAout[19]~output_o\);

\UlaAout[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[20]~19_combout\,
	devoe => ww_devoe,
	o => \UlaAout[20]~output_o\);

\UlaAout[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[21]~20_combout\,
	devoe => ww_devoe,
	o => \UlaAout[21]~output_o\);

\UlaAout[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[22]~21_combout\,
	devoe => ww_devoe,
	o => \UlaAout[22]~output_o\);

\UlaAout[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[23]~22_combout\,
	devoe => ww_devoe,
	o => \UlaAout[23]~output_o\);

\UlaAout[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[24]~23_combout\,
	devoe => ww_devoe,
	o => \UlaAout[24]~output_o\);

\UlaAout[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[25]~24_combout\,
	devoe => ww_devoe,
	o => \UlaAout[25]~output_o\);

\UlaAout[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[26]~25_combout\,
	devoe => ww_devoe,
	o => \UlaAout[26]~output_o\);

\UlaAout[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[27]~26_combout\,
	devoe => ww_devoe,
	o => \UlaAout[27]~output_o\);

\UlaAout[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[28]~27_combout\,
	devoe => ww_devoe,
	o => \UlaAout[28]~output_o\);

\UlaAout[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[29]~28_combout\,
	devoe => ww_devoe,
	o => \UlaAout[29]~output_o\);

\UlaAout[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[30]~29_combout\,
	devoe => ww_devoe,
	o => \UlaAout[30]~output_o\);

\UlaAout[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoRegistradores|saidaA[31]~30_combout\,
	devoe => ww_devoe,
	o => \UlaAout[31]~output_o\);

\UlaBOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[0]~output_o\);

\UlaBOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[1]~output_o\);

\UlaBOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[2]~output_o\);

\UlaBOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[3]~output_o\);

\UlaBOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[4]~output_o\);

\UlaBOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[5]~output_o\);

\UlaBOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[6]~output_o\);

\UlaBOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[7]~output_o\);

\UlaBOut[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[8]~8_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[8]~output_o\);

\UlaBOut[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[9]~9_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[9]~output_o\);

\UlaBOut[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[10]~10_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[10]~output_o\);

\UlaBOut[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[11]~11_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[11]~output_o\);

\UlaBOut[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[12]~12_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[12]~output_o\);

\UlaBOut[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[13]~13_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[13]~output_o\);

\UlaBOut[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[14]~14_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[14]~output_o\);

\UlaBOut[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[15]~15_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[15]~output_o\);

\UlaBOut[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[16]~16_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[16]~output_o\);

\UlaBOut[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[17]~17_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[17]~output_o\);

\UlaBOut[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[18]~18_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[18]~output_o\);

\UlaBOut[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[19]~19_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[19]~output_o\);

\UlaBOut[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[20]~20_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[20]~output_o\);

\UlaBOut[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[21]~21_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[21]~output_o\);

\UlaBOut[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[22]~22_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[22]~output_o\);

\UlaBOut[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[23]~23_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[23]~output_o\);

\UlaBOut[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[24]~24_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[24]~output_o\);

\UlaBOut[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[25]~25_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[25]~output_o\);

\UlaBOut[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[26]~26_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[26]~output_o\);

\UlaBOut[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[27]~27_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[27]~output_o\);

\UlaBOut[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[28]~28_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[28]~output_o\);

\UlaBOut[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[29]~29_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[29]~output_o\);

\UlaBOut[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[30]~30_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[30]~output_o\);

\UlaBOut[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUXRegImed|saida_MUX[31]~31_combout\,
	devoe => ww_devoe,
	o => \UlaBOut[31]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (!\PC|DOUT\(5) & (!\PC|DOUT\(3) $ (((!\PC|DOUT\(4)) # (\PC|DOUT\(2)))))) # (\PC|DOUT\(5) & (!\PC|DOUT\(2) $ (((\PC|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100110100101001110011010010100111001101001010011100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~16_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (!\ROM|memROM~0_combout\) # (\ROM|memROM~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	combout => \ROM|memROM~17_combout\);

\somaQuatro|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \somaQuatro|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \somaQuatro|Add0~1_sumout\,
	cout => \somaQuatro|Add0~2\);

\somaQuatro|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~5_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \somaQuatro|Add0~2\ ))
-- \somaQuatro|Add0~6\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \somaQuatro|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \somaQuatro|Add0~2\,
	sumout => \somaQuatro|Add0~5_sumout\,
	cout => \somaQuatro|Add0~6\);

\somaQuatro|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~9_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somaQuatro|Add0~6\ ))
-- \somaQuatro|Add0~10\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somaQuatro|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \somaQuatro|Add0~6\,
	sumout => \somaQuatro|Add0~9_sumout\,
	cout => \somaQuatro|Add0~10\);

\somaQuatro|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somaQuatro|Add0~10\ ))
-- \somaQuatro|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somaQuatro|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \somaQuatro|Add0~10\,
	sumout => \somaQuatro|Add0~13_sumout\,
	cout => \somaQuatro|Add0~14\);

\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = (!\PC|DOUT\(2) & (\PC|DOUT\(3) & (\PC|DOUT\(4) & \PC|DOUT\(5)))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(4) $ (!\PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010010000001010101001000000101010100100000010101010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~21_combout\);

\ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~24_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	combout => \ROM|memROM~24_combout\);

\somaQuatro|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somaQuatro|Add0~14\ ))
-- \somaQuatro|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somaQuatro|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \somaQuatro|Add0~14\,
	sumout => \somaQuatro|Add0~21_sumout\,
	cout => \somaQuatro|Add0~22\);

\somaSHIFT|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~1_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~11_combout\)) ) + ( \somaQuatro|Add0~1_sumout\ ) + ( !VCC ))
-- \somaSHIFT|Add0~2\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~11_combout\)) ) + ( \somaQuatro|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \somaSHIFT|Add0~1_sumout\,
	cout => \somaSHIFT|Add0~2\);

\somaSHIFT|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~5_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~18_combout\)) ) + ( \somaQuatro|Add0~5_sumout\ ) + ( \somaSHIFT|Add0~2\ ))
-- \somaSHIFT|Add0~6\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~18_combout\)) ) + ( \somaQuatro|Add0~5_sumout\ ) + ( \somaSHIFT|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~5_sumout\,
	cin => \somaSHIFT|Add0~2\,
	sumout => \somaSHIFT|Add0~5_sumout\,
	cout => \somaSHIFT|Add0~6\);

\somaSHIFT|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~9_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~20_combout\)) ) + ( \somaQuatro|Add0~9_sumout\ ) + ( \somaSHIFT|Add0~6\ ))
-- \somaSHIFT|Add0~10\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~20_combout\)) ) + ( \somaQuatro|Add0~9_sumout\ ) + ( \somaSHIFT|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~9_sumout\,
	cin => \somaSHIFT|Add0~6\,
	sumout => \somaSHIFT|Add0~9_sumout\,
	cout => \somaSHIFT|Add0~10\);

\somaSHIFT|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~13_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM|memROM~16_combout\)) ) + ( \somaQuatro|Add0~13_sumout\ ) + ( \somaSHIFT|Add0~10\ ))
-- \somaSHIFT|Add0~14\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM|memROM~16_combout\)) ) + ( \somaQuatro|Add0~13_sumout\ ) + ( \somaSHIFT|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~13_sumout\,
	cin => \somaSHIFT|Add0~10\,
	sumout => \somaSHIFT|Add0~13_sumout\,
	cout => \somaSHIFT|Add0~14\);

\somaSHIFT|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~17_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~21_combout\)) ) + ( \somaQuatro|Add0~21_sumout\ ) + ( \somaSHIFT|Add0~14\ ))
-- \somaSHIFT|Add0~18\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~21_combout\)) ) + ( \somaQuatro|Add0~21_sumout\ ) + ( \somaSHIFT|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~21_sumout\,
	cin => \somaSHIFT|Add0~14\,
	sumout => \somaSHIFT|Add0~17_sumout\,
	cout => \somaSHIFT|Add0~18\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4)))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(3) & ((!\PC|DOUT\(5)))) # (\PC|DOUT\(3) & (!\PC|DOUT\(4) & \PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010010010000110001001001000011000100100100001100010010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\PC|DOUT\(2) & (\PC|DOUT\(5) & (!\PC|DOUT\(3) $ (\PC|DOUT\(4))))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(4) & (\PC|DOUT\(3) & \PC|DOUT\(5))) # (\PC|DOUT\(4) & ((!\PC|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110010010000001011001001000000101100100100000010110010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) # (\PC|DOUT\(2) & (!\PC|DOUT\(3) $ (((\PC|DOUT\(4) & \PC|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010001000001110001000100000111000100010000011100010001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~6_combout\);

\UC|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal9~0_combout\ = ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \UC|Equal9~0_combout\);

\UC|palavraControle[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|palavraControle[3]~0_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\)) ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~6_combout\ & ( 
-- (\ROM|memROM~0_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & ((!\ROM|memROM~2_combout\ & ((\ROM|memROM~4_combout\))) # 
-- (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010100000000000000000000010000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \UC|palavraControle[3]~0_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~15_combout\);

\UC|palavraControle[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|palavraControle[2]~1_combout\ = ( \ROM|memROM~15_combout\ & ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & ((!\ROM|memROM~3_combout\) # (\ROM|memROM~4_combout\))) ) ) ) # ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~6_combout\ & ( 
-- (\ROM|memROM~0_combout\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~3_combout\ $ (!\ROM|memROM~4_combout\)))) ) ) ) # ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~0_combout\ ) ) ) # ( !\ROM|memROM~15_combout\ & ( 
-- !\ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & ((\ROM|memROM~4_combout\) # (\ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101010101010101010101000101010101000101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \UC|palavraControle[2]~1_combout\);

\UC|palavraControle[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|palavraControle[4]~2_combout\ = ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ $ (\ROM|memROM~4_combout\)))) ) ) ) # ( !\ROM|memROM~5_combout\ & ( 
-- !\ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000010000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \UC|palavraControle[4]~2_combout\);

\ulaUC|ulaOp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp~0_combout\ = (\ROM|memROM~0_combout\ & ((\ROM|memROM~20_combout\) # (\ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	combout => \ulaUC|ulaOp~0_combout\);

\ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~22_combout\ = (!\PC|DOUT\(3) & (((\PC|DOUT\(2) & \PC|DOUT\(5))) # (\PC|DOUT\(4)))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(4)) # ((!\PC|DOUT\(2) & \PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001111110001111000111111000111100011111100011110001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~22_combout\);

\ulaUC|ulaOp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp[2]~1_combout\ = (\ROM|memROM~0_combout\ & (!\ROM|memROM~21_combout\ & \ROM|memROM~22_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	combout => \ulaUC|ulaOp[2]~1_combout\);

\ulaUC|ulaOp[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp[2]~2_combout\ = ( \ROM|memROM~15_combout\ & ( \ROM|memROM~6_combout\ & ( \ROM|memROM~0_combout\ ) ) ) # ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~6_combout\ & ( \ROM|memROM~0_combout\ ) ) ) # ( \ROM|memROM~15_combout\ & ( 
-- !\ROM|memROM~6_combout\ & ( \ROM|memROM~0_combout\ ) ) ) # ( !\ROM|memROM~15_combout\ & ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (((\ROM|memROM~4_combout\) # (\ROM|memROM~3_combout\)) # (\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ulaUC|ulaOp[2]~2_combout\);

\ulaUC|ulaOp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp~4_combout\ = ( !\ulaUC|ulaOp[2]~2_combout\ & ( (\ROM|memROM~17_combout\ & (!\ulaUC|ulaOp~0_combout\ & \ulaUC|ulaOp[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000000000000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ulaUC|ALT_INV_ulaOp~0_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~1_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[2]~2_combout\,
	combout => \ulaUC|ulaOp~4_combout\);

\ulaUC|ulaOp[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp[2]~8_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(4) & ((!\PC|DOUT\(5) & (\PC|DOUT\(3) & \PC|DOUT\(2))) # (\PC|DOUT\(5) & (!\PC|DOUT\(3))))) # (\PC|DOUT\(4) & ((!\PC|DOUT\(3) $ (\PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001001011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ulaUC|ulaOp[2]~8_combout\);

\ulaUC|ulaOp[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp[2]~7_combout\ = ( \ulaUC|ulaOp[2]~8_combout\ & ( (!\ulaUC|ulaOp~4_combout\ & ((!\UC|palavraControle[3]~0_combout\) # (\UC|palavraControle[4]~2_combout\))) ) ) # ( !\ulaUC|ulaOp[2]~8_combout\ & ( (!\ulaUC|ulaOp~4_combout\ & 
-- ((!\UC|palavraControle[3]~0_combout\ & ((!\UC|palavraControle[4]~2_combout\) # (\UC|palavraControle[2]~1_combout\))) # (\UC|palavraControle[3]~0_combout\ & ((\UC|palavraControle[4]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011100000000101011110000000010100111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \UC|ALT_INV_palavraControle[2]~1_combout\,
	datac => \UC|ALT_INV_palavraControle[4]~2_combout\,
	datad => \ulaUC|ALT_INV_ulaOp~4_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[2]~8_combout\,
	combout => \ulaUC|ulaOp[2]~7_combout\);

\UC|palavraControle[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|palavraControle\(7) = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~6_combout\ & ( 
-- (\ROM|memROM~0_combout\ & ((!\ROM|memROM~3_combout\ & ((!\ROM|memROM~4_combout\))) # (\ROM|memROM~3_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\)))) ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & 
-- (\ROM|memROM~2_combout\ & ((!\ROM|memROM~3_combout\) # (\ROM|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010001000000000000000001010000000000010000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \UC|palavraControle\(7));

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) # (\PC|DOUT\(3) & (\PC|DOUT\(5) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010010100000000001001010000000000100101000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\PC|DOUT\(3) & (\PC|DOUT\(4) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(5))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(5) & ((!\PC|DOUT\(4)))) # (\PC|DOUT\(5) & (!\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000101110001110000010111000111000001011100011100000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(2)) # ((!\PC|DOUT\(3)) # ((!\PC|DOUT\(4)) # (!\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (\PC|DOUT\(2) & (\PC|DOUT\(3) & (!\PC|DOUT\(4) & \PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~10_combout\);

\BancoRegistradores|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|Equal0~0_combout\ = ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~0_combout\) # ((!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000000000000000000011101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|Equal0~0_combout\);

\ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~26_combout\ = (!\PC|DOUT\(3) & (\PC|DOUT\(2) & (!\PC|DOUT\(4) $ (!\PC|DOUT\(5))))) # (\PC|DOUT\(3) & (\PC|DOUT\(5) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001010010000001000101001000000100010100100000010001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~26_combout\);

\ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~27_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~26_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	combout => \ROM|memROM~27_combout\);

\ulaUC|ulaOp[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp[0]~5_combout\ = ( \ulaUC|ulaOp[2]~1_combout\ & ( !\ulaUC|ulaOp[2]~2_combout\ & ( (\ROM|memROM~17_combout\ & ((!\ROM|memROM~12_combout\ & (\ROM|memROM~19_combout\ & !\ROM|memROM~23_combout\)) # (\ROM|memROM~12_combout\ & 
-- (!\ROM|memROM~19_combout\ & \ROM|memROM~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[2]~1_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[2]~2_combout\,
	combout => \ulaUC|ulaOp[0]~5_combout\);

\ulaUC|ulaOp[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp[0]~6_combout\ = ( !\ulaUC|ulaOp[2]~8_combout\ & ( \ulaUC|ulaOp[0]~5_combout\ & ( (!\UC|palavraControle[3]~0_combout\ & (!\UC|palavraControle[2]~1_combout\ & (\UC|palavraControle[4]~2_combout\ & !\ulaUC|ulaOp~4_combout\))) ) ) ) # ( 
-- \ulaUC|ulaOp[2]~8_combout\ & ( !\ulaUC|ulaOp[0]~5_combout\ & ( (!\UC|palavraControle[2]~1_combout\) # (\UC|palavraControle[4]~2_combout\) ) ) ) # ( !\ulaUC|ulaOp[2]~8_combout\ & ( !\ulaUC|ulaOp[0]~5_combout\ & ( (!\UC|palavraControle[2]~1_combout\ & 
-- ((!\UC|palavraControle[3]~0_combout\ $ (!\UC|palavraControle[4]~2_combout\)) # (\ulaUC|ulaOp~4_combout\))) # (\UC|palavraControle[2]~1_combout\ & (((\UC|palavraControle[4]~2_combout\ & \ulaUC|ulaOp~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100011001111110011111100111100001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \UC|ALT_INV_palavraControle[2]~1_combout\,
	datac => \UC|ALT_INV_palavraControle[4]~2_combout\,
	datad => \ulaUC|ALT_INV_ulaOp~4_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[2]~8_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[0]~5_combout\,
	combout => \ulaUC|ulaOp[0]~6_combout\);

\ulaUC|ulaOp~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp~9_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(3) & (\PC|DOUT\(5) & ((\PC|DOUT\(2)) # (\PC|DOUT\(4))))) # (\PC|DOUT\(3) & (((!\PC|DOUT\(4) & !\PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ulaUC|ulaOp~9_combout\);

\ulaUC|ulaOp[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp[1]~3_combout\ = (!\ulaUC|ulaOp~9_combout\ & ((!\UC|palavraControle[3]~0_combout\) # (\UC|palavraControle[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000000101011110000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datac => \UC|ALT_INV_palavraControle[4]~2_combout\,
	datad => \ulaUC|ALT_INV_ulaOp~9_combout\,
	combout => \ulaUC|ulaOp[1]~3_combout\);

\ULA|saida[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~4_combout\ = ( \ulaUC|ulaOp[2]~8_combout\ & ( (\UC|palavraControle[3]~0_combout\ & (!\UC|palavraControle[2]~1_combout\ & !\UC|palavraControle[4]~2_combout\)) ) ) # ( !\ulaUC|ulaOp[2]~8_combout\ & ( (!\UC|palavraControle[2]~1_combout\ & 
-- ((!\UC|palavraControle[3]~0_combout\ & (\UC|palavraControle[4]~2_combout\ & !\ulaUC|ulaOp~4_combout\)) # (\UC|palavraControle[3]~0_combout\ & (!\UC|palavraControle[4]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001000000010000000100000001001000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle[3]~0_combout\,
	datab => \UC|ALT_INV_palavraControle[2]~1_combout\,
	datac => \UC|ALT_INV_palavraControle[4]~2_combout\,
	datad => \ulaUC|ALT_INV_ulaOp~4_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[2]~8_combout\,
	combout => \ULA|saida[1]~4_combout\);

\ULA|saida[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~5_combout\ = ( \ulaUC|ulaOp[2]~8_combout\ & ( !\ulaUC|ulaOp[0]~5_combout\ & ( (!\UC|palavraControle[2]~1_combout\) # (\UC|palavraControle[4]~2_combout\) ) ) ) # ( !\ulaUC|ulaOp[2]~8_combout\ & ( !\ulaUC|ulaOp[0]~5_combout\ & ( 
-- (\ulaUC|ulaOp~4_combout\ & ((!\UC|palavraControle[2]~1_combout\) # (\UC|palavraControle[4]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111110011111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UC|ALT_INV_palavraControle[2]~1_combout\,
	datac => \UC|ALT_INV_palavraControle[4]~2_combout\,
	datad => \ulaUC|ALT_INV_ulaOp~4_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[2]~8_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[0]~5_combout\,
	combout => \ULA|saida[1]~5_combout\);

\ULA|saida[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~6_combout\ = ( \ulaUC|ulaOp[2]~7_combout\ & ( \ULA|saida[1]~5_combout\ & ( (!\ulaUC|ulaOp[0]~6_combout\ & (!\ulaUC|ulaOp~9_combout\ & !\ULA|saida[1]~4_combout\)) ) ) ) # ( !\ulaUC|ulaOp[2]~7_combout\ & ( \ULA|saida[1]~5_combout\ & ( 
-- (!\ulaUC|ulaOp~9_combout\ & (!\ULA|saida[1]~4_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\) # (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( \ulaUC|ulaOp[2]~7_combout\ & ( !\ULA|saida[1]~5_combout\ & ( (!\ulaUC|ulaOp[0]~6_combout\ & !\ULA|saida[1]~4_combout\) ) ) 
-- ) # ( !\ulaUC|ulaOp[2]~7_combout\ & ( !\ULA|saida[1]~5_combout\ & ( (!\ULA|saida[1]~4_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\) # (!\ulaUC|ulaOp[1]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000101010100000000011001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp~9_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ULA|ALT_INV_saida[1]~4_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	dataf => \ULA|ALT_INV_saida[1]~5_combout\,
	combout => \ULA|saida[1]~6_combout\);

\BancoRegistradores|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|Equal1~0_combout\ = ( \PC|DOUT\(3) & ( \PC|DOUT\(2) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & ((!\PC|DOUT\(5)) # (!\PC|DOUT\(4))))) ) ) ) # ( !\PC|DOUT\(3) & ( \PC|DOUT\(2) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & \PC|DOUT\(5))) ) ) ) # ( 
-- \PC|DOUT\(3) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(6) & !\PC|DOUT\(7)) ) ) ) # ( !\PC|DOUT\(3) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & ((\PC|DOUT\(4)) # (\PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000100010001000100000001000000010001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \BancoRegistradores|Equal1~0_combout\);

\MUXBCREG3|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXBCREG3|saida_MUX[3]~2_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(5) & (((\PC|DOUT\(2)) # (\PC|DOUT\(3))) # (\PC|DOUT\(4)))) # (\PC|DOUT\(5) & ((!\PC|DOUT\(4)) # ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \MUXBCREG3|saida_MUX[3]~2_combout\);

\BancoRegistradores|registrador~1457\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1457_combout\ = ( \PC|DOUT\(3) & ( \PC|DOUT\(2) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & \PC|DOUT\(5))) ) ) ) # ( \PC|DOUT\(3) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (\PC|DOUT\(5) & \PC|DOUT\(4)))) ) ) ) # ( 
-- !\PC|DOUT\(3) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & !\PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000100000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \BancoRegistradores|registrador~1457_combout\);

\MUXBCREG3|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXBCREG3|saida_MUX[0]~0_combout\ = (\ROM|memROM~0_combout\ & ((!\UC|palavraControle\(7) & ((\ROM|memROM~26_combout\))) # (\UC|palavraControle\(7) & (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000000010101000100000001010100010000000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UC|ALT_INV_palavraControle\(7),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	combout => \MUXBCREG3|saida_MUX[0]~0_combout\);

\MUXBCREG3|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXBCREG3|saida_MUX[1]~1_combout\ = (\ROM|memROM~0_combout\ & ((!\UC|palavraControle\(7) & ((\ROM|memROM~26_combout\))) # (\UC|palavraControle\(7) & (\ROM|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000000010101000100000001010100010000000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \UC|ALT_INV_palavraControle\(7),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	combout => \MUXBCREG3|saida_MUX[1]~1_combout\);

\BancoRegistradores|registrador~1330\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1330_combout\ = (\MUXBCREG3|saida_MUX[3]~2_combout\ & (!\BancoRegistradores|registrador~1457_combout\ & (\MUXBCREG3|saida_MUX[0]~0_combout\ & !\MUXBCREG3|saida_MUX[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXBCREG3|ALT_INV_saida_MUX[3]~2_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1457_combout\,
	datac => \MUXBCREG3|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \MUXBCREG3|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \BancoRegistradores|registrador~1330_combout\);

\BancoRegistradores|registrador~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[9]~33_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~335_q\);

\BancoRegistradores|registrador~1329\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1329_combout\ = (\MUXBCREG3|saida_MUX[3]~2_combout\ & (!\BancoRegistradores|registrador~1457_combout\ & (!\MUXBCREG3|saida_MUX[0]~0_combout\ & !\MUXBCREG3|saida_MUX[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXBCREG3|ALT_INV_saida_MUX[3]~2_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1457_combout\,
	datac => \MUXBCREG3|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \MUXBCREG3|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \BancoRegistradores|registrador~1329_combout\);

\BancoRegistradores|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[9]~33_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~303_q\);

\ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~28_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(4) & (((\PC|DOUT\(5)) # (\PC|DOUT\(3))))) # (\PC|DOUT\(4) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(3) $ (!\PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101111111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~28_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & \PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~1_combout\);

\BancoRegistradores|registrador~1326\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1326_combout\ = (!\MUXBCREG3|saida_MUX[3]~2_combout\ & (!\BancoRegistradores|registrador~1457_combout\ & (\MUXBCREG3|saida_MUX[0]~0_combout\ & !\MUXBCREG3|saida_MUX[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXBCREG3|ALT_INV_saida_MUX[3]~2_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1457_combout\,
	datac => \MUXBCREG3|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \MUXBCREG3|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \BancoRegistradores|registrador~1326_combout\);

\BancoRegistradores|registrador~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[9]~33_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~79_q\);

\ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~29_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) ) # ( 
-- \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(2))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000100000001000000000001000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~29_combout\);

\BancoRegistradores|registrador~1365\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1365_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~47_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~79_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~79_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~47_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1365_combout\);

\BancoRegistradores|registrador~1136\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1136_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1365_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1365_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~335_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1365_combout\ & ( (\BancoRegistradores|registrador~303_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~335_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~303_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1365_combout\,
	combout => \BancoRegistradores|registrador~1136_combout\);

\BancoRegistradores|saidaA[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[9]~8_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1136_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1136_combout\,
	combout => \BancoRegistradores|saidaA[9]~8_combout\);

\BancoRegistradores|registrador~1325\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1325_combout\ = (!\MUXBCREG3|saida_MUX[3]~2_combout\ & (!\BancoRegistradores|registrador~1457_combout\ & (!\MUXBCREG3|saida_MUX[0]~0_combout\ & !\MUXBCREG3|saida_MUX[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXBCREG3|ALT_INV_saida_MUX[3]~2_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1457_combout\,
	datac => \MUXBCREG3|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \MUXBCREG3|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \BancoRegistradores|registrador~1325_combout\);

\BancoRegistradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[8]~30_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~46_q\);

\BancoRegistradores|registrador~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[8]~30_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~78_q\);

\BancoRegistradores|registrador~1327\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1327_combout\ = (!\MUXBCREG3|saida_MUX[3]~2_combout\ & (!\BancoRegistradores|registrador~1457_combout\ & (!\MUXBCREG3|saida_MUX[0]~0_combout\ & \MUXBCREG3|saida_MUX[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXBCREG3|ALT_INV_saida_MUX[3]~2_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1457_combout\,
	datac => \MUXBCREG3|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \MUXBCREG3|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \BancoRegistradores|registrador~1327_combout\);

\BancoRegistradores|registrador~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[8]~30_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~110_q\);

\BancoRegistradores|registrador~1328\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1328_combout\ = (!\MUXBCREG3|saida_MUX[3]~2_combout\ & (!\BancoRegistradores|registrador~1457_combout\ & (\MUXBCREG3|saida_MUX[0]~0_combout\ & \MUXBCREG3|saida_MUX[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXBCREG3|ALT_INV_saida_MUX[3]~2_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1457_combout\,
	datac => \MUXBCREG3|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \MUXBCREG3|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \BancoRegistradores|registrador~1328_combout\);

\BancoRegistradores|registrador~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[8]~30_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~142_q\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) ) # ( 
-- !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000010000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(3))))) ) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) ) # ( 
-- \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000100000000000000000000000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~14_combout\);

\BancoRegistradores|registrador~1133\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1133_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~142_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~110_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~78_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~46_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~78_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~110_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~142_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1133_combout\);

\BancoRegistradores|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[8]~30_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~302_q\);

\BancoRegistradores|registrador~1331\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1331_combout\ = (\MUXBCREG3|saida_MUX[3]~2_combout\ & (!\BancoRegistradores|registrador~1457_combout\ & (!\MUXBCREG3|saida_MUX[0]~0_combout\ & \MUXBCREG3|saida_MUX[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXBCREG3|ALT_INV_saida_MUX[3]~2_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1457_combout\,
	datac => \MUXBCREG3|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \MUXBCREG3|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \BancoRegistradores|registrador~1331_combout\);

\BancoRegistradores|registrador~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[8]~30_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~366_q\);

\BancoRegistradores|registrador~1332\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1332_combout\ = (\MUXBCREG3|saida_MUX[3]~2_combout\ & (!\BancoRegistradores|registrador~1457_combout\ & (\MUXBCREG3|saida_MUX[0]~0_combout\ & \MUXBCREG3|saida_MUX[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXBCREG3|ALT_INV_saida_MUX[3]~2_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1457_combout\,
	datac => \MUXBCREG3|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \MUXBCREG3|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \BancoRegistradores|registrador~1332_combout\);

\BancoRegistradores|registrador~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[8]~30_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~398_q\);

\BancoRegistradores|registrador~1134\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1134_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~398_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~366_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~334_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~302_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~302_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~334_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~366_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~398_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1134_combout\);

\BancoRegistradores|registrador~1135\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1135_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1134_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1133_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1133_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1134_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1135_combout\);

\BancoRegistradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[7]~27_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~45_q\);

\BancoRegistradores|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[7]~27_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~301_q\);

\BancoRegistradores|registrador~1124\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1124_combout\ = ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~301_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( 
-- !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~45_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~301_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1124_combout\);

\BancoRegistradores|registrador~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[7]~27_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~77_q\);

\BancoRegistradores|registrador~1125\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1125_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~333_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~77_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~77_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~333_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1125_combout\);

\BancoRegistradores|registrador~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[7]~27_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~109_q\);

\BancoRegistradores|registrador~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[7]~27_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~365_q\);

\BancoRegistradores|registrador~1126\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1126_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~365_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~109_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~109_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~365_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1126_combout\);

\MUXUlaRam|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXUlaRam|saida_MUX[7]~7_combout\ = (!\ULA|saida[7]~27_combout\) # (\UC|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal10~0_combout\,
	datab => \ULA|ALT_INV_saida[7]~27_combout\,
	combout => \MUXUlaRam|saida_MUX[7]~7_combout\);

\BancoRegistradores|registrador~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[7]~7_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~141_q\);

\BancoRegistradores|registrador~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[7]~27_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~397_q\);

\BancoRegistradores|registrador~1127\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1127_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~397_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( !\BancoRegistradores|registrador~141_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~141_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~397_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1127_combout\);

\BancoRegistradores|registrador~1128\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1128_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1127_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1126_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1125_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1124_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1124_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1125_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1126_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1127_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1128_combout\);

\BancoRegistradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[6]~24_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~44_q\);

\BancoRegistradores|registrador~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[6]~24_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~76_q\);

\BancoRegistradores|registrador~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[6]~24_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~108_q\);

\MUXUlaRam|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXUlaRam|saida_MUX[6]~6_combout\ = (!\ULA|saida[6]~24_combout\) # (\UC|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal10~0_combout\,
	datab => \ULA|ALT_INV_saida[6]~24_combout\,
	combout => \MUXUlaRam|saida_MUX[6]~6_combout\);

\BancoRegistradores|registrador~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[6]~6_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~140_q\);

\BancoRegistradores|registrador~1117\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1117_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( !\BancoRegistradores|registrador~140_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~108_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~76_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~44_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~76_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~108_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~140_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1117_combout\);

\BancoRegistradores|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[6]~24_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~300_q\);

\BancoRegistradores|registrador~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[6]~24_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~364_q\);

\BancoRegistradores|registrador~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[6]~24_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~396_q\);

\BancoRegistradores|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1118_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~396_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~364_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~332_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~300_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~300_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~332_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~364_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~396_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1118_combout\);

\BancoRegistradores|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1068_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1068_combout\);

\BancoRegistradores|registrador~1119\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1119_combout\ = ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1068_combout\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1118_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1117_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1117_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1118_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1068_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1119_combout\);

\ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~25_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~22_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	combout => \ROM|memROM~25_combout\);

\ULA|saida[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~7_combout\ = (!\ULA|saida[1]~4_combout\ & ((!\ulaUC|ulaOp~9_combout\) # (!\ULA|saida[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100011001000110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp~9_combout\,
	datab => \ULA|ALT_INV_saida[1]~4_combout\,
	datac => \ULA|ALT_INV_saida[1]~5_combout\,
	combout => \ULA|saida[1]~7_combout\);

\ULA|saida[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~8_combout\ = (\ulaUC|ulaOp[0]~6_combout\ & ((\ulaUC|ulaOp[2]~7_combout\) # (\ulaUC|ulaOp[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	combout => \ULA|saida[1]~8_combout\);

\BancoRegistradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[5]~21_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~43_q\);

\BancoRegistradores|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[5]~21_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~299_q\);

\BancoRegistradores|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1108_combout\ = ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~299_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( 
-- !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~43_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~299_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1108_combout\);

\BancoRegistradores|registrador~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[5]~21_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~75_q\);

\BancoRegistradores|registrador~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1109_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~331_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~75_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~75_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~331_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1109_combout\);

\BancoRegistradores|registrador~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[5]~21_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~107_q\);

\BancoRegistradores|registrador~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[5]~21_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~363_q\);

\BancoRegistradores|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1110_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~363_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~107_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~107_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~363_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1110_combout\);

\MUXUlaRam|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXUlaRam|saida_MUX[5]~5_combout\ = (!\ULA|saida[5]~21_combout\) # (\UC|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal10~0_combout\,
	datab => \ULA|ALT_INV_saida[5]~21_combout\,
	combout => \MUXUlaRam|saida_MUX[5]~5_combout\);

\BancoRegistradores|registrador~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[5]~5_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~139_q\);

\BancoRegistradores|registrador~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[5]~21_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~395_q\);

\BancoRegistradores|registrador~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1111_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~395_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( !\BancoRegistradores|registrador~139_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~139_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~395_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1111_combout\);

\BancoRegistradores|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1112_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1111_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1110_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1109_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1108_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1108_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1109_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1110_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1111_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1112_combout\);

\MUXRegImed|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[5]~5_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1112_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1112_combout\,
	combout => \MUXRegImed|saida_MUX[5]~5_combout\);

\BancoRegistradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[4]~19_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~42_q\);

\BancoRegistradores|registrador~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[4]~19_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~74_q\);

\BancoRegistradores|registrador~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[4]~19_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~106_q\);

\MUXUlaRam|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXUlaRam|saida_MUX[4]~4_combout\ = (!\ULA|saida[4]~19_combout\) # (\UC|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal10~0_combout\,
	datab => \ULA|ALT_INV_saida[4]~19_combout\,
	combout => \MUXUlaRam|saida_MUX[4]~4_combout\);

\BancoRegistradores|registrador~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[4]~4_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~138_q\);

\BancoRegistradores|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1100_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( !\BancoRegistradores|registrador~138_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~106_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~74_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~42_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~74_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~106_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~138_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1100_combout\);

\BancoRegistradores|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[4]~19_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~298_q\);

\BancoRegistradores|registrador~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[4]~19_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~362_q\);

\BancoRegistradores|registrador~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[4]~19_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~394_q\);

\BancoRegistradores|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1101_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~394_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~362_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~330_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~298_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~298_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~330_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~362_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~394_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1101_combout\);

\BancoRegistradores|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1102_combout\ = ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1102_combout\);

\BancoRegistradores|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1103_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1102_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1068_combout\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1101_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1100_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1100_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1101_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1068_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1102_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1103_combout\);

\BancoRegistradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[3]~16_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~41_q\);

\BancoRegistradores|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[3]~16_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~297_q\);

\BancoRegistradores|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1091_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( !\BancoRegistradores|registrador~297_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( !\BancoRegistradores|registrador~41_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~41_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~297_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1091_combout\);

\BancoRegistradores|registrador~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[3]~16_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~73_q\);

\BancoRegistradores|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1092_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( !\BancoRegistradores|registrador~329_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~73_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~73_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~329_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1092_combout\);

\BancoRegistradores|registrador~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[3]~16_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~105_q\);

\BancoRegistradores|registrador~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[3]~3_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~361_q\);

\BancoRegistradores|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1093_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( !\BancoRegistradores|registrador~361_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~105_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~105_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~361_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1093_combout\);

\BancoRegistradores|registrador~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[3]~3_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~137_q\);

\BancoRegistradores|registrador~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[3]~3_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~393_q\);

\BancoRegistradores|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1094_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( !\BancoRegistradores|registrador~393_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( !\BancoRegistradores|registrador~137_q\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~137_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~393_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1094_combout\);

\BancoRegistradores|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1095_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1094_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1093_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1092_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- !\BancoRegistradores|registrador~1091_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1091_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1092_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1093_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1094_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1095_combout\);

\BancoRegistradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[2]~13_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~40_q\);

\BancoRegistradores|registrador~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[2]~13_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~72_q\);

\BancoRegistradores|registrador~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[2]~13_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~104_q\);

\MUXUlaRam|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXUlaRam|saida_MUX[2]~2_combout\ = (!\ULA|saida[2]~13_combout\) # (\UC|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal10~0_combout\,
	datab => \ULA|ALT_INV_saida[2]~13_combout\,
	combout => \MUXUlaRam|saida_MUX[2]~2_combout\);

\BancoRegistradores|registrador~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[2]~2_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~136_q\);

\BancoRegistradores|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1083_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( !\BancoRegistradores|registrador~136_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~104_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~72_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~40_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~72_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~104_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~136_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1083_combout\);

\BancoRegistradores|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[2]~13_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~296_q\);

\BancoRegistradores|registrador~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[2]~13_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~360_q\);

\BancoRegistradores|registrador~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[2]~2_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~392_q\);

\BancoRegistradores|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1084_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( !\BancoRegistradores|registrador~392_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~360_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~328_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~296_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~296_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~328_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~360_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~392_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1084_combout\);

\BancoRegistradores|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1085_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1085_combout\);

\BancoRegistradores|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1086_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1085_combout\ ) ) ) # ( 
-- \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1084_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1083_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1083_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1084_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1085_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1086_combout\);

\BancoRegistradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[1]~10_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~39_q\);

\BancoRegistradores|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[1]~10_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~295_q\);

\BancoRegistradores|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1074_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~295_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~39_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~295_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1074_combout\);

\BancoRegistradores|registrador~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[1]~10_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~71_q\);

\BancoRegistradores|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1075_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( !\BancoRegistradores|registrador~327_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( 
-- !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~71_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~327_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1075_combout\);

\BancoRegistradores|registrador~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[1]~1_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~103_q\);

\BancoRegistradores|registrador~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[1]~1_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~359_q\);

\BancoRegistradores|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1076_combout\ = ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( !\BancoRegistradores|registrador~359_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( 
-- !\ROM|memROM~10_combout\ & ( !\BancoRegistradores|registrador~103_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~103_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~359_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1076_combout\);

\BancoRegistradores|registrador~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[1]~10_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~135_q\);

\BancoRegistradores|registrador~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[1]~10_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~391_q\);

\BancoRegistradores|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1077_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~391_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~135_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~135_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~391_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1077_combout\);

\BancoRegistradores|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1078_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1077_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1076_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1075_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1074_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1074_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1075_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1076_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1077_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1078_combout\);

\BancoRegistradores|saidaA[0]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[0]~31_combout\ = (\BancoRegistradores|registrador~1062_combout\ & \BancoRegistradores|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1062_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \BancoRegistradores|saidaA[0]~31_combout\);

\BancoRegistradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[0]~2_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~38_q\);

\MUXRegImed|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[0]~0_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1069_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1069_combout\,
	combout => \MUXRegImed|saida_MUX[0]~0_combout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \BancoRegistradores|saidaA[0]~31_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1069_combout\)))) # (\UC|palavraControle\(7) & 
-- (((\ROM|memROM~12_combout\)))) ) + ( !VCC ))
-- \ULA|Add0~2\ = CARRY(( \BancoRegistradores|saidaA[0]~31_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1069_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~12_combout\)))) ) 
-- + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[0]~31_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1069_combout\,
	cin => GND,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\ULA|Add1~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~130_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA|Add1~130_cout\);

\ULA|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~5_sumout\ = SUM(( \BancoRegistradores|saidaA[0]~31_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1069_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~12_combout\)) ) + ( \ULA|Add1~130_cout\ ))
-- \ULA|Add1~6\ = CARRY(( \BancoRegistradores|saidaA[0]~31_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1069_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~12_combout\)) ) + 
-- ( \ULA|Add1~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[0]~31_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1069_combout\,
	cin => \ULA|Add1~130_cout\,
	sumout => \ULA|Add1~5_sumout\,
	cout => \ULA|Add1~6\);

\ULA|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~1_combout\ = ( \ULA|Add1~5_sumout\ & ( (!\ulaUC|ulaOp[0]~6_combout\ & (((!\ulaUC|ulaOp[1]~3_combout\)) # (\MUXRegImed|saida_MUX[0]~0_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & (((!\ulaUC|ulaOp[1]~3_combout\ & \ULA|Add0~1_sumout\)))) ) ) # ( 
-- !\ULA|Add1~5_sumout\ & ( (!\ulaUC|ulaOp[0]~6_combout\ & (\MUXRegImed|saida_MUX[0]~0_combout\ & (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & (((!\ulaUC|ulaOp[1]~3_combout\ & \ULA|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000100001101001100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ULA|ALT_INV_Add0~1_sumout\,
	datae => \ULA|ALT_INV_Add1~5_sumout\,
	combout => \ULA|saida[0]~1_combout\);

\MUXUlaRam|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXUlaRam|saida_MUX[0]~0_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & ((!\ULA|saida[0]~1_combout\))) # (\ulaUC|ulaOp[2]~7_combout\ & (!\ULA|saida[0]~0_combout\))) # (\UC|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110101011101111111010101110111111101010111011111110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal10~0_combout\,
	datab => \ULA|ALT_INV_saida[0]~0_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_saida[0]~1_combout\,
	combout => \MUXUlaRam|saida_MUX[0]~0_combout\);

\BancoRegistradores|registrador~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[0]~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~70_q\);

\BancoRegistradores|registrador~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[0]~2_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~102_q\);

\BancoRegistradores|registrador~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[0]~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~134_q\);

\BancoRegistradores|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1066_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( !\BancoRegistradores|registrador~134_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~102_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( !\BancoRegistradores|registrador~70_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110000001111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~38_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~70_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~102_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~134_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1066_combout\);

\BancoRegistradores|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[0]~2_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~294_q\);

\BancoRegistradores|registrador~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[0]~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~358_q\);

\BancoRegistradores|registrador~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[0]~2_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~390_q\);

\BancoRegistradores|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1067_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~390_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( !\BancoRegistradores|registrador~358_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~326_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~294_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~294_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~326_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~358_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~390_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1067_combout\);

\BancoRegistradores|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1069_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1068_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~10_combout\ & ( \ROM|memROM~13_combout\ ) ) ) # ( 
-- \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1067_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1066_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1066_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1067_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1068_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1069_combout\);

\ULA|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~9_sumout\ = SUM(( \BancoRegistradores|saidaA[1]~0_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1078_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & 
-- (((!\ROM|memROM~19_combout\)))) ) + ( \ULA|Add1~6\ ))
-- \ULA|Add1~10\ = CARRY(( \BancoRegistradores|saidaA[1]~0_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1078_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & (((!\ROM|memROM~19_combout\)))) 
-- ) + ( \ULA|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[1]~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1078_combout\,
	cin => \ULA|Add1~6\,
	sumout => \ULA|Add1~9_sumout\,
	cout => \ULA|Add1~10\);

\MUXRegImed|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[1]~1_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1078_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1078_combout\,
	combout => \MUXRegImed|saida_MUX[1]~1_combout\);

\ULA|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~3_combout\ = ( \BancoRegistradores|saidaA[1]~0_combout\ & ( \MUXRegImed|saida_MUX[1]~1_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~9_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[1]~0_combout\ & 
-- ( \MUXRegImed|saida_MUX[1]~1_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~9_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- \BancoRegistradores|saidaA[1]~0_combout\ & ( !\MUXRegImed|saida_MUX[1]~1_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~9_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[1]~0_combout\ & ( !\MUXRegImed|saida_MUX[1]~1_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~9_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~9_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[1]~0_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \ULA|saida[1]~3_combout\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \BancoRegistradores|saidaA[1]~0_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1078_combout\)))) # (\UC|palavraControle\(7) & 
-- (((\ROM|memROM~19_combout\)))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \BancoRegistradores|saidaA[1]~0_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1078_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~19_combout\)))) ) + 
-- ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[1]~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1078_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\ULA|saida[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~9_combout\ = ( \ULA|Add0~5_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[1]~0_combout\ & (\MUXRegImed|saida_MUX[1]~1_combout\ & \ULA|saida[1]~8_combout\))) 
-- ) ) # ( !\ULA|Add0~5_sumout\ & ( (\BancoRegistradores|saidaA[1]~0_combout\ & (\MUXRegImed|saida_MUX[1]~1_combout\ & (\ULA|saida[1]~7_combout\ & \ULA|saida[1]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111100000000000100000000000000011111000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[1]~0_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \ULA|ALT_INV_saida[1]~7_combout\,
	datad => \ULA|ALT_INV_saida[1]~8_combout\,
	datae => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \ULA|saida[1]~9_combout\);

\ULA|saida[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~10_combout\ = ((!\ULA|saida[1]~3_combout\ & \ULA|saida[1]~6_combout\)) # (\ULA|saida[1]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~3_combout\,
	datab => \ULA|ALT_INV_saida[1]~6_combout\,
	datac => \ULA|ALT_INV_saida[1]~9_combout\,
	combout => \ULA|saida[1]~10_combout\);

\MUXUlaRam|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXUlaRam|saida_MUX[1]~1_combout\ = (!\ULA|saida[1]~10_combout\) # (\UC|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal10~0_combout\,
	datab => \ULA|ALT_INV_saida[1]~10_combout\,
	combout => \MUXUlaRam|saida_MUX[1]~1_combout\);

\BancoRegistradores|registrador~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[1]~1_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~327_q\);

\BancoRegistradores|registrador~1333\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1333_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~39_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~71_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~71_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~39_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1333_combout\);

\BancoRegistradores|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1070_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1333_combout\ ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1333_combout\ & ( (!\BancoRegistradores|registrador~327_q\) # 
-- (!\ROM|memROM~28_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1333_combout\ & ( (\BancoRegistradores|registrador~295_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~327_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~295_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1333_combout\,
	combout => \BancoRegistradores|registrador~1070_combout\);

\BancoRegistradores|saidaA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[1]~0_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1070_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1070_combout\,
	combout => \BancoRegistradores|saidaA[1]~0_combout\);

\ULA|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~13_sumout\ = SUM(( \BancoRegistradores|saidaA[2]~1_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1086_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & 
-- (((!\ROM|memROM~23_combout\)))) ) + ( \ULA|Add1~10\ ))
-- \ULA|Add1~14\ = CARRY(( \BancoRegistradores|saidaA[2]~1_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1086_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & (((!\ROM|memROM~23_combout\)))) 
-- ) + ( \ULA|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[2]~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1086_combout\,
	cin => \ULA|Add1~10\,
	sumout => \ULA|Add1~13_sumout\,
	cout => \ULA|Add1~14\);

\MUXRegImed|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[2]~2_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1086_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1086_combout\,
	combout => \MUXRegImed|saida_MUX[2]~2_combout\);

\ULA|saida[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~11_combout\ = ( \BancoRegistradores|saidaA[2]~1_combout\ & ( \MUXRegImed|saida_MUX[2]~2_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~13_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[2]~1_combout\ 
-- & ( \MUXRegImed|saida_MUX[2]~2_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~13_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- \BancoRegistradores|saidaA[2]~1_combout\ & ( !\MUXRegImed|saida_MUX[2]~2_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~13_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[2]~1_combout\ & ( !\MUXRegImed|saida_MUX[2]~2_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~13_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~13_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[2]~1_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \ULA|saida[2]~11_combout\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( \BancoRegistradores|saidaA[2]~1_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1086_combout\)))) # (\UC|palavraControle\(7) & 
-- (((\ROM|memROM~23_combout\)))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( \BancoRegistradores|saidaA[2]~1_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1086_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~23_combout\)))) ) 
-- + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[2]~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1086_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\ULA|saida[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~12_combout\ = ( \ULA|Add0~9_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[2]~1_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[2]~2_combout\))) ) ) # ( !\ULA|Add0~9_sumout\ & ( (\BancoRegistradores|saidaA[2]~1_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[2]~1_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[2]~2_combout\,
	datae => \ULA|ALT_INV_Add0~9_sumout\,
	combout => \ULA|saida[2]~12_combout\);

\ULA|saida[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~13_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[2]~11_combout\)) # (\ULA|saida[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[2]~11_combout\,
	datac => \ULA|ALT_INV_saida[2]~12_combout\,
	combout => \ULA|saida[2]~13_combout\);

\BancoRegistradores|registrador~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[2]~13_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~328_q\);

\BancoRegistradores|registrador~1337\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1337_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~28_combout\ & ( !\ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~40_q\))) # (\ROM|memROM~29_combout\ & 
-- (\BancoRegistradores|registrador~72_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~72_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~40_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1337_combout\);

\BancoRegistradores|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1079_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1337_combout\ ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1337_combout\ & ( (!\ROM|memROM~28_combout\) # 
-- (\BancoRegistradores|registrador~328_q\) ) ) ) # ( \ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1337_combout\ & ( \ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1337_combout\ & ( 
-- (\BancoRegistradores|registrador~296_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~328_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~296_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1337_combout\,
	combout => \BancoRegistradores|registrador~1079_combout\);

\BancoRegistradores|saidaA[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[2]~1_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1079_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1079_combout\,
	combout => \BancoRegistradores|saidaA[2]~1_combout\);

\ULA|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~17_sumout\ = SUM(( \BancoRegistradores|saidaA[3]~2_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1095_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & 
-- (((\ROM|memROM~17_combout\)))) ) + ( \ULA|Add1~14\ ))
-- \ULA|Add1~18\ = CARRY(( \BancoRegistradores|saidaA[3]~2_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1095_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & (((\ROM|memROM~17_combout\)))) 
-- ) + ( \ULA|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[3]~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1095_combout\,
	cin => \ULA|Add1~14\,
	sumout => \ULA|Add1~17_sumout\,
	cout => \ULA|Add1~18\);

\MUXRegImed|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[3]~3_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1095_combout\)))) # (\UC|palavraControle\(7) & (((!\ROM|memROM~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011011000010100001101100001010000110110000101000011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1095_combout\,
	combout => \MUXRegImed|saida_MUX[3]~3_combout\);

\ULA|saida[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~14_combout\ = ( \BancoRegistradores|saidaA[3]~2_combout\ & ( \MUXRegImed|saida_MUX[3]~3_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~17_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[3]~2_combout\ 
-- & ( \MUXRegImed|saida_MUX[3]~3_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~17_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- \BancoRegistradores|saidaA[3]~2_combout\ & ( !\MUXRegImed|saida_MUX[3]~3_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~17_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[3]~2_combout\ & ( !\MUXRegImed|saida_MUX[3]~3_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~17_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~17_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[3]~2_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \ULA|saida[3]~14_combout\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( \BancoRegistradores|saidaA[3]~2_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1095_combout\)))) # (\UC|palavraControle\(7) & 
-- (((!\ROM|memROM~17_combout\)))) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( \BancoRegistradores|saidaA[3]~2_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1095_combout\)))) # (\UC|palavraControle\(7) & (((!\ROM|memROM~17_combout\)))) ) 
-- + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110010011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[3]~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1095_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\ULA|saida[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~15_combout\ = ( \ULA|Add0~13_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[3]~2_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[3]~3_combout\))) ) ) # ( !\ULA|Add0~13_sumout\ & ( (\BancoRegistradores|saidaA[3]~2_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[3]~2_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \ULA|saida[3]~15_combout\);

\ULA|saida[3]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~16_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[3]~14_combout\)) # (\ULA|saida[3]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[3]~14_combout\,
	datac => \ULA|ALT_INV_saida[3]~15_combout\,
	combout => \ULA|saida[3]~16_combout\);

\MUXUlaRam|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXUlaRam|saida_MUX[3]~3_combout\ = (!\ULA|saida[3]~16_combout\) # (\UC|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal10~0_combout\,
	datab => \ULA|ALT_INV_saida[3]~16_combout\,
	combout => \MUXUlaRam|saida_MUX[3]~3_combout\);

\BancoRegistradores|registrador~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXUlaRam|saida_MUX[3]~3_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~329_q\);

\BancoRegistradores|registrador~1341\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1341_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~28_combout\ & ( !\ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~41_q\))) # (\ROM|memROM~29_combout\ & 
-- (\BancoRegistradores|registrador~73_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~73_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~41_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1341_combout\);

\BancoRegistradores|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1087_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1341_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1341_combout\ & ( 
-- (!\BancoRegistradores|registrador~329_q\) # (!\ROM|memROM~28_combout\) ) ) ) # ( \ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1341_combout\ & ( \ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- !\BancoRegistradores|registrador~1341_combout\ & ( (\BancoRegistradores|registrador~297_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111101010101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~329_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~297_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1341_combout\,
	combout => \BancoRegistradores|registrador~1087_combout\);

\BancoRegistradores|saidaA[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[3]~2_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1087_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1087_combout\,
	combout => \BancoRegistradores|saidaA[3]~2_combout\);

\ULA|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~21_sumout\ = SUM(( \BancoRegistradores|saidaA[4]~3_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1103_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & 
-- (((!\ROM|memROM~24_combout\)))) ) + ( \ULA|Add1~18\ ))
-- \ULA|Add1~22\ = CARRY(( \BancoRegistradores|saidaA[4]~3_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1103_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & (((!\ROM|memROM~24_combout\)))) 
-- ) + ( \ULA|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[4]~3_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1103_combout\,
	cin => \ULA|Add1~18\,
	sumout => \ULA|Add1~21_sumout\,
	cout => \ULA|Add1~22\);

\MUXRegImed|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[4]~4_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1103_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1103_combout\,
	combout => \MUXRegImed|saida_MUX[4]~4_combout\);

\ULA|saida[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~17_combout\ = ( \BancoRegistradores|saidaA[4]~3_combout\ & ( \MUXRegImed|saida_MUX[4]~4_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~21_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[4]~3_combout\ 
-- & ( \MUXRegImed|saida_MUX[4]~4_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~21_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- \BancoRegistradores|saidaA[4]~3_combout\ & ( !\MUXRegImed|saida_MUX[4]~4_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~21_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[4]~3_combout\ & ( !\MUXRegImed|saida_MUX[4]~4_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~21_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~21_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[4]~3_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \ULA|saida[4]~17_combout\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( \BancoRegistradores|saidaA[4]~3_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1103_combout\)))) # (\UC|palavraControle\(7) & 
-- (((\ROM|memROM~24_combout\)))) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( \BancoRegistradores|saidaA[4]~3_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1103_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~24_combout\)))) ) 
-- + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[4]~3_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1103_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\ULA|saida[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~18_combout\ = ( \ULA|Add0~17_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[4]~3_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[4]~4_combout\))) ) ) # ( !\ULA|Add0~17_sumout\ & ( (\BancoRegistradores|saidaA[4]~3_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[4]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[4]~3_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[4]~4_combout\,
	datae => \ULA|ALT_INV_Add0~17_sumout\,
	combout => \ULA|saida[4]~18_combout\);

\ULA|saida[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~19_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[4]~17_combout\)) # (\ULA|saida[4]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[4]~17_combout\,
	datac => \ULA|ALT_INV_saida[4]~18_combout\,
	combout => \ULA|saida[4]~19_combout\);

\BancoRegistradores|registrador~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[4]~19_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~330_q\);

\BancoRegistradores|registrador~1345\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1345_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~28_combout\ & ( !\ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~42_q\))) # (\ROM|memROM~29_combout\ & 
-- (\BancoRegistradores|registrador~74_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~74_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~42_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1345_combout\);

\BancoRegistradores|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1096_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1345_combout\ ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1345_combout\ & ( (!\ROM|memROM~28_combout\) # 
-- (\BancoRegistradores|registrador~330_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1345_combout\ & ( (\BancoRegistradores|registrador~298_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~330_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~298_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1345_combout\,
	combout => \BancoRegistradores|registrador~1096_combout\);

\BancoRegistradores|saidaA[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[4]~3_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1096_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1096_combout\,
	combout => \BancoRegistradores|saidaA[4]~3_combout\);

\ULA|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~25_sumout\ = SUM(( \BancoRegistradores|saidaA[5]~4_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1112_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & 
-- (((!\ROM|memROM~25_combout\)))) ) + ( \ULA|Add1~22\ ))
-- \ULA|Add1~26\ = CARRY(( \BancoRegistradores|saidaA[5]~4_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1112_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & (((!\ROM|memROM~25_combout\)))) 
-- ) + ( \ULA|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[5]~4_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1112_combout\,
	cin => \ULA|Add1~22\,
	sumout => \ULA|Add1~25_sumout\,
	cout => \ULA|Add1~26\);

\ULA|saida[5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~20_combout\ = ( \BancoRegistradores|saidaA[5]~4_combout\ & ( \MUXRegImed|saida_MUX[5]~5_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~25_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[5]~4_combout\ 
-- & ( \MUXRegImed|saida_MUX[5]~5_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~25_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- \BancoRegistradores|saidaA[5]~4_combout\ & ( !\MUXRegImed|saida_MUX[5]~5_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~25_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[5]~4_combout\ & ( !\MUXRegImed|saida_MUX[5]~5_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~25_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~25_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[5]~4_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \ULA|saida[5]~20_combout\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( \BancoRegistradores|saidaA[5]~4_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1112_combout\)))) # (\UC|palavraControle\(7) & 
-- (((\ROM|memROM~25_combout\)))) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( \BancoRegistradores|saidaA[5]~4_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1112_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~25_combout\)))) ) 
-- + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[5]~4_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1112_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\ULA|saida[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~21_combout\ = ( \ULA|saida[5]~20_combout\ & ( \ULA|Add0~21_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[5]~4_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[5]~5_combout\))) ) ) ) # ( !\ULA|saida[5]~20_combout\ & ( \ULA|Add0~21_sumout\ & ( (!\ULA|saida[1]~8_combout\) # ((\BancoRegistradores|saidaA[5]~4_combout\ & (\ULA|saida[1]~7_combout\ & \MUXRegImed|saida_MUX[5]~5_combout\))) ) ) ) # 
-- ( \ULA|saida[5]~20_combout\ & ( !\ULA|Add0~21_sumout\ & ( (\BancoRegistradores|saidaA[5]~4_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[5]~5_combout\))) ) ) ) # ( !\ULA|saida[5]~20_combout\ & ( 
-- !\ULA|Add0~21_sumout\ & ( (\ULA|saida[1]~7_combout\ & ((!\ULA|saida[1]~8_combout\) # ((\BancoRegistradores|saidaA[5]~4_combout\ & \MUXRegImed|saida_MUX[5]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110001000000000000000111110000111100011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[5]~4_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[5]~5_combout\,
	datae => \ULA|ALT_INV_saida[5]~20_combout\,
	dataf => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \ULA|saida[5]~21_combout\);

\BancoRegistradores|registrador~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[5]~21_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~331_q\);

\BancoRegistradores|registrador~1349\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1349_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~28_combout\ & ( !\ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~43_q\))) # (\ROM|memROM~29_combout\ & 
-- (\BancoRegistradores|registrador~75_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~75_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~43_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1349_combout\);

\BancoRegistradores|registrador~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1104_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1349_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1349_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~331_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1349_combout\ & ( (\BancoRegistradores|registrador~299_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~331_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~299_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1349_combout\,
	combout => \BancoRegistradores|registrador~1104_combout\);

\BancoRegistradores|saidaA[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[5]~4_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1104_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1104_combout\,
	combout => \BancoRegistradores|saidaA[5]~4_combout\);

\ULA|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~29_sumout\ = SUM(( \BancoRegistradores|saidaA[6]~5_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1119_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & 
-- (((!\ROM|memROM~27_combout\)))) ) + ( \ULA|Add1~26\ ))
-- \ULA|Add1~30\ = CARRY(( \BancoRegistradores|saidaA[6]~5_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1119_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & (((!\ROM|memROM~27_combout\)))) 
-- ) + ( \ULA|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[6]~5_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1119_combout\,
	cin => \ULA|Add1~26\,
	sumout => \ULA|Add1~29_sumout\,
	cout => \ULA|Add1~30\);

\MUXRegImed|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[6]~6_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1119_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1119_combout\,
	combout => \MUXRegImed|saida_MUX[6]~6_combout\);

\ULA|saida[6]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~22_combout\ = ( \BancoRegistradores|saidaA[6]~5_combout\ & ( \MUXRegImed|saida_MUX[6]~6_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~29_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[6]~5_combout\ 
-- & ( \MUXRegImed|saida_MUX[6]~6_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~29_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- \BancoRegistradores|saidaA[6]~5_combout\ & ( !\MUXRegImed|saida_MUX[6]~6_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~29_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[6]~5_combout\ & ( !\MUXRegImed|saida_MUX[6]~6_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~29_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~29_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[6]~5_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \ULA|saida[6]~22_combout\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( \BancoRegistradores|saidaA[6]~5_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1119_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( \BancoRegistradores|saidaA[6]~5_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1119_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + ( 
-- \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[6]~5_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1119_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\ULA|saida[6]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~23_combout\ = ( \ULA|Add0~25_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[6]~5_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[6]~6_combout\))) ) ) # ( !\ULA|Add0~25_sumout\ & ( (\BancoRegistradores|saidaA[6]~5_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[6]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[6]~5_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[6]~6_combout\,
	datae => \ULA|ALT_INV_Add0~25_sumout\,
	combout => \ULA|saida[6]~23_combout\);

\ULA|saida[6]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~24_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[6]~22_combout\)) # (\ULA|saida[6]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[6]~22_combout\,
	datac => \ULA|ALT_INV_saida[6]~23_combout\,
	combout => \ULA|saida[6]~24_combout\);

\BancoRegistradores|registrador~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[6]~24_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~332_q\);

\BancoRegistradores|registrador~1353\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1353_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~28_combout\ & ( !\ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~44_q\))) # (\ROM|memROM~29_combout\ & 
-- (\BancoRegistradores|registrador~76_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~76_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~44_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1353_combout\);

\BancoRegistradores|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1113_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1353_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1353_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~332_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1353_combout\ & ( (\BancoRegistradores|registrador~300_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~332_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~300_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1353_combout\,
	combout => \BancoRegistradores|registrador~1113_combout\);

\BancoRegistradores|saidaA[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[6]~5_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1113_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1113_combout\,
	combout => \BancoRegistradores|saidaA[6]~5_combout\);

\ULA|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~33_sumout\ = SUM(( \BancoRegistradores|saidaA[7]~6_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1128_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~30\ ))
-- \ULA|Add1~34\ = CARRY(( \BancoRegistradores|saidaA[7]~6_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1128_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[7]~6_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1128_combout\,
	cin => \ULA|Add1~30\,
	sumout => \ULA|Add1~33_sumout\,
	cout => \ULA|Add1~34\);

\MUXRegImed|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[7]~7_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1128_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1128_combout\,
	combout => \MUXRegImed|saida_MUX[7]~7_combout\);

\ULA|saida[7]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~25_combout\ = ( \BancoRegistradores|saidaA[7]~6_combout\ & ( \MUXRegImed|saida_MUX[7]~7_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~33_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[7]~6_combout\ 
-- & ( \MUXRegImed|saida_MUX[7]~7_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~33_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- \BancoRegistradores|saidaA[7]~6_combout\ & ( !\MUXRegImed|saida_MUX[7]~7_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~33_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[7]~6_combout\ & ( !\MUXRegImed|saida_MUX[7]~7_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~33_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~33_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[7]~6_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \ULA|saida[7]~25_combout\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \BancoRegistradores|saidaA[7]~6_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1128_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( \BancoRegistradores|saidaA[7]~6_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1128_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + ( 
-- \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[7]~6_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1128_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\ULA|saida[7]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~26_combout\ = ( \ULA|Add0~29_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[7]~6_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[7]~7_combout\))) ) ) # ( !\ULA|Add0~29_sumout\ & ( (\BancoRegistradores|saidaA[7]~6_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[7]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[7]~6_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[7]~7_combout\,
	datae => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \ULA|saida[7]~26_combout\);

\ULA|saida[7]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~27_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[7]~25_combout\)) # (\ULA|saida[7]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[7]~25_combout\,
	datac => \ULA|ALT_INV_saida[7]~26_combout\,
	combout => \ULA|saida[7]~27_combout\);

\BancoRegistradores|registrador~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[7]~27_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~333_q\);

\BancoRegistradores|registrador~1357\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1357_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~28_combout\ & ( !\ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~45_q\))) # (\ROM|memROM~29_combout\ & 
-- (\BancoRegistradores|registrador~77_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~77_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~45_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1357_combout\);

\BancoRegistradores|registrador~1120\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1120_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1357_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1357_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~333_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1357_combout\ & ( (\BancoRegistradores|registrador~301_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~333_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~301_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1357_combout\,
	combout => \BancoRegistradores|registrador~1120_combout\);

\BancoRegistradores|saidaA[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[7]~6_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1120_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1120_combout\,
	combout => \BancoRegistradores|saidaA[7]~6_combout\);

\ULA|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~37_sumout\ = SUM(( \BancoRegistradores|saidaA[8]~7_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1135_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~34\ ))
-- \ULA|Add1~38\ = CARRY(( \BancoRegistradores|saidaA[8]~7_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1135_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[8]~7_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1135_combout\,
	cin => \ULA|Add1~34\,
	sumout => \ULA|Add1~37_sumout\,
	cout => \ULA|Add1~38\);

\MUXRegImed|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[8]~8_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1135_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1135_combout\,
	combout => \MUXRegImed|saida_MUX[8]~8_combout\);

\ULA|saida[8]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~28_combout\ = ( \BancoRegistradores|saidaA[8]~7_combout\ & ( \MUXRegImed|saida_MUX[8]~8_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~37_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[8]~7_combout\ 
-- & ( \MUXRegImed|saida_MUX[8]~8_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~37_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- \BancoRegistradores|saidaA[8]~7_combout\ & ( !\MUXRegImed|saida_MUX[8]~8_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~37_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[8]~7_combout\ & ( !\MUXRegImed|saida_MUX[8]~8_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~37_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~37_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[8]~7_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[8]~8_combout\,
	combout => \ULA|saida[8]~28_combout\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( \BancoRegistradores|saidaA[8]~7_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1135_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( \BancoRegistradores|saidaA[8]~7_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1135_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + ( 
-- \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[8]~7_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1135_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\ULA|saida[8]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~29_combout\ = ( \ULA|Add0~33_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[8]~7_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[8]~8_combout\))) ) ) # ( !\ULA|Add0~33_sumout\ & ( (\BancoRegistradores|saidaA[8]~7_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[8]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[8]~7_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[8]~8_combout\,
	datae => \ULA|ALT_INV_Add0~33_sumout\,
	combout => \ULA|saida[8]~29_combout\);

\ULA|saida[8]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~30_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[8]~28_combout\)) # (\ULA|saida[8]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[8]~28_combout\,
	datac => \ULA|ALT_INV_saida[8]~29_combout\,
	combout => \ULA|saida[8]~30_combout\);

\BancoRegistradores|registrador~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[8]~30_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~334_q\);

\BancoRegistradores|registrador~1361\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1361_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~46_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~78_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~78_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~46_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1361_combout\);

\BancoRegistradores|registrador~1129\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1129_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1361_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1361_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~334_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1361_combout\ & ( (\BancoRegistradores|registrador~302_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~334_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~302_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1361_combout\,
	combout => \BancoRegistradores|registrador~1129_combout\);

\BancoRegistradores|saidaA[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[8]~7_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1129_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1129_combout\,
	combout => \BancoRegistradores|saidaA[8]~7_combout\);

\ULA|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~41_sumout\ = SUM(( \BancoRegistradores|saidaA[9]~8_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1144_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~38\ ))
-- \ULA|Add1~42\ = CARRY(( \BancoRegistradores|saidaA[9]~8_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1144_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[9]~8_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1144_combout\,
	cin => \ULA|Add1~38\,
	sumout => \ULA|Add1~41_sumout\,
	cout => \ULA|Add1~42\);

\ULA|saida[9]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~31_combout\ = ( \BancoRegistradores|saidaA[9]~8_combout\ & ( \MUXRegImed|saida_MUX[9]~9_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~41_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( !\BancoRegistradores|saidaA[9]~8_combout\ 
-- & ( \MUXRegImed|saida_MUX[9]~9_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~41_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- \BancoRegistradores|saidaA[9]~8_combout\ & ( !\MUXRegImed|saida_MUX[9]~9_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~41_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[9]~8_combout\ & ( !\MUXRegImed|saida_MUX[9]~9_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~41_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~41_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[9]~8_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[9]~9_combout\,
	combout => \ULA|saida[9]~31_combout\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( \BancoRegistradores|saidaA[9]~8_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1144_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( \BancoRegistradores|saidaA[9]~8_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1144_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + ( 
-- \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[9]~8_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1144_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\ULA|saida[9]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~32_combout\ = ( \ULA|Add0~37_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[9]~8_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[9]~9_combout\))) ) ) # ( !\ULA|Add0~37_sumout\ & ( (\BancoRegistradores|saidaA[9]~8_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[9]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[9]~8_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[9]~9_combout\,
	datae => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \ULA|saida[9]~32_combout\);

\ULA|saida[9]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~33_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[9]~31_combout\)) # (\ULA|saida[9]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[9]~31_combout\,
	datac => \ULA|ALT_INV_saida[9]~32_combout\,
	combout => \ULA|saida[9]~33_combout\);

\BancoRegistradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[9]~33_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~47_q\);

\BancoRegistradores|registrador~1140\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1140_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~303_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~47_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~303_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1140_combout\);

\BancoRegistradores|registrador~1141\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1141_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~335_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~79_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~335_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1141_combout\);

\BancoRegistradores|registrador~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[9]~33_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~111_q\);

\BancoRegistradores|registrador~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[9]~33_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~367_q\);

\BancoRegistradores|registrador~1142\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1142_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~367_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~111_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~111_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~367_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1142_combout\);

\BancoRegistradores|registrador~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[9]~33_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~143_q\);

\BancoRegistradores|registrador~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[9]~33_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~399_q\);

\BancoRegistradores|registrador~1143\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1143_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~399_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~143_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~143_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~399_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1143_combout\);

\BancoRegistradores|registrador~1144\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1144_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1143_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1142_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1141_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1140_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1140_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1141_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1142_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1143_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1144_combout\);

\MUXRegImed|saida_MUX[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[9]~9_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1144_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1144_combout\,
	combout => \MUXRegImed|saida_MUX[9]~9_combout\);

\BancoRegistradores|registrador~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[25]~81_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~351_q\);

\BancoRegistradores|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[25]~81_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~319_q\);

\BancoRegistradores|registrador~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[25]~81_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~95_q\);

\BancoRegistradores|registrador~1429\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1429_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~63_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~95_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~95_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~63_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1429_combout\);

\BancoRegistradores|registrador~1269\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1269_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1429_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1429_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~351_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1429_combout\ & ( (\BancoRegistradores|registrador~319_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~351_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~319_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1429_combout\,
	combout => \BancoRegistradores|registrador~1269_combout\);

\BancoRegistradores|saidaA[25]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[25]~24_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1269_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1269_combout\,
	combout => \BancoRegistradores|saidaA[25]~24_combout\);

\ULA|saida[31]~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~100_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(5) & (\PC|DOUT\(2) & ((\PC|DOUT\(3)) # (\PC|DOUT\(4))))) # (\PC|DOUT\(5) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) $ (!\PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ULA|saida[31]~100_combout\);

\ULA|saida[25]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~80_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[25]~25_combout\ & ( (\BancoRegistradores|saidaA[25]~24_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[25]~25_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[25]~24_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[25]~24_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[25]~25_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[25]~24_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[25]~24_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[25]~25_combout\,
	combout => \ULA|saida[25]~80_combout\);

\ULA|saida[25]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~81_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[25]~79_combout\)) # (\ULA|saida[25]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[25]~79_combout\,
	datac => \ULA|ALT_INV_saida[25]~80_combout\,
	combout => \ULA|saida[25]~81_combout\);

\BancoRegistradores|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[25]~81_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~63_q\);

\BancoRegistradores|registrador~1264\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1264_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~319_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~63_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~319_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1264_combout\);

\BancoRegistradores|registrador~1265\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1265_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~351_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~95_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~351_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1265_combout\);

\BancoRegistradores|registrador~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[25]~81_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~127_q\);

\BancoRegistradores|registrador~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[25]~81_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~383_q\);

\BancoRegistradores|registrador~1266\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1266_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~383_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~127_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~127_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~383_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1266_combout\);

\BancoRegistradores|registrador~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[25]~81_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~159_q\);

\BancoRegistradores|registrador~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[25]~81_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~415_q\);

\BancoRegistradores|registrador~1267\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1267_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~415_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~159_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~159_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~415_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1267_combout\);

\BancoRegistradores|registrador~1268\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1268_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1267_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1266_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1265_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1264_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1264_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1265_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1266_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1267_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1268_combout\);

\MUXRegImed|saida_MUX[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[25]~25_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1268_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1268_combout\,
	combout => \MUXRegImed|saida_MUX[25]~25_combout\);

\BancoRegistradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[24]~78_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~62_q\);

\BancoRegistradores|registrador~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[24]~78_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~94_q\);

\BancoRegistradores|registrador~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[24]~78_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~126_q\);

\BancoRegistradores|registrador~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[24]~78_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~158_q\);

\BancoRegistradores|registrador~1257\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1257_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~158_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~126_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~94_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~62_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~94_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~126_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~158_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1257_combout\);

\BancoRegistradores|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[24]~78_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~318_q\);

\BancoRegistradores|registrador~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[24]~78_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~382_q\);

\BancoRegistradores|registrador~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[24]~78_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~414_q\);

\BancoRegistradores|registrador~1258\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1258_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~414_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~382_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~350_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~318_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~318_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~350_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~382_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~414_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1258_combout\);

\BancoRegistradores|registrador~1259\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1259_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1258_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1257_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1257_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1258_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1259_combout\);

\MUXRegImed|saida_MUX[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[24]~24_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1259_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1259_combout\,
	combout => \MUXRegImed|saida_MUX[24]~24_combout\);

\BancoRegistradores|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[23]~75_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~61_q\);

\BancoRegistradores|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[23]~75_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~317_q\);

\BancoRegistradores|registrador~1248\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1248_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~317_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~61_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~317_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1248_combout\);

\BancoRegistradores|registrador~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[23]~75_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~93_q\);

\BancoRegistradores|registrador~1249\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1249_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~349_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~93_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~349_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1249_combout\);

\BancoRegistradores|registrador~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[23]~75_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~125_q\);

\BancoRegistradores|registrador~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[23]~75_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~381_q\);

\BancoRegistradores|registrador~1250\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1250_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~381_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~125_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~125_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~381_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1250_combout\);

\BancoRegistradores|registrador~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[23]~75_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~157_q\);

\BancoRegistradores|registrador~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[23]~75_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~413_q\);

\BancoRegistradores|registrador~1251\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1251_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~413_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~157_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~157_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~413_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1251_combout\);

\BancoRegistradores|registrador~1252\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1252_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1251_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1250_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1249_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1248_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1248_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1249_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1250_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1251_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1252_combout\);

\MUXRegImed|saida_MUX[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[23]~23_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1252_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1252_combout\,
	combout => \MUXRegImed|saida_MUX[23]~23_combout\);

\BancoRegistradores|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[22]~72_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~60_q\);

\BancoRegistradores|registrador~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[22]~72_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~92_q\);

\BancoRegistradores|registrador~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[22]~72_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~124_q\);

\BancoRegistradores|registrador~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[22]~72_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~156_q\);

\BancoRegistradores|registrador~1241\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1241_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~156_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~124_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~92_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~60_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~92_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~124_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~156_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1241_combout\);

\BancoRegistradores|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[22]~72_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~316_q\);

\BancoRegistradores|registrador~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[22]~72_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~380_q\);

\BancoRegistradores|registrador~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[22]~72_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~412_q\);

\BancoRegistradores|registrador~1242\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1242_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~412_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~380_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~348_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~316_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~316_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~348_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~380_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~412_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1242_combout\);

\BancoRegistradores|registrador~1243\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1243_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1242_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1241_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1241_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1242_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1243_combout\);

\MUXRegImed|saida_MUX[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[22]~22_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1243_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1243_combout\,
	combout => \MUXRegImed|saida_MUX[22]~22_combout\);

\BancoRegistradores|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[21]~69_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~59_q\);

\BancoRegistradores|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[21]~69_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~315_q\);

\BancoRegistradores|registrador~1232\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1232_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~315_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~59_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~315_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1232_combout\);

\BancoRegistradores|registrador~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[21]~69_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~91_q\);

\BancoRegistradores|registrador~1233\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1233_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~347_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~91_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~91_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~347_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1233_combout\);

\BancoRegistradores|registrador~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[21]~69_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~123_q\);

\BancoRegistradores|registrador~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[21]~69_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~379_q\);

\BancoRegistradores|registrador~1234\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1234_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~379_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~123_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~123_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~379_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1234_combout\);

\BancoRegistradores|registrador~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[21]~69_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~155_q\);

\BancoRegistradores|registrador~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[21]~69_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~411_q\);

\BancoRegistradores|registrador~1235\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1235_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~411_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~155_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~155_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~411_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1235_combout\);

\BancoRegistradores|registrador~1236\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1236_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1235_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1234_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1233_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1232_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1232_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1233_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1234_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1235_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1236_combout\);

\MUXRegImed|saida_MUX[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[21]~21_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1236_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1236_combout\,
	combout => \MUXRegImed|saida_MUX[21]~21_combout\);

\BancoRegistradores|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[20]~66_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~58_q\);

\BancoRegistradores|registrador~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[20]~66_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~90_q\);

\BancoRegistradores|registrador~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[20]~66_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~122_q\);

\BancoRegistradores|registrador~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[20]~66_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~154_q\);

\BancoRegistradores|registrador~1225\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1225_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~154_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~122_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~90_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~58_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~90_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~122_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~154_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1225_combout\);

\BancoRegistradores|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[20]~66_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~314_q\);

\BancoRegistradores|registrador~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[20]~66_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~378_q\);

\BancoRegistradores|registrador~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[20]~66_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~410_q\);

\BancoRegistradores|registrador~1226\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1226_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~410_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~378_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~346_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~314_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~314_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~346_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~378_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~410_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1226_combout\);

\BancoRegistradores|registrador~1227\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1227_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1226_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1225_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1225_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1226_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1227_combout\);

\MUXRegImed|saida_MUX[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[20]~20_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1227_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1227_combout\,
	combout => \MUXRegImed|saida_MUX[20]~20_combout\);

\BancoRegistradores|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[19]~63_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~57_q\);

\BancoRegistradores|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[19]~63_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~313_q\);

\BancoRegistradores|registrador~1216\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1216_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~313_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~57_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~313_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1216_combout\);

\BancoRegistradores|registrador~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[19]~63_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~89_q\);

\BancoRegistradores|registrador~1217\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1217_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~345_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~89_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~345_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1217_combout\);

\BancoRegistradores|registrador~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[19]~63_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~121_q\);

\BancoRegistradores|registrador~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[19]~63_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~377_q\);

\BancoRegistradores|registrador~1218\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1218_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~377_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~121_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~121_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~377_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1218_combout\);

\BancoRegistradores|registrador~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[19]~63_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~153_q\);

\BancoRegistradores|registrador~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[19]~63_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~409_q\);

\BancoRegistradores|registrador~1219\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1219_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~409_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~153_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~153_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~409_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1219_combout\);

\BancoRegistradores|registrador~1220\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1220_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1219_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1218_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1217_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1216_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1216_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1217_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1218_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1219_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1220_combout\);

\MUXRegImed|saida_MUX[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[19]~19_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1220_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1220_combout\,
	combout => \MUXRegImed|saida_MUX[19]~19_combout\);

\BancoRegistradores|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[18]~60_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~56_q\);

\BancoRegistradores|registrador~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[18]~60_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~88_q\);

\BancoRegistradores|registrador~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[18]~60_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~120_q\);

\BancoRegistradores|registrador~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[18]~60_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~152_q\);

\BancoRegistradores|registrador~1209\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1209_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~152_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~120_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~88_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~56_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~88_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~120_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~152_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1209_combout\);

\BancoRegistradores|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[18]~60_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~312_q\);

\BancoRegistradores|registrador~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[18]~60_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~376_q\);

\BancoRegistradores|registrador~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[18]~60_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~408_q\);

\BancoRegistradores|registrador~1210\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1210_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~408_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~376_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~344_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~312_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~312_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~344_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~376_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~408_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1210_combout\);

\BancoRegistradores|registrador~1211\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1211_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1210_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1209_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1209_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1210_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1211_combout\);

\MUXRegImed|saida_MUX[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[18]~18_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1211_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1211_combout\,
	combout => \MUXRegImed|saida_MUX[18]~18_combout\);

\BancoRegistradores|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[17]~57_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~55_q\);

\BancoRegistradores|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[17]~57_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~311_q\);

\BancoRegistradores|registrador~1200\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1200_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~311_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~55_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~311_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1200_combout\);

\BancoRegistradores|registrador~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[17]~57_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~87_q\);

\BancoRegistradores|registrador~1201\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1201_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~343_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~87_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~343_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1201_combout\);

\BancoRegistradores|registrador~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[17]~57_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~119_q\);

\BancoRegistradores|registrador~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[17]~57_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~375_q\);

\BancoRegistradores|registrador~1202\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1202_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~375_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~119_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~119_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~375_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1202_combout\);

\BancoRegistradores|registrador~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[17]~57_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~151_q\);

\BancoRegistradores|registrador~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[17]~57_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~407_q\);

\BancoRegistradores|registrador~1203\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1203_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~407_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~151_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~151_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~407_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1203_combout\);

\BancoRegistradores|registrador~1204\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1204_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1203_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1202_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1201_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1200_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1200_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1201_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1202_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1203_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1204_combout\);

\MUXRegImed|saida_MUX[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[17]~17_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1204_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1204_combout\,
	combout => \MUXRegImed|saida_MUX[17]~17_combout\);

\BancoRegistradores|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[16]~54_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~54_q\);

\BancoRegistradores|registrador~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[16]~54_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~86_q\);

\BancoRegistradores|registrador~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[16]~54_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~118_q\);

\BancoRegistradores|registrador~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[16]~54_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~150_q\);

\BancoRegistradores|registrador~1193\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1193_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~150_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~118_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~86_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~54_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~86_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~118_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~150_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1193_combout\);

\BancoRegistradores|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[16]~54_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~310_q\);

\BancoRegistradores|registrador~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[16]~54_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~374_q\);

\BancoRegistradores|registrador~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[16]~54_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~406_q\);

\BancoRegistradores|registrador~1194\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1194_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~406_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~374_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~342_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~310_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~310_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~342_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~374_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~406_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1194_combout\);

\BancoRegistradores|registrador~1195\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1195_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1194_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1193_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1193_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1194_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1195_combout\);

\MUXRegImed|saida_MUX[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[16]~16_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1195_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1195_combout\,
	combout => \MUXRegImed|saida_MUX[16]~16_combout\);

\BancoRegistradores|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[15]~51_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~53_q\);

\BancoRegistradores|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[15]~51_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~309_q\);

\BancoRegistradores|registrador~1188\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1188_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~309_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~53_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~309_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1188_combout\);

\BancoRegistradores|registrador~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[15]~51_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~85_q\);

\BancoRegistradores|registrador~1189\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1189_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~341_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~85_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~341_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1189_combout\);

\BancoRegistradores|registrador~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[15]~51_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~117_q\);

\BancoRegistradores|registrador~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[15]~51_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~373_q\);

\BancoRegistradores|registrador~1190\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1190_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~373_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~117_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~117_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~373_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1190_combout\);

\BancoRegistradores|registrador~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[15]~51_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~149_q\);

\BancoRegistradores|registrador~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[15]~51_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~405_q\);

\BancoRegistradores|registrador~1191\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1191_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~405_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~149_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~149_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~405_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1191_combout\);

\BancoRegistradores|registrador~1192\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1192_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1191_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1190_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1189_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1188_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1188_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1189_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1190_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1191_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1192_combout\);

\BancoRegistradores|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[14]~48_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~52_q\);

\BancoRegistradores|registrador~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[14]~48_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~84_q\);

\BancoRegistradores|registrador~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[14]~48_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~116_q\);

\BancoRegistradores|registrador~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[14]~48_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~148_q\);

\BancoRegistradores|registrador~1181\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1181_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~148_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~116_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~84_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~52_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~84_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~116_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~148_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1181_combout\);

\BancoRegistradores|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[14]~48_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~308_q\);

\BancoRegistradores|registrador~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[14]~48_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~372_q\);

\BancoRegistradores|registrador~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[14]~48_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~404_q\);

\BancoRegistradores|registrador~1182\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1182_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~404_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~372_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~340_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~308_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~308_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~340_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~372_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~404_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1182_combout\);

\BancoRegistradores|registrador~1183\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1183_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1182_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1181_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1181_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1182_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1183_combout\);

\BancoRegistradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[13]~45_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~51_q\);

\BancoRegistradores|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[13]~45_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~307_q\);

\BancoRegistradores|registrador~1172\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1172_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~307_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~51_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~307_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1172_combout\);

\BancoRegistradores|registrador~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[13]~45_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~83_q\);

\BancoRegistradores|registrador~1173\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1173_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~339_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~83_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~339_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1173_combout\);

\BancoRegistradores|registrador~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[13]~45_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~115_q\);

\BancoRegistradores|registrador~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[13]~45_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~371_q\);

\BancoRegistradores|registrador~1174\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1174_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~371_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~115_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~115_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~371_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1174_combout\);

\BancoRegistradores|registrador~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[13]~45_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~147_q\);

\BancoRegistradores|registrador~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[13]~45_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~403_q\);

\BancoRegistradores|registrador~1175\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1175_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~403_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~147_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~147_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~403_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1175_combout\);

\BancoRegistradores|registrador~1176\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1176_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1175_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1174_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1173_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1172_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1172_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1173_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1174_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1175_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1176_combout\);

\BancoRegistradores|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[12]~42_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~50_q\);

\BancoRegistradores|registrador~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[12]~42_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~82_q\);

\BancoRegistradores|registrador~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[12]~42_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~114_q\);

\BancoRegistradores|registrador~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[12]~42_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~146_q\);

\BancoRegistradores|registrador~1165\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1165_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~146_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~114_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~82_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~50_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~82_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~114_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~146_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1165_combout\);

\BancoRegistradores|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[12]~42_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~306_q\);

\BancoRegistradores|registrador~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[12]~42_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~370_q\);

\BancoRegistradores|registrador~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[12]~42_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~402_q\);

\BancoRegistradores|registrador~1166\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1166_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~402_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~370_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~338_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~306_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~306_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~338_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~370_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~402_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1166_combout\);

\BancoRegistradores|registrador~1167\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1167_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1166_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1165_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1165_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1166_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1167_combout\);

\BancoRegistradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[11]~39_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~49_q\);

\BancoRegistradores|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[11]~39_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~305_q\);

\BancoRegistradores|registrador~1156\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1156_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~305_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~49_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~305_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1156_combout\);

\BancoRegistradores|registrador~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[11]~39_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~81_q\);

\BancoRegistradores|registrador~1157\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1157_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~337_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~81_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~337_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1157_combout\);

\BancoRegistradores|registrador~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[11]~39_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~113_q\);

\BancoRegistradores|registrador~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[11]~39_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~369_q\);

\BancoRegistradores|registrador~1158\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1158_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~369_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~113_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~113_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~369_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1158_combout\);

\BancoRegistradores|registrador~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[11]~39_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~145_q\);

\BancoRegistradores|registrador~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[11]~39_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~401_q\);

\BancoRegistradores|registrador~1159\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1159_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~401_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~145_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~145_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~401_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1159_combout\);

\BancoRegistradores|registrador~1160\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1160_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1159_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1158_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1157_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1156_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1156_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1157_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1158_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1159_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1160_combout\);

\BancoRegistradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[10]~36_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~48_q\);

\BancoRegistradores|registrador~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[10]~36_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~80_q\);

\BancoRegistradores|registrador~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[10]~36_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~112_q\);

\BancoRegistradores|registrador~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[10]~36_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~144_q\);

\BancoRegistradores|registrador~1149\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1149_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~144_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~112_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~80_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~48_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~80_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~112_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~144_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1149_combout\);

\BancoRegistradores|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[10]~36_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~304_q\);

\BancoRegistradores|registrador~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[10]~36_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~368_q\);

\BancoRegistradores|registrador~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[10]~36_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~400_q\);

\BancoRegistradores|registrador~1150\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1150_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~400_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~368_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~336_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~304_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~304_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~336_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~368_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~400_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1150_combout\);

\BancoRegistradores|registrador~1151\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1151_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1150_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1149_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1150_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1151_combout\);

\ULA|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~45_sumout\ = SUM(( \BancoRegistradores|saidaA[10]~9_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1151_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~42\ ))
-- \ULA|Add1~46\ = CARRY(( \BancoRegistradores|saidaA[10]~9_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1151_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[10]~9_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1151_combout\,
	cin => \ULA|Add1~42\,
	sumout => \ULA|Add1~45_sumout\,
	cout => \ULA|Add1~46\);

\MUXRegImed|saida_MUX[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[10]~10_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1151_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1151_combout\,
	combout => \MUXRegImed|saida_MUX[10]~10_combout\);

\ULA|saida[10]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~34_combout\ = ( \BancoRegistradores|saidaA[10]~9_combout\ & ( \MUXRegImed|saida_MUX[10]~10_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~45_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[10]~9_combout\ & ( \MUXRegImed|saida_MUX[10]~10_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~45_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & 
-- (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( \BancoRegistradores|saidaA[10]~9_combout\ & ( !\MUXRegImed|saida_MUX[10]~10_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~45_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & 
-- (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( !\BancoRegistradores|saidaA[10]~9_combout\ & ( !\MUXRegImed|saida_MUX[10]~10_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~45_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~45_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[10]~9_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[10]~10_combout\,
	combout => \ULA|saida[10]~34_combout\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( \BancoRegistradores|saidaA[10]~9_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1151_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( \BancoRegistradores|saidaA[10]~9_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1151_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + ( 
-- \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[10]~9_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1151_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\ULA|saida[10]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~35_combout\ = ( \ULA|Add0~41_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[10]~9_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[10]~10_combout\))) ) ) # ( !\ULA|Add0~41_sumout\ & ( (\BancoRegistradores|saidaA[10]~9_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[10]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[10]~9_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[10]~10_combout\,
	datae => \ULA|ALT_INV_Add0~41_sumout\,
	combout => \ULA|saida[10]~35_combout\);

\ULA|saida[10]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~36_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[10]~34_combout\)) # (\ULA|saida[10]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[10]~34_combout\,
	datac => \ULA|ALT_INV_saida[10]~35_combout\,
	combout => \ULA|saida[10]~36_combout\);

\BancoRegistradores|registrador~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[10]~36_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~336_q\);

\BancoRegistradores|registrador~1369\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1369_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~48_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~80_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~80_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~48_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1369_combout\);

\BancoRegistradores|registrador~1145\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1145_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1369_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1369_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~336_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1369_combout\ & ( (\BancoRegistradores|registrador~304_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~336_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~304_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1369_combout\,
	combout => \BancoRegistradores|registrador~1145_combout\);

\BancoRegistradores|saidaA[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[10]~9_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1145_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1145_combout\,
	combout => \BancoRegistradores|saidaA[10]~9_combout\);

\ULA|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~49_sumout\ = SUM(( \BancoRegistradores|saidaA[11]~10_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1160_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~46\ ))
-- \ULA|Add1~50\ = CARRY(( \BancoRegistradores|saidaA[11]~10_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1160_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[11]~10_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1160_combout\,
	cin => \ULA|Add1~46\,
	sumout => \ULA|Add1~49_sumout\,
	cout => \ULA|Add1~50\);

\MUXRegImed|saida_MUX[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[11]~11_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1160_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1160_combout\,
	combout => \MUXRegImed|saida_MUX[11]~11_combout\);

\ULA|saida[11]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~37_combout\ = ( \BancoRegistradores|saidaA[11]~10_combout\ & ( \MUXRegImed|saida_MUX[11]~11_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~49_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[11]~10_combout\ & ( \MUXRegImed|saida_MUX[11]~11_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~49_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & 
-- (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( \BancoRegistradores|saidaA[11]~10_combout\ & ( !\MUXRegImed|saida_MUX[11]~11_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~49_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & 
-- (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( !\BancoRegistradores|saidaA[11]~10_combout\ & ( !\MUXRegImed|saida_MUX[11]~11_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~49_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~49_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[11]~10_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[11]~11_combout\,
	combout => \ULA|saida[11]~37_combout\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( \BancoRegistradores|saidaA[11]~10_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1160_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( \BancoRegistradores|saidaA[11]~10_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1160_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[11]~10_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1160_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\ULA|saida[11]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~38_combout\ = ( \ULA|Add0~45_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[11]~10_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[11]~11_combout\))) ) ) # ( !\ULA|Add0~45_sumout\ & ( (\BancoRegistradores|saidaA[11]~10_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[11]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[11]~10_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[11]~11_combout\,
	datae => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \ULA|saida[11]~38_combout\);

\ULA|saida[11]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~39_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[11]~37_combout\)) # (\ULA|saida[11]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[11]~37_combout\,
	datac => \ULA|ALT_INV_saida[11]~38_combout\,
	combout => \ULA|saida[11]~39_combout\);

\BancoRegistradores|registrador~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[11]~39_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~337_q\);

\BancoRegistradores|registrador~1373\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1373_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~49_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~81_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~81_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~49_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1373_combout\);

\BancoRegistradores|registrador~1152\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1152_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1373_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1373_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~337_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1373_combout\ & ( (\BancoRegistradores|registrador~305_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~337_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~305_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1373_combout\,
	combout => \BancoRegistradores|registrador~1152_combout\);

\BancoRegistradores|saidaA[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[11]~10_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1152_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1152_combout\,
	combout => \BancoRegistradores|saidaA[11]~10_combout\);

\ULA|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~53_sumout\ = SUM(( \BancoRegistradores|saidaA[12]~11_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1167_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~50\ ))
-- \ULA|Add1~54\ = CARRY(( \BancoRegistradores|saidaA[12]~11_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1167_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[12]~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1167_combout\,
	cin => \ULA|Add1~50\,
	sumout => \ULA|Add1~53_sumout\,
	cout => \ULA|Add1~54\);

\MUXRegImed|saida_MUX[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[12]~12_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1167_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1167_combout\,
	combout => \MUXRegImed|saida_MUX[12]~12_combout\);

\ULA|saida[12]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~40_combout\ = ( \BancoRegistradores|saidaA[12]~11_combout\ & ( \MUXRegImed|saida_MUX[12]~12_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~53_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[12]~11_combout\ & ( \MUXRegImed|saida_MUX[12]~12_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~53_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & 
-- (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( \BancoRegistradores|saidaA[12]~11_combout\ & ( !\MUXRegImed|saida_MUX[12]~12_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~53_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & 
-- (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( !\BancoRegistradores|saidaA[12]~11_combout\ & ( !\MUXRegImed|saida_MUX[12]~12_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~53_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~53_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[12]~11_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[12]~12_combout\,
	combout => \ULA|saida[12]~40_combout\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( \BancoRegistradores|saidaA[12]~11_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1167_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( \BancoRegistradores|saidaA[12]~11_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1167_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[12]~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1167_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\ULA|saida[12]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~41_combout\ = ( \ULA|Add0~49_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[12]~11_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[12]~12_combout\))) ) ) # ( !\ULA|Add0~49_sumout\ & ( (\BancoRegistradores|saidaA[12]~11_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[12]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[12]~11_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[12]~12_combout\,
	datae => \ULA|ALT_INV_Add0~49_sumout\,
	combout => \ULA|saida[12]~41_combout\);

\ULA|saida[12]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~42_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[12]~40_combout\)) # (\ULA|saida[12]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[12]~40_combout\,
	datac => \ULA|ALT_INV_saida[12]~41_combout\,
	combout => \ULA|saida[12]~42_combout\);

\BancoRegistradores|registrador~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[12]~42_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~338_q\);

\BancoRegistradores|registrador~1377\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1377_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~50_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~82_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~82_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~50_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1377_combout\);

\BancoRegistradores|registrador~1161\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1161_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1377_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1377_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~338_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1377_combout\ & ( (\BancoRegistradores|registrador~306_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~338_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~306_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1377_combout\,
	combout => \BancoRegistradores|registrador~1161_combout\);

\BancoRegistradores|saidaA[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[12]~11_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1161_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1161_combout\,
	combout => \BancoRegistradores|saidaA[12]~11_combout\);

\ULA|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~57_sumout\ = SUM(( \BancoRegistradores|saidaA[13]~12_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1176_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & 
-- (((!\ROM|memROM~27_combout\)))) ) + ( \ULA|Add1~54\ ))
-- \ULA|Add1~58\ = CARRY(( \BancoRegistradores|saidaA[13]~12_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1176_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & 
-- (((!\ROM|memROM~27_combout\)))) ) + ( \ULA|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[13]~12_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1176_combout\,
	cin => \ULA|Add1~54\,
	sumout => \ULA|Add1~57_sumout\,
	cout => \ULA|Add1~58\);

\MUXRegImed|saida_MUX[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[13]~13_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1176_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1176_combout\,
	combout => \MUXRegImed|saida_MUX[13]~13_combout\);

\ULA|saida[13]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~43_combout\ = ( \BancoRegistradores|saidaA[13]~12_combout\ & ( \MUXRegImed|saida_MUX[13]~13_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~57_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[13]~12_combout\ & ( \MUXRegImed|saida_MUX[13]~13_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~57_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & 
-- (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( \BancoRegistradores|saidaA[13]~12_combout\ & ( !\MUXRegImed|saida_MUX[13]~13_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~57_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & 
-- (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( !\BancoRegistradores|saidaA[13]~12_combout\ & ( !\MUXRegImed|saida_MUX[13]~13_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~57_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~57_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[13]~12_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[13]~13_combout\,
	combout => \ULA|saida[13]~43_combout\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( \BancoRegistradores|saidaA[13]~12_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1176_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( \BancoRegistradores|saidaA[13]~12_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1176_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[13]~12_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1176_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\ULA|saida[13]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~44_combout\ = ( \ULA|Add0~53_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[13]~12_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[13]~13_combout\))) ) ) # ( !\ULA|Add0~53_sumout\ & ( (\BancoRegistradores|saidaA[13]~12_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[13]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[13]~12_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[13]~13_combout\,
	datae => \ULA|ALT_INV_Add0~53_sumout\,
	combout => \ULA|saida[13]~44_combout\);

\ULA|saida[13]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~45_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[13]~43_combout\)) # (\ULA|saida[13]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[13]~43_combout\,
	datac => \ULA|ALT_INV_saida[13]~44_combout\,
	combout => \ULA|saida[13]~45_combout\);

\BancoRegistradores|registrador~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[13]~45_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~339_q\);

\BancoRegistradores|registrador~1381\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1381_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~51_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~83_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~83_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~51_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1381_combout\);

\BancoRegistradores|registrador~1168\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1168_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1381_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1381_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~339_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1381_combout\ & ( (\BancoRegistradores|registrador~307_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~339_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~307_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1381_combout\,
	combout => \BancoRegistradores|registrador~1168_combout\);

\BancoRegistradores|saidaA[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[13]~12_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1168_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1168_combout\,
	combout => \BancoRegistradores|saidaA[13]~12_combout\);

\ULA|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~61_sumout\ = SUM(( \BancoRegistradores|saidaA[14]~13_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1183_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & 
-- (((!\ROM|memROM~25_combout\)))) ) + ( \ULA|Add1~58\ ))
-- \ULA|Add1~62\ = CARRY(( \BancoRegistradores|saidaA[14]~13_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1183_combout\)) # (\BancoRegistradores|Equal0~0_combout\))) # (\UC|palavraControle\(7) & 
-- (((!\ROM|memROM~25_combout\)))) ) + ( \ULA|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[14]~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1183_combout\,
	cin => \ULA|Add1~58\,
	sumout => \ULA|Add1~61_sumout\,
	cout => \ULA|Add1~62\);

\MUXRegImed|saida_MUX[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[14]~14_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1183_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1183_combout\,
	combout => \MUXRegImed|saida_MUX[14]~14_combout\);

\ULA|saida[14]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~46_combout\ = ( \BancoRegistradores|saidaA[14]~13_combout\ & ( \MUXRegImed|saida_MUX[14]~14_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~61_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[14]~13_combout\ & ( \MUXRegImed|saida_MUX[14]~14_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~61_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & 
-- (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( \BancoRegistradores|saidaA[14]~13_combout\ & ( !\MUXRegImed|saida_MUX[14]~14_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~61_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & 
-- (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( !\BancoRegistradores|saidaA[14]~13_combout\ & ( !\MUXRegImed|saida_MUX[14]~14_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~61_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~61_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[14]~13_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[14]~14_combout\,
	combout => \ULA|saida[14]~46_combout\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( \BancoRegistradores|saidaA[14]~13_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1183_combout\)))) # (\UC|palavraControle\(7) & 
-- (((\ROM|memROM~25_combout\)))) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( \BancoRegistradores|saidaA[14]~13_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1183_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~25_combout\)))) 
-- ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[14]~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1183_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\ULA|saida[14]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~47_combout\ = ( \ULA|Add0~57_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[14]~13_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[14]~14_combout\))) ) ) # ( !\ULA|Add0~57_sumout\ & ( (\BancoRegistradores|saidaA[14]~13_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[14]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[14]~13_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[14]~14_combout\,
	datae => \ULA|ALT_INV_Add0~57_sumout\,
	combout => \ULA|saida[14]~47_combout\);

\ULA|saida[14]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~48_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[14]~46_combout\)) # (\ULA|saida[14]~47_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[14]~46_combout\,
	datac => \ULA|ALT_INV_saida[14]~47_combout\,
	combout => \ULA|saida[14]~48_combout\);

\BancoRegistradores|registrador~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[14]~48_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~340_q\);

\BancoRegistradores|registrador~1385\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1385_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~52_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~84_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~84_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~52_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1385_combout\);

\BancoRegistradores|registrador~1177\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1177_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1385_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1385_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~340_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1385_combout\ & ( (\BancoRegistradores|registrador~308_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~340_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~308_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1385_combout\,
	combout => \BancoRegistradores|registrador~1177_combout\);

\BancoRegistradores|saidaA[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[14]~13_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1177_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1177_combout\,
	combout => \BancoRegistradores|saidaA[14]~13_combout\);

\ULA|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~65_sumout\ = SUM(( \BancoRegistradores|saidaA[15]~14_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1192_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~62\ ))
-- \ULA|Add1~66\ = CARRY(( \BancoRegistradores|saidaA[15]~14_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1192_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[15]~14_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1192_combout\,
	cin => \ULA|Add1~62\,
	sumout => \ULA|Add1~65_sumout\,
	cout => \ULA|Add1~66\);

\MUXRegImed|saida_MUX[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[15]~15_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1192_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1192_combout\,
	combout => \MUXRegImed|saida_MUX[15]~15_combout\);

\ULA|saida[15]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~49_combout\ = ( \BancoRegistradores|saidaA[15]~14_combout\ & ( \MUXRegImed|saida_MUX[15]~15_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~65_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( 
-- !\BancoRegistradores|saidaA[15]~14_combout\ & ( \MUXRegImed|saida_MUX[15]~15_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & (((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~65_sumout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (\ulaUC|ulaOp[0]~6_combout\ & 
-- (\ulaUC|ulaOp[2]~7_combout\))) ) ) ) # ( \BancoRegistradores|saidaA[15]~14_combout\ & ( !\MUXRegImed|saida_MUX[15]~15_combout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ULA|Add1~65_sumout\) # (\ulaUC|ulaOp[2]~7_combout\))) # (\ulaUC|ulaOp[1]~3_combout\ & 
-- (!\ulaUC|ulaOp[2]~7_combout\)) ) ) ) # ( !\BancoRegistradores|saidaA[15]~14_combout\ & ( !\MUXRegImed|saida_MUX[15]~15_combout\ & ( ((!\ulaUC|ulaOp[2]~7_combout\ & !\ULA|Add1~65_sumout\)) # (\ulaUC|ulaOp[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111111000011110011000001000000011100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datad => \ULA|ALT_INV_Add1~65_sumout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[15]~14_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[15]~15_combout\,
	combout => \ULA|saida[15]~49_combout\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( \BancoRegistradores|saidaA[15]~14_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1192_combout\)))) # (\UC|palavraControle\(7) & 
-- (((\ROM|memROM~27_combout\)))) ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( \BancoRegistradores|saidaA[15]~14_combout\ ) + ( (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1192_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\)))) 
-- ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[15]~14_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1192_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\ULA|saida[15]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~50_combout\ = ( \ULA|Add0~61_sumout\ & ( (!\ULA|saida[1]~7_combout\ & (((!\ULA|saida[1]~8_combout\)))) # (\ULA|saida[1]~7_combout\ & (\BancoRegistradores|saidaA[15]~14_combout\ & (\ULA|saida[1]~8_combout\ & 
-- \MUXRegImed|saida_MUX[15]~15_combout\))) ) ) # ( !\ULA|Add0~61_sumout\ & ( (\BancoRegistradores|saidaA[15]~14_combout\ & (\ULA|saida[1]~7_combout\ & (\ULA|saida[1]~8_combout\ & \MUXRegImed|saida_MUX[15]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000001100000100000000000000011100000011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[15]~14_combout\,
	datab => \ULA|ALT_INV_saida[1]~7_combout\,
	datac => \ULA|ALT_INV_saida[1]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[15]~15_combout\,
	datae => \ULA|ALT_INV_Add0~61_sumout\,
	combout => \ULA|saida[15]~50_combout\);

\ULA|saida[15]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~51_combout\ = ((\ULA|saida[1]~6_combout\ & !\ULA|saida[15]~49_combout\)) # (\ULA|saida[15]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[15]~49_combout\,
	datac => \ULA|ALT_INV_saida[15]~50_combout\,
	combout => \ULA|saida[15]~51_combout\);

\BancoRegistradores|registrador~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[15]~51_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~341_q\);

\BancoRegistradores|registrador~1389\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1389_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~53_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~85_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~85_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~53_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1389_combout\);

\BancoRegistradores|registrador~1184\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1184_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1389_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1389_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~341_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1389_combout\ & ( (\BancoRegistradores|registrador~309_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~341_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~309_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1389_combout\,
	combout => \BancoRegistradores|registrador~1184_combout\);

\BancoRegistradores|saidaA[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[15]~14_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1184_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1184_combout\,
	combout => \BancoRegistradores|saidaA[15]~14_combout\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( \BancoRegistradores|saidaA[16]~15_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1195_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( \BancoRegistradores|saidaA[16]~15_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1195_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[16]~15_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1195_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\ULA|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~69_sumout\ = SUM(( \BancoRegistradores|saidaA[16]~15_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1195_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~66\ ))
-- \ULA|Add1~70\ = CARRY(( \BancoRegistradores|saidaA[16]~15_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1195_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[16]~15_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1195_combout\,
	cin => \ULA|Add1~66\,
	sumout => \ULA|Add1~69_sumout\,
	cout => \ULA|Add1~70\);

\ULA|saida[16]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~52_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[0]~0_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[16]~16_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~65_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~69_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[16]~16_combout\,
	datac => \ULA|ALT_INV_Add0~65_sumout\,
	datad => \ULA|ALT_INV_Add1~69_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[16]~52_combout\);

\ULA|saida[16]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~53_combout\ = ( \MUXRegImed|saida_MUX[16]~16_combout\ & ( \ULA|saida[31]~100_combout\ & ( (\BancoRegistradores|saidaA[16]~15_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- \MUXRegImed|saida_MUX[16]~16_combout\ & ( !\ULA|saida[31]~100_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[16]~15_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[16]~15_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\MUXRegImed|saida_MUX[16]~16_combout\ & ( !\ULA|saida[31]~100_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[16]~15_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000001001111000000000000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[16]~15_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \MUXRegImed|ALT_INV_saida_MUX[16]~16_combout\,
	dataf => \ULA|ALT_INV_saida[31]~100_combout\,
	combout => \ULA|saida[16]~53_combout\);

\ULA|saida[16]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~54_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[16]~52_combout\)) # (\ULA|saida[16]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[16]~52_combout\,
	datac => \ULA|ALT_INV_saida[16]~53_combout\,
	combout => \ULA|saida[16]~54_combout\);

\BancoRegistradores|registrador~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[16]~54_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~342_q\);

\BancoRegistradores|registrador~1393\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1393_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~54_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~86_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~86_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~54_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1393_combout\);

\BancoRegistradores|registrador~1196\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1196_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1393_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1393_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~342_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1393_combout\ & ( (\BancoRegistradores|registrador~310_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~342_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~310_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1393_combout\,
	combout => \BancoRegistradores|registrador~1196_combout\);

\BancoRegistradores|saidaA[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[16]~15_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1196_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1196_combout\,
	combout => \BancoRegistradores|saidaA[16]~15_combout\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( \BancoRegistradores|saidaA[17]~16_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1204_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( \BancoRegistradores|saidaA[17]~16_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1204_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1204_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\ULA|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~73_sumout\ = SUM(( \BancoRegistradores|saidaA[17]~16_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1204_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~70\ ))
-- \ULA|Add1~74\ = CARRY(( \BancoRegistradores|saidaA[17]~16_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1204_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1204_combout\,
	cin => \ULA|Add1~70\,
	sumout => \ULA|Add1~73_sumout\,
	cout => \ULA|Add1~74\);

\ULA|saida[17]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~55_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[1]~1_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[17]~17_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~69_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~73_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[17]~17_combout\,
	datac => \ULA|ALT_INV_Add0~69_sumout\,
	datad => \ULA|ALT_INV_Add1~73_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[17]~55_combout\);

\ULA|saida[17]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~56_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[17]~17_combout\ & ( (\BancoRegistradores|saidaA[17]~16_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[17]~17_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[17]~16_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[17]~16_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[17]~17_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[17]~16_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[17]~16_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[17]~17_combout\,
	combout => \ULA|saida[17]~56_combout\);

\ULA|saida[17]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~57_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[17]~55_combout\)) # (\ULA|saida[17]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[17]~55_combout\,
	datac => \ULA|ALT_INV_saida[17]~56_combout\,
	combout => \ULA|saida[17]~57_combout\);

\BancoRegistradores|registrador~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[17]~57_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~343_q\);

\BancoRegistradores|registrador~1397\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1397_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~55_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~87_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~87_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~55_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1397_combout\);

\BancoRegistradores|registrador~1205\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1205_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1397_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1397_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~343_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1397_combout\ & ( (\BancoRegistradores|registrador~311_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~343_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~311_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1397_combout\,
	combout => \BancoRegistradores|registrador~1205_combout\);

\BancoRegistradores|saidaA[17]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[17]~16_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1205_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1205_combout\,
	combout => \BancoRegistradores|saidaA[17]~16_combout\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( \BancoRegistradores|saidaA[18]~17_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1211_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( \BancoRegistradores|saidaA[18]~17_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1211_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[18]~17_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1211_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\ULA|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~77_sumout\ = SUM(( \BancoRegistradores|saidaA[18]~17_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1211_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~74\ ))
-- \ULA|Add1~78\ = CARRY(( \BancoRegistradores|saidaA[18]~17_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1211_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[18]~17_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1211_combout\,
	cin => \ULA|Add1~74\,
	sumout => \ULA|Add1~77_sumout\,
	cout => \ULA|Add1~78\);

\ULA|saida[18]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~58_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[2]~2_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[18]~18_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~73_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~77_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[18]~18_combout\,
	datac => \ULA|ALT_INV_Add0~73_sumout\,
	datad => \ULA|ALT_INV_Add1~77_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[18]~58_combout\);

\ULA|saida[18]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~59_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[18]~18_combout\ & ( (\BancoRegistradores|saidaA[18]~17_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[18]~18_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[18]~17_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[18]~17_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[18]~18_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[18]~17_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[18]~17_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[18]~18_combout\,
	combout => \ULA|saida[18]~59_combout\);

\ULA|saida[18]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~60_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[18]~58_combout\)) # (\ULA|saida[18]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[18]~58_combout\,
	datac => \ULA|ALT_INV_saida[18]~59_combout\,
	combout => \ULA|saida[18]~60_combout\);

\BancoRegistradores|registrador~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[18]~60_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~344_q\);

\BancoRegistradores|registrador~1401\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1401_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~56_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~88_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~88_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~56_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1401_combout\);

\BancoRegistradores|registrador~1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1212_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1401_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1401_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~344_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1401_combout\ & ( (\BancoRegistradores|registrador~312_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~344_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~312_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1401_combout\,
	combout => \BancoRegistradores|registrador~1212_combout\);

\BancoRegistradores|saidaA[18]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[18]~17_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1212_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1212_combout\,
	combout => \BancoRegistradores|saidaA[18]~17_combout\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( \BancoRegistradores|saidaA[19]~18_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1220_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( \BancoRegistradores|saidaA[19]~18_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1220_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[19]~18_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1220_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\ULA|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~81_sumout\ = SUM(( \BancoRegistradores|saidaA[19]~18_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1220_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~78\ ))
-- \ULA|Add1~82\ = CARRY(( \BancoRegistradores|saidaA[19]~18_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1220_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[19]~18_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1220_combout\,
	cin => \ULA|Add1~78\,
	sumout => \ULA|Add1~81_sumout\,
	cout => \ULA|Add1~82\);

\ULA|saida[19]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~61_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[3]~3_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[19]~19_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~77_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~81_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[3]~3_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[19]~19_combout\,
	datac => \ULA|ALT_INV_Add0~77_sumout\,
	datad => \ULA|ALT_INV_Add1~81_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[19]~61_combout\);

\ULA|saida[19]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~62_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[19]~19_combout\ & ( (\BancoRegistradores|saidaA[19]~18_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[19]~19_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[19]~18_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[19]~18_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[19]~19_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[19]~18_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[19]~18_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[19]~19_combout\,
	combout => \ULA|saida[19]~62_combout\);

\ULA|saida[19]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~63_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[19]~61_combout\)) # (\ULA|saida[19]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[19]~61_combout\,
	datac => \ULA|ALT_INV_saida[19]~62_combout\,
	combout => \ULA|saida[19]~63_combout\);

\BancoRegistradores|registrador~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[19]~63_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~345_q\);

\BancoRegistradores|registrador~1405\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1405_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~57_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~89_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~89_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~57_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1405_combout\);

\BancoRegistradores|registrador~1221\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1221_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1405_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1405_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~345_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1405_combout\ & ( (\BancoRegistradores|registrador~313_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~345_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~313_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1405_combout\,
	combout => \BancoRegistradores|registrador~1221_combout\);

\BancoRegistradores|saidaA[19]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[19]~18_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1221_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1221_combout\,
	combout => \BancoRegistradores|saidaA[19]~18_combout\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( \BancoRegistradores|saidaA[20]~19_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1227_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( \BancoRegistradores|saidaA[20]~19_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1227_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[20]~19_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1227_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\ULA|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~85_sumout\ = SUM(( \BancoRegistradores|saidaA[20]~19_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1227_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~82\ ))
-- \ULA|Add1~86\ = CARRY(( \BancoRegistradores|saidaA[20]~19_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1227_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[20]~19_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1227_combout\,
	cin => \ULA|Add1~82\,
	sumout => \ULA|Add1~85_sumout\,
	cout => \ULA|Add1~86\);

\ULA|saida[20]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~64_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[4]~4_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[20]~20_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~81_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~85_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[20]~20_combout\,
	datac => \ULA|ALT_INV_Add0~81_sumout\,
	datad => \ULA|ALT_INV_Add1~85_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[20]~64_combout\);

\ULA|saida[20]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~65_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[20]~20_combout\ & ( (\BancoRegistradores|saidaA[20]~19_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[20]~20_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[20]~19_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[20]~19_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[20]~20_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[20]~19_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[20]~19_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[20]~20_combout\,
	combout => \ULA|saida[20]~65_combout\);

\ULA|saida[20]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~66_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[20]~64_combout\)) # (\ULA|saida[20]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[20]~64_combout\,
	datac => \ULA|ALT_INV_saida[20]~65_combout\,
	combout => \ULA|saida[20]~66_combout\);

\BancoRegistradores|registrador~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[20]~66_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~346_q\);

\BancoRegistradores|registrador~1409\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1409_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~58_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~90_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~90_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~58_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1409_combout\);

\BancoRegistradores|registrador~1228\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1228_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1409_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1409_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~346_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1409_combout\ & ( (\BancoRegistradores|registrador~314_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~346_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~314_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1409_combout\,
	combout => \BancoRegistradores|registrador~1228_combout\);

\BancoRegistradores|saidaA[20]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[20]~19_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1228_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1228_combout\,
	combout => \BancoRegistradores|saidaA[20]~19_combout\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( \BancoRegistradores|saidaA[21]~20_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1236_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( \BancoRegistradores|saidaA[21]~20_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1236_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[21]~20_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1236_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\ULA|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~89_sumout\ = SUM(( \BancoRegistradores|saidaA[21]~20_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1236_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~86\ ))
-- \ULA|Add1~90\ = CARRY(( \BancoRegistradores|saidaA[21]~20_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1236_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[21]~20_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1236_combout\,
	cin => \ULA|Add1~86\,
	sumout => \ULA|Add1~89_sumout\,
	cout => \ULA|Add1~90\);

\ULA|saida[21]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~67_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[5]~5_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[21]~21_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~85_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~89_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[5]~5_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[21]~21_combout\,
	datac => \ULA|ALT_INV_Add0~85_sumout\,
	datad => \ULA|ALT_INV_Add1~89_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[21]~67_combout\);

\ULA|saida[21]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~68_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[21]~21_combout\ & ( (\BancoRegistradores|saidaA[21]~20_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[21]~21_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[21]~20_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[21]~20_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[21]~21_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[21]~20_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[21]~20_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[21]~21_combout\,
	combout => \ULA|saida[21]~68_combout\);

\ULA|saida[21]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~69_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[21]~67_combout\)) # (\ULA|saida[21]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[21]~67_combout\,
	datac => \ULA|ALT_INV_saida[21]~68_combout\,
	combout => \ULA|saida[21]~69_combout\);

\BancoRegistradores|registrador~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[21]~69_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~347_q\);

\BancoRegistradores|registrador~1413\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1413_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~59_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~91_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~91_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~59_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1413_combout\);

\BancoRegistradores|registrador~1237\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1237_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1413_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1413_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~347_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1413_combout\ & ( (\BancoRegistradores|registrador~315_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~347_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~315_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1413_combout\,
	combout => \BancoRegistradores|registrador~1237_combout\);

\BancoRegistradores|saidaA[21]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[21]~20_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1237_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1237_combout\,
	combout => \BancoRegistradores|saidaA[21]~20_combout\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( \BancoRegistradores|saidaA[22]~21_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1243_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( \BancoRegistradores|saidaA[22]~21_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1243_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[22]~21_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1243_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\ULA|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~93_sumout\ = SUM(( \BancoRegistradores|saidaA[22]~21_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1243_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~90\ ))
-- \ULA|Add1~94\ = CARRY(( \BancoRegistradores|saidaA[22]~21_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1243_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[22]~21_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1243_combout\,
	cin => \ULA|Add1~90\,
	sumout => \ULA|Add1~93_sumout\,
	cout => \ULA|Add1~94\);

\ULA|saida[22]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~70_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[6]~6_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[22]~22_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~89_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~93_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[6]~6_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[22]~22_combout\,
	datac => \ULA|ALT_INV_Add0~89_sumout\,
	datad => \ULA|ALT_INV_Add1~93_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[22]~70_combout\);

\ULA|saida[22]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~71_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[22]~22_combout\ & ( (\BancoRegistradores|saidaA[22]~21_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[22]~22_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[22]~21_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[22]~21_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[22]~22_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[22]~21_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[22]~21_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[22]~22_combout\,
	combout => \ULA|saida[22]~71_combout\);

\ULA|saida[22]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~72_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[22]~70_combout\)) # (\ULA|saida[22]~71_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[22]~70_combout\,
	datac => \ULA|ALT_INV_saida[22]~71_combout\,
	combout => \ULA|saida[22]~72_combout\);

\BancoRegistradores|registrador~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[22]~72_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~348_q\);

\BancoRegistradores|registrador~1417\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1417_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~60_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~92_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~92_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~60_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1417_combout\);

\BancoRegistradores|registrador~1244\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1244_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1417_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1417_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~348_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1417_combout\ & ( (\BancoRegistradores|registrador~316_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~348_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~316_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1417_combout\,
	combout => \BancoRegistradores|registrador~1244_combout\);

\BancoRegistradores|saidaA[22]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[22]~21_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1244_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1244_combout\,
	combout => \BancoRegistradores|saidaA[22]~21_combout\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( \BancoRegistradores|saidaA[23]~22_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1252_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( \BancoRegistradores|saidaA[23]~22_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1252_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[23]~22_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1252_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\ULA|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~97_sumout\ = SUM(( \BancoRegistradores|saidaA[23]~22_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1252_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~94\ ))
-- \ULA|Add1~98\ = CARRY(( \BancoRegistradores|saidaA[23]~22_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1252_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) ) 
-- + ( \ULA|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[23]~22_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1252_combout\,
	cin => \ULA|Add1~94\,
	sumout => \ULA|Add1~97_sumout\,
	cout => \ULA|Add1~98\);

\ULA|saida[23]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~73_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[7]~7_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[23]~23_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~93_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~97_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[7]~7_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[23]~23_combout\,
	datac => \ULA|ALT_INV_Add0~93_sumout\,
	datad => \ULA|ALT_INV_Add1~97_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[23]~73_combout\);

\ULA|saida[23]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~74_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[23]~23_combout\ & ( (\BancoRegistradores|saidaA[23]~22_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[23]~23_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[23]~22_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[23]~22_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[23]~23_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[23]~22_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[23]~22_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[23]~23_combout\,
	combout => \ULA|saida[23]~74_combout\);

\ULA|saida[23]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~75_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[23]~73_combout\)) # (\ULA|saida[23]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[23]~73_combout\,
	datac => \ULA|ALT_INV_saida[23]~74_combout\,
	combout => \ULA|saida[23]~75_combout\);

\BancoRegistradores|registrador~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[23]~75_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~349_q\);

\BancoRegistradores|registrador~1421\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1421_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~61_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~93_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~93_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~61_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1421_combout\);

\BancoRegistradores|registrador~1253\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1253_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1421_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1421_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~349_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1421_combout\ & ( (\BancoRegistradores|registrador~317_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~349_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~317_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1421_combout\,
	combout => \BancoRegistradores|registrador~1253_combout\);

\BancoRegistradores|saidaA[23]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[23]~22_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1253_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1253_combout\,
	combout => \BancoRegistradores|saidaA[23]~22_combout\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( \BancoRegistradores|saidaA[24]~23_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1259_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( \BancoRegistradores|saidaA[24]~23_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1259_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[24]~23_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1259_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\ULA|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~101_sumout\ = SUM(( \BancoRegistradores|saidaA[24]~23_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1259_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~98\ ))
-- \ULA|Add1~102\ = CARRY(( \BancoRegistradores|saidaA[24]~23_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1259_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[24]~23_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1259_combout\,
	cin => \ULA|Add1~98\,
	sumout => \ULA|Add1~101_sumout\,
	cout => \ULA|Add1~102\);

\ULA|saida[24]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~76_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[8]~8_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[24]~24_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~97_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~101_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[8]~8_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[24]~24_combout\,
	datac => \ULA|ALT_INV_Add0~97_sumout\,
	datad => \ULA|ALT_INV_Add1~101_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[24]~76_combout\);

\ULA|saida[24]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~77_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[24]~24_combout\ & ( (\BancoRegistradores|saidaA[24]~23_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[24]~24_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[24]~23_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[24]~23_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[24]~24_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[24]~23_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[24]~23_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[24]~24_combout\,
	combout => \ULA|saida[24]~77_combout\);

\ULA|saida[24]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~78_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[24]~76_combout\)) # (\ULA|saida[24]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[24]~76_combout\,
	datac => \ULA|ALT_INV_saida[24]~77_combout\,
	combout => \ULA|saida[24]~78_combout\);

\BancoRegistradores|registrador~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[24]~78_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~350_q\);

\BancoRegistradores|registrador~1425\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1425_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~62_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~94_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~94_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~62_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1425_combout\);

\BancoRegistradores|registrador~1260\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1260_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1425_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1425_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~350_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1425_combout\ & ( (\BancoRegistradores|registrador~318_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~350_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~318_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1425_combout\,
	combout => \BancoRegistradores|registrador~1260_combout\);

\BancoRegistradores|saidaA[24]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[24]~23_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1260_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1260_combout\,
	combout => \BancoRegistradores|saidaA[24]~23_combout\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( \BancoRegistradores|saidaA[25]~24_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1268_combout\)))) # (\UC|palavraControle\(7) & 
-- (\ROM|memROM~27_combout\)) ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( \BancoRegistradores|saidaA[25]~24_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1268_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[25]~24_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1268_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\ULA|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~105_sumout\ = SUM(( \BancoRegistradores|saidaA[25]~24_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1268_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~102\ ))
-- \ULA|Add1~106\ = CARRY(( \BancoRegistradores|saidaA[25]~24_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1268_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[25]~24_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1268_combout\,
	cin => \ULA|Add1~102\,
	sumout => \ULA|Add1~105_sumout\,
	cout => \ULA|Add1~106\);

\ULA|saida[25]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~79_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[9]~9_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[25]~25_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~101_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~105_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[9]~9_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[25]~25_combout\,
	datac => \ULA|ALT_INV_Add0~101_sumout\,
	datad => \ULA|ALT_INV_Add1~105_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[25]~79_combout\);

\BancoRegistradores|registrador~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[28]~90_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~354_q\);

\BancoRegistradores|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[28]~90_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~322_q\);

\BancoRegistradores|registrador~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[28]~90_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~98_q\);

\BancoRegistradores|registrador~1441\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1441_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~66_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~98_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~98_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~66_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1441_combout\);

\BancoRegistradores|registrador~1292\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1292_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1441_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1441_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~354_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1441_combout\ & ( (\BancoRegistradores|registrador~322_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~354_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~322_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1441_combout\,
	combout => \BancoRegistradores|registrador~1292_combout\);

\BancoRegistradores|saidaA[28]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[28]~27_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1292_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1292_combout\,
	combout => \BancoRegistradores|saidaA[28]~27_combout\);

\ULA|saida[28]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~89_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[28]~28_combout\ & ( (\BancoRegistradores|saidaA[28]~27_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[28]~28_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[28]~27_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[28]~27_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[28]~28_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[28]~27_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[28]~27_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[28]~28_combout\,
	combout => \ULA|saida[28]~89_combout\);

\ULA|saida[28]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~90_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[28]~88_combout\)) # (\ULA|saida[28]~89_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[28]~88_combout\,
	datac => \ULA|ALT_INV_saida[28]~89_combout\,
	combout => \ULA|saida[28]~90_combout\);

\BancoRegistradores|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[28]~90_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~66_q\);

\BancoRegistradores|registrador~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[28]~90_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~130_q\);

\BancoRegistradores|registrador~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[28]~90_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~162_q\);

\BancoRegistradores|registrador~1289\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1289_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~162_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~130_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~98_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~66_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~98_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~130_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~162_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1289_combout\);

\BancoRegistradores|registrador~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[28]~90_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~386_q\);

\BancoRegistradores|registrador~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[28]~90_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~418_q\);

\BancoRegistradores|registrador~1290\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1290_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~418_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~386_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~354_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~322_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~322_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~354_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~386_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~418_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1290_combout\);

\BancoRegistradores|registrador~1291\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1291_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1290_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1289_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1289_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1290_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1291_combout\);

\MUXRegImed|saida_MUX[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[28]~28_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1291_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1291_combout\,
	combout => \MUXRegImed|saida_MUX[28]~28_combout\);

\BancoRegistradores|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[27]~87_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~65_q\);

\BancoRegistradores|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[27]~87_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~321_q\);

\BancoRegistradores|registrador~1280\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1280_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~321_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~65_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~321_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1280_combout\);

\BancoRegistradores|registrador~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[27]~87_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~97_q\);

\BancoRegistradores|registrador~1281\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1281_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~353_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~97_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~353_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1281_combout\);

\BancoRegistradores|registrador~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[27]~87_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~129_q\);

\BancoRegistradores|registrador~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[27]~87_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~385_q\);

\BancoRegistradores|registrador~1282\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1282_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~385_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~129_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~129_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~385_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1282_combout\);

\BancoRegistradores|registrador~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[27]~87_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~161_q\);

\BancoRegistradores|registrador~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[27]~87_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~417_q\);

\BancoRegistradores|registrador~1283\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1283_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~417_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~161_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~161_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~417_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1283_combout\);

\BancoRegistradores|registrador~1284\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1284_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1283_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1282_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1281_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1280_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1280_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1281_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1282_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1283_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1284_combout\);

\MUXRegImed|saida_MUX[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[27]~27_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1284_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1284_combout\,
	combout => \MUXRegImed|saida_MUX[27]~27_combout\);

\BancoRegistradores|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[26]~84_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~64_q\);

\BancoRegistradores|registrador~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[26]~84_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~96_q\);

\BancoRegistradores|registrador~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[26]~84_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~128_q\);

\BancoRegistradores|registrador~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[26]~84_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~160_q\);

\BancoRegistradores|registrador~1273\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1273_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~160_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~128_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~96_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~64_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~96_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~128_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~160_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1273_combout\);

\BancoRegistradores|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[26]~84_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~320_q\);

\BancoRegistradores|registrador~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[26]~84_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~384_q\);

\BancoRegistradores|registrador~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[26]~84_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~416_q\);

\BancoRegistradores|registrador~1274\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1274_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~416_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~384_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~352_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~320_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~320_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~352_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~384_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~416_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1274_combout\);

\BancoRegistradores|registrador~1275\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1275_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1274_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1273_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1273_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1274_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1275_combout\);

\MUXRegImed|saida_MUX[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[26]~26_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1275_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1275_combout\,
	combout => \MUXRegImed|saida_MUX[26]~26_combout\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( \BancoRegistradores|saidaA[26]~25_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1275_combout\)))) # (\UC|palavraControle\(7) & 
-- (\ROM|memROM~27_combout\)) ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( \BancoRegistradores|saidaA[26]~25_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1275_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[26]~25_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1275_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\ULA|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~109_sumout\ = SUM(( \BancoRegistradores|saidaA[26]~25_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1275_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~106\ ))
-- \ULA|Add1~110\ = CARRY(( \BancoRegistradores|saidaA[26]~25_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1275_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[26]~25_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1275_combout\,
	cin => \ULA|Add1~106\,
	sumout => \ULA|Add1~109_sumout\,
	cout => \ULA|Add1~110\);

\ULA|saida[26]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~82_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[10]~10_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[26]~26_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~105_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~109_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[10]~10_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[26]~26_combout\,
	datac => \ULA|ALT_INV_Add0~105_sumout\,
	datad => \ULA|ALT_INV_Add1~109_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[26]~82_combout\);

\ULA|saida[26]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~83_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[26]~26_combout\ & ( (\BancoRegistradores|saidaA[26]~25_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[26]~26_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[26]~25_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[26]~25_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[26]~26_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[26]~25_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[26]~25_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[26]~26_combout\,
	combout => \ULA|saida[26]~83_combout\);

\ULA|saida[26]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~84_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[26]~82_combout\)) # (\ULA|saida[26]~83_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[26]~82_combout\,
	datac => \ULA|ALT_INV_saida[26]~83_combout\,
	combout => \ULA|saida[26]~84_combout\);

\BancoRegistradores|registrador~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[26]~84_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~352_q\);

\BancoRegistradores|registrador~1433\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1433_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~64_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~96_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~96_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~64_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1433_combout\);

\BancoRegistradores|registrador~1276\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1276_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1433_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1433_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~352_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1433_combout\ & ( (\BancoRegistradores|registrador~320_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~352_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~320_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1433_combout\,
	combout => \BancoRegistradores|registrador~1276_combout\);

\BancoRegistradores|saidaA[26]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[26]~25_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1276_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1276_combout\,
	combout => \BancoRegistradores|saidaA[26]~25_combout\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( \BancoRegistradores|saidaA[27]~26_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1284_combout\)))) # (\UC|palavraControle\(7) & 
-- (\ROM|memROM~27_combout\)) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( \BancoRegistradores|saidaA[27]~26_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1284_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[27]~26_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1284_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\ULA|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~113_sumout\ = SUM(( \BancoRegistradores|saidaA[27]~26_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1284_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~110\ ))
-- \ULA|Add1~114\ = CARRY(( \BancoRegistradores|saidaA[27]~26_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1284_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[27]~26_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1284_combout\,
	cin => \ULA|Add1~110\,
	sumout => \ULA|Add1~113_sumout\,
	cout => \ULA|Add1~114\);

\ULA|saida[27]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~85_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[11]~11_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[27]~27_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~109_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~113_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[11]~11_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[27]~27_combout\,
	datac => \ULA|ALT_INV_Add0~109_sumout\,
	datad => \ULA|ALT_INV_Add1~113_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[27]~85_combout\);

\ULA|saida[27]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~86_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[27]~27_combout\ & ( (\BancoRegistradores|saidaA[27]~26_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[27]~27_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[27]~26_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[27]~26_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[27]~27_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[27]~26_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[27]~26_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[27]~27_combout\,
	combout => \ULA|saida[27]~86_combout\);

\ULA|saida[27]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~87_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[27]~85_combout\)) # (\ULA|saida[27]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[27]~85_combout\,
	datac => \ULA|ALT_INV_saida[27]~86_combout\,
	combout => \ULA|saida[27]~87_combout\);

\BancoRegistradores|registrador~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[27]~87_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~353_q\);

\BancoRegistradores|registrador~1437\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1437_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~65_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~97_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~97_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~65_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1437_combout\);

\BancoRegistradores|registrador~1285\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1285_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1437_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1437_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~353_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1437_combout\ & ( (\BancoRegistradores|registrador~321_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~353_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~321_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1437_combout\,
	combout => \BancoRegistradores|registrador~1285_combout\);

\BancoRegistradores|saidaA[27]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[27]~26_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1285_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1285_combout\,
	combout => \BancoRegistradores|saidaA[27]~26_combout\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( \BancoRegistradores|saidaA[28]~27_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1291_combout\)))) # (\UC|palavraControle\(7) & 
-- (\ROM|memROM~27_combout\)) ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( \BancoRegistradores|saidaA[28]~27_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1291_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[28]~27_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1291_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\ULA|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~117_sumout\ = SUM(( \BancoRegistradores|saidaA[28]~27_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1291_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~114\ ))
-- \ULA|Add1~118\ = CARRY(( \BancoRegistradores|saidaA[28]~27_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1291_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[28]~27_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1291_combout\,
	cin => \ULA|Add1~114\,
	sumout => \ULA|Add1~117_sumout\,
	cout => \ULA|Add1~118\);

\ULA|saida[28]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~88_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[12]~12_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[28]~28_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~113_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~117_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[12]~12_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[28]~28_combout\,
	datac => \ULA|ALT_INV_Add0~113_sumout\,
	datad => \ULA|ALT_INV_Add1~117_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[28]~88_combout\);

\ULA|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~0_combout\ = ( !\ULA|saida[5]~21_combout\ & ( !\ULA|saida[6]~23_combout\ & ( (!\ULA|saida[15]~50_combout\ & ((!\ULA|saida[1]~6_combout\) # ((\ULA|saida[6]~22_combout\ & \ULA|saida[15]~49_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[6]~22_combout\,
	datac => \ULA|ALT_INV_saida[15]~49_combout\,
	datad => \ULA|ALT_INV_saida[15]~50_combout\,
	datae => \ULA|ALT_INV_saida[5]~21_combout\,
	dataf => \ULA|ALT_INV_saida[6]~23_combout\,
	combout => \ULA|Equal8~0_combout\);

\ULA|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~1_combout\ = ( !\ULA|saida[28]~89_combout\ & ( \ULA|Equal8~0_combout\ & ( (!\ULA|saida[25]~80_combout\ & (((!\ULA|saida[25]~79_combout\ & !\ULA|saida[28]~88_combout\)) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[25]~79_combout\,
	datac => \ULA|ALT_INV_saida[25]~80_combout\,
	datad => \ULA|ALT_INV_saida[28]~88_combout\,
	datae => \ULA|ALT_INV_saida[28]~89_combout\,
	dataf => \ULA|ALT_INV_Equal8~0_combout\,
	combout => \ULA|Equal8~1_combout\);

\ULA|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~2_combout\ = ( !\ULA|saida[17]~56_combout\ & ( (!\ULA|saida[16]~53_combout\ & (((!\ULA|saida[16]~52_combout\ & !\ULA|saida[17]~55_combout\)) # (\ulaUC|ulaOp[2]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001010000000000000000000011010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[16]~52_combout\,
	datac => \ULA|ALT_INV_saida[16]~53_combout\,
	datad => \ULA|ALT_INV_saida[17]~55_combout\,
	datae => \ULA|ALT_INV_saida[17]~56_combout\,
	combout => \ULA|Equal8~2_combout\);

\ULA|Equal8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~3_combout\ = ( !\ULA|saida[27]~86_combout\ & ( \ULA|Equal8~2_combout\ & ( (!\ULA|saida[26]~83_combout\ & (((!\ULA|saida[26]~82_combout\ & !\ULA|saida[27]~85_combout\)) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[26]~82_combout\,
	datac => \ULA|ALT_INV_saida[26]~83_combout\,
	datad => \ULA|ALT_INV_saida[27]~85_combout\,
	datae => \ULA|ALT_INV_saida[27]~86_combout\,
	dataf => \ULA|ALT_INV_Equal8~2_combout\,
	combout => \ULA|Equal8~3_combout\);

\ULA|Equal8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~4_combout\ = ( !\ULA|saida[8]~29_combout\ & ( (!\ULA|saida[7]~26_combout\ & ((!\ULA|saida[1]~6_combout\) # ((\ULA|saida[7]~25_combout\ & \ULA|saida[8]~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101100000000000000000000000010101011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[7]~25_combout\,
	datac => \ULA|ALT_INV_saida[8]~28_combout\,
	datad => \ULA|ALT_INV_saida[7]~26_combout\,
	datae => \ULA|ALT_INV_saida[8]~29_combout\,
	combout => \ULA|Equal8~4_combout\);

\ULA|Equal8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~5_combout\ = ( !\ULA|saida[19]~62_combout\ & ( \ULA|Equal8~4_combout\ & ( (!\ULA|saida[18]~59_combout\ & (((!\ULA|saida[18]~58_combout\ & !\ULA|saida[19]~61_combout\)) # (\ulaUC|ulaOp[2]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[18]~58_combout\,
	datac => \ULA|ALT_INV_saida[18]~59_combout\,
	datad => \ULA|ALT_INV_saida[19]~61_combout\,
	datae => \ULA|ALT_INV_saida[19]~62_combout\,
	dataf => \ULA|ALT_INV_Equal8~4_combout\,
	combout => \ULA|Equal8~5_combout\);

\ULA|Equal8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~6_combout\ = ( !\ULA|saida[4]~18_combout\ & ( (!\ULA|saida[3]~15_combout\ & ((!\ULA|saida[1]~6_combout\) # ((\ULA|saida[3]~14_combout\ & \ULA|saida[4]~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101100000000000000000000000010101011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[3]~14_combout\,
	datac => \ULA|ALT_INV_saida[4]~17_combout\,
	datad => \ULA|ALT_INV_saida[3]~15_combout\,
	datae => \ULA|ALT_INV_saida[4]~18_combout\,
	combout => \ULA|Equal8~6_combout\);

\ULA|Equal8~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~7_combout\ = ( !\ULA|saida[13]~44_combout\ & ( \ULA|Equal8~6_combout\ & ( (!\ULA|saida[14]~47_combout\ & ((!\ULA|saida[1]~6_combout\) # ((\ULA|saida[13]~43_combout\ & \ULA|saida[14]~46_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[1]~6_combout\,
	datab => \ULA|ALT_INV_saida[13]~43_combout\,
	datac => \ULA|ALT_INV_saida[14]~46_combout\,
	datad => \ULA|ALT_INV_saida[14]~47_combout\,
	datae => \ULA|ALT_INV_saida[13]~44_combout\,
	dataf => \ULA|ALT_INV_Equal8~6_combout\,
	combout => \ULA|Equal8~7_combout\);

\ULA|Equal8~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~8_combout\ = ( \ULA|Equal8~7_combout\ & ( (!\ULA|saida[24]~77_combout\ & (\ULA|Equal8~5_combout\ & ((!\ULA|saida[24]~76_combout\) # (\ulaUC|ulaOp[2]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101000000000000000000000000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[24]~76_combout\,
	datac => \ULA|ALT_INV_saida[24]~77_combout\,
	datad => \ULA|ALT_INV_Equal8~5_combout\,
	datae => \ULA|ALT_INV_Equal8~7_combout\,
	combout => \ULA|Equal8~8_combout\);

\BancoRegistradores|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[31]~99_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~69_q\);

\BancoRegistradores|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[31]~99_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~325_q\);

\BancoRegistradores|registrador~1312\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1312_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~325_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~69_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~325_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1312_combout\);

\BancoRegistradores|registrador~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[31]~99_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~101_q\);

\BancoRegistradores|registrador~1313\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1313_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~357_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~101_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~101_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~357_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1313_combout\);

\BancoRegistradores|registrador~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[31]~99_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~133_q\);

\BancoRegistradores|registrador~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[31]~99_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~389_q\);

\BancoRegistradores|registrador~1314\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1314_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~389_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~133_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~133_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~389_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1314_combout\);

\BancoRegistradores|registrador~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[31]~99_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~165_q\);

\BancoRegistradores|registrador~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[31]~99_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~421_q\);

\BancoRegistradores|registrador~1315\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1315_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~421_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~165_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~165_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~421_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1315_combout\);

\BancoRegistradores|registrador~1316\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1316_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1315_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1314_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1313_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1312_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1312_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1313_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1314_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1315_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1316_combout\);

\MUXRegImed|saida_MUX[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[31]~31_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1316_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1316_combout\,
	combout => \MUXRegImed|saida_MUX[31]~31_combout\);

\BancoRegistradores|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[30]~96_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~68_q\);

\BancoRegistradores|registrador~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[30]~96_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~100_q\);

\BancoRegistradores|registrador~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[30]~96_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~132_q\);

\BancoRegistradores|registrador~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[30]~96_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~164_q\);

\BancoRegistradores|registrador~1305\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1305_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~164_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~132_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~100_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~68_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~100_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~132_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~164_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1305_combout\);

\BancoRegistradores|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[30]~96_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~324_q\);

\BancoRegistradores|registrador~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[30]~96_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~388_q\);

\BancoRegistradores|registrador~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[30]~96_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~420_q\);

\BancoRegistradores|registrador~1306\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1306_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~420_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~388_q\ ) ) 
-- ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~356_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~324_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~324_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~356_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~388_q\,
	datad => \BancoRegistradores|ALT_INV_registrador~420_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1306_combout\);

\BancoRegistradores|registrador~1307\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1307_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~1306_combout\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \BancoRegistradores|registrador~1305_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1305_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1306_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1307_combout\);

\MUXRegImed|saida_MUX[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[30]~30_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1307_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1307_combout\,
	combout => \MUXRegImed|saida_MUX[30]~30_combout\);

\BancoRegistradores|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[29]~93_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~67_q\);

\BancoRegistradores|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[29]~93_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~323_q\);

\BancoRegistradores|registrador~1296\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1296_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~323_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~67_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~323_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1296_combout\);

\BancoRegistradores|registrador~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[29]~93_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~99_q\);

\BancoRegistradores|registrador~1297\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1297_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~355_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~99_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~355_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1297_combout\);

\BancoRegistradores|registrador~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[29]~93_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~131_q\);

\BancoRegistradores|registrador~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[29]~93_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~387_q\);

\BancoRegistradores|registrador~1298\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1298_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~387_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~131_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~131_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~387_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1298_combout\);

\BancoRegistradores|registrador~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[29]~93_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~163_q\);

\BancoRegistradores|registrador~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[29]~93_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~419_q\);

\BancoRegistradores|registrador~1299\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1299_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~419_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( \BancoRegistradores|registrador~163_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~163_q\,
	datab => \BancoRegistradores|ALT_INV_registrador~419_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \BancoRegistradores|registrador~1299_combout\);

\BancoRegistradores|registrador~1300\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1300_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1299_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1298_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \BancoRegistradores|registrador~1297_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \BancoRegistradores|registrador~1296_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1296_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1297_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1298_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1299_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \BancoRegistradores|registrador~1300_combout\);

\MUXRegImed|saida_MUX[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[29]~29_combout\ = (!\UC|palavraControle\(7) & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1300_combout\)))) # (\UC|palavraControle\(7) & (((\ROM|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1300_combout\,
	combout => \MUXRegImed|saida_MUX[29]~29_combout\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( \BancoRegistradores|saidaA[29]~28_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1300_combout\)))) # (\UC|palavraControle\(7) & 
-- (\ROM|memROM~27_combout\)) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( \BancoRegistradores|saidaA[29]~28_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1300_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[29]~28_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1300_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\ULA|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~121_sumout\ = SUM(( \BancoRegistradores|saidaA[29]~28_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1300_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~118\ ))
-- \ULA|Add1~122\ = CARRY(( \BancoRegistradores|saidaA[29]~28_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1300_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[29]~28_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1300_combout\,
	cin => \ULA|Add1~118\,
	sumout => \ULA|Add1~121_sumout\,
	cout => \ULA|Add1~122\);

\ULA|saida[29]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~91_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[13]~13_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[29]~29_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~117_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~121_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[13]~13_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[29]~29_combout\,
	datac => \ULA|ALT_INV_Add0~117_sumout\,
	datad => \ULA|ALT_INV_Add1~121_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[29]~91_combout\);

\ULA|saida[29]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~92_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[29]~29_combout\ & ( (\BancoRegistradores|saidaA[29]~28_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[29]~29_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[29]~28_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[29]~28_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[29]~29_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[29]~28_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[29]~28_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[29]~29_combout\,
	combout => \ULA|saida[29]~92_combout\);

\ULA|saida[29]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~93_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[29]~91_combout\)) # (\ULA|saida[29]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[29]~91_combout\,
	datac => \ULA|ALT_INV_saida[29]~92_combout\,
	combout => \ULA|saida[29]~93_combout\);

\BancoRegistradores|registrador~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[29]~93_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~355_q\);

\BancoRegistradores|registrador~1445\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1445_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~67_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~99_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~99_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~67_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1445_combout\);

\BancoRegistradores|registrador~1301\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1301_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1445_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1445_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~355_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1445_combout\ & ( (\BancoRegistradores|registrador~323_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~355_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~323_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1445_combout\,
	combout => \BancoRegistradores|registrador~1301_combout\);

\BancoRegistradores|saidaA[29]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[29]~28_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1301_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1301_combout\,
	combout => \BancoRegistradores|saidaA[29]~28_combout\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( \BancoRegistradores|saidaA[30]~29_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1307_combout\)))) # (\UC|palavraControle\(7) & 
-- (\ROM|memROM~27_combout\)) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( \BancoRegistradores|saidaA[30]~29_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1307_combout\)))) # (\UC|palavraControle\(7) & (\ROM|memROM~27_combout\)) ) + 
-- ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[30]~29_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1307_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\ULA|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~125_sumout\ = SUM(( \BancoRegistradores|saidaA[30]~29_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1307_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~122\ ))
-- \ULA|Add1~126\ = CARRY(( \BancoRegistradores|saidaA[30]~29_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1307_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & (!\ROM|memROM~27_combout\)) 
-- ) + ( \ULA|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[30]~29_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1307_combout\,
	cin => \ULA|Add1~122\,
	sumout => \ULA|Add1~125_sumout\,
	cout => \ULA|Add1~126\);

\ULA|saida[30]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~94_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[14]~14_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[30]~30_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~121_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~125_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[14]~14_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[30]~30_combout\,
	datac => \ULA|ALT_INV_Add0~121_sumout\,
	datad => \ULA|ALT_INV_Add1~125_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[30]~94_combout\);

\ULA|saida[30]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~95_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[30]~30_combout\ & ( (\BancoRegistradores|saidaA[30]~29_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[30]~30_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[30]~29_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[30]~29_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[30]~30_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[30]~29_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[30]~29_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[30]~30_combout\,
	combout => \ULA|saida[30]~95_combout\);

\ULA|saida[30]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~96_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[30]~94_combout\)) # (\ULA|saida[30]~95_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[30]~94_combout\,
	datac => \ULA|ALT_INV_saida[30]~95_combout\,
	combout => \ULA|saida[30]~96_combout\);

\BancoRegistradores|registrador~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[30]~96_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~356_q\);

\BancoRegistradores|registrador~1449\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1449_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~68_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~100_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~100_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~68_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1449_combout\);

\BancoRegistradores|registrador~1308\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1308_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1449_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1449_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~356_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1449_combout\ & ( (\BancoRegistradores|registrador~324_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~356_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~324_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1449_combout\,
	combout => \BancoRegistradores|registrador~1308_combout\);

\BancoRegistradores|saidaA[30]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[30]~29_combout\ = (\BancoRegistradores|Equal1~0_combout\ & \BancoRegistradores|registrador~1308_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \BancoRegistradores|ALT_INV_registrador~1308_combout\,
	combout => \BancoRegistradores|saidaA[30]~29_combout\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( \BancoRegistradores|saidaA[31]~30_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1316_combout\)))) # (\UC|palavraControle\(7) & 
-- (\ROM|memROM~27_combout\)) ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[31]~30_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1316_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\ULA|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~1_sumout\ = SUM(( \BancoRegistradores|saidaA[31]~30_combout\ ) + ( (!\UC|palavraControle\(7) & (((!\BancoRegistradores|registrador~1316_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) # (\UC|palavraControle\(7) & 
-- (!\ROM|memROM~27_combout\)) ) + ( \ULA|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_palavraControle\(7),
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[31]~30_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1316_combout\,
	cin => \ULA|Add1~126\,
	sumout => \ULA|Add1~1_sumout\);

\ULA|saida[31]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~97_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[15]~15_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( \ulaUC|ulaOp[1]~3_combout\ & ( \MUXRegImed|saida_MUX[31]~31_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add0~125_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ulaUC|ulaOp[1]~3_combout\ & ( \ULA|Add1~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[15]~15_combout\,
	datab => \MUXRegImed|ALT_INV_saida_MUX[31]~31_combout\,
	datac => \ULA|ALT_INV_Add0~125_sumout\,
	datad => \ULA|ALT_INV_Add1~1_sumout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	combout => \ULA|saida[31]~97_combout\);

\ULA|saida[31]~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~99_combout\ = ((!\ulaUC|ulaOp[2]~7_combout\ & \ULA|saida[31]~97_combout\)) # (\ULA|saida[31]~98_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[31]~97_combout\,
	datac => \ULA|ALT_INV_saida[31]~98_combout\,
	combout => \ULA|saida[31]~99_combout\);

\BancoRegistradores|registrador~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[31]~99_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~357_q\);

\BancoRegistradores|registrador~1453\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1453_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~69_q\))) # (\ROM|memROM~29_combout\ & (\BancoRegistradores|registrador~101_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~101_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~69_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1453_combout\);

\BancoRegistradores|registrador~1317\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1317_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1453_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1453_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~357_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1453_combout\ & ( (\BancoRegistradores|registrador~325_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~357_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~325_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1453_combout\,
	combout => \BancoRegistradores|registrador~1317_combout\);

\BancoRegistradores|saidaA[31]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[31]~30_combout\ = (\BancoRegistradores|registrador~1317_combout\ & \BancoRegistradores|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1317_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \BancoRegistradores|saidaA[31]~30_combout\);

\ULA|saida[31]~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~98_combout\ = ( \ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[31]~31_combout\ & ( (\BancoRegistradores|saidaA[31]~30_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ (\ulaUC|ulaOp[1]~3_combout\)))) ) ) ) # ( 
-- !\ULA|saida[31]~100_combout\ & ( \MUXRegImed|saida_MUX[31]~31_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & ((!\ulaUC|ulaOp[0]~6_combout\ & ((!\BancoRegistradores|saidaA[31]~30_combout\) # (\ulaUC|ulaOp[1]~3_combout\))) # (\ulaUC|ulaOp[0]~6_combout\ & 
-- (!\BancoRegistradores|saidaA[31]~30_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\))))) ) ) ) # ( !\ULA|saida[31]~100_combout\ & ( !\MUXRegImed|saida_MUX[31]~31_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ulaUC|ulaOp[0]~6_combout\ $ 
-- (!\BancoRegistradores|saidaA[31]~30_combout\ $ (!\ulaUC|ulaOp[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000000000000000000000100111100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	datab => \BancoRegistradores|ALT_INV_saidaA[31]~30_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datae => \ULA|ALT_INV_saida[31]~100_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[31]~31_combout\,
	combout => \ULA|saida[31]~98_combout\);

\ULA|Equal8~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~20_combout\ = ( \ULA|saida[9]~31_combout\ & ( \ULA|saida[10]~34_combout\ & ( (!\ULA|saida[31]~98_combout\ & (!\ULA|saida[20]~65_combout\ & !\ULA|saida[21]~68_combout\)) ) ) ) # ( !\ULA|saida[9]~31_combout\ & ( \ULA|saida[10]~34_combout\ & ( 
-- (!\ULA|saida[31]~98_combout\ & (!\ULA|saida[20]~65_combout\ & (!\ULA|saida[21]~68_combout\ & !\ULA|saida[1]~6_combout\))) ) ) ) # ( \ULA|saida[9]~31_combout\ & ( !\ULA|saida[10]~34_combout\ & ( (!\ULA|saida[31]~98_combout\ & (!\ULA|saida[20]~65_combout\ & 
-- (!\ULA|saida[21]~68_combout\ & !\ULA|saida[1]~6_combout\))) ) ) ) # ( !\ULA|saida[9]~31_combout\ & ( !\ULA|saida[10]~34_combout\ & ( (!\ULA|saida[31]~98_combout\ & (!\ULA|saida[20]~65_combout\ & (!\ULA|saida[21]~68_combout\ & !\ULA|saida[1]~6_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[31]~98_combout\,
	datab => \ULA|ALT_INV_saida[20]~65_combout\,
	datac => \ULA|ALT_INV_saida[21]~68_combout\,
	datad => \ULA|ALT_INV_saida[1]~6_combout\,
	datae => \ULA|ALT_INV_saida[9]~31_combout\,
	dataf => \ULA|ALT_INV_saida[10]~34_combout\,
	combout => \ULA|Equal8~20_combout\);

\ULA|Equal8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~21_combout\ = (!\ULA|saida[0]~1_combout\ & (!\ULA|saida[31]~97_combout\ & (!\ULA|saida[20]~64_combout\ & !\ULA|saida[21]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[0]~1_combout\,
	datab => \ULA|ALT_INV_saida[31]~97_combout\,
	datac => \ULA|ALT_INV_saida[20]~64_combout\,
	datad => \ULA|ALT_INV_saida[21]~67_combout\,
	combout => \ULA|Equal8~21_combout\);

\ULA|Equal8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~9_combout\ = ( \ULA|Equal8~20_combout\ & ( \ULA|Equal8~21_combout\ & ( (!\ULA|saida[9]~32_combout\ & (!\ULA|saida[10]~35_combout\ & ((!\ULA|saida[0]~0_combout\) # (!\ulaUC|ulaOp[2]~7_combout\)))) ) ) ) # ( \ULA|Equal8~20_combout\ & ( 
-- !\ULA|Equal8~21_combout\ & ( (!\ULA|saida[0]~0_combout\ & (\ulaUC|ulaOp[2]~7_combout\ & (!\ULA|saida[9]~32_combout\ & !\ULA|saida[10]~35_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datac => \ULA|ALT_INV_saida[9]~32_combout\,
	datad => \ULA|ALT_INV_saida[10]~35_combout\,
	datae => \ULA|ALT_INV_Equal8~20_combout\,
	dataf => \ULA|ALT_INV_Equal8~21_combout\,
	combout => \ULA|Equal8~9_combout\);

\ULA|Equal8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~17_combout\ = ( \ULA|saida[1]~3_combout\ & ( \ULA|saida[2]~11_combout\ & ( (!\ULA|saida[23]~74_combout\ & ((!\ULA|saida[1]~6_combout\) # ((\ULA|saida[11]~37_combout\ & \ULA|saida[12]~40_combout\)))) ) ) ) # ( !\ULA|saida[1]~3_combout\ & ( 
-- \ULA|saida[2]~11_combout\ & ( (!\ULA|saida[23]~74_combout\ & !\ULA|saida[1]~6_combout\) ) ) ) # ( \ULA|saida[1]~3_combout\ & ( !\ULA|saida[2]~11_combout\ & ( (!\ULA|saida[23]~74_combout\ & !\ULA|saida[1]~6_combout\) ) ) ) # ( !\ULA|saida[1]~3_combout\ & ( 
-- !\ULA|saida[2]~11_combout\ & ( (!\ULA|saida[23]~74_combout\ & !\ULA|saida[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[23]~74_combout\,
	datab => \ULA|ALT_INV_saida[1]~6_combout\,
	datac => \ULA|ALT_INV_saida[11]~37_combout\,
	datad => \ULA|ALT_INV_saida[12]~40_combout\,
	datae => \ULA|ALT_INV_saida[1]~3_combout\,
	dataf => \ULA|ALT_INV_saida[2]~11_combout\,
	combout => \ULA|Equal8~17_combout\);

\ULA|Equal8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~18_combout\ = ( !\ULA|saida[2]~12_combout\ & ( (!\ULA|saida[22]~71_combout\ & (!\ULA|saida[1]~9_combout\ & ((!\ULA|saida[22]~70_combout\) # (\ulaUC|ulaOp[2]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000000000000000000011010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[22]~70_combout\,
	datac => \ULA|ALT_INV_saida[22]~71_combout\,
	datad => \ULA|ALT_INV_saida[1]~9_combout\,
	datae => \ULA|ALT_INV_saida[2]~12_combout\,
	combout => \ULA|Equal8~18_combout\);

\ULA|Equal8~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~19_combout\ = ( \ULA|saida[23]~73_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & !\ULA|saida[30]~95_combout\) ) ) # ( !\ULA|saida[23]~73_combout\ & ( (!\ULA|saida[30]~95_combout\ & (((!\ULA|saida[29]~91_combout\ & !\ULA|saida[30]~94_combout\)) # 
-- (\ulaUC|ulaOp[2]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010100000000010101010000000011010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[29]~91_combout\,
	datac => \ULA|ALT_INV_saida[30]~94_combout\,
	datad => \ULA|ALT_INV_saida[30]~95_combout\,
	datae => \ULA|ALT_INV_saida[23]~73_combout\,
	combout => \ULA|Equal8~19_combout\);

\ULA|Equal8~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~16_combout\ = ( \ULA|Equal8~18_combout\ & ( \ULA|Equal8~19_combout\ & ( (!\ULA|saida[29]~92_combout\ & (!\ULA|saida[12]~41_combout\ & (!\ULA|saida[11]~38_combout\ & \ULA|Equal8~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[29]~92_combout\,
	datab => \ULA|ALT_INV_saida[12]~41_combout\,
	datac => \ULA|ALT_INV_saida[11]~38_combout\,
	datad => \ULA|ALT_INV_Equal8~17_combout\,
	datae => \ULA|ALT_INV_Equal8~18_combout\,
	dataf => \ULA|ALT_INV_Equal8~19_combout\,
	combout => \ULA|Equal8~16_combout\);

\seletorBranchSignal~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletorBranchSignal~1_combout\ = ( \ULA|Equal8~9_combout\ & ( \ULA|Equal8~16_combout\ & ( (\UC|Equal9~0_combout\ & (\ULA|Equal8~1_combout\ & (\ULA|Equal8~3_combout\ & \ULA|Equal8~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal9~0_combout\,
	datab => \ULA|ALT_INV_Equal8~1_combout\,
	datac => \ULA|ALT_INV_Equal8~3_combout\,
	datad => \ULA|ALT_INV_Equal8~8_combout\,
	datae => \ULA|ALT_INV_Equal8~9_combout\,
	dataf => \ULA|ALT_INV_Equal8~16_combout\,
	combout => \seletorBranchSignal~1_combout\);

\UC|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal8~0_combout\ = ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \UC|Equal8~0_combout\);

\seletorBranchSignal~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletorBranchSignal~2_combout\ = ( \ULA|Equal8~9_combout\ & ( \ULA|Equal8~16_combout\ & ( (\UC|Equal8~0_combout\ & ((!\ULA|Equal8~1_combout\) # ((!\ULA|Equal8~3_combout\) # (!\ULA|Equal8~8_combout\)))) ) ) ) # ( !\ULA|Equal8~9_combout\ & ( 
-- \ULA|Equal8~16_combout\ & ( \UC|Equal8~0_combout\ ) ) ) # ( \ULA|Equal8~9_combout\ & ( !\ULA|Equal8~16_combout\ & ( \UC|Equal8~0_combout\ ) ) ) # ( !\ULA|Equal8~9_combout\ & ( !\ULA|Equal8~16_combout\ & ( \UC|Equal8~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal8~0_combout\,
	datab => \ULA|ALT_INV_Equal8~1_combout\,
	datac => \ULA|ALT_INV_Equal8~3_combout\,
	datad => \ULA|ALT_INV_Equal8~8_combout\,
	datae => \ULA|ALT_INV_Equal8~9_combout\,
	dataf => \ULA|ALT_INV_Equal8~16_combout\,
	combout => \seletorBranchSignal~2_combout\);

\MUXFETCH|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[6]~5_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~17_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~24_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~17_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~24_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~17_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~24_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~21_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~24_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~24_combout\,
	datac => \somaQuatro|ALT_INV_Add0~21_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~17_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[6]~5_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\MUXFETCH|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[5]~3_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~13_sumout\))) # (\UC|Equal11~0_combout\ & (!\ROM|memROM~17_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~13_sumout\))) # (\UC|Equal11~0_combout\ & (!\ROM|memROM~17_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~13_sumout\))) # (\UC|Equal11~0_combout\ & (!\ROM|memROM~17_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~13_sumout\))) # (\UC|Equal11~0_combout\ & (!\ROM|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010001001110111001000100111011100100010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \somaQuatro|ALT_INV_Add0~13_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[5]~3_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = (!\PC|DOUT\(3) & ((!\PC|DOUT\(4) $ (!\PC|DOUT\(5))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (\PC|DOUT\(4) & \PC|DOUT\(5))) # (\PC|DOUT\(2) & (!\PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110011010010000111001101001000011100110100100001110011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~20_combout\);

\ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~23_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~20_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	combout => \ROM|memROM~23_combout\);

\MUXFETCH|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[4]~2_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~9_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~23_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~9_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~23_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~9_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~23_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~9_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \somaQuatro|ALT_INV_Add0~9_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[4]~2_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (!\PC|DOUT\(2) & ((!\PC|DOUT\(3) & ((\PC|DOUT\(5)))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(5)) # (\PC|DOUT\(4)))))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(4) $ (!\PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011111011010001001111101101000100111110110100010011111011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~18_combout\);

\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	combout => \ROM|memROM~19_combout\);

\MUXFETCH|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[3]~1_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~5_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~19_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~5_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~19_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~5_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~19_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~5_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~19_combout\,
	datac => \somaQuatro|ALT_INV_Add0~5_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[3]~1_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\PC|DOUT\(3) & ((!\PC|DOUT\(4) $ (!\PC|DOUT\(5))))) # (\PC|DOUT\(3) & (\PC|DOUT\(2) & (\PC|DOUT\(4) & !\PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110111000000000011011100000000001101110000000000110111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

\MUXFETCH|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[2]~0_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~1_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~12_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~1_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~12_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~1_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~12_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~1_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \somaQuatro|ALT_INV_Add0~1_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~1_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[2]~0_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(4) $ (((\PC|DOUT\(2) & !\PC|DOUT\(5)))))) # (\PC|DOUT\(3) & (((\PC|DOUT\(4) & !\PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011111000000100001111100000010000111110000001000011111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~2_combout\);

\UC|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal11~0_combout\ = ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \UC|Equal11~0_combout\);

\somaQuatro|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somaQuatro|Add0~22\ ))
-- \somaQuatro|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \somaQuatro|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somaQuatro|Add0~22\,
	sumout => \somaQuatro|Add0~17_sumout\,
	cout => \somaQuatro|Add0~18\);

\somaSHIFT|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~21_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~22_combout\)) ) + ( \somaQuatro|Add0~17_sumout\ ) + ( \somaSHIFT|Add0~18\ ))
-- \somaSHIFT|Add0~22\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~22_combout\)) ) + ( \somaQuatro|Add0~17_sumout\ ) + ( \somaSHIFT|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~17_sumout\,
	cin => \somaSHIFT|Add0~18\,
	sumout => \somaSHIFT|Add0~21_sumout\,
	cout => \somaSHIFT|Add0~22\);

\MUXFETCH|saida_MUX[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[7]~4_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~21_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~25_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~21_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~25_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~21_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~25_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~17_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~25_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~25_combout\,
	datac => \somaQuatro|ALT_INV_Add0~17_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~21_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[7]~4_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\PC|DOUT\(7) & !\PC|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~0_combout\);

\UC|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal10~0_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \UC|Equal10~0_combout\);

\BancoRegistradores|registrador~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[0]~2_combout\,
	sclr => \UC|Equal10~0_combout\,
	ena => \BancoRegistradores|registrador~1330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~326_q\);

\BancoRegistradores|registrador~1321\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1321_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~28_combout\ & ( \ROM|memROM~29_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~29_combout\ & ((\BancoRegistradores|registrador~38_q\))) # (\ROM|memROM~29_combout\ & 
-- (!\BancoRegistradores|registrador~70_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~70_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~38_q\,
	datad => \ROM|ALT_INV_memROM~29_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \BancoRegistradores|registrador~1321_combout\);

\BancoRegistradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1062_combout\ = ( \ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1321_combout\ & ( !\ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \BancoRegistradores|registrador~1321_combout\ & ( 
-- (!\ROM|memROM~28_combout\) # (\BancoRegistradores|registrador~326_q\) ) ) ) # ( \ROM|memROM~1_combout\ & ( !\BancoRegistradores|registrador~1321_combout\ & ( \ROM|memROM~28_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- !\BancoRegistradores|registrador~1321_combout\ & ( (\BancoRegistradores|registrador~294_q\ & \ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~326_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~294_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1321_combout\,
	combout => \BancoRegistradores|registrador~1062_combout\);

\ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~0_combout\ = ( \ulaUC|ulaOp[0]~6_combout\ & ( \ULA|Add1~1_sumout\ & ( (!\ulaUC|ulaOp[1]~3_combout\) # ((\BancoRegistradores|registrador~1062_combout\ & (\BancoRegistradores|Equal1~0_combout\ & \MUXRegImed|saida_MUX[0]~0_combout\))) ) ) ) # ( 
-- !\ulaUC|ulaOp[0]~6_combout\ & ( \ULA|Add1~1_sumout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & ((!\BancoRegistradores|registrador~1062_combout\) # ((!\BancoRegistradores|Equal1~0_combout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & 
-- (((\BancoRegistradores|registrador~1062_combout\ & \BancoRegistradores|Equal1~0_combout\)) # (\MUXRegImed|saida_MUX[0]~0_combout\))) ) ) ) # ( \ulaUC|ulaOp[0]~6_combout\ & ( !\ULA|Add1~1_sumout\ & ( (\BancoRegistradores|registrador~1062_combout\ & 
-- (\BancoRegistradores|Equal1~0_combout\ & (\MUXRegImed|saida_MUX[0]~0_combout\ & \ulaUC|ulaOp[1]~3_combout\))) ) ) ) # ( !\ulaUC|ulaOp[0]~6_combout\ & ( !\ULA|Add1~1_sumout\ & ( (!\ulaUC|ulaOp[1]~3_combout\ & 
-- ((!\BancoRegistradores|registrador~1062_combout\) # ((!\BancoRegistradores|Equal1~0_combout\)))) # (\ulaUC|ulaOp[1]~3_combout\ & (((\BancoRegistradores|registrador~1062_combout\ & \BancoRegistradores|Equal1~0_combout\)) # 
-- (\MUXRegImed|saida_MUX[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000011111000000000000000111101110000111111111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~1062_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal1~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~6_combout\,
	dataf => \ULA|ALT_INV_Add1~1_sumout\,
	combout => \ULA|saida[0]~0_combout\);

\ULA|saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~2_combout\ = (!\ulaUC|ulaOp[2]~7_combout\ & ((\ULA|saida[0]~1_combout\))) # (\ulaUC|ulaOp[2]~7_combout\ & (\ULA|saida[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datac => \ULA|ALT_INV_saida[0]~1_combout\,
	combout => \ULA|saida[0]~2_combout\);

\somaQuatro|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~25_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \somaQuatro|Add0~18\ ))
-- \somaQuatro|Add0~26\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \somaQuatro|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \somaQuatro|Add0~18\,
	sumout => \somaQuatro|Add0~25_sumout\,
	cout => \somaQuatro|Add0~26\);

\somaSHIFT|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~25_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~25_sumout\ ) + ( \somaSHIFT|Add0~22\ ))
-- \somaSHIFT|Add0~26\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~25_sumout\ ) + ( \somaSHIFT|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~25_sumout\,
	cin => \somaSHIFT|Add0~22\,
	sumout => \somaSHIFT|Add0~25_sumout\,
	cout => \somaSHIFT|Add0~26\);

\MUXFETCH|saida_MUX[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[8]~6_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~25_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~25_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~25_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~25_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \somaQuatro|ALT_INV_Add0~25_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[8]~6_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\somaQuatro|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~29_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \somaQuatro|Add0~26\ ))
-- \somaQuatro|Add0~30\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \somaQuatro|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \somaQuatro|Add0~26\,
	sumout => \somaQuatro|Add0~29_sumout\,
	cout => \somaQuatro|Add0~30\);

\somaSHIFT|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~29_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~29_sumout\ ) + ( \somaSHIFT|Add0~26\ ))
-- \somaSHIFT|Add0~30\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~29_sumout\ ) + ( \somaSHIFT|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~29_sumout\,
	cin => \somaSHIFT|Add0~26\,
	sumout => \somaSHIFT|Add0~29_sumout\,
	cout => \somaSHIFT|Add0~30\);

\MUXFETCH|saida_MUX[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[9]~7_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~29_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~29_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~29_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~29_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \somaQuatro|ALT_INV_Add0~29_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~29_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[9]~7_combout\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\somaQuatro|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~33_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \somaQuatro|Add0~30\ ))
-- \somaQuatro|Add0~34\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \somaQuatro|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \somaQuatro|Add0~30\,
	sumout => \somaQuatro|Add0~33_sumout\,
	cout => \somaQuatro|Add0~34\);

\somaSHIFT|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~33_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~33_sumout\ ) + ( \somaSHIFT|Add0~30\ ))
-- \somaSHIFT|Add0~34\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~33_sumout\ ) + ( \somaSHIFT|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~33_sumout\,
	cin => \somaSHIFT|Add0~30\,
	sumout => \somaSHIFT|Add0~33_sumout\,
	cout => \somaSHIFT|Add0~34\);

\MUXFETCH|saida_MUX[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[10]~8_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~33_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~33_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~33_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~33_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \somaQuatro|ALT_INV_Add0~33_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~33_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[10]~8_combout\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[10]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\somaQuatro|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~37_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \somaQuatro|Add0~34\ ))
-- \somaQuatro|Add0~38\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \somaQuatro|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \somaQuatro|Add0~34\,
	sumout => \somaQuatro|Add0~37_sumout\,
	cout => \somaQuatro|Add0~38\);

\somaSHIFT|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~37_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~37_sumout\ ) + ( \somaSHIFT|Add0~34\ ))
-- \somaSHIFT|Add0~38\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~37_sumout\ ) + ( \somaSHIFT|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~37_sumout\,
	cin => \somaSHIFT|Add0~34\,
	sumout => \somaSHIFT|Add0~37_sumout\,
	cout => \somaSHIFT|Add0~38\);

\MUXFETCH|saida_MUX[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[11]~9_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~37_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~37_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~37_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~37_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \somaQuatro|ALT_INV_Add0~37_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~37_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[11]~9_combout\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\somaQuatro|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~41_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \somaQuatro|Add0~38\ ))
-- \somaQuatro|Add0~42\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \somaQuatro|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \somaQuatro|Add0~38\,
	sumout => \somaQuatro|Add0~41_sumout\,
	cout => \somaQuatro|Add0~42\);

\somaSHIFT|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~41_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~41_sumout\ ) + ( \somaSHIFT|Add0~38\ ))
-- \somaSHIFT|Add0~42\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~41_sumout\ ) + ( \somaSHIFT|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~41_sumout\,
	cin => \somaSHIFT|Add0~38\,
	sumout => \somaSHIFT|Add0~41_sumout\,
	cout => \somaSHIFT|Add0~42\);

\MUXFETCH|saida_MUX[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[12]~10_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~41_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~41_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~41_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~41_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \somaQuatro|ALT_INV_Add0~41_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~41_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[12]~10_combout\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\somaQuatro|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~45_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \somaQuatro|Add0~42\ ))
-- \somaQuatro|Add0~46\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \somaQuatro|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \somaQuatro|Add0~42\,
	sumout => \somaQuatro|Add0~45_sumout\,
	cout => \somaQuatro|Add0~46\);

\somaSHIFT|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~45_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~45_sumout\ ) + ( \somaSHIFT|Add0~42\ ))
-- \somaSHIFT|Add0~46\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~45_sumout\ ) + ( \somaSHIFT|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~45_sumout\,
	cin => \somaSHIFT|Add0~42\,
	sumout => \somaSHIFT|Add0~45_sumout\,
	cout => \somaSHIFT|Add0~46\);

\MUXFETCH|saida_MUX[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[13]~11_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~45_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~45_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~45_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~45_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \somaQuatro|ALT_INV_Add0~45_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~45_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[13]~11_combout\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\somaQuatro|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~49_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \somaQuatro|Add0~46\ ))
-- \somaQuatro|Add0~50\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \somaQuatro|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \somaQuatro|Add0~46\,
	sumout => \somaQuatro|Add0~49_sumout\,
	cout => \somaQuatro|Add0~50\);

\somaSHIFT|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~49_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~49_sumout\ ) + ( \somaSHIFT|Add0~46\ ))
-- \somaSHIFT|Add0~50\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~49_sumout\ ) + ( \somaSHIFT|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~49_sumout\,
	cin => \somaSHIFT|Add0~46\,
	sumout => \somaSHIFT|Add0~49_sumout\,
	cout => \somaSHIFT|Add0~50\);

\MUXFETCH|saida_MUX[14]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[14]~12_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~49_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~49_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~49_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~49_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \somaQuatro|ALT_INV_Add0~49_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~49_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[14]~12_combout\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[14]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\somaQuatro|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~53_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \somaQuatro|Add0~50\ ))
-- \somaQuatro|Add0~54\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \somaQuatro|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \somaQuatro|Add0~50\,
	sumout => \somaQuatro|Add0~53_sumout\,
	cout => \somaQuatro|Add0~54\);

\somaSHIFT|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~53_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~53_sumout\ ) + ( \somaSHIFT|Add0~50\ ))
-- \somaSHIFT|Add0~54\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~53_sumout\ ) + ( \somaSHIFT|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~53_sumout\,
	cin => \somaSHIFT|Add0~50\,
	sumout => \somaSHIFT|Add0~53_sumout\,
	cout => \somaSHIFT|Add0~54\);

\MUXFETCH|saida_MUX[15]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[15]~13_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~53_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~53_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~53_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~53_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \somaQuatro|ALT_INV_Add0~53_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~53_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[15]~13_combout\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[15]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\somaQuatro|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~57_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \somaQuatro|Add0~54\ ))
-- \somaQuatro|Add0~58\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \somaQuatro|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \somaQuatro|Add0~54\,
	sumout => \somaQuatro|Add0~57_sumout\,
	cout => \somaQuatro|Add0~58\);

\somaSHIFT|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~57_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~22_combout\)) ) + ( \somaQuatro|Add0~57_sumout\ ) + ( \somaSHIFT|Add0~54\ ))
-- \somaSHIFT|Add0~58\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~22_combout\)) ) + ( \somaQuatro|Add0~57_sumout\ ) + ( \somaSHIFT|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~57_sumout\,
	cin => \somaSHIFT|Add0~54\,
	sumout => \somaSHIFT|Add0~57_sumout\,
	cout => \somaSHIFT|Add0~58\);

\MUXFETCH|saida_MUX[16]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[16]~14_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~57_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~25_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~57_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~25_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~57_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~25_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~57_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~25_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~25_combout\,
	datac => \somaQuatro|ALT_INV_Add0~57_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~57_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[16]~14_combout\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\somaQuatro|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~61_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \somaQuatro|Add0~58\ ))
-- \somaQuatro|Add0~62\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \somaQuatro|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \somaQuatro|Add0~58\,
	sumout => \somaQuatro|Add0~61_sumout\,
	cout => \somaQuatro|Add0~62\);

\somaSHIFT|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~61_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~61_sumout\ ) + ( \somaSHIFT|Add0~58\ ))
-- \somaSHIFT|Add0~62\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~61_sumout\ ) + ( \somaSHIFT|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~61_sumout\,
	cin => \somaSHIFT|Add0~58\,
	sumout => \somaSHIFT|Add0~61_sumout\,
	cout => \somaSHIFT|Add0~62\);

\MUXFETCH|saida_MUX[17]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[17]~15_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~61_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~61_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~61_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~61_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \somaQuatro|ALT_INV_Add0~61_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~61_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[17]~15_combout\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\somaQuatro|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~65_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \somaQuatro|Add0~62\ ))
-- \somaQuatro|Add0~66\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \somaQuatro|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \somaQuatro|Add0~62\,
	sumout => \somaQuatro|Add0~65_sumout\,
	cout => \somaQuatro|Add0~66\);

\somaSHIFT|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~65_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~65_sumout\ ) + ( \somaSHIFT|Add0~62\ ))
-- \somaSHIFT|Add0~66\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~65_sumout\ ) + ( \somaSHIFT|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~65_sumout\,
	cin => \somaSHIFT|Add0~62\,
	sumout => \somaSHIFT|Add0~65_sumout\,
	cout => \somaSHIFT|Add0~66\);

\MUXFETCH|saida_MUX[18]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[18]~16_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~65_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~13_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~65_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~13_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~65_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~13_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~65_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \somaQuatro|ALT_INV_Add0~65_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~65_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[18]~16_combout\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[18]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\somaQuatro|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~69_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \somaQuatro|Add0~66\ ))
-- \somaQuatro|Add0~70\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \somaQuatro|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \somaQuatro|Add0~66\,
	sumout => \somaQuatro|Add0~69_sumout\,
	cout => \somaQuatro|Add0~70\);

\somaSHIFT|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~69_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~69_sumout\ ) + ( \somaSHIFT|Add0~66\ ))
-- \somaSHIFT|Add0~70\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~69_sumout\ ) + ( \somaSHIFT|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~69_sumout\,
	cin => \somaSHIFT|Add0~66\,
	sumout => \somaSHIFT|Add0~69_sumout\,
	cout => \somaSHIFT|Add0~70\);

\MUXFETCH|saida_MUX[19]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[19]~17_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~69_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~14_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~69_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~14_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~69_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~14_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~69_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \somaQuatro|ALT_INV_Add0~69_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~69_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[19]~17_combout\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[19]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\somaQuatro|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~73_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \somaQuatro|Add0~70\ ))
-- \somaQuatro|Add0~74\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \somaQuatro|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \somaQuatro|Add0~70\,
	sumout => \somaQuatro|Add0~73_sumout\,
	cout => \somaQuatro|Add0~74\);

\somaSHIFT|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~73_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~73_sumout\ ) + ( \somaSHIFT|Add0~70\ ))
-- \somaSHIFT|Add0~74\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~73_sumout\ ) + ( \somaSHIFT|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~73_sumout\,
	cin => \somaSHIFT|Add0~70\,
	sumout => \somaSHIFT|Add0~73_sumout\,
	cout => \somaSHIFT|Add0~74\);

\MUXFETCH|saida_MUX[20]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[20]~18_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~73_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~10_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~73_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~10_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~73_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~10_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~73_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \somaQuatro|ALT_INV_Add0~73_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[20]~18_combout\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[20]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\somaQuatro|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~77_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \somaQuatro|Add0~74\ ))
-- \somaQuatro|Add0~78\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \somaQuatro|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \somaQuatro|Add0~74\,
	sumout => \somaQuatro|Add0~77_sumout\,
	cout => \somaQuatro|Add0~78\);

\somaSHIFT|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~77_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~77_sumout\ ) + ( \somaSHIFT|Add0~74\ ))
-- \somaSHIFT|Add0~78\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~77_sumout\ ) + ( \somaSHIFT|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~77_sumout\,
	cin => \somaSHIFT|Add0~74\,
	sumout => \somaSHIFT|Add0~77_sumout\,
	cout => \somaSHIFT|Add0~78\);

\MUXFETCH|saida_MUX[21]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[21]~19_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~77_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~9_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~77_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~9_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~77_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~9_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~77_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \somaQuatro|ALT_INV_Add0~77_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~77_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[21]~19_combout\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\somaQuatro|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~81_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \somaQuatro|Add0~78\ ))
-- \somaQuatro|Add0~82\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \somaQuatro|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \somaQuatro|Add0~78\,
	sumout => \somaQuatro|Add0~81_sumout\,
	cout => \somaQuatro|Add0~82\);

\somaSHIFT|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~81_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~81_sumout\ ) + ( \somaSHIFT|Add0~78\ ))
-- \somaSHIFT|Add0~82\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~81_sumout\ ) + ( \somaSHIFT|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~81_sumout\,
	cin => \somaSHIFT|Add0~78\,
	sumout => \somaSHIFT|Add0~81_sumout\,
	cout => \somaSHIFT|Add0~82\);

\ULA|Equal8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~10_combout\ = ( \ULA|Equal8~17_combout\ & ( \ULA|Equal8~18_combout\ & ( (!\ULA|saida[12]~41_combout\ & (!\ULA|saida[11]~38_combout\ & ((!\ULA|saida[23]~73_combout\) # (\ulaUC|ulaOp[2]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[23]~73_combout\,
	datac => \ULA|ALT_INV_saida[12]~41_combout\,
	datad => \ULA|ALT_INV_saida[11]~38_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \ULA|ALT_INV_Equal8~18_combout\,
	combout => \ULA|Equal8~10_combout\);

\ULA|Equal8~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~11_combout\ = ( !\ULA|saida[30]~95_combout\ & ( (!\ULA|saida[29]~92_combout\ & (((!\ULA|saida[29]~91_combout\ & !\ULA|saida[30]~94_combout\)) # (\ulaUC|ulaOp[2]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001010000000000000000000011010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[29]~91_combout\,
	datac => \ULA|ALT_INV_saida[29]~92_combout\,
	datad => \ULA|ALT_INV_saida[30]~94_combout\,
	datae => \ULA|ALT_INV_saida[30]~95_combout\,
	combout => \ULA|Equal8~11_combout\);

\ULA|Equal8~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~12_combout\ = ( \ULA|Equal8~10_combout\ & ( \ULA|Equal8~11_combout\ & ( (\ULA|Equal8~1_combout\ & (\ULA|Equal8~3_combout\ & (\ULA|Equal8~8_combout\ & \ULA|Equal8~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal8~1_combout\,
	datab => \ULA|ALT_INV_Equal8~3_combout\,
	datac => \ULA|ALT_INV_Equal8~8_combout\,
	datad => \ULA|ALT_INV_Equal8~9_combout\,
	datae => \ULA|ALT_INV_Equal8~10_combout\,
	dataf => \ULA|ALT_INV_Equal8~11_combout\,
	combout => \ULA|Equal8~12_combout\);

\MUXFETCH|saida_MUX[22]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[22]~20_combout\ = ( \UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & \somaSHIFT|Add0~81_sumout\) ) ) ) # ( !\UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & 
-- \somaQuatro|Add0~81_sumout\) ) ) ) # ( \UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~81_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~81_sumout\))))) ) ) ) # ( 
-- !\UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~81_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~81_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001010000010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \UC|ALT_INV_Equal8~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~81_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~81_sumout\,
	datae => \UC|ALT_INV_Equal9~0_combout\,
	dataf => \ULA|ALT_INV_Equal8~12_combout\,
	combout => \MUXFETCH|saida_MUX[22]~20_combout\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\somaQuatro|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~85_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \somaQuatro|Add0~82\ ))
-- \somaQuatro|Add0~86\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \somaQuatro|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \somaQuatro|Add0~82\,
	sumout => \somaQuatro|Add0~85_sumout\,
	cout => \somaQuatro|Add0~86\);

\somaSHIFT|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~85_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~85_sumout\ ) + ( \somaSHIFT|Add0~82\ ))
-- \somaSHIFT|Add0~86\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~85_sumout\ ) + ( \somaSHIFT|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~85_sumout\,
	cin => \somaSHIFT|Add0~82\,
	sumout => \somaSHIFT|Add0~85_sumout\,
	cout => \somaSHIFT|Add0~86\);

\MUXFETCH|saida_MUX[23]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[23]~21_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~85_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~29_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~85_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~29_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~85_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~29_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~85_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~29_combout\,
	datab => \UC|ALT_INV_Equal11~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~85_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~85_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[23]~21_combout\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[23]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\somaQuatro|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~89_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \somaQuatro|Add0~86\ ))
-- \somaQuatro|Add0~90\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \somaQuatro|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \somaQuatro|Add0~86\,
	sumout => \somaQuatro|Add0~89_sumout\,
	cout => \somaQuatro|Add0~90\);

\somaSHIFT|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~89_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~89_sumout\ ) + ( \somaSHIFT|Add0~86\ ))
-- \somaSHIFT|Add0~90\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~89_sumout\ ) + ( \somaSHIFT|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~89_sumout\,
	cin => \somaSHIFT|Add0~86\,
	sumout => \somaSHIFT|Add0~89_sumout\,
	cout => \somaSHIFT|Add0~90\);

\MUXFETCH|saida_MUX[24]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[24]~22_combout\ = ( \UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & \somaSHIFT|Add0~89_sumout\) ) ) ) # ( !\UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & 
-- \somaQuatro|Add0~89_sumout\) ) ) ) # ( \UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~89_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~89_sumout\))))) ) ) ) # ( 
-- !\UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~89_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~89_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001010000010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \UC|ALT_INV_Equal8~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~89_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~89_sumout\,
	datae => \UC|ALT_INV_Equal9~0_combout\,
	dataf => \ULA|ALT_INV_Equal8~12_combout\,
	combout => \MUXFETCH|saida_MUX[24]~22_combout\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[24]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\somaQuatro|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~93_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \somaQuatro|Add0~90\ ))
-- \somaQuatro|Add0~94\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \somaQuatro|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \somaQuatro|Add0~90\,
	sumout => \somaQuatro|Add0~93_sumout\,
	cout => \somaQuatro|Add0~94\);

\somaSHIFT|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~93_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~93_sumout\ ) + ( \somaSHIFT|Add0~90\ ))
-- \somaSHIFT|Add0~94\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~93_sumout\ ) + ( \somaSHIFT|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~93_sumout\,
	cin => \somaSHIFT|Add0~90\,
	sumout => \somaSHIFT|Add0~93_sumout\,
	cout => \somaSHIFT|Add0~94\);

\MUXFETCH|saida_MUX[25]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[25]~23_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~93_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~1_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~93_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~1_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~93_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~1_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~93_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \UC|ALT_INV_Equal11~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~93_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~93_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[25]~23_combout\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[25]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\somaQuatro|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~97_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \somaQuatro|Add0~94\ ))
-- \somaQuatro|Add0~98\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \somaQuatro|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \somaQuatro|Add0~94\,
	sumout => \somaQuatro|Add0~97_sumout\,
	cout => \somaQuatro|Add0~98\);

\somaSHIFT|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~97_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~97_sumout\ ) + ( \somaSHIFT|Add0~94\ ))
-- \somaSHIFT|Add0~98\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~97_sumout\ ) + ( \somaSHIFT|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~97_sumout\,
	cin => \somaSHIFT|Add0~94\,
	sumout => \somaSHIFT|Add0~97_sumout\,
	cout => \somaSHIFT|Add0~98\);

\MUXFETCH|saida_MUX[26]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[26]~24_combout\ = ( \seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~97_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~28_combout\)) ) ) ) # ( 
-- !\seletorBranchSignal~1_combout\ & ( \seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~97_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~28_combout\)) ) ) ) # ( \seletorBranchSignal~1_combout\ & ( 
-- !\seletorBranchSignal~2_combout\ & ( (!\UC|Equal11~0_combout\ & ((\somaSHIFT|Add0~97_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~28_combout\)) ) ) ) # ( !\seletorBranchSignal~1_combout\ & ( !\seletorBranchSignal~2_combout\ & ( 
-- (!\UC|Equal11~0_combout\ & ((\somaQuatro|Add0~97_sumout\))) # (\UC|Equal11~0_combout\ & (\ROM|memROM~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \UC|ALT_INV_Equal11~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~97_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~97_sumout\,
	datae => \ALT_INV_seletorBranchSignal~1_combout\,
	dataf => \ALT_INV_seletorBranchSignal~2_combout\,
	combout => \MUXFETCH|saida_MUX[26]~24_combout\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[26]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\somaQuatro|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~101_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \somaQuatro|Add0~98\ ))
-- \somaQuatro|Add0~102\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \somaQuatro|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \somaQuatro|Add0~98\,
	sumout => \somaQuatro|Add0~101_sumout\,
	cout => \somaQuatro|Add0~102\);

\somaSHIFT|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~101_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~101_sumout\ ) + ( \somaSHIFT|Add0~98\ ))
-- \somaSHIFT|Add0~102\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~101_sumout\ ) + ( \somaSHIFT|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~101_sumout\,
	cin => \somaSHIFT|Add0~98\,
	sumout => \somaSHIFT|Add0~101_sumout\,
	cout => \somaSHIFT|Add0~102\);

\MUXFETCH|saida_MUX[27]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[27]~25_combout\ = ( \UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & \somaSHIFT|Add0~101_sumout\) ) ) ) # ( !\UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & 
-- \somaQuatro|Add0~101_sumout\) ) ) ) # ( \UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~101_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~101_sumout\))))) ) ) ) # ( 
-- !\UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~101_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~101_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001010000010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \UC|ALT_INV_Equal8~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~101_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~101_sumout\,
	datae => \UC|ALT_INV_Equal9~0_combout\,
	dataf => \ULA|ALT_INV_Equal8~12_combout\,
	combout => \MUXFETCH|saida_MUX[27]~25_combout\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[27]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\somaQuatro|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~105_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \somaQuatro|Add0~102\ ))
-- \somaQuatro|Add0~106\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \somaQuatro|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \somaQuatro|Add0~102\,
	sumout => \somaQuatro|Add0~105_sumout\,
	cout => \somaQuatro|Add0~106\);

\somaSHIFT|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~105_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~105_sumout\ ) + ( \somaSHIFT|Add0~102\ ))
-- \somaSHIFT|Add0~106\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~105_sumout\ ) + ( \somaSHIFT|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~105_sumout\,
	cin => \somaSHIFT|Add0~102\,
	sumout => \somaSHIFT|Add0~105_sumout\,
	cout => \somaSHIFT|Add0~106\);

\MUXFETCH|saida_MUX[28]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[28]~26_combout\ = ( \UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & \somaSHIFT|Add0~105_sumout\) ) ) ) # ( !\UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & 
-- \somaQuatro|Add0~105_sumout\) ) ) ) # ( \UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~105_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~105_sumout\))))) ) ) ) # ( 
-- !\UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~105_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~105_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001010000010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \UC|ALT_INV_Equal8~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~105_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~105_sumout\,
	datae => \UC|ALT_INV_Equal9~0_combout\,
	dataf => \ULA|ALT_INV_Equal8~12_combout\,
	combout => \MUXFETCH|saida_MUX[28]~26_combout\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[28]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\somaQuatro|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~109_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \somaQuatro|Add0~106\ ))
-- \somaQuatro|Add0~110\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \somaQuatro|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \somaQuatro|Add0~106\,
	sumout => \somaQuatro|Add0~109_sumout\,
	cout => \somaQuatro|Add0~110\);

\somaSHIFT|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~109_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~109_sumout\ ) + ( \somaSHIFT|Add0~106\ ))
-- \somaSHIFT|Add0~110\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~109_sumout\ ) + ( \somaSHIFT|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~109_sumout\,
	cin => \somaSHIFT|Add0~106\,
	sumout => \somaSHIFT|Add0~109_sumout\,
	cout => \somaSHIFT|Add0~110\);

\MUXFETCH|saida_MUX[29]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[29]~27_combout\ = ( \UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & \somaSHIFT|Add0~109_sumout\) ) ) ) # ( !\UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & 
-- \somaQuatro|Add0~109_sumout\) ) ) ) # ( \UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~109_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~109_sumout\))))) ) ) ) # ( 
-- !\UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~109_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~109_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001010000010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \UC|ALT_INV_Equal8~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~109_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~109_sumout\,
	datae => \UC|ALT_INV_Equal9~0_combout\,
	dataf => \ULA|ALT_INV_Equal8~12_combout\,
	combout => \MUXFETCH|saida_MUX[29]~27_combout\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[29]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\somaQuatro|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~113_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \somaQuatro|Add0~110\ ))
-- \somaQuatro|Add0~114\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \somaQuatro|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \somaQuatro|Add0~110\,
	sumout => \somaQuatro|Add0~113_sumout\,
	cout => \somaQuatro|Add0~114\);

\somaSHIFT|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~113_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~113_sumout\ ) + ( \somaSHIFT|Add0~110\ ))
-- \somaSHIFT|Add0~114\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~113_sumout\ ) + ( \somaSHIFT|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~113_sumout\,
	cin => \somaSHIFT|Add0~110\,
	sumout => \somaSHIFT|Add0~113_sumout\,
	cout => \somaSHIFT|Add0~114\);

\MUXFETCH|saida_MUX[30]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[30]~28_combout\ = ( \UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & \somaSHIFT|Add0~113_sumout\) ) ) ) # ( !\UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & 
-- \somaQuatro|Add0~113_sumout\) ) ) ) # ( \UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~113_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~113_sumout\))))) ) ) ) # ( 
-- !\UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~113_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~113_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001010000010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \UC|ALT_INV_Equal8~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~113_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~113_sumout\,
	datae => \UC|ALT_INV_Equal9~0_combout\,
	dataf => \ULA|ALT_INV_Equal8~12_combout\,
	combout => \MUXFETCH|saida_MUX[30]~28_combout\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[30]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\somaQuatro|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~117_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \somaQuatro|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \somaQuatro|Add0~114\,
	sumout => \somaQuatro|Add0~117_sumout\);

\somaSHIFT|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~117_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~26_combout\)) ) + ( \somaQuatro|Add0~117_sumout\ ) + ( \somaSHIFT|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~117_sumout\,
	cin => \somaSHIFT|Add0~114\,
	sumout => \somaSHIFT|Add0~117_sumout\);

\MUXFETCH|saida_MUX[31]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[31]~29_combout\ = ( \UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & \somaSHIFT|Add0~117_sumout\) ) ) ) # ( !\UC|Equal9~0_combout\ & ( \ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & 
-- \somaQuatro|Add0~117_sumout\) ) ) ) # ( \UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~117_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~117_sumout\))))) ) ) ) # ( 
-- !\UC|Equal9~0_combout\ & ( !\ULA|Equal8~12_combout\ & ( (!\UC|Equal11~0_combout\ & ((!\UC|Equal8~0_combout\ & (\somaQuatro|Add0~117_sumout\)) # (\UC|Equal8~0_combout\ & ((\somaSHIFT|Add0~117_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001010000010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal11~0_combout\,
	datab => \UC|ALT_INV_Equal8~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~117_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~117_sumout\,
	datae => \UC|ALT_INV_Equal9~0_combout\,
	dataf => \ULA|ALT_INV_Equal8~12_combout\,
	combout => \MUXFETCH|saida_MUX[31]~29_combout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[31]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

\ULA|Equal8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~13_combout\ = ( \ULA|saida[26]~82_combout\ & ( !\ULA|saida[26]~83_combout\ & ( (\ulaUC|ulaOp[2]~7_combout\ & (!\ULA|saida[16]~54_combout\ & !\ULA|saida[17]~56_combout\)) ) ) ) # ( !\ULA|saida[26]~82_combout\ & ( !\ULA|saida[26]~83_combout\ & ( 
-- (!\ULA|saida[16]~54_combout\ & (!\ULA|saida[17]~56_combout\ & ((!\ULA|saida[17]~55_combout\) # (\ulaUC|ulaOp[2]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[16]~54_combout\,
	datac => \ULA|ALT_INV_saida[17]~55_combout\,
	datad => \ULA|ALT_INV_saida[17]~56_combout\,
	datae => \ULA|ALT_INV_saida[26]~82_combout\,
	dataf => \ULA|ALT_INV_saida[26]~83_combout\,
	combout => \ULA|Equal8~13_combout\);

\ULA|Equal8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~14_combout\ = (!\ULA|saida[24]~77_combout\ & (\ULA|Equal8~7_combout\ & ((!\ULA|saida[24]~76_combout\) # (\ulaUC|ulaOp[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010000000000001101000000000000110100000000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[24]~76_combout\,
	datac => \ULA|ALT_INV_saida[24]~77_combout\,
	datad => \ULA|ALT_INV_Equal8~7_combout\,
	combout => \ULA|Equal8~14_combout\);

\ULA|Equal8~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~15_combout\ = ( \ULA|Equal8~5_combout\ & ( \ULA|Equal8~14_combout\ & ( (!\ULA|saida[27]~86_combout\ & (\ULA|Equal8~13_combout\ & ((!\ULA|saida[27]~85_combout\) # (\ulaUC|ulaOp[2]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[2]~7_combout\,
	datab => \ULA|ALT_INV_saida[27]~85_combout\,
	datac => \ULA|ALT_INV_saida[27]~86_combout\,
	datad => \ULA|ALT_INV_Equal8~13_combout\,
	datae => \ULA|ALT_INV_Equal8~5_combout\,
	dataf => \ULA|ALT_INV_Equal8~14_combout\,
	combout => \ULA|Equal8~15_combout\);

\seletorBranchSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seletorBranchSignal~0_combout\ = ( \ULA|Equal8~9_combout\ & ( \ULA|Equal8~16_combout\ & ( (!\ULA|Equal8~1_combout\ & (\UC|Equal8~0_combout\)) # (\ULA|Equal8~1_combout\ & ((!\ULA|Equal8~15_combout\ & (\UC|Equal8~0_combout\)) # (\ULA|Equal8~15_combout\ & 
-- ((\UC|Equal9~0_combout\))))) ) ) ) # ( !\ULA|Equal8~9_combout\ & ( \ULA|Equal8~16_combout\ & ( \UC|Equal8~0_combout\ ) ) ) # ( \ULA|Equal8~9_combout\ & ( !\ULA|Equal8~16_combout\ & ( \UC|Equal8~0_combout\ ) ) ) # ( !\ULA|Equal8~9_combout\ & ( 
-- !\ULA|Equal8~16_combout\ & ( \UC|Equal8~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal8~0_combout\,
	datab => \UC|ALT_INV_Equal9~0_combout\,
	datac => \ULA|ALT_INV_Equal8~1_combout\,
	datad => \ULA|ALT_INV_Equal8~15_combout\,
	datae => \ULA|ALT_INV_Equal8~9_combout\,
	dataf => \ULA|ALT_INV_Equal8~16_combout\,
	combout => \seletorBranchSignal~0_combout\);

ww_ULAout(0) <= \ULAout[0]~output_o\;

ww_ULAout(1) <= \ULAout[1]~output_o\;

ww_ULAout(2) <= \ULAout[2]~output_o\;

ww_ULAout(3) <= \ULAout[3]~output_o\;

ww_ULAout(4) <= \ULAout[4]~output_o\;

ww_ULAout(5) <= \ULAout[5]~output_o\;

ww_ULAout(6) <= \ULAout[6]~output_o\;

ww_ULAout(7) <= \ULAout[7]~output_o\;

ww_ULAout(8) <= \ULAout[8]~output_o\;

ww_ULAout(9) <= \ULAout[9]~output_o\;

ww_ULAout(10) <= \ULAout[10]~output_o\;

ww_ULAout(11) <= \ULAout[11]~output_o\;

ww_ULAout(12) <= \ULAout[12]~output_o\;

ww_ULAout(13) <= \ULAout[13]~output_o\;

ww_ULAout(14) <= \ULAout[14]~output_o\;

ww_ULAout(15) <= \ULAout[15]~output_o\;

ww_ULAout(16) <= \ULAout[16]~output_o\;

ww_ULAout(17) <= \ULAout[17]~output_o\;

ww_ULAout(18) <= \ULAout[18]~output_o\;

ww_ULAout(19) <= \ULAout[19]~output_o\;

ww_ULAout(20) <= \ULAout[20]~output_o\;

ww_ULAout(21) <= \ULAout[21]~output_o\;

ww_ULAout(22) <= \ULAout[22]~output_o\;

ww_ULAout(23) <= \ULAout[23]~output_o\;

ww_ULAout(24) <= \ULAout[24]~output_o\;

ww_ULAout(25) <= \ULAout[25]~output_o\;

ww_ULAout(26) <= \ULAout[26]~output_o\;

ww_ULAout(27) <= \ULAout[27]~output_o\;

ww_ULAout(28) <= \ULAout[28]~output_o\;

ww_ULAout(29) <= \ULAout[29]~output_o\;

ww_ULAout(30) <= \ULAout[30]~output_o\;

ww_ULAout(31) <= \ULAout[31]~output_o\;

ww_PCout(0) <= \PCout[0]~output_o\;

ww_PCout(1) <= \PCout[1]~output_o\;

ww_PCout(2) <= \PCout[2]~output_o\;

ww_PCout(3) <= \PCout[3]~output_o\;

ww_PCout(4) <= \PCout[4]~output_o\;

ww_PCout(5) <= \PCout[5]~output_o\;

ww_PCout(6) <= \PCout[6]~output_o\;

ww_PCout(7) <= \PCout[7]~output_o\;

ww_PCout(8) <= \PCout[8]~output_o\;

ww_PCout(9) <= \PCout[9]~output_o\;

ww_PCout(10) <= \PCout[10]~output_o\;

ww_PCout(11) <= \PCout[11]~output_o\;

ww_PCout(12) <= \PCout[12]~output_o\;

ww_PCout(13) <= \PCout[13]~output_o\;

ww_PCout(14) <= \PCout[14]~output_o\;

ww_PCout(15) <= \PCout[15]~output_o\;

ww_PCout(16) <= \PCout[16]~output_o\;

ww_PCout(17) <= \PCout[17]~output_o\;

ww_PCout(18) <= \PCout[18]~output_o\;

ww_PCout(19) <= \PCout[19]~output_o\;

ww_PCout(20) <= \PCout[20]~output_o\;

ww_PCout(21) <= \PCout[21]~output_o\;

ww_PCout(22) <= \PCout[22]~output_o\;

ww_PCout(23) <= \PCout[23]~output_o\;

ww_PCout(24) <= \PCout[24]~output_o\;

ww_PCout(25) <= \PCout[25]~output_o\;

ww_PCout(26) <= \PCout[26]~output_o\;

ww_PCout(27) <= \PCout[27]~output_o\;

ww_PCout(28) <= \PCout[28]~output_o\;

ww_PCout(29) <= \PCout[29]~output_o\;

ww_PCout(30) <= \PCout[30]~output_o\;

ww_PCout(31) <= \PCout[31]~output_o\;

ww_MuxBEQout(0) <= \MuxBEQout[0]~output_o\;

ww_MuxBEQout(1) <= \MuxBEQout[1]~output_o\;

ww_MuxBEQout(2) <= \MuxBEQout[2]~output_o\;

ww_MuxBEQout(3) <= \MuxBEQout[3]~output_o\;

ww_MuxBEQout(4) <= \MuxBEQout[4]~output_o\;

ww_MuxBEQout(5) <= \MuxBEQout[5]~output_o\;

ww_MuxBEQout(6) <= \MuxBEQout[6]~output_o\;

ww_MuxBEQout(7) <= \MuxBEQout[7]~output_o\;

ww_MuxBEQout(8) <= \MuxBEQout[8]~output_o\;

ww_MuxBEQout(9) <= \MuxBEQout[9]~output_o\;

ww_MuxBEQout(10) <= \MuxBEQout[10]~output_o\;

ww_MuxBEQout(11) <= \MuxBEQout[11]~output_o\;

ww_MuxBEQout(12) <= \MuxBEQout[12]~output_o\;

ww_MuxBEQout(13) <= \MuxBEQout[13]~output_o\;

ww_MuxBEQout(14) <= \MuxBEQout[14]~output_o\;

ww_MuxBEQout(15) <= \MuxBEQout[15]~output_o\;

ww_MuxBEQout(16) <= \MuxBEQout[16]~output_o\;

ww_MuxBEQout(17) <= \MuxBEQout[17]~output_o\;

ww_MuxBEQout(18) <= \MuxBEQout[18]~output_o\;

ww_MuxBEQout(19) <= \MuxBEQout[19]~output_o\;

ww_MuxBEQout(20) <= \MuxBEQout[20]~output_o\;

ww_MuxBEQout(21) <= \MuxBEQout[21]~output_o\;

ww_MuxBEQout(22) <= \MuxBEQout[22]~output_o\;

ww_MuxBEQout(23) <= \MuxBEQout[23]~output_o\;

ww_MuxBEQout(24) <= \MuxBEQout[24]~output_o\;

ww_MuxBEQout(25) <= \MuxBEQout[25]~output_o\;

ww_MuxBEQout(26) <= \MuxBEQout[26]~output_o\;

ww_MuxBEQout(27) <= \MuxBEQout[27]~output_o\;

ww_MuxBEQout(28) <= \MuxBEQout[28]~output_o\;

ww_MuxBEQout(29) <= \MuxBEQout[29]~output_o\;

ww_MuxBEQout(30) <= \MuxBEQout[30]~output_o\;

ww_MuxBEQout(31) <= \MuxBEQout[31]~output_o\;

ww_flagZeroOut <= \flagZeroOut~output_o\;

ww_BEQOut <= \BEQOut~output_o\;

ww_andOut <= \andOut~output_o\;

ww_UlaAout(0) <= \UlaAout[0]~output_o\;

ww_UlaAout(1) <= \UlaAout[1]~output_o\;

ww_UlaAout(2) <= \UlaAout[2]~output_o\;

ww_UlaAout(3) <= \UlaAout[3]~output_o\;

ww_UlaAout(4) <= \UlaAout[4]~output_o\;

ww_UlaAout(5) <= \UlaAout[5]~output_o\;

ww_UlaAout(6) <= \UlaAout[6]~output_o\;

ww_UlaAout(7) <= \UlaAout[7]~output_o\;

ww_UlaAout(8) <= \UlaAout[8]~output_o\;

ww_UlaAout(9) <= \UlaAout[9]~output_o\;

ww_UlaAout(10) <= \UlaAout[10]~output_o\;

ww_UlaAout(11) <= \UlaAout[11]~output_o\;

ww_UlaAout(12) <= \UlaAout[12]~output_o\;

ww_UlaAout(13) <= \UlaAout[13]~output_o\;

ww_UlaAout(14) <= \UlaAout[14]~output_o\;

ww_UlaAout(15) <= \UlaAout[15]~output_o\;

ww_UlaAout(16) <= \UlaAout[16]~output_o\;

ww_UlaAout(17) <= \UlaAout[17]~output_o\;

ww_UlaAout(18) <= \UlaAout[18]~output_o\;

ww_UlaAout(19) <= \UlaAout[19]~output_o\;

ww_UlaAout(20) <= \UlaAout[20]~output_o\;

ww_UlaAout(21) <= \UlaAout[21]~output_o\;

ww_UlaAout(22) <= \UlaAout[22]~output_o\;

ww_UlaAout(23) <= \UlaAout[23]~output_o\;

ww_UlaAout(24) <= \UlaAout[24]~output_o\;

ww_UlaAout(25) <= \UlaAout[25]~output_o\;

ww_UlaAout(26) <= \UlaAout[26]~output_o\;

ww_UlaAout(27) <= \UlaAout[27]~output_o\;

ww_UlaAout(28) <= \UlaAout[28]~output_o\;

ww_UlaAout(29) <= \UlaAout[29]~output_o\;

ww_UlaAout(30) <= \UlaAout[30]~output_o\;

ww_UlaAout(31) <= \UlaAout[31]~output_o\;

ww_UlaBOut(0) <= \UlaBOut[0]~output_o\;

ww_UlaBOut(1) <= \UlaBOut[1]~output_o\;

ww_UlaBOut(2) <= \UlaBOut[2]~output_o\;

ww_UlaBOut(3) <= \UlaBOut[3]~output_o\;

ww_UlaBOut(4) <= \UlaBOut[4]~output_o\;

ww_UlaBOut(5) <= \UlaBOut[5]~output_o\;

ww_UlaBOut(6) <= \UlaBOut[6]~output_o\;

ww_UlaBOut(7) <= \UlaBOut[7]~output_o\;

ww_UlaBOut(8) <= \UlaBOut[8]~output_o\;

ww_UlaBOut(9) <= \UlaBOut[9]~output_o\;

ww_UlaBOut(10) <= \UlaBOut[10]~output_o\;

ww_UlaBOut(11) <= \UlaBOut[11]~output_o\;

ww_UlaBOut(12) <= \UlaBOut[12]~output_o\;

ww_UlaBOut(13) <= \UlaBOut[13]~output_o\;

ww_UlaBOut(14) <= \UlaBOut[14]~output_o\;

ww_UlaBOut(15) <= \UlaBOut[15]~output_o\;

ww_UlaBOut(16) <= \UlaBOut[16]~output_o\;

ww_UlaBOut(17) <= \UlaBOut[17]~output_o\;

ww_UlaBOut(18) <= \UlaBOut[18]~output_o\;

ww_UlaBOut(19) <= \UlaBOut[19]~output_o\;

ww_UlaBOut(20) <= \UlaBOut[20]~output_o\;

ww_UlaBOut(21) <= \UlaBOut[21]~output_o\;

ww_UlaBOut(22) <= \UlaBOut[22]~output_o\;

ww_UlaBOut(23) <= \UlaBOut[23]~output_o\;

ww_UlaBOut(24) <= \UlaBOut[24]~output_o\;

ww_UlaBOut(25) <= \UlaBOut[25]~output_o\;

ww_UlaBOut(26) <= \UlaBOut[26]~output_o\;

ww_UlaBOut(27) <= \UlaBOut[27]~output_o\;

ww_UlaBOut(28) <= \UlaBOut[28]~output_o\;

ww_UlaBOut(29) <= \UlaBOut[29]~output_o\;

ww_UlaBOut(30) <= \UlaBOut[30]~output_o\;

ww_UlaBOut(31) <= \UlaBOut[31]~output_o\;
END structure;


