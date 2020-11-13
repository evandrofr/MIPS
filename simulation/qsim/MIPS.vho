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

-- DATE "11/13/2020 15:43:56"

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
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~10\ : std_logic;
SIGNAL \somaQuatro|Add0~14\ : std_logic;
SIGNAL \somaQuatro|Add0~18\ : std_logic;
SIGNAL \somaQuatro|Add0~21_sumout\ : std_logic;
SIGNAL \somaQuatro|Add0~22\ : std_logic;
SIGNAL \somaQuatro|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~13_sumout\ : std_logic;
SIGNAL \somaQuatro|Add0~9_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~2\ : std_logic;
SIGNAL \somaSHIFT|Add0~6\ : std_logic;
SIGNAL \somaSHIFT|Add0~10\ : std_logic;
SIGNAL \somaSHIFT|Add0~14\ : std_logic;
SIGNAL \somaSHIFT|Add0~17_sumout\ : std_logic;
SIGNAL \ulaUC|ulaOp[1]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|Equal0~0_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[31]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ULA|saida[17]~95_combout\ : std_logic;
SIGNAL \ULA|saida[17]~96_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp~4_combout\ : std_logic;
SIGNAL \ulaUC|Equal7~0_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp[1]~3_combout\ : std_logic;
SIGNAL \ulaUC|Equal5~0_combout\ : std_logic;
SIGNAL \ULA|Equal7~0_combout\ : std_logic;
SIGNAL \UC|Equal8~0_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \UC|Equal8~1_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1222_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1224_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~324_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1255_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1213_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[30]~32_combout\ : std_logic;
SIGNAL \ULA|saida[30]~90_combout\ : std_logic;
SIGNAL \ULA|saida[30]~91_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1223_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~68_q\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1212_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[30]~30_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~323_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1254_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1208_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~322_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1253_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1203_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~321_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1252_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1198_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~320_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1251_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1193_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~319_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1250_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1188_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~318_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1249_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1183_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~317_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1248_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1178_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~316_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1247_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1173_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~315_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1246_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1168_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~314_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1245_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1163_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~313_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1244_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1158_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~312_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1243_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1153_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~311_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1242_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1148_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~310_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1241_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1143_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~309_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1240_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1138_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[15]~17_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~308_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1239_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1133_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[14]~16_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~307_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1238_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1128_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~306_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1237_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1123_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~305_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1236_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1118_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~304_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1235_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1113_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~303_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1234_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1108_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~302_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1233_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1103_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~45_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1097_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[7]~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~44_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1092_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[6]~6_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~299_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1230_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1088_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~298_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1229_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1083_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~297_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1228_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1078_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~296_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1227_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1073_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~295_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1226_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1068_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~38_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~294_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1062_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[0]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1225_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1063_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Add1~130_cout\ : std_logic;
SIGNAL \ULA|Add1~6\ : std_logic;
SIGNAL \ULA|Add1~9_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp[0]~0_combout\ : std_logic;
SIGNAL \ulaUC|ulaOp[1]~1_combout\ : std_logic;
SIGNAL \ULA|saida[1]~2_combout\ : std_logic;
SIGNAL \ULA|saida[1]~3_combout\ : std_logic;
SIGNAL \ULA|saida[1]~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~39_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1067_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[1]~1_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|Add1~10\ : std_logic;
SIGNAL \ULA|Add1~13_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \ULA|saida[2]~5_combout\ : std_logic;
SIGNAL \ULA|saida[2]~6_combout\ : std_logic;
SIGNAL \ULA|saida[2]~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~40_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1072_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[2]~2_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \ULA|Add1~14\ : std_logic;
SIGNAL \ULA|Add1~17_sumout\ : std_logic;
SIGNAL \ULA|saida[3]~8_combout\ : std_logic;
SIGNAL \ULA|saida[3]~9_combout\ : std_logic;
SIGNAL \ULA|saida[3]~10_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~41_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1077_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|Add1~18\ : std_logic;
SIGNAL \ULA|Add1~21_sumout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[4]~11_combout\ : std_logic;
SIGNAL \ULA|saida[4]~12_combout\ : std_logic;
SIGNAL \ULA|saida[4]~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~42_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1082_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|Add1~22\ : std_logic;
SIGNAL \ULA|Add1~25_sumout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[5]~5_combout\ : std_logic;
SIGNAL \ULA|saida[5]~14_combout\ : std_logic;
SIGNAL \ULA|saida[5]~15_combout\ : std_logic;
SIGNAL \ULA|saida[5]~16_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~43_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1087_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \ULA|Add1~26\ : std_logic;
SIGNAL \ULA|Add1~29_sumout\ : std_logic;
SIGNAL \ULA|saida[6]~17_combout\ : std_logic;
SIGNAL \ULA|saida[6]~18_combout\ : std_logic;
SIGNAL \ULA|saida[6]~19_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~300_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1231_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1093_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \ULA|Add1~30\ : std_logic;
SIGNAL \ULA|Add1~33_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[7]~9_combout\ : std_logic;
SIGNAL \ULA|saida[7]~20_combout\ : std_logic;
SIGNAL \ULA|saida[7]~21_combout\ : std_logic;
SIGNAL \ULA|saida[7]~22_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~301_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1232_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1098_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \ULA|Add1~34\ : std_logic;
SIGNAL \ULA|Add1~37_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[8]~10_combout\ : std_logic;
SIGNAL \ULA|saida[8]~23_combout\ : std_logic;
SIGNAL \ULA|saida[8]~24_combout\ : std_logic;
SIGNAL \ULA|saida[8]~25_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~46_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1102_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[8]~8_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \ULA|Add1~38\ : std_logic;
SIGNAL \ULA|Add1~41_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[9]~11_combout\ : std_logic;
SIGNAL \ULA|saida[9]~26_combout\ : std_logic;
SIGNAL \ULA|saida[9]~27_combout\ : std_logic;
SIGNAL \ULA|saida[9]~28_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~47_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1107_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[9]~9_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \ULA|Add1~42\ : std_logic;
SIGNAL \ULA|Add1~45_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[10]~12_combout\ : std_logic;
SIGNAL \ULA|saida[10]~29_combout\ : std_logic;
SIGNAL \ULA|saida[10]~30_combout\ : std_logic;
SIGNAL \ULA|saida[10]~31_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~48_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1112_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[10]~10_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \ULA|Add1~46\ : std_logic;
SIGNAL \ULA|Add1~49_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[11]~13_combout\ : std_logic;
SIGNAL \ULA|saida[11]~32_combout\ : std_logic;
SIGNAL \ULA|saida[11]~33_combout\ : std_logic;
SIGNAL \ULA|saida[11]~34_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~49_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1117_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[11]~11_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \ULA|Add1~50\ : std_logic;
SIGNAL \ULA|Add1~53_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[12]~14_combout\ : std_logic;
SIGNAL \ULA|saida[12]~35_combout\ : std_logic;
SIGNAL \ULA|saida[12]~36_combout\ : std_logic;
SIGNAL \ULA|saida[12]~37_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~50_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1122_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[12]~12_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[13]~15_combout\ : std_logic;
SIGNAL \ULA|Add1~54\ : std_logic;
SIGNAL \ULA|Add1~57_sumout\ : std_logic;
SIGNAL \ULA|saida[13]~38_combout\ : std_logic;
SIGNAL \ULA|saida[13]~39_combout\ : std_logic;
SIGNAL \ULA|saida[13]~40_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~51_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1127_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[13]~13_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \ULA|Add1~58\ : std_logic;
SIGNAL \ULA|Add1~61_sumout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[14]~14_combout\ : std_logic;
SIGNAL \ULA|saida[14]~41_combout\ : std_logic;
SIGNAL \ULA|saida[14]~42_combout\ : std_logic;
SIGNAL \ULA|saida[14]~43_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~52_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1132_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[15]~15_combout\ : std_logic;
SIGNAL \ULA|Add1~62\ : std_logic;
SIGNAL \ULA|Add1~65_sumout\ : std_logic;
SIGNAL \ULA|saida[15]~44_combout\ : std_logic;
SIGNAL \ULA|saida[15]~45_combout\ : std_logic;
SIGNAL \ULA|saida[15]~46_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~53_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1137_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \ULA|Add1~66\ : std_logic;
SIGNAL \ULA|Add1~69_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[16]~18_combout\ : std_logic;
SIGNAL \ULA|saida[16]~47_combout\ : std_logic;
SIGNAL \ULA|saida[16]~48_combout\ : std_logic;
SIGNAL \ULA|saida[16]~49_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~54_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1142_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[16]~16_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \ULA|Add1~70\ : std_logic;
SIGNAL \ULA|Add1~73_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[17]~19_combout\ : std_logic;
SIGNAL \ULA|saida[17]~50_combout\ : std_logic;
SIGNAL \ULA|saida[17]~51_combout\ : std_logic;
SIGNAL \ULA|saida[17]~52_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~55_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1147_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[17]~17_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \ULA|Add1~74\ : std_logic;
SIGNAL \ULA|Add1~77_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[18]~20_combout\ : std_logic;
SIGNAL \ULA|saida[18]~53_combout\ : std_logic;
SIGNAL \ULA|saida[18]~54_combout\ : std_logic;
SIGNAL \ULA|saida[18]~55_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~56_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1152_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[18]~18_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \ULA|Add1~78\ : std_logic;
SIGNAL \ULA|Add1~81_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[19]~21_combout\ : std_logic;
SIGNAL \ULA|saida[19]~56_combout\ : std_logic;
SIGNAL \ULA|saida[19]~57_combout\ : std_logic;
SIGNAL \ULA|saida[19]~58_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~57_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1157_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[19]~19_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|Add1~82\ : std_logic;
SIGNAL \ULA|Add1~85_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[20]~22_combout\ : std_logic;
SIGNAL \ULA|saida[20]~59_combout\ : std_logic;
SIGNAL \ULA|saida[20]~60_combout\ : std_logic;
SIGNAL \ULA|saida[20]~61_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~58_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1162_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[20]~20_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \ULA|Add1~86\ : std_logic;
SIGNAL \ULA|Add1~89_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[21]~23_combout\ : std_logic;
SIGNAL \ULA|saida[21]~62_combout\ : std_logic;
SIGNAL \ULA|saida[21]~63_combout\ : std_logic;
SIGNAL \ULA|saida[21]~64_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~59_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1167_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[21]~21_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \ULA|Add1~90\ : std_logic;
SIGNAL \ULA|Add1~93_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[22]~24_combout\ : std_logic;
SIGNAL \ULA|saida[22]~65_combout\ : std_logic;
SIGNAL \ULA|saida[22]~66_combout\ : std_logic;
SIGNAL \ULA|saida[22]~67_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~60_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1172_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[22]~22_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \ULA|Add1~94\ : std_logic;
SIGNAL \ULA|Add1~97_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[23]~25_combout\ : std_logic;
SIGNAL \ULA|saida[23]~68_combout\ : std_logic;
SIGNAL \ULA|saida[23]~69_combout\ : std_logic;
SIGNAL \ULA|saida[23]~70_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~61_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1177_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[23]~23_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \ULA|Add1~98\ : std_logic;
SIGNAL \ULA|Add1~101_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[24]~26_combout\ : std_logic;
SIGNAL \ULA|saida[24]~71_combout\ : std_logic;
SIGNAL \ULA|saida[24]~72_combout\ : std_logic;
SIGNAL \ULA|saida[24]~73_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~62_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1182_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[24]~24_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \ULA|Add1~102\ : std_logic;
SIGNAL \ULA|Add1~105_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[25]~27_combout\ : std_logic;
SIGNAL \ULA|saida[25]~74_combout\ : std_logic;
SIGNAL \ULA|saida[25]~75_combout\ : std_logic;
SIGNAL \ULA|saida[25]~76_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~63_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1187_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[25]~25_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \ULA|Add1~106\ : std_logic;
SIGNAL \ULA|Add1~109_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[26]~28_combout\ : std_logic;
SIGNAL \ULA|saida[26]~77_combout\ : std_logic;
SIGNAL \ULA|saida[26]~78_combout\ : std_logic;
SIGNAL \ULA|saida[26]~79_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~64_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1192_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[26]~26_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \ULA|Add1~110\ : std_logic;
SIGNAL \ULA|Add1~113_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[27]~29_combout\ : std_logic;
SIGNAL \ULA|saida[27]~80_combout\ : std_logic;
SIGNAL \ULA|saida[27]~81_combout\ : std_logic;
SIGNAL \ULA|saida[27]~82_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~65_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1197_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[27]~27_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|Add1~114\ : std_logic;
SIGNAL \ULA|Add1~117_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[28]~30_combout\ : std_logic;
SIGNAL \ULA|saida[28]~83_combout\ : std_logic;
SIGNAL \ULA|saida[28]~84_combout\ : std_logic;
SIGNAL \ULA|saida[28]~85_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~66_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1202_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[28]~28_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|Add1~118\ : std_logic;
SIGNAL \ULA|Add1~121_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[29]~31_combout\ : std_logic;
SIGNAL \ULA|saida[29]~86_combout\ : std_logic;
SIGNAL \ULA|saida[29]~87_combout\ : std_logic;
SIGNAL \ULA|saida[29]~88_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~67_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1207_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[29]~29_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \ULA|Add1~122\ : std_logic;
SIGNAL \ULA|Add1~125_sumout\ : std_logic;
SIGNAL \ULA|saida[30]~89_combout\ : std_logic;
SIGNAL \ULA|Equal8~19_combout\ : std_logic;
SIGNAL \ULA|Equal8~0_combout\ : std_logic;
SIGNAL \ULA|Equal8~1_combout\ : std_logic;
SIGNAL \ULA|Equal8~2_combout\ : std_logic;
SIGNAL \ULA|Equal8~3_combout\ : std_logic;
SIGNAL \ULA|Equal8~4_combout\ : std_logic;
SIGNAL \ULA|Equal8~5_combout\ : std_logic;
SIGNAL \ULA|Equal8~18_combout\ : std_logic;
SIGNAL \ULA|Equal8~6_combout\ : std_logic;
SIGNAL \ULA|Equal8~16_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~325_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1256_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1218_combout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[31]~33_combout\ : std_logic;
SIGNAL \ULA|saida[31]~93_combout\ : std_logic;
SIGNAL \ULA|saida[31]~94_combout\ : std_logic;
SIGNAL \BancoRegistradores|registrador~69_q\ : std_logic;
SIGNAL \BancoRegistradores|registrador~1217_combout\ : std_logic;
SIGNAL \BancoRegistradores|saidaA[31]~31_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \ULA|saida[31]~92_combout\ : std_logic;
SIGNAL \ULA|Equal8~20_combout\ : std_logic;
SIGNAL \ULA|Equal8~8_combout\ : std_logic;
SIGNAL \ULA|Equal8~9_combout\ : std_logic;
SIGNAL \ULA|Equal8~10_combout\ : std_logic;
SIGNAL \ULA|Equal8~11_combout\ : std_logic;
SIGNAL \ULA|saida[17]~0_combout\ : std_logic;
SIGNAL \ULA|Add1~5_sumout\ : std_logic;
SIGNAL \MUXRegImed|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|saida[0]~97_combout\ : std_logic;
SIGNAL \ULA|Equal8~12_combout\ : std_logic;
SIGNAL \ULA|Equal8~17_combout\ : std_logic;
SIGNAL \UC|Equal9~0_combout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[6]~1_combout\ : std_logic;
SIGNAL \somaSHIFT|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|Equal8~7_combout\ : std_logic;
SIGNAL \ULA|Equal8~13_combout\ : std_logic;
SIGNAL \ULA|Equal8~14_combout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~6\ : std_logic;
SIGNAL \somaQuatro|Add0~1_sumout\ : std_logic;
SIGNAL \somaSHIFT|Add0~18\ : std_logic;
SIGNAL \somaSHIFT|Add0~21_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \somaSHIFT|Add0~9_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \UC|Equal7~0_combout\ : std_logic;
SIGNAL \somaSHIFT|Add0~5_sumout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \MUXFETCH|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ULA|Add1~126\ : std_logic;
SIGNAL \ULA|Add1~1_sumout\ : std_logic;
SIGNAL \ULA|saida[0]~1_combout\ : std_logic;
SIGNAL \somaQuatro|Add0~2\ : std_logic;
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
SIGNAL \somaSHIFT|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|Equal8~15_combout\ : std_logic;
SIGNAL \andCONTROLEZEROSignal~combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1123_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1118_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1113_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1108_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1103_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1218_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1213_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1208_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1203_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1198_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1193_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1188_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1183_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1178_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1173_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1168_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1163_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1158_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1153_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1148_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1143_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1138_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1133_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1128_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[0]~97_combout\ : std_logic;
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
SIGNAL \somaQuatro|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \somaQuatro|ALT_INV_Add0~1_sumout\ : std_logic;
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
SIGNAL \ULA|ALT_INV_saida[17]~50_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[17]~19_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[17]~17_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1147_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[16]~48_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[16]~47_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[16]~18_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[16]~16_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1142_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[15]~45_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[15]~44_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[15]~17_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[15]~15_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1137_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[14]~42_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[14]~41_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[14]~16_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[14]~14_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1132_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[13]~39_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[13]~38_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[13]~15_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[13]~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1127_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[12]~36_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[12]~35_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[12]~14_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[12]~12_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1122_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[11]~33_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[11]~32_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[11]~13_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[11]~11_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1117_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[10]~30_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[10]~29_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[10]~12_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[10]~10_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1112_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[9]~27_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[9]~26_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[9]~11_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[9]~9_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1107_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[8]~24_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[8]~23_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[8]~10_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[8]~8_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[7]~21_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[7]~20_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[7]~9_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[7]~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1097_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[6]~18_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[6]~17_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[6]~6_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[5]~15_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[5]~14_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[5]~5_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[4]~12_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[4]~11_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[4]~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~9_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[3]~8_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[3]~3_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~6_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[2]~5_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[2]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~0_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp[1]~1_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp[0]~0_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~15_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~14_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~13_combout\ : std_logic;
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
SIGNAL \ULA|ALT_INV_saida[31]~93_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[31]~92_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[31]~33_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[31]~31_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1217_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[30]~90_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[30]~89_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[30]~32_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[30]~30_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1212_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[29]~87_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[29]~86_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[29]~31_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[29]~29_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1207_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[28]~84_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[28]~83_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[28]~30_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[28]~28_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1202_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[27]~81_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[27]~80_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[27]~29_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[27]~27_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1197_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[26]~78_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[26]~77_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[26]~28_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[26]~26_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1192_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[25]~75_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[25]~74_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[25]~27_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[25]~25_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1187_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[24]~72_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[24]~71_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[24]~26_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[24]~24_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1182_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[23]~69_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[23]~68_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[23]~25_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[23]~23_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1177_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[22]~66_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[22]~65_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[22]~24_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[22]~22_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1172_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[21]~63_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[21]~62_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[21]~23_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[21]~21_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1167_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[20]~60_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[20]~59_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[20]~22_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[20]~20_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1162_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[19]~57_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[19]~56_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[19]~21_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[19]~19_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1157_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[18]~54_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[18]~53_combout\ : std_logic;
SIGNAL \MUXRegImed|ALT_INV_saida_MUX[18]~20_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_saidaA[18]~18_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1152_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~51_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp~4_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp[1]~3_combout\ : std_logic;
SIGNAL \ulaUC|ALT_INV_ulaOp[1]~2_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~96_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[17]~95_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~20_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~19_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~18_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1256_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1255_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1254_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1253_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1252_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1251_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1250_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1249_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1248_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1247_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1246_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1245_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1244_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1243_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1242_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1241_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1240_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1239_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1238_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1237_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1236_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1235_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1234_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1233_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1232_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1231_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1230_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1229_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1228_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1227_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1226_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1225_combout\ : std_logic;
SIGNAL \BancoRegistradores|ALT_INV_registrador~1222_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~17_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Equal8~16_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal9~0_combout\ : std_logic;

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
\ULA|ALT_INV_Add1~57_sumout\ <= NOT \ULA|Add1~57_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\BancoRegistradores|ALT_INV_registrador~1123_combout\ <= NOT \BancoRegistradores|registrador~1123_combout\;
\BancoRegistradores|ALT_INV_registrador~306_q\ <= NOT \BancoRegistradores|registrador~306_q\;
\BancoRegistradores|ALT_INV_registrador~50_q\ <= NOT \BancoRegistradores|registrador~50_q\;
\ULA|ALT_INV_Add1~53_sumout\ <= NOT \ULA|Add1~53_sumout\;
\ULA|ALT_INV_Add0~49_sumout\ <= NOT \ULA|Add0~49_sumout\;
\BancoRegistradores|ALT_INV_registrador~1118_combout\ <= NOT \BancoRegistradores|registrador~1118_combout\;
\BancoRegistradores|ALT_INV_registrador~305_q\ <= NOT \BancoRegistradores|registrador~305_q\;
\BancoRegistradores|ALT_INV_registrador~49_q\ <= NOT \BancoRegistradores|registrador~49_q\;
\ULA|ALT_INV_Add1~49_sumout\ <= NOT \ULA|Add1~49_sumout\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\BancoRegistradores|ALT_INV_registrador~1113_combout\ <= NOT \BancoRegistradores|registrador~1113_combout\;
\BancoRegistradores|ALT_INV_registrador~304_q\ <= NOT \BancoRegistradores|registrador~304_q\;
\BancoRegistradores|ALT_INV_registrador~48_q\ <= NOT \BancoRegistradores|registrador~48_q\;
\ULA|ALT_INV_Add1~45_sumout\ <= NOT \ULA|Add1~45_sumout\;
\ULA|ALT_INV_Add0~41_sumout\ <= NOT \ULA|Add0~41_sumout\;
\BancoRegistradores|ALT_INV_registrador~1108_combout\ <= NOT \BancoRegistradores|registrador~1108_combout\;
\BancoRegistradores|ALT_INV_registrador~303_q\ <= NOT \BancoRegistradores|registrador~303_q\;
\BancoRegistradores|ALT_INV_registrador~47_q\ <= NOT \BancoRegistradores|registrador~47_q\;
\ULA|ALT_INV_Add1~41_sumout\ <= NOT \ULA|Add1~41_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\BancoRegistradores|ALT_INV_registrador~1103_combout\ <= NOT \BancoRegistradores|registrador~1103_combout\;
\BancoRegistradores|ALT_INV_registrador~302_q\ <= NOT \BancoRegistradores|registrador~302_q\;
\BancoRegistradores|ALT_INV_registrador~46_q\ <= NOT \BancoRegistradores|registrador~46_q\;
\ULA|ALT_INV_Add1~37_sumout\ <= NOT \ULA|Add1~37_sumout\;
\ULA|ALT_INV_Add0~33_sumout\ <= NOT \ULA|Add0~33_sumout\;
\BancoRegistradores|ALT_INV_registrador~1098_combout\ <= NOT \BancoRegistradores|registrador~1098_combout\;
\BancoRegistradores|ALT_INV_registrador~301_q\ <= NOT \BancoRegistradores|registrador~301_q\;
\BancoRegistradores|ALT_INV_registrador~45_q\ <= NOT \BancoRegistradores|registrador~45_q\;
\ULA|ALT_INV_Add1~33_sumout\ <= NOT \ULA|Add1~33_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\BancoRegistradores|ALT_INV_registrador~1093_combout\ <= NOT \BancoRegistradores|registrador~1093_combout\;
\BancoRegistradores|ALT_INV_registrador~300_q\ <= NOT \BancoRegistradores|registrador~300_q\;
\BancoRegistradores|ALT_INV_registrador~44_q\ <= NOT \BancoRegistradores|registrador~44_q\;
\ULA|ALT_INV_Add1~29_sumout\ <= NOT \ULA|Add1~29_sumout\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\BancoRegistradores|ALT_INV_registrador~1088_combout\ <= NOT \BancoRegistradores|registrador~1088_combout\;
\BancoRegistradores|ALT_INV_registrador~299_q\ <= NOT \BancoRegistradores|registrador~299_q\;
\BancoRegistradores|ALT_INV_registrador~43_q\ <= NOT \BancoRegistradores|registrador~43_q\;
\ULA|ALT_INV_Add1~25_sumout\ <= NOT \ULA|Add1~25_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\BancoRegistradores|ALT_INV_registrador~1083_combout\ <= NOT \BancoRegistradores|registrador~1083_combout\;
\BancoRegistradores|ALT_INV_registrador~298_q\ <= NOT \BancoRegistradores|registrador~298_q\;
\BancoRegistradores|ALT_INV_registrador~42_q\ <= NOT \BancoRegistradores|registrador~42_q\;
\ULA|ALT_INV_Add1~21_sumout\ <= NOT \ULA|Add1~21_sumout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\BancoRegistradores|ALT_INV_registrador~1078_combout\ <= NOT \BancoRegistradores|registrador~1078_combout\;
\BancoRegistradores|ALT_INV_registrador~297_q\ <= NOT \BancoRegistradores|registrador~297_q\;
\BancoRegistradores|ALT_INV_registrador~41_q\ <= NOT \BancoRegistradores|registrador~41_q\;
\ULA|ALT_INV_Add1~17_sumout\ <= NOT \ULA|Add1~17_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\BancoRegistradores|ALT_INV_registrador~1073_combout\ <= NOT \BancoRegistradores|registrador~1073_combout\;
\BancoRegistradores|ALT_INV_registrador~296_q\ <= NOT \BancoRegistradores|registrador~296_q\;
\BancoRegistradores|ALT_INV_registrador~40_q\ <= NOT \BancoRegistradores|registrador~40_q\;
\ULA|ALT_INV_Add1~13_sumout\ <= NOT \ULA|Add1~13_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\BancoRegistradores|ALT_INV_registrador~1068_combout\ <= NOT \BancoRegistradores|registrador~1068_combout\;
\BancoRegistradores|ALT_INV_registrador~295_q\ <= NOT \BancoRegistradores|registrador~295_q\;
\BancoRegistradores|ALT_INV_registrador~39_q\ <= NOT \BancoRegistradores|registrador~39_q\;
\ULA|ALT_INV_Add1~9_sumout\ <= NOT \ULA|Add1~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add1~5_sumout\ <= NOT \ULA|Add1~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\BancoRegistradores|ALT_INV_registrador~1063_combout\ <= NOT \BancoRegistradores|registrador~1063_combout\;
\BancoRegistradores|ALT_INV_registrador~294_q\ <= NOT \BancoRegistradores|registrador~294_q\;
\BancoRegistradores|ALT_INV_registrador~38_q\ <= NOT \BancoRegistradores|registrador~38_q\;
\ULA|ALT_INV_Add1~1_sumout\ <= NOT \ULA|Add1~1_sumout\;
\BancoRegistradores|ALT_INV_registrador~1218_combout\ <= NOT \BancoRegistradores|registrador~1218_combout\;
\BancoRegistradores|ALT_INV_registrador~325_q\ <= NOT \BancoRegistradores|registrador~325_q\;
\BancoRegistradores|ALT_INV_registrador~69_q\ <= NOT \BancoRegistradores|registrador~69_q\;
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\BancoRegistradores|ALT_INV_registrador~1213_combout\ <= NOT \BancoRegistradores|registrador~1213_combout\;
\BancoRegistradores|ALT_INV_registrador~324_q\ <= NOT \BancoRegistradores|registrador~324_q\;
\BancoRegistradores|ALT_INV_registrador~68_q\ <= NOT \BancoRegistradores|registrador~68_q\;
\ULA|ALT_INV_Add1~125_sumout\ <= NOT \ULA|Add1~125_sumout\;
\ULA|ALT_INV_Add0~121_sumout\ <= NOT \ULA|Add0~121_sumout\;
\BancoRegistradores|ALT_INV_registrador~1208_combout\ <= NOT \BancoRegistradores|registrador~1208_combout\;
\BancoRegistradores|ALT_INV_registrador~323_q\ <= NOT \BancoRegistradores|registrador~323_q\;
\BancoRegistradores|ALT_INV_registrador~67_q\ <= NOT \BancoRegistradores|registrador~67_q\;
\ULA|ALT_INV_Add1~121_sumout\ <= NOT \ULA|Add1~121_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\BancoRegistradores|ALT_INV_registrador~1203_combout\ <= NOT \BancoRegistradores|registrador~1203_combout\;
\BancoRegistradores|ALT_INV_registrador~322_q\ <= NOT \BancoRegistradores|registrador~322_q\;
\BancoRegistradores|ALT_INV_registrador~66_q\ <= NOT \BancoRegistradores|registrador~66_q\;
\ULA|ALT_INV_Add1~117_sumout\ <= NOT \ULA|Add1~117_sumout\;
\ULA|ALT_INV_Add0~113_sumout\ <= NOT \ULA|Add0~113_sumout\;
\BancoRegistradores|ALT_INV_registrador~1198_combout\ <= NOT \BancoRegistradores|registrador~1198_combout\;
\BancoRegistradores|ALT_INV_registrador~321_q\ <= NOT \BancoRegistradores|registrador~321_q\;
\BancoRegistradores|ALT_INV_registrador~65_q\ <= NOT \BancoRegistradores|registrador~65_q\;
\ULA|ALT_INV_Add1~113_sumout\ <= NOT \ULA|Add1~113_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\BancoRegistradores|ALT_INV_registrador~1193_combout\ <= NOT \BancoRegistradores|registrador~1193_combout\;
\BancoRegistradores|ALT_INV_registrador~320_q\ <= NOT \BancoRegistradores|registrador~320_q\;
\BancoRegistradores|ALT_INV_registrador~64_q\ <= NOT \BancoRegistradores|registrador~64_q\;
\ULA|ALT_INV_Add1~109_sumout\ <= NOT \ULA|Add1~109_sumout\;
\ULA|ALT_INV_Add0~105_sumout\ <= NOT \ULA|Add0~105_sumout\;
\BancoRegistradores|ALT_INV_registrador~1188_combout\ <= NOT \BancoRegistradores|registrador~1188_combout\;
\BancoRegistradores|ALT_INV_registrador~319_q\ <= NOT \BancoRegistradores|registrador~319_q\;
\BancoRegistradores|ALT_INV_registrador~63_q\ <= NOT \BancoRegistradores|registrador~63_q\;
\ULA|ALT_INV_Add1~105_sumout\ <= NOT \ULA|Add1~105_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\BancoRegistradores|ALT_INV_registrador~1183_combout\ <= NOT \BancoRegistradores|registrador~1183_combout\;
\BancoRegistradores|ALT_INV_registrador~318_q\ <= NOT \BancoRegistradores|registrador~318_q\;
\BancoRegistradores|ALT_INV_registrador~62_q\ <= NOT \BancoRegistradores|registrador~62_q\;
\ULA|ALT_INV_Add1~101_sumout\ <= NOT \ULA|Add1~101_sumout\;
\ULA|ALT_INV_Add0~97_sumout\ <= NOT \ULA|Add0~97_sumout\;
\BancoRegistradores|ALT_INV_registrador~1178_combout\ <= NOT \BancoRegistradores|registrador~1178_combout\;
\BancoRegistradores|ALT_INV_registrador~317_q\ <= NOT \BancoRegistradores|registrador~317_q\;
\BancoRegistradores|ALT_INV_registrador~61_q\ <= NOT \BancoRegistradores|registrador~61_q\;
\ULA|ALT_INV_Add1~97_sumout\ <= NOT \ULA|Add1~97_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\BancoRegistradores|ALT_INV_registrador~1173_combout\ <= NOT \BancoRegistradores|registrador~1173_combout\;
\BancoRegistradores|ALT_INV_registrador~316_q\ <= NOT \BancoRegistradores|registrador~316_q\;
\BancoRegistradores|ALT_INV_registrador~60_q\ <= NOT \BancoRegistradores|registrador~60_q\;
\ULA|ALT_INV_Add1~93_sumout\ <= NOT \ULA|Add1~93_sumout\;
\ULA|ALT_INV_Add0~89_sumout\ <= NOT \ULA|Add0~89_sumout\;
\BancoRegistradores|ALT_INV_registrador~1168_combout\ <= NOT \BancoRegistradores|registrador~1168_combout\;
\BancoRegistradores|ALT_INV_registrador~315_q\ <= NOT \BancoRegistradores|registrador~315_q\;
\BancoRegistradores|ALT_INV_registrador~59_q\ <= NOT \BancoRegistradores|registrador~59_q\;
\ULA|ALT_INV_Add1~89_sumout\ <= NOT \ULA|Add1~89_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\BancoRegistradores|ALT_INV_registrador~1163_combout\ <= NOT \BancoRegistradores|registrador~1163_combout\;
\BancoRegistradores|ALT_INV_registrador~314_q\ <= NOT \BancoRegistradores|registrador~314_q\;
\BancoRegistradores|ALT_INV_registrador~58_q\ <= NOT \BancoRegistradores|registrador~58_q\;
\ULA|ALT_INV_Add1~85_sumout\ <= NOT \ULA|Add1~85_sumout\;
\ULA|ALT_INV_Add0~81_sumout\ <= NOT \ULA|Add0~81_sumout\;
\BancoRegistradores|ALT_INV_registrador~1158_combout\ <= NOT \BancoRegistradores|registrador~1158_combout\;
\BancoRegistradores|ALT_INV_registrador~313_q\ <= NOT \BancoRegistradores|registrador~313_q\;
\BancoRegistradores|ALT_INV_registrador~57_q\ <= NOT \BancoRegistradores|registrador~57_q\;
\ULA|ALT_INV_Add1~81_sumout\ <= NOT \ULA|Add1~81_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\BancoRegistradores|ALT_INV_registrador~1153_combout\ <= NOT \BancoRegistradores|registrador~1153_combout\;
\BancoRegistradores|ALT_INV_registrador~312_q\ <= NOT \BancoRegistradores|registrador~312_q\;
\BancoRegistradores|ALT_INV_registrador~56_q\ <= NOT \BancoRegistradores|registrador~56_q\;
\ULA|ALT_INV_Add1~77_sumout\ <= NOT \ULA|Add1~77_sumout\;
\ULA|ALT_INV_Add0~73_sumout\ <= NOT \ULA|Add0~73_sumout\;
\BancoRegistradores|ALT_INV_registrador~1148_combout\ <= NOT \BancoRegistradores|registrador~1148_combout\;
\BancoRegistradores|ALT_INV_registrador~311_q\ <= NOT \BancoRegistradores|registrador~311_q\;
\BancoRegistradores|ALT_INV_registrador~55_q\ <= NOT \BancoRegistradores|registrador~55_q\;
\ULA|ALT_INV_Add1~73_sumout\ <= NOT \ULA|Add1~73_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\BancoRegistradores|ALT_INV_registrador~1143_combout\ <= NOT \BancoRegistradores|registrador~1143_combout\;
\BancoRegistradores|ALT_INV_registrador~310_q\ <= NOT \BancoRegistradores|registrador~310_q\;
\BancoRegistradores|ALT_INV_registrador~54_q\ <= NOT \BancoRegistradores|registrador~54_q\;
\ULA|ALT_INV_Add1~69_sumout\ <= NOT \ULA|Add1~69_sumout\;
\ULA|ALT_INV_Add0~65_sumout\ <= NOT \ULA|Add0~65_sumout\;
\BancoRegistradores|ALT_INV_registrador~1138_combout\ <= NOT \BancoRegistradores|registrador~1138_combout\;
\BancoRegistradores|ALT_INV_registrador~309_q\ <= NOT \BancoRegistradores|registrador~309_q\;
\BancoRegistradores|ALT_INV_registrador~53_q\ <= NOT \BancoRegistradores|registrador~53_q\;
\ULA|ALT_INV_Add1~65_sumout\ <= NOT \ULA|Add1~65_sumout\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\BancoRegistradores|ALT_INV_registrador~1133_combout\ <= NOT \BancoRegistradores|registrador~1133_combout\;
\BancoRegistradores|ALT_INV_registrador~308_q\ <= NOT \BancoRegistradores|registrador~308_q\;
\BancoRegistradores|ALT_INV_registrador~52_q\ <= NOT \BancoRegistradores|registrador~52_q\;
\ULA|ALT_INV_Add1~61_sumout\ <= NOT \ULA|Add1~61_sumout\;
\ULA|ALT_INV_Add0~57_sumout\ <= NOT \ULA|Add0~57_sumout\;
\BancoRegistradores|ALT_INV_registrador~1128_combout\ <= NOT \BancoRegistradores|registrador~1128_combout\;
\BancoRegistradores|ALT_INV_registrador~307_q\ <= NOT \BancoRegistradores|registrador~307_q\;
\BancoRegistradores|ALT_INV_registrador~51_q\ <= NOT \BancoRegistradores|registrador~51_q\;
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\ULA|ALT_INV_saida[0]~97_combout\ <= NOT \ULA|saida[0]~97_combout\;
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
\somaQuatro|ALT_INV_Add0~21_sumout\ <= NOT \somaQuatro|Add0~21_sumout\;
\somaQuatro|ALT_INV_Add0~17_sumout\ <= NOT \somaQuatro|Add0~17_sumout\;
\somaQuatro|ALT_INV_Add0~13_sumout\ <= NOT \somaQuatro|Add0~13_sumout\;
\somaQuatro|ALT_INV_Add0~9_sumout\ <= NOT \somaQuatro|Add0~9_sumout\;
\somaQuatro|ALT_INV_Add0~5_sumout\ <= NOT \somaQuatro|Add0~5_sumout\;
\somaQuatro|ALT_INV_Add0~1_sumout\ <= NOT \somaQuatro|Add0~1_sumout\;
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
\ULA|ALT_INV_saida[17]~50_combout\ <= NOT \ULA|saida[17]~50_combout\;
\MUXRegImed|ALT_INV_saida_MUX[17]~19_combout\ <= NOT \MUXRegImed|saida_MUX[17]~19_combout\;
\BancoRegistradores|ALT_INV_saidaA[17]~17_combout\ <= NOT \BancoRegistradores|saidaA[17]~17_combout\;
\BancoRegistradores|ALT_INV_registrador~1147_combout\ <= NOT \BancoRegistradores|registrador~1147_combout\;
\ULA|ALT_INV_saida[16]~48_combout\ <= NOT \ULA|saida[16]~48_combout\;
\ULA|ALT_INV_saida[16]~47_combout\ <= NOT \ULA|saida[16]~47_combout\;
\MUXRegImed|ALT_INV_saida_MUX[16]~18_combout\ <= NOT \MUXRegImed|saida_MUX[16]~18_combout\;
\BancoRegistradores|ALT_INV_saidaA[16]~16_combout\ <= NOT \BancoRegistradores|saidaA[16]~16_combout\;
\BancoRegistradores|ALT_INV_registrador~1142_combout\ <= NOT \BancoRegistradores|registrador~1142_combout\;
\ULA|ALT_INV_saida[15]~45_combout\ <= NOT \ULA|saida[15]~45_combout\;
\ULA|ALT_INV_saida[15]~44_combout\ <= NOT \ULA|saida[15]~44_combout\;
\MUXRegImed|ALT_INV_saida_MUX[15]~17_combout\ <= NOT \MUXRegImed|saida_MUX[15]~17_combout\;
\BancoRegistradores|ALT_INV_saidaA[15]~15_combout\ <= NOT \BancoRegistradores|saidaA[15]~15_combout\;
\BancoRegistradores|ALT_INV_registrador~1137_combout\ <= NOT \BancoRegistradores|registrador~1137_combout\;
\ULA|ALT_INV_saida[14]~42_combout\ <= NOT \ULA|saida[14]~42_combout\;
\ULA|ALT_INV_saida[14]~41_combout\ <= NOT \ULA|saida[14]~41_combout\;
\MUXRegImed|ALT_INV_saida_MUX[14]~16_combout\ <= NOT \MUXRegImed|saida_MUX[14]~16_combout\;
\BancoRegistradores|ALT_INV_saidaA[14]~14_combout\ <= NOT \BancoRegistradores|saidaA[14]~14_combout\;
\BancoRegistradores|ALT_INV_registrador~1132_combout\ <= NOT \BancoRegistradores|registrador~1132_combout\;
\ULA|ALT_INV_saida[13]~39_combout\ <= NOT \ULA|saida[13]~39_combout\;
\ULA|ALT_INV_saida[13]~38_combout\ <= NOT \ULA|saida[13]~38_combout\;
\MUXRegImed|ALT_INV_saida_MUX[13]~15_combout\ <= NOT \MUXRegImed|saida_MUX[13]~15_combout\;
\BancoRegistradores|ALT_INV_saidaA[13]~13_combout\ <= NOT \BancoRegistradores|saidaA[13]~13_combout\;
\BancoRegistradores|ALT_INV_registrador~1127_combout\ <= NOT \BancoRegistradores|registrador~1127_combout\;
\ULA|ALT_INV_saida[12]~36_combout\ <= NOT \ULA|saida[12]~36_combout\;
\ULA|ALT_INV_saida[12]~35_combout\ <= NOT \ULA|saida[12]~35_combout\;
\MUXRegImed|ALT_INV_saida_MUX[12]~14_combout\ <= NOT \MUXRegImed|saida_MUX[12]~14_combout\;
\BancoRegistradores|ALT_INV_saidaA[12]~12_combout\ <= NOT \BancoRegistradores|saidaA[12]~12_combout\;
\BancoRegistradores|ALT_INV_registrador~1122_combout\ <= NOT \BancoRegistradores|registrador~1122_combout\;
\ULA|ALT_INV_saida[11]~33_combout\ <= NOT \ULA|saida[11]~33_combout\;
\ULA|ALT_INV_saida[11]~32_combout\ <= NOT \ULA|saida[11]~32_combout\;
\MUXRegImed|ALT_INV_saida_MUX[11]~13_combout\ <= NOT \MUXRegImed|saida_MUX[11]~13_combout\;
\BancoRegistradores|ALT_INV_saidaA[11]~11_combout\ <= NOT \BancoRegistradores|saidaA[11]~11_combout\;
\BancoRegistradores|ALT_INV_registrador~1117_combout\ <= NOT \BancoRegistradores|registrador~1117_combout\;
\ULA|ALT_INV_saida[10]~30_combout\ <= NOT \ULA|saida[10]~30_combout\;
\ULA|ALT_INV_saida[10]~29_combout\ <= NOT \ULA|saida[10]~29_combout\;
\MUXRegImed|ALT_INV_saida_MUX[10]~12_combout\ <= NOT \MUXRegImed|saida_MUX[10]~12_combout\;
\BancoRegistradores|ALT_INV_saidaA[10]~10_combout\ <= NOT \BancoRegistradores|saidaA[10]~10_combout\;
\BancoRegistradores|ALT_INV_registrador~1112_combout\ <= NOT \BancoRegistradores|registrador~1112_combout\;
\ULA|ALT_INV_saida[9]~27_combout\ <= NOT \ULA|saida[9]~27_combout\;
\ULA|ALT_INV_saida[9]~26_combout\ <= NOT \ULA|saida[9]~26_combout\;
\MUXRegImed|ALT_INV_saida_MUX[9]~11_combout\ <= NOT \MUXRegImed|saida_MUX[9]~11_combout\;
\BancoRegistradores|ALT_INV_saidaA[9]~9_combout\ <= NOT \BancoRegistradores|saidaA[9]~9_combout\;
\BancoRegistradores|ALT_INV_registrador~1107_combout\ <= NOT \BancoRegistradores|registrador~1107_combout\;
\ULA|ALT_INV_saida[8]~24_combout\ <= NOT \ULA|saida[8]~24_combout\;
\ULA|ALT_INV_saida[8]~23_combout\ <= NOT \ULA|saida[8]~23_combout\;
\MUXRegImed|ALT_INV_saida_MUX[8]~10_combout\ <= NOT \MUXRegImed|saida_MUX[8]~10_combout\;
\BancoRegistradores|ALT_INV_saidaA[8]~8_combout\ <= NOT \BancoRegistradores|saidaA[8]~8_combout\;
\BancoRegistradores|ALT_INV_registrador~1102_combout\ <= NOT \BancoRegistradores|registrador~1102_combout\;
\ULA|ALT_INV_saida[7]~21_combout\ <= NOT \ULA|saida[7]~21_combout\;
\ULA|ALT_INV_saida[7]~20_combout\ <= NOT \ULA|saida[7]~20_combout\;
\MUXRegImed|ALT_INV_saida_MUX[7]~9_combout\ <= NOT \MUXRegImed|saida_MUX[7]~9_combout\;
\BancoRegistradores|ALT_INV_saidaA[7]~7_combout\ <= NOT \BancoRegistradores|saidaA[7]~7_combout\;
\BancoRegistradores|ALT_INV_registrador~1097_combout\ <= NOT \BancoRegistradores|registrador~1097_combout\;
\ULA|ALT_INV_saida[6]~18_combout\ <= NOT \ULA|saida[6]~18_combout\;
\ULA|ALT_INV_saida[6]~17_combout\ <= NOT \ULA|saida[6]~17_combout\;
\MUXRegImed|ALT_INV_saida_MUX[6]~8_combout\ <= NOT \MUXRegImed|saida_MUX[6]~8_combout\;
\BancoRegistradores|ALT_INV_saidaA[6]~6_combout\ <= NOT \BancoRegistradores|saidaA[6]~6_combout\;
\BancoRegistradores|ALT_INV_registrador~1092_combout\ <= NOT \BancoRegistradores|registrador~1092_combout\;
\ULA|ALT_INV_saida[5]~15_combout\ <= NOT \ULA|saida[5]~15_combout\;
\ULA|ALT_INV_saida[5]~14_combout\ <= NOT \ULA|saida[5]~14_combout\;
\MUXRegImed|ALT_INV_saida_MUX[5]~7_combout\ <= NOT \MUXRegImed|saida_MUX[5]~7_combout\;
\BancoRegistradores|ALT_INV_saidaA[5]~5_combout\ <= NOT \BancoRegistradores|saidaA[5]~5_combout\;
\BancoRegistradores|ALT_INV_registrador~1087_combout\ <= NOT \BancoRegistradores|registrador~1087_combout\;
\ULA|ALT_INV_saida[4]~12_combout\ <= NOT \ULA|saida[4]~12_combout\;
\ULA|ALT_INV_saida[4]~11_combout\ <= NOT \ULA|saida[4]~11_combout\;
\MUXRegImed|ALT_INV_saida_MUX[4]~6_combout\ <= NOT \MUXRegImed|saida_MUX[4]~6_combout\;
\MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\ <= NOT \MUXRegImed|saida_MUX[31]~5_combout\;
\BancoRegistradores|ALT_INV_saidaA[4]~4_combout\ <= NOT \BancoRegistradores|saidaA[4]~4_combout\;
\BancoRegistradores|ALT_INV_registrador~1082_combout\ <= NOT \BancoRegistradores|registrador~1082_combout\;
\ULA|ALT_INV_saida[3]~9_combout\ <= NOT \ULA|saida[3]~9_combout\;
\ULA|ALT_INV_Equal7~0_combout\ <= NOT \ULA|Equal7~0_combout\;
\ULA|ALT_INV_saida[3]~8_combout\ <= NOT \ULA|saida[3]~8_combout\;
\MUXRegImed|ALT_INV_saida_MUX[3]~4_combout\ <= NOT \MUXRegImed|saida_MUX[3]~4_combout\;
\BancoRegistradores|ALT_INV_saidaA[3]~3_combout\ <= NOT \BancoRegistradores|saidaA[3]~3_combout\;
\BancoRegistradores|ALT_INV_registrador~1077_combout\ <= NOT \BancoRegistradores|registrador~1077_combout\;
\ULA|ALT_INV_saida[2]~6_combout\ <= NOT \ULA|saida[2]~6_combout\;
\ULA|ALT_INV_saida[2]~5_combout\ <= NOT \ULA|saida[2]~5_combout\;
\MUXRegImed|ALT_INV_saida_MUX[2]~3_combout\ <= NOT \MUXRegImed|saida_MUX[2]~3_combout\;
\BancoRegistradores|ALT_INV_saidaA[2]~2_combout\ <= NOT \BancoRegistradores|saidaA[2]~2_combout\;
\BancoRegistradores|ALT_INV_registrador~1072_combout\ <= NOT \BancoRegistradores|registrador~1072_combout\;
\ULA|ALT_INV_saida[1]~3_combout\ <= NOT \ULA|saida[1]~3_combout\;
\ULA|ALT_INV_saida[1]~2_combout\ <= NOT \ULA|saida[1]~2_combout\;
\MUXRegImed|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \MUXRegImed|saida_MUX[1]~2_combout\;
\BancoRegistradores|ALT_INV_saidaA[1]~1_combout\ <= NOT \BancoRegistradores|saidaA[1]~1_combout\;
\BancoRegistradores|ALT_INV_registrador~1067_combout\ <= NOT \BancoRegistradores|registrador~1067_combout\;
\MUXRegImed|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \MUXRegImed|saida_MUX[0]~1_combout\;
\MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUXRegImed|saida_MUX[0]~0_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\BancoRegistradores|ALT_INV_saidaA[0]~0_combout\ <= NOT \BancoRegistradores|saidaA[0]~0_combout\;
\BancoRegistradores|ALT_INV_registrador~1062_combout\ <= NOT \BancoRegistradores|registrador~1062_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ULA|ALT_INV_saida[17]~0_combout\ <= NOT \ULA|saida[17]~0_combout\;
\ulaUC|ALT_INV_ulaOp[1]~1_combout\ <= NOT \ulaUC|ulaOp[1]~1_combout\;
\ulaUC|ALT_INV_ulaOp[0]~0_combout\ <= NOT \ulaUC|ulaOp[0]~0_combout\;
\ulaUC|ALT_INV_Equal5~0_combout\ <= NOT \ulaUC|Equal5~0_combout\;
\UC|ALT_INV_Equal7~0_combout\ <= NOT \UC|Equal7~0_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ulaUC|ALT_INV_Equal7~0_combout\ <= NOT \ulaUC|Equal7~0_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ULA|ALT_INV_Equal8~15_combout\ <= NOT \ULA|Equal8~15_combout\;
\ULA|ALT_INV_Equal8~14_combout\ <= NOT \ULA|Equal8~14_combout\;
\ULA|ALT_INV_Equal8~13_combout\ <= NOT \ULA|Equal8~13_combout\;
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
\ULA|ALT_INV_saida[31]~93_combout\ <= NOT \ULA|saida[31]~93_combout\;
\ULA|ALT_INV_saida[31]~92_combout\ <= NOT \ULA|saida[31]~92_combout\;
\MUXRegImed|ALT_INV_saida_MUX[31]~33_combout\ <= NOT \MUXRegImed|saida_MUX[31]~33_combout\;
\BancoRegistradores|ALT_INV_saidaA[31]~31_combout\ <= NOT \BancoRegistradores|saidaA[31]~31_combout\;
\BancoRegistradores|ALT_INV_registrador~1217_combout\ <= NOT \BancoRegistradores|registrador~1217_combout\;
\ULA|ALT_INV_saida[30]~90_combout\ <= NOT \ULA|saida[30]~90_combout\;
\ULA|ALT_INV_saida[30]~89_combout\ <= NOT \ULA|saida[30]~89_combout\;
\MUXRegImed|ALT_INV_saida_MUX[30]~32_combout\ <= NOT \MUXRegImed|saida_MUX[30]~32_combout\;
\BancoRegistradores|ALT_INV_saidaA[30]~30_combout\ <= NOT \BancoRegistradores|saidaA[30]~30_combout\;
\BancoRegistradores|ALT_INV_registrador~1212_combout\ <= NOT \BancoRegistradores|registrador~1212_combout\;
\ULA|ALT_INV_saida[29]~87_combout\ <= NOT \ULA|saida[29]~87_combout\;
\ULA|ALT_INV_saida[29]~86_combout\ <= NOT \ULA|saida[29]~86_combout\;
\MUXRegImed|ALT_INV_saida_MUX[29]~31_combout\ <= NOT \MUXRegImed|saida_MUX[29]~31_combout\;
\BancoRegistradores|ALT_INV_saidaA[29]~29_combout\ <= NOT \BancoRegistradores|saidaA[29]~29_combout\;
\BancoRegistradores|ALT_INV_registrador~1207_combout\ <= NOT \BancoRegistradores|registrador~1207_combout\;
\ULA|ALT_INV_saida[28]~84_combout\ <= NOT \ULA|saida[28]~84_combout\;
\ULA|ALT_INV_saida[28]~83_combout\ <= NOT \ULA|saida[28]~83_combout\;
\MUXRegImed|ALT_INV_saida_MUX[28]~30_combout\ <= NOT \MUXRegImed|saida_MUX[28]~30_combout\;
\BancoRegistradores|ALT_INV_saidaA[28]~28_combout\ <= NOT \BancoRegistradores|saidaA[28]~28_combout\;
\BancoRegistradores|ALT_INV_registrador~1202_combout\ <= NOT \BancoRegistradores|registrador~1202_combout\;
\ULA|ALT_INV_saida[27]~81_combout\ <= NOT \ULA|saida[27]~81_combout\;
\ULA|ALT_INV_saida[27]~80_combout\ <= NOT \ULA|saida[27]~80_combout\;
\MUXRegImed|ALT_INV_saida_MUX[27]~29_combout\ <= NOT \MUXRegImed|saida_MUX[27]~29_combout\;
\BancoRegistradores|ALT_INV_saidaA[27]~27_combout\ <= NOT \BancoRegistradores|saidaA[27]~27_combout\;
\BancoRegistradores|ALT_INV_registrador~1197_combout\ <= NOT \BancoRegistradores|registrador~1197_combout\;
\ULA|ALT_INV_saida[26]~78_combout\ <= NOT \ULA|saida[26]~78_combout\;
\ULA|ALT_INV_saida[26]~77_combout\ <= NOT \ULA|saida[26]~77_combout\;
\MUXRegImed|ALT_INV_saida_MUX[26]~28_combout\ <= NOT \MUXRegImed|saida_MUX[26]~28_combout\;
\BancoRegistradores|ALT_INV_saidaA[26]~26_combout\ <= NOT \BancoRegistradores|saidaA[26]~26_combout\;
\BancoRegistradores|ALT_INV_registrador~1192_combout\ <= NOT \BancoRegistradores|registrador~1192_combout\;
\ULA|ALT_INV_saida[25]~75_combout\ <= NOT \ULA|saida[25]~75_combout\;
\ULA|ALT_INV_saida[25]~74_combout\ <= NOT \ULA|saida[25]~74_combout\;
\MUXRegImed|ALT_INV_saida_MUX[25]~27_combout\ <= NOT \MUXRegImed|saida_MUX[25]~27_combout\;
\BancoRegistradores|ALT_INV_saidaA[25]~25_combout\ <= NOT \BancoRegistradores|saidaA[25]~25_combout\;
\BancoRegistradores|ALT_INV_registrador~1187_combout\ <= NOT \BancoRegistradores|registrador~1187_combout\;
\ULA|ALT_INV_saida[24]~72_combout\ <= NOT \ULA|saida[24]~72_combout\;
\ULA|ALT_INV_saida[24]~71_combout\ <= NOT \ULA|saida[24]~71_combout\;
\MUXRegImed|ALT_INV_saida_MUX[24]~26_combout\ <= NOT \MUXRegImed|saida_MUX[24]~26_combout\;
\BancoRegistradores|ALT_INV_saidaA[24]~24_combout\ <= NOT \BancoRegistradores|saidaA[24]~24_combout\;
\BancoRegistradores|ALT_INV_registrador~1182_combout\ <= NOT \BancoRegistradores|registrador~1182_combout\;
\ULA|ALT_INV_saida[23]~69_combout\ <= NOT \ULA|saida[23]~69_combout\;
\ULA|ALT_INV_saida[23]~68_combout\ <= NOT \ULA|saida[23]~68_combout\;
\MUXRegImed|ALT_INV_saida_MUX[23]~25_combout\ <= NOT \MUXRegImed|saida_MUX[23]~25_combout\;
\BancoRegistradores|ALT_INV_saidaA[23]~23_combout\ <= NOT \BancoRegistradores|saidaA[23]~23_combout\;
\BancoRegistradores|ALT_INV_registrador~1177_combout\ <= NOT \BancoRegistradores|registrador~1177_combout\;
\ULA|ALT_INV_saida[22]~66_combout\ <= NOT \ULA|saida[22]~66_combout\;
\ULA|ALT_INV_saida[22]~65_combout\ <= NOT \ULA|saida[22]~65_combout\;
\MUXRegImed|ALT_INV_saida_MUX[22]~24_combout\ <= NOT \MUXRegImed|saida_MUX[22]~24_combout\;
\BancoRegistradores|ALT_INV_saidaA[22]~22_combout\ <= NOT \BancoRegistradores|saidaA[22]~22_combout\;
\BancoRegistradores|ALT_INV_registrador~1172_combout\ <= NOT \BancoRegistradores|registrador~1172_combout\;
\ULA|ALT_INV_saida[21]~63_combout\ <= NOT \ULA|saida[21]~63_combout\;
\ULA|ALT_INV_saida[21]~62_combout\ <= NOT \ULA|saida[21]~62_combout\;
\MUXRegImed|ALT_INV_saida_MUX[21]~23_combout\ <= NOT \MUXRegImed|saida_MUX[21]~23_combout\;
\BancoRegistradores|ALT_INV_saidaA[21]~21_combout\ <= NOT \BancoRegistradores|saidaA[21]~21_combout\;
\BancoRegistradores|ALT_INV_registrador~1167_combout\ <= NOT \BancoRegistradores|registrador~1167_combout\;
\ULA|ALT_INV_saida[20]~60_combout\ <= NOT \ULA|saida[20]~60_combout\;
\ULA|ALT_INV_saida[20]~59_combout\ <= NOT \ULA|saida[20]~59_combout\;
\MUXRegImed|ALT_INV_saida_MUX[20]~22_combout\ <= NOT \MUXRegImed|saida_MUX[20]~22_combout\;
\BancoRegistradores|ALT_INV_saidaA[20]~20_combout\ <= NOT \BancoRegistradores|saidaA[20]~20_combout\;
\BancoRegistradores|ALT_INV_registrador~1162_combout\ <= NOT \BancoRegistradores|registrador~1162_combout\;
\ULA|ALT_INV_saida[19]~57_combout\ <= NOT \ULA|saida[19]~57_combout\;
\ULA|ALT_INV_saida[19]~56_combout\ <= NOT \ULA|saida[19]~56_combout\;
\MUXRegImed|ALT_INV_saida_MUX[19]~21_combout\ <= NOT \MUXRegImed|saida_MUX[19]~21_combout\;
\BancoRegistradores|ALT_INV_saidaA[19]~19_combout\ <= NOT \BancoRegistradores|saidaA[19]~19_combout\;
\BancoRegistradores|ALT_INV_registrador~1157_combout\ <= NOT \BancoRegistradores|registrador~1157_combout\;
\ULA|ALT_INV_saida[18]~54_combout\ <= NOT \ULA|saida[18]~54_combout\;
\ULA|ALT_INV_saida[18]~53_combout\ <= NOT \ULA|saida[18]~53_combout\;
\MUXRegImed|ALT_INV_saida_MUX[18]~20_combout\ <= NOT \MUXRegImed|saida_MUX[18]~20_combout\;
\BancoRegistradores|ALT_INV_saidaA[18]~18_combout\ <= NOT \BancoRegistradores|saidaA[18]~18_combout\;
\BancoRegistradores|ALT_INV_registrador~1152_combout\ <= NOT \BancoRegistradores|registrador~1152_combout\;
\ULA|ALT_INV_saida[17]~51_combout\ <= NOT \ULA|saida[17]~51_combout\;
\ulaUC|ALT_INV_ulaOp~4_combout\ <= NOT \ulaUC|ulaOp~4_combout\;
\ulaUC|ALT_INV_ulaOp[1]~3_combout\ <= NOT \ulaUC|ulaOp[1]~3_combout\;
\ulaUC|ALT_INV_ulaOp[1]~2_combout\ <= NOT \ulaUC|ulaOp[1]~2_combout\;
\BancoRegistradores|ALT_INV_Equal0~0_combout\ <= NOT \BancoRegistradores|Equal0~0_combout\;
\ULA|ALT_INV_saida[17]~96_combout\ <= NOT \ULA|saida[17]~96_combout\;
\ULA|ALT_INV_saida[17]~95_combout\ <= NOT \ULA|saida[17]~95_combout\;
\ULA|ALT_INV_Equal8~20_combout\ <= NOT \ULA|Equal8~20_combout\;
\ULA|ALT_INV_Equal8~19_combout\ <= NOT \ULA|Equal8~19_combout\;
\ULA|ALT_INV_Equal8~18_combout\ <= NOT \ULA|Equal8~18_combout\;
\BancoRegistradores|ALT_INV_registrador~1256_combout\ <= NOT \BancoRegistradores|registrador~1256_combout\;
\BancoRegistradores|ALT_INV_registrador~1255_combout\ <= NOT \BancoRegistradores|registrador~1255_combout\;
\BancoRegistradores|ALT_INV_registrador~1254_combout\ <= NOT \BancoRegistradores|registrador~1254_combout\;
\BancoRegistradores|ALT_INV_registrador~1253_combout\ <= NOT \BancoRegistradores|registrador~1253_combout\;
\BancoRegistradores|ALT_INV_registrador~1252_combout\ <= NOT \BancoRegistradores|registrador~1252_combout\;
\BancoRegistradores|ALT_INV_registrador~1251_combout\ <= NOT \BancoRegistradores|registrador~1251_combout\;
\BancoRegistradores|ALT_INV_registrador~1250_combout\ <= NOT \BancoRegistradores|registrador~1250_combout\;
\BancoRegistradores|ALT_INV_registrador~1249_combout\ <= NOT \BancoRegistradores|registrador~1249_combout\;
\BancoRegistradores|ALT_INV_registrador~1248_combout\ <= NOT \BancoRegistradores|registrador~1248_combout\;
\BancoRegistradores|ALT_INV_registrador~1247_combout\ <= NOT \BancoRegistradores|registrador~1247_combout\;
\BancoRegistradores|ALT_INV_registrador~1246_combout\ <= NOT \BancoRegistradores|registrador~1246_combout\;
\BancoRegistradores|ALT_INV_registrador~1245_combout\ <= NOT \BancoRegistradores|registrador~1245_combout\;
\BancoRegistradores|ALT_INV_registrador~1244_combout\ <= NOT \BancoRegistradores|registrador~1244_combout\;
\BancoRegistradores|ALT_INV_registrador~1243_combout\ <= NOT \BancoRegistradores|registrador~1243_combout\;
\BancoRegistradores|ALT_INV_registrador~1242_combout\ <= NOT \BancoRegistradores|registrador~1242_combout\;
\BancoRegistradores|ALT_INV_registrador~1241_combout\ <= NOT \BancoRegistradores|registrador~1241_combout\;
\BancoRegistradores|ALT_INV_registrador~1240_combout\ <= NOT \BancoRegistradores|registrador~1240_combout\;
\BancoRegistradores|ALT_INV_registrador~1239_combout\ <= NOT \BancoRegistradores|registrador~1239_combout\;
\BancoRegistradores|ALT_INV_registrador~1238_combout\ <= NOT \BancoRegistradores|registrador~1238_combout\;
\BancoRegistradores|ALT_INV_registrador~1237_combout\ <= NOT \BancoRegistradores|registrador~1237_combout\;
\BancoRegistradores|ALT_INV_registrador~1236_combout\ <= NOT \BancoRegistradores|registrador~1236_combout\;
\BancoRegistradores|ALT_INV_registrador~1235_combout\ <= NOT \BancoRegistradores|registrador~1235_combout\;
\BancoRegistradores|ALT_INV_registrador~1234_combout\ <= NOT \BancoRegistradores|registrador~1234_combout\;
\BancoRegistradores|ALT_INV_registrador~1233_combout\ <= NOT \BancoRegistradores|registrador~1233_combout\;
\BancoRegistradores|ALT_INV_registrador~1232_combout\ <= NOT \BancoRegistradores|registrador~1232_combout\;
\BancoRegistradores|ALT_INV_registrador~1231_combout\ <= NOT \BancoRegistradores|registrador~1231_combout\;
\BancoRegistradores|ALT_INV_registrador~1230_combout\ <= NOT \BancoRegistradores|registrador~1230_combout\;
\BancoRegistradores|ALT_INV_registrador~1229_combout\ <= NOT \BancoRegistradores|registrador~1229_combout\;
\BancoRegistradores|ALT_INV_registrador~1228_combout\ <= NOT \BancoRegistradores|registrador~1228_combout\;
\BancoRegistradores|ALT_INV_registrador~1227_combout\ <= NOT \BancoRegistradores|registrador~1227_combout\;
\BancoRegistradores|ALT_INV_registrador~1226_combout\ <= NOT \BancoRegistradores|registrador~1226_combout\;
\BancoRegistradores|ALT_INV_registrador~1225_combout\ <= NOT \BancoRegistradores|registrador~1225_combout\;
\BancoRegistradores|ALT_INV_registrador~1222_combout\ <= NOT \BancoRegistradores|registrador~1222_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\UC|ALT_INV_Equal8~1_combout\ <= NOT \UC|Equal8~1_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ULA|ALT_INV_Equal8~17_combout\ <= NOT \ULA|Equal8~17_combout\;
\ULA|ALT_INV_Equal8~16_combout\ <= NOT \ULA|Equal8~16_combout\;
\UC|ALT_INV_Equal9~0_combout\ <= NOT \UC|Equal9~0_combout\;

\ULAout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[0]~1_combout\,
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
	i => \ULA|saida[1]~4_combout\,
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
	i => \ULA|saida[2]~7_combout\,
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
	i => \ULA|saida[3]~10_combout\,
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
	i => \ULA|saida[4]~13_combout\,
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
	i => \ULA|saida[5]~16_combout\,
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
	i => \ULA|saida[6]~19_combout\,
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
	i => \ULA|saida[7]~22_combout\,
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
	i => \ULA|saida[8]~25_combout\,
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
	i => \ULA|saida[9]~28_combout\,
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
	i => \ULA|saida[10]~31_combout\,
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
	i => \ULA|saida[11]~34_combout\,
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
	i => \ULA|saida[12]~37_combout\,
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
	i => \ULA|saida[13]~40_combout\,
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
	i => \ULA|saida[14]~43_combout\,
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
	i => \ULA|saida[15]~46_combout\,
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
	i => \ULA|saida[16]~49_combout\,
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
	i => \ULA|saida[17]~52_combout\,
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
	i => \ULA|saida[18]~55_combout\,
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
	i => \ULA|saida[19]~58_combout\,
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
	i => \ULA|saida[20]~61_combout\,
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
	i => \ULA|saida[21]~64_combout\,
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
	i => \ULA|saida[22]~67_combout\,
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
	i => \ULA|saida[23]~70_combout\,
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
	i => \ULA|saida[24]~73_combout\,
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
	i => \ULA|saida[25]~76_combout\,
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
	i => \ULA|saida[26]~79_combout\,
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
	i => \ULA|saida[27]~82_combout\,
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
	i => \ULA|saida[28]~85_combout\,
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
	i => \ULA|saida[29]~88_combout\,
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
	i => \ULA|saida[30]~91_combout\,
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
	i => \ULA|saida[31]~94_combout\,
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
	i => \ULA|Equal8~14_combout\,
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
	i => \UC|Equal7~0_combout\,
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
	i => \andCONTROLEZEROSignal~combout\,
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
	i => \BancoRegistradores|saidaA[0]~0_combout\,
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
	i => \BancoRegistradores|saidaA[1]~1_combout\,
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
	i => \BancoRegistradores|saidaA[2]~2_combout\,
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
	i => \BancoRegistradores|saidaA[3]~3_combout\,
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
	i => \BancoRegistradores|saidaA[4]~4_combout\,
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
	i => \BancoRegistradores|saidaA[5]~5_combout\,
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
	i => \BancoRegistradores|saidaA[6]~6_combout\,
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
	i => \BancoRegistradores|saidaA[7]~7_combout\,
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
	i => \BancoRegistradores|saidaA[8]~8_combout\,
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
	i => \BancoRegistradores|saidaA[9]~9_combout\,
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
	i => \BancoRegistradores|saidaA[10]~10_combout\,
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
	i => \BancoRegistradores|saidaA[11]~11_combout\,
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
	i => \BancoRegistradores|saidaA[12]~12_combout\,
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
	i => \BancoRegistradores|saidaA[13]~13_combout\,
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
	i => \BancoRegistradores|saidaA[14]~14_combout\,
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
	i => \BancoRegistradores|saidaA[15]~15_combout\,
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
	i => \BancoRegistradores|saidaA[16]~16_combout\,
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
	i => \BancoRegistradores|saidaA[17]~17_combout\,
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
	i => \BancoRegistradores|saidaA[18]~18_combout\,
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
	i => \BancoRegistradores|saidaA[19]~19_combout\,
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
	i => \BancoRegistradores|saidaA[20]~20_combout\,
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
	i => \BancoRegistradores|saidaA[21]~21_combout\,
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
	i => \BancoRegistradores|saidaA[22]~22_combout\,
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
	i => \BancoRegistradores|saidaA[23]~23_combout\,
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
	i => \BancoRegistradores|saidaA[24]~24_combout\,
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
	i => \BancoRegistradores|saidaA[25]~25_combout\,
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
	i => \BancoRegistradores|saidaA[26]~26_combout\,
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
	i => \BancoRegistradores|saidaA[27]~27_combout\,
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
	i => \BancoRegistradores|saidaA[28]~28_combout\,
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
	i => \BancoRegistradores|saidaA[29]~29_combout\,
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
	i => \BancoRegistradores|saidaA[30]~30_combout\,
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
	i => \BancoRegistradores|saidaA[31]~31_combout\,
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
	i => \MUXRegImed|saida_MUX[0]~1_combout\,
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
	i => \MUXRegImed|saida_MUX[1]~2_combout\,
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
	i => \MUXRegImed|saida_MUX[2]~3_combout\,
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
	i => \MUXRegImed|saida_MUX[3]~4_combout\,
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
	i => \MUXRegImed|saida_MUX[4]~6_combout\,
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
	i => \MUXRegImed|saida_MUX[5]~7_combout\,
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
	i => \MUXRegImed|saida_MUX[6]~8_combout\,
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
	i => \MUXRegImed|saida_MUX[7]~9_combout\,
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
	i => \MUXRegImed|saida_MUX[8]~10_combout\,
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
	i => \MUXRegImed|saida_MUX[9]~11_combout\,
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
	i => \MUXRegImed|saida_MUX[10]~12_combout\,
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
	i => \MUXRegImed|saida_MUX[11]~13_combout\,
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
	i => \MUXRegImed|saida_MUX[12]~14_combout\,
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
	i => \MUXRegImed|saida_MUX[13]~15_combout\,
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
	i => \MUXRegImed|saida_MUX[14]~16_combout\,
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
	i => \MUXRegImed|saida_MUX[15]~17_combout\,
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
	i => \MUXRegImed|saida_MUX[16]~18_combout\,
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
	i => \MUXRegImed|saida_MUX[17]~19_combout\,
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
	i => \MUXRegImed|saida_MUX[18]~20_combout\,
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
	i => \MUXRegImed|saida_MUX[19]~21_combout\,
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
	i => \MUXRegImed|saida_MUX[20]~22_combout\,
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
	i => \MUXRegImed|saida_MUX[21]~23_combout\,
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
	i => \MUXRegImed|saida_MUX[22]~24_combout\,
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
	i => \MUXRegImed|saida_MUX[23]~25_combout\,
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
	i => \MUXRegImed|saida_MUX[24]~26_combout\,
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
	i => \MUXRegImed|saida_MUX[25]~27_combout\,
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
	i => \MUXRegImed|saida_MUX[26]~28_combout\,
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
	i => \MUXRegImed|saida_MUX[27]~29_combout\,
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
	i => \MUXRegImed|saida_MUX[28]~30_combout\,
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
	i => \MUXRegImed|saida_MUX[29]~31_combout\,
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
	i => \MUXRegImed|saida_MUX[30]~32_combout\,
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
	i => \MUXRegImed|saida_MUX[31]~33_combout\,
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

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ((!\PC|DOUT\(4) & ((\PC|DOUT\(3)))) # (\PC|DOUT\(4) & (!\PC|DOUT\(2)))) # (\PC|DOUT\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101011111111001110101111111100111010111111110011101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\ROM|memROM~0_combout\) # (\ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

\somaQuatro|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \somaQuatro|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \somaQuatro|Add0~9_sumout\,
	cout => \somaQuatro|Add0~10\);

\somaQuatro|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \somaQuatro|Add0~10\ ))
-- \somaQuatro|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \somaQuatro|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \somaQuatro|Add0~10\,
	sumout => \somaQuatro|Add0~13_sumout\,
	cout => \somaQuatro|Add0~14\);

\somaQuatro|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somaQuatro|Add0~14\ ))
-- \somaQuatro|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somaQuatro|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \somaQuatro|Add0~14\,
	sumout => \somaQuatro|Add0~17_sumout\,
	cout => \somaQuatro|Add0~18\);

\somaQuatro|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somaQuatro|Add0~18\ ))
-- \somaQuatro|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somaQuatro|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \somaQuatro|Add0~18\,
	sumout => \somaQuatro|Add0~21_sumout\,
	cout => \somaQuatro|Add0~22\);

\somaQuatro|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~5_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somaQuatro|Add0~22\ ))
-- \somaQuatro|Add0~6\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somaQuatro|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \somaQuatro|Add0~22\,
	sumout => \somaQuatro|Add0~5_sumout\,
	cout => \somaQuatro|Add0~6\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (\PC|DOUT\(2) & (\PC|DOUT\(3) & (\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
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

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\PC|DOUT\(5) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(3) & \PC|DOUT\(4))) # (\PC|DOUT\(2) & (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000000000110010000000000011001000000000001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\PC|DOUT\(5) & ((!\PC|DOUT\(2) & (\PC|DOUT\(3) & !\PC|DOUT\(4))) # (\PC|DOUT\(2) & ((\PC|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100000000001001010000000000100101000000000010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~3_combout\);

\somaSHIFT|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~1_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \somaQuatro|Add0~9_sumout\ ) + ( !VCC ))
-- \somaSHIFT|Add0~2\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \somaQuatro|Add0~9_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~9_sumout\,
	cin => GND,
	sumout => \somaSHIFT|Add0~1_sumout\,
	cout => \somaSHIFT|Add0~2\);

\somaSHIFT|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~5_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~3_combout\)) ) + ( \somaQuatro|Add0~13_sumout\ ) + ( \somaSHIFT|Add0~2\ ))
-- \somaSHIFT|Add0~6\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~3_combout\)) ) + ( \somaQuatro|Add0~13_sumout\ ) + ( \somaSHIFT|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~13_sumout\,
	cin => \somaSHIFT|Add0~2\,
	sumout => \somaSHIFT|Add0~5_sumout\,
	cout => \somaSHIFT|Add0~6\);

\somaSHIFT|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~9_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~5_combout\)) ) + ( \somaQuatro|Add0~17_sumout\ ) + ( \somaSHIFT|Add0~6\ ))
-- \somaSHIFT|Add0~10\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \ROM|memROM~5_combout\)) ) + ( \somaQuatro|Add0~17_sumout\ ) + ( \somaSHIFT|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~17_sumout\,
	cin => \somaSHIFT|Add0~6\,
	sumout => \somaSHIFT|Add0~9_sumout\,
	cout => \somaSHIFT|Add0~10\);

\somaSHIFT|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~13_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM|memROM~1_combout\)) ) + ( \somaQuatro|Add0~21_sumout\ ) + ( \somaSHIFT|Add0~10\ ))
-- \somaSHIFT|Add0~14\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\ROM|memROM~1_combout\)) ) + ( \somaQuatro|Add0~21_sumout\ ) + ( \somaSHIFT|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~21_sumout\,
	cin => \somaSHIFT|Add0~10\,
	sumout => \somaSHIFT|Add0~13_sumout\,
	cout => \somaSHIFT|Add0~14\);

\somaSHIFT|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~17_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~5_sumout\ ) + ( \somaSHIFT|Add0~14\ ))
-- \somaSHIFT|Add0~18\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~5_sumout\ ) + ( \somaSHIFT|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~5_sumout\,
	cin => \somaSHIFT|Add0~14\,
	sumout => \somaSHIFT|Add0~17_sumout\,
	cout => \somaSHIFT|Add0~18\);

\ulaUC|ulaOp[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp[1]~2_combout\ = ( \PC|DOUT\(2) & ( \PC|DOUT\(7) ) ) # ( !\PC|DOUT\(2) & ( \PC|DOUT\(7) ) ) # ( \PC|DOUT\(2) & ( !\PC|DOUT\(7) & ( ((!\PC|DOUT\(4) $ (!\PC|DOUT\(3))) # (\PC|DOUT\(5))) # (\PC|DOUT\(6)) ) ) ) # ( !\PC|DOUT\(2) & ( !\PC|DOUT\(7) 
-- & ( (((\PC|DOUT\(4) & !\PC|DOUT\(3))) # (\PC|DOUT\(5))) # (\PC|DOUT\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111011111111111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ulaUC|ulaOp[1]~2_combout\);

\BancoRegistradores|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|Equal0~0_combout\ = ((\PC|DOUT\(5)) # (\PC|DOUT\(7))) # (\PC|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(5),
	combout => \BancoRegistradores|Equal0~0_combout\);

\MUXRegImed|saida_MUX[31]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[31]~5_combout\ = (!\ROM|memROM~9_combout\) # ((!\ROM|memROM~0_combout\) # (\ROM|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111101111111011111110111111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	combout => \MUXRegImed|saida_MUX[31]~5_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & ((\PC|DOUT\(4)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & (!\PC|DOUT\(3) $ (!\PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000001100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~11_combout\);

\ULA|saida[17]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~95_combout\ = ( \PC|DOUT\(3) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & !\PC|DOUT\(5))) ) ) # ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & !\PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000001000000010000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(3),
	combout => \ULA|saida[17]~95_combout\);

\ULA|saida[17]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~96_combout\ = ( !\PC|DOUT\(4) & ( \PC|DOUT\(3) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (\PC|DOUT\(2) & !\PC|DOUT\(5)))) ) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (\PC|DOUT\(2) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ULA|saida[17]~96_combout\);

\ulaUC|ulaOp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp~4_combout\ = ( \PC|DOUT\(2) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & (\PC|DOUT\(4) & !\PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(2) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & (!\PC|DOUT\(4) & \PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ulaUC|ulaOp~4_combout\);

\ulaUC|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|Equal7~0_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ulaUC|Equal7~0_combout\);

\ulaUC|ulaOp[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp[1]~3_combout\ = (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & (\PC|DOUT\(3) & !\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(7),
	combout => \ulaUC|ulaOp[1]~3_combout\);

\ulaUC|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|Equal5~0_combout\ = ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~0_combout\ & ( (\PC|DOUT\(2) & (\PC|DOUT\(3) & (\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ulaUC|Equal5~0_combout\);

\ULA|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal7~0_combout\ = ( \ulaUC|Equal5~0_combout\ & ( \ulaUC|ulaOp[1]~2_combout\ & ( ((!\ulaUC|ulaOp~4_combout\) # ((\ulaUC|ulaOp[1]~3_combout\) # (\ulaUC|Equal7~0_combout\))) # (\ROM|memROM~2_combout\) ) ) ) # ( !\ulaUC|Equal5~0_combout\ & ( 
-- \ulaUC|ulaOp[1]~2_combout\ & ( (!\ulaUC|ulaOp~4_combout\ & (((!\ulaUC|Equal7~0_combout\ & !\ulaUC|ulaOp[1]~3_combout\)))) # (\ulaUC|ulaOp~4_combout\ & (\ROM|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010001000100011101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ulaUC|ALT_INV_ulaOp~4_combout\,
	datac => \ulaUC|ALT_INV_Equal7~0_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datae => \ulaUC|ALT_INV_Equal5~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	combout => \ULA|Equal7~0_combout\);

\UC|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal8~0_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~0_combout\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \UC|Equal8~0_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\PC|DOUT\(5) & (!\PC|DOUT\(7) & !\PC|DOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~15_combout\);

\UC|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal8~1_combout\ = (\ROM|memROM~9_combout\ & (\ROM|memROM~0_combout\ & !\ROM|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	combout => \UC|Equal8~1_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~16_combout\);

\BancoRegistradores|registrador~1222\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1222_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(2)) # (((\PC|DOUT\(5)) # (\PC|DOUT\(4))) # (\PC|DOUT\(3))) ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(5) 
-- & ((!\PC|DOUT\(3) & ((!\PC|DOUT\(4)))) # (\PC|DOUT\(3) & (\PC|DOUT\(2) & \PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000001000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BancoRegistradores|registrador~1222_combout\);

\BancoRegistradores|registrador~1224\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1224_combout\ = ( \ROM|memROM~16_combout\ & ( !\BancoRegistradores|registrador~1222_combout\ & ( (!\UC|Equal8~1_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~13_combout\)) ) ) ) # ( !\ROM|memROM~16_combout\ & ( 
-- !\BancoRegistradores|registrador~1222_combout\ & ( (!\ROM|memROM~10_combout\ & ((!\UC|Equal8~1_combout\ & ((\ROM|memROM~13_combout\))) # (\UC|Equal8~1_combout\ & (\ROM|memROM~15_combout\ & !\ROM|memROM~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \UC|ALT_INV_Equal8~1_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1222_combout\,
	combout => \BancoRegistradores|registrador~1224_combout\);

\BancoRegistradores|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[30]~91_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~324_q\);

\BancoRegistradores|registrador~1255\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1255_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~68_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~68_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1255_combout\);

\BancoRegistradores|registrador~1213\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1213_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1255_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1255_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1255_combout\ & ( (\BancoRegistradores|registrador~324_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~324_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1255_combout\,
	combout => \BancoRegistradores|registrador~1213_combout\);

\MUXRegImed|saida_MUX[30]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[30]~32_combout\ = (\BancoRegistradores|registrador~1213_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1213_combout\,
	combout => \MUXRegImed|saida_MUX[30]~32_combout\);

\ULA|saida[30]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~90_combout\ = ( \MUXRegImed|saida_MUX[30]~32_combout\ & ( (!\BancoRegistradores|saidaA[30]~30_combout\ & (!\ULA|saida[17]~96_combout\ & ((\ULA|Equal7~0_combout\) # (\ULA|saida[17]~95_combout\)))) # 
-- (\BancoRegistradores|saidaA[30]~30_combout\ & (!\ULA|saida[17]~95_combout\ $ ((\ULA|saida[17]~96_combout\)))) ) ) # ( !\MUXRegImed|saida_MUX[30]~32_combout\ & ( (!\ULA|saida[17]~96_combout\ & (!\BancoRegistradores|saidaA[30]~30_combout\ $ 
-- (!\ULA|saida[17]~95_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000011110000101100000011000000110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[30]~30_combout\,
	datab => \ULA|ALT_INV_saida[17]~95_combout\,
	datac => \ULA|ALT_INV_saida[17]~96_combout\,
	datad => \ULA|ALT_INV_Equal7~0_combout\,
	datae => \MUXRegImed|ALT_INV_saida_MUX[30]~32_combout\,
	combout => \ULA|saida[30]~90_combout\);

\ULA|saida[30]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~91_combout\ = (!\ulaUC|ulaOp[1]~2_combout\ & (\ULA|saida[30]~89_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((\ULA|saida[30]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[30]~89_combout\,
	datac => \ULA|ALT_INV_saida[30]~90_combout\,
	combout => \ULA|saida[30]~91_combout\);

\BancoRegistradores|registrador~1223\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1223_combout\ = ( \ROM|memROM~16_combout\ & ( !\BancoRegistradores|registrador~1222_combout\ & ( (!\UC|Equal8~1_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~13_combout\)) ) ) ) # ( !\ROM|memROM~16_combout\ & ( 
-- !\BancoRegistradores|registrador~1222_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~13_combout\ & ((!\ROM|memROM~15_combout\) # (!\UC|Equal8~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \UC|ALT_INV_Equal8~1_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1222_combout\,
	combout => \BancoRegistradores|registrador~1223_combout\);

\BancoRegistradores|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[30]~91_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~68_q\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & (!\PC|DOUT\(3) $ (!\PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000000000000000000000101000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~12_combout\);

\BancoRegistradores|registrador~1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1212_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~324_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~68_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~68_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~324_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1212_combout\);

\BancoRegistradores|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[30]~30_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1212_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1212_combout\,
	combout => \BancoRegistradores|saidaA[30]~30_combout\);

\BancoRegistradores|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[29]~88_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~323_q\);

\BancoRegistradores|registrador~1254\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1254_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~67_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~67_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1254_combout\);

\BancoRegistradores|registrador~1208\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1208_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1254_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1254_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1254_combout\ & ( (\BancoRegistradores|registrador~323_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~323_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1254_combout\,
	combout => \BancoRegistradores|registrador~1208_combout\);

\BancoRegistradores|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[28]~85_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~322_q\);

\BancoRegistradores|registrador~1253\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1253_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~66_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~66_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1253_combout\);

\BancoRegistradores|registrador~1203\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1203_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1253_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1253_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1253_combout\ & ( (\BancoRegistradores|registrador~322_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~322_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1253_combout\,
	combout => \BancoRegistradores|registrador~1203_combout\);

\BancoRegistradores|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[27]~82_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~321_q\);

\BancoRegistradores|registrador~1252\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1252_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~65_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~65_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1252_combout\);

\BancoRegistradores|registrador~1198\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1198_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1252_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1252_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1252_combout\ & ( (\BancoRegistradores|registrador~321_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~321_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1252_combout\,
	combout => \BancoRegistradores|registrador~1198_combout\);

\BancoRegistradores|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[26]~79_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~320_q\);

\BancoRegistradores|registrador~1251\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1251_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~64_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~64_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1251_combout\);

\BancoRegistradores|registrador~1193\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1193_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1251_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1251_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1251_combout\ & ( (\BancoRegistradores|registrador~320_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~320_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1251_combout\,
	combout => \BancoRegistradores|registrador~1193_combout\);

\BancoRegistradores|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[25]~76_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~319_q\);

\BancoRegistradores|registrador~1250\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1250_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~63_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~63_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1250_combout\);

\BancoRegistradores|registrador~1188\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1188_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1250_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1250_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1250_combout\ & ( (\BancoRegistradores|registrador~319_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~319_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1250_combout\,
	combout => \BancoRegistradores|registrador~1188_combout\);

\BancoRegistradores|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[24]~73_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~318_q\);

\BancoRegistradores|registrador~1249\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1249_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~62_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~62_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1249_combout\);

\BancoRegistradores|registrador~1183\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1183_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1249_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1249_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1249_combout\ & ( (\BancoRegistradores|registrador~318_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~318_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1249_combout\,
	combout => \BancoRegistradores|registrador~1183_combout\);

\BancoRegistradores|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[23]~70_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~317_q\);

\BancoRegistradores|registrador~1248\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1248_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~61_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~61_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1248_combout\);

\BancoRegistradores|registrador~1178\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1178_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1248_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1248_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1248_combout\ & ( (\BancoRegistradores|registrador~317_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~317_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1248_combout\,
	combout => \BancoRegistradores|registrador~1178_combout\);

\BancoRegistradores|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[22]~67_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~316_q\);

\BancoRegistradores|registrador~1247\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1247_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~60_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~60_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1247_combout\);

\BancoRegistradores|registrador~1173\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1173_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1247_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1247_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1247_combout\ & ( (\BancoRegistradores|registrador~316_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~316_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1247_combout\,
	combout => \BancoRegistradores|registrador~1173_combout\);

\BancoRegistradores|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[21]~64_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~315_q\);

\BancoRegistradores|registrador~1246\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1246_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~59_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~59_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1246_combout\);

\BancoRegistradores|registrador~1168\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1168_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1246_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1246_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1246_combout\ & ( (\BancoRegistradores|registrador~315_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~315_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1246_combout\,
	combout => \BancoRegistradores|registrador~1168_combout\);

\BancoRegistradores|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[20]~61_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~314_q\);

\BancoRegistradores|registrador~1245\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1245_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~58_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~58_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1245_combout\);

\BancoRegistradores|registrador~1163\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1163_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1245_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1245_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1245_combout\ & ( (\BancoRegistradores|registrador~314_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~314_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1245_combout\,
	combout => \BancoRegistradores|registrador~1163_combout\);

\BancoRegistradores|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[19]~58_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~313_q\);

\BancoRegistradores|registrador~1244\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1244_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~57_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~57_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1244_combout\);

\BancoRegistradores|registrador~1158\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1158_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1244_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1244_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1244_combout\ & ( (\BancoRegistradores|registrador~313_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~313_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1244_combout\,
	combout => \BancoRegistradores|registrador~1158_combout\);

\BancoRegistradores|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[18]~55_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~312_q\);

\BancoRegistradores|registrador~1243\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1243_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~56_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~56_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1243_combout\);

\BancoRegistradores|registrador~1153\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1153_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1243_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1243_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1243_combout\ & ( (\BancoRegistradores|registrador~312_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~312_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1243_combout\,
	combout => \BancoRegistradores|registrador~1153_combout\);

\BancoRegistradores|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[17]~52_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~311_q\);

\BancoRegistradores|registrador~1242\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1242_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~55_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~55_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1242_combout\);

\BancoRegistradores|registrador~1148\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1148_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1242_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1242_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1242_combout\ & ( (\BancoRegistradores|registrador~311_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~311_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1242_combout\,
	combout => \BancoRegistradores|registrador~1148_combout\);

\BancoRegistradores|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[16]~49_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~310_q\);

\BancoRegistradores|registrador~1241\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1241_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~54_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~54_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1241_combout\);

\BancoRegistradores|registrador~1143\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1143_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1241_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1241_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1241_combout\ & ( (\BancoRegistradores|registrador~310_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~310_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1241_combout\,
	combout => \BancoRegistradores|registrador~1143_combout\);

\BancoRegistradores|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[15]~46_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~309_q\);

\BancoRegistradores|registrador~1240\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1240_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~53_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~53_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1240_combout\);

\BancoRegistradores|registrador~1138\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1138_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1240_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1240_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1240_combout\ & ( (\BancoRegistradores|registrador~309_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~309_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1240_combout\,
	combout => \BancoRegistradores|registrador~1138_combout\);

\MUXRegImed|saida_MUX[15]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[15]~17_combout\ = (\BancoRegistradores|registrador~1138_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1138_combout\,
	combout => \MUXRegImed|saida_MUX[15]~17_combout\);

\MUXRegImed|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[0]~0_combout\ = (!\ROM|memROM~9_combout\) # ((!\ROM|memROM~0_combout\) # ((\ROM|memROM~10_combout\) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111111111111011111111111111101111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	combout => \MUXRegImed|saida_MUX[0]~0_combout\);

\BancoRegistradores|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[14]~43_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~308_q\);

\BancoRegistradores|registrador~1239\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1239_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~52_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~52_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1239_combout\);

\BancoRegistradores|registrador~1133\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1133_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1239_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1239_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1239_combout\ & ( (\BancoRegistradores|registrador~308_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~308_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1239_combout\,
	combout => \BancoRegistradores|registrador~1133_combout\);

\MUXRegImed|saida_MUX[14]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[14]~16_combout\ = (!\MUXRegImed|saida_MUX[0]~0_combout\ & (\ROM|memROM~13_combout\)) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1133_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111001000100010011100100010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1133_combout\,
	combout => \MUXRegImed|saida_MUX[14]~16_combout\);

\BancoRegistradores|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[13]~40_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~307_q\);

\BancoRegistradores|registrador~1238\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1238_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~51_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~51_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1238_combout\);

\BancoRegistradores|registrador~1128\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1128_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1238_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1238_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1238_combout\ & ( (\BancoRegistradores|registrador~307_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~307_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1238_combout\,
	combout => \BancoRegistradores|registrador~1128_combout\);

\BancoRegistradores|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[12]~37_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~306_q\);

\BancoRegistradores|registrador~1237\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1237_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~50_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~50_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1237_combout\);

\BancoRegistradores|registrador~1123\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1123_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1237_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1237_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1237_combout\ & ( (\BancoRegistradores|registrador~306_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~306_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1237_combout\,
	combout => \BancoRegistradores|registrador~1123_combout\);

\BancoRegistradores|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[11]~34_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~305_q\);

\BancoRegistradores|registrador~1236\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1236_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~49_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~49_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1236_combout\);

\BancoRegistradores|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1118_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1236_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1236_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1236_combout\ & ( (\BancoRegistradores|registrador~305_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~305_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1236_combout\,
	combout => \BancoRegistradores|registrador~1118_combout\);

\BancoRegistradores|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[10]~31_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~304_q\);

\BancoRegistradores|registrador~1235\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1235_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~48_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~48_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1235_combout\);

\BancoRegistradores|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1113_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1235_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1235_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1235_combout\ & ( (\BancoRegistradores|registrador~304_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~304_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1235_combout\,
	combout => \BancoRegistradores|registrador~1113_combout\);

\BancoRegistradores|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[9]~28_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~303_q\);

\BancoRegistradores|registrador~1234\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1234_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~47_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~47_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1234_combout\);

\BancoRegistradores|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1108_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1234_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1234_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1234_combout\ & ( (\BancoRegistradores|registrador~303_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~303_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1234_combout\,
	combout => \BancoRegistradores|registrador~1108_combout\);

\BancoRegistradores|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[8]~25_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~302_q\);

\BancoRegistradores|registrador~1233\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1233_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~46_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~46_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1233_combout\);

\BancoRegistradores|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1103_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1233_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1233_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1233_combout\ & ( (\BancoRegistradores|registrador~302_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~302_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1233_combout\,
	combout => \BancoRegistradores|registrador~1103_combout\);

\BancoRegistradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[7]~22_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~45_q\);

\BancoRegistradores|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1097_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~301_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~45_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~45_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~301_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1097_combout\);

\BancoRegistradores|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[7]~7_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1097_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1097_combout\,
	combout => \BancoRegistradores|saidaA[7]~7_combout\);

\BancoRegistradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[6]~19_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~44_q\);

\BancoRegistradores|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1092_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~300_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~44_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~44_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~300_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1092_combout\);

\BancoRegistradores|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[6]~6_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1092_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1092_combout\,
	combout => \BancoRegistradores|saidaA[6]~6_combout\);

\BancoRegistradores|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[5]~16_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~299_q\);

\BancoRegistradores|registrador~1230\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1230_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( \ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~43_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~43_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1230_combout\);

\BancoRegistradores|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1088_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1230_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1230_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1230_combout\ & ( (\BancoRegistradores|registrador~299_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~299_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1230_combout\,
	combout => \BancoRegistradores|registrador~1088_combout\);

\MUXRegImed|saida_MUX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[5]~7_combout\ = (!\MUXRegImed|saida_MUX[0]~0_combout\ & (\ROM|memROM~13_combout\)) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \BancoRegistradores|registrador~1088_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111001000100010011100100010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1088_combout\,
	combout => \MUXRegImed|saida_MUX[5]~7_combout\);

\BancoRegistradores|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[4]~13_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~298_q\);

\BancoRegistradores|registrador~1229\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1229_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( \ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~42_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~42_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1229_combout\);

\BancoRegistradores|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1083_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1229_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1229_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1229_combout\ & ( (\BancoRegistradores|registrador~298_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~298_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1229_combout\,
	combout => \BancoRegistradores|registrador~1083_combout\);

\MUXRegImed|saida_MUX[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[4]~6_combout\ = (\BancoRegistradores|registrador~1083_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1083_combout\,
	combout => \MUXRegImed|saida_MUX[4]~6_combout\);

\BancoRegistradores|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[3]~10_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~297_q\);

\BancoRegistradores|registrador~1228\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1228_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( \ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~41_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~41_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1228_combout\);

\BancoRegistradores|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1078_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1228_combout\ ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1228_combout\ ) ) # ( \ROM|memROM~13_combout\ & ( 
-- !\BancoRegistradores|registrador~1228_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1228_combout\ & ( (\BancoRegistradores|registrador~297_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~297_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1228_combout\,
	combout => \BancoRegistradores|registrador~1078_combout\);

\BancoRegistradores|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[2]~7_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~296_q\);

\BancoRegistradores|registrador~1227\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1227_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( \ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~40_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~40_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1227_combout\);

\BancoRegistradores|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1073_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1227_combout\ ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1227_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( 
-- !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1227_combout\ & ( (\BancoRegistradores|registrador~296_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~296_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1227_combout\,
	combout => \BancoRegistradores|registrador~1073_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

\BancoRegistradores|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[1]~4_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~295_q\);

\BancoRegistradores|registrador~1226\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1226_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( \ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( !\ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~39_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~39_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1226_combout\);

\BancoRegistradores|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1068_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1226_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1226_combout\ ) ) # ( 
-- \ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1226_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1226_combout\ & ( (\BancoRegistradores|registrador~295_q\ & 
-- \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~295_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1226_combout\,
	combout => \BancoRegistradores|registrador~1068_combout\);

\BancoRegistradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[0]~1_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~38_q\);

\BancoRegistradores|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[0]~1_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~294_q\);

\BancoRegistradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1062_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~294_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~38_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~294_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1062_combout\);

\BancoRegistradores|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[0]~0_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1062_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1062_combout\,
	combout => \BancoRegistradores|saidaA[0]~0_combout\);

\BancoRegistradores|registrador~1225\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1225_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( \ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ & ( (\ROM|memROM~16_combout\) # (\BancoRegistradores|registrador~38_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~38_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1225_combout\);

\BancoRegistradores|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1063_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1225_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1225_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1225_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1225_combout\ & ( 
-- (\BancoRegistradores|registrador~294_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~294_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1225_combout\,
	combout => \BancoRegistradores|registrador~1063_combout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \BancoRegistradores|saidaA[0]~0_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((\ROM|memROM~8_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & 
-- ((\BancoRegistradores|registrador~1063_combout\)))) ) + ( !VCC ))
-- \ULA|Add0~2\ = CARRY(( \BancoRegistradores|saidaA[0]~0_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((\ROM|memROM~8_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & 
-- ((\BancoRegistradores|registrador~1063_combout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[0]~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1063_combout\,
	cin => GND,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \BancoRegistradores|saidaA[1]~1_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((\ROM|memROM~4_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & 
-- ((\BancoRegistradores|registrador~1068_combout\)))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \BancoRegistradores|saidaA[1]~1_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((\ROM|memROM~4_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & 
-- ((\BancoRegistradores|registrador~1068_combout\)))) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1068_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

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
-- \ULA|Add1~5_sumout\ = SUM(( \BancoRegistradores|saidaA[0]~0_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (!\ROM|memROM~8_combout\)) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\BancoRegistradores|registrador~1063_combout\) # 
-- (\BancoRegistradores|Equal0~0_combout\)))) ) + ( \ULA|Add1~130_cout\ ))
-- \ULA|Add1~6\ = CARRY(( \BancoRegistradores|saidaA[0]~0_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (!\ROM|memROM~8_combout\)) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\BancoRegistradores|registrador~1063_combout\) # 
-- (\BancoRegistradores|Equal0~0_combout\)))) ) + ( \ULA|Add1~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[0]~0_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1063_combout\,
	cin => \ULA|Add1~130_cout\,
	sumout => \ULA|Add1~5_sumout\,
	cout => \ULA|Add1~6\);

\ULA|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~9_sumout\ = SUM(( \BancoRegistradores|saidaA[1]~1_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\ROM|memROM~4_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\BancoRegistradores|registrador~1068_combout\)) # 
-- (\BancoRegistradores|Equal0~0_combout\))) ) + ( \ULA|Add1~6\ ))
-- \ULA|Add1~10\ = CARRY(( \BancoRegistradores|saidaA[1]~1_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\ROM|memROM~4_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\BancoRegistradores|registrador~1068_combout\)) # 
-- (\BancoRegistradores|Equal0~0_combout\))) ) + ( \ULA|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1068_combout\,
	cin => \ULA|Add1~6\,
	sumout => \ULA|Add1~9_sumout\,
	cout => \ULA|Add1~10\);

\MUXRegImed|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[1]~2_combout\ = (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((\ROM|memROM~4_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1068_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000001010010011100000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1068_combout\,
	combout => \MUXRegImed|saida_MUX[1]~2_combout\);

\ulaUC|ulaOp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp[0]~0_combout\ = ( \ulaUC|Equal5~0_combout\ & ( ((!\ulaUC|ulaOp~4_combout\) # ((\ulaUC|ulaOp[1]~3_combout\) # (\ulaUC|Equal7~0_combout\))) # (\ROM|memROM~2_combout\) ) ) # ( !\ulaUC|Equal5~0_combout\ & ( (!\ulaUC|ulaOp~4_combout\ & 
-- (((!\ulaUC|Equal7~0_combout\ & !\ulaUC|ulaOp[1]~3_combout\)))) # (\ulaUC|ulaOp~4_combout\ & (\ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000100010001110111111111111111010001000100011101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ulaUC|ALT_INV_ulaOp~4_combout\,
	datac => \ulaUC|ALT_INV_Equal7~0_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datae => \ulaUC|ALT_INV_Equal5~0_combout\,
	combout => \ulaUC|ulaOp[0]~0_combout\);

\ulaUC|ulaOp[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaUC|ulaOp[1]~1_combout\ = ( \ulaUC|ulaOp[1]~2_combout\ & ( ((!\ulaUC|ulaOp~4_combout\) # ((\ulaUC|ulaOp[1]~3_combout\) # (\ulaUC|Equal7~0_combout\))) # (\ROM|memROM~2_combout\) ) ) # ( !\ulaUC|ulaOp[1]~2_combout\ & ( (!\ulaUC|Equal7~0_combout\ & 
-- (!\ulaUC|ulaOp[1]~3_combout\ & ((!\ulaUC|ulaOp~4_combout\) # (\ROM|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000110111111111111111010000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ulaUC|ALT_INV_ulaOp~4_combout\,
	datac => \ulaUC|ALT_INV_Equal7~0_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[1]~3_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	combout => \ulaUC|ulaOp[1]~1_combout\);

\ULA|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~2_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[1]~2_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[1]~1_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~9_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~5_sumout\,
	datab => \ULA|ALT_INV_Add1~9_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[1]~2_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[1]~2_combout\);

\ULA|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~3_combout\ = ( \MUXRegImed|saida_MUX[1]~2_combout\ & ( \ULA|saida[17]~96_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[1]~1_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- \MUXRegImed|saida_MUX[1]~2_combout\ & ( !\ULA|saida[17]~96_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[1]~1_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[1]~1_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\MUXRegImed|saida_MUX[1]~2_combout\ & ( !\ULA|saida[17]~96_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\ $ 
-- (\BancoRegistradores|saidaA[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000100110010000100000000000000000000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	datae => \MUXRegImed|ALT_INV_saida_MUX[1]~2_combout\,
	dataf => \ULA|ALT_INV_saida[17]~96_combout\,
	combout => \ULA|saida[1]~3_combout\);

\ULA|saida[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~4_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[1]~2_combout\)) # (\ULA|saida[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[1]~2_combout\,
	datac => \ULA|ALT_INV_saida[1]~3_combout\,
	combout => \ULA|saida[1]~4_combout\);

\BancoRegistradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[1]~4_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~39_q\);

\BancoRegistradores|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1067_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~295_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~39_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~295_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1067_combout\);

\BancoRegistradores|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[1]~1_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1067_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1067_combout\,
	combout => \BancoRegistradores|saidaA[1]~1_combout\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( \BancoRegistradores|saidaA[2]~2_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((\ROM|memROM~6_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & 
-- ((\BancoRegistradores|registrador~1073_combout\)))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( \BancoRegistradores|saidaA[2]~2_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((\ROM|memROM~6_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & 
-- ((\BancoRegistradores|registrador~1073_combout\)))) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1073_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\ULA|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~13_sumout\ = SUM(( \BancoRegistradores|saidaA[2]~2_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\ROM|memROM~6_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\BancoRegistradores|registrador~1073_combout\)) # 
-- (\BancoRegistradores|Equal0~0_combout\))) ) + ( \ULA|Add1~10\ ))
-- \ULA|Add1~14\ = CARRY(( \BancoRegistradores|saidaA[2]~2_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\ROM|memROM~6_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\BancoRegistradores|registrador~1073_combout\)) # 
-- (\BancoRegistradores|Equal0~0_combout\))) ) + ( \ULA|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1073_combout\,
	cin => \ULA|Add1~10\,
	sumout => \ULA|Add1~13_sumout\,
	cout => \ULA|Add1~14\);

\MUXRegImed|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[2]~3_combout\ = (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((\ROM|memROM~6_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1073_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000001010010011100000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1073_combout\,
	combout => \MUXRegImed|saida_MUX[2]~3_combout\);

\ULA|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~5_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[2]~3_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[2]~2_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~13_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~9_sumout\,
	datab => \ULA|ALT_INV_Add1~13_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[2]~3_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[2]~5_combout\);

\ULA|saida[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~6_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[2]~3_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[2]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[2]~3_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[2]~2_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[2]~2_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[2]~3_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\ $ 
-- (\BancoRegistradores|saidaA[2]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[2]~3_combout\,
	combout => \ULA|saida[2]~6_combout\);

\ULA|saida[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~7_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[2]~5_combout\)) # (\ULA|saida[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[2]~5_combout\,
	datac => \ULA|ALT_INV_saida[2]~6_combout\,
	combout => \ULA|saida[2]~7_combout\);

\BancoRegistradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[2]~7_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~40_q\);

\BancoRegistradores|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1072_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~296_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~40_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~40_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~296_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1072_combout\);

\BancoRegistradores|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[2]~2_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1072_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1072_combout\,
	combout => \BancoRegistradores|saidaA[2]~2_combout\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( \BancoRegistradores|saidaA[3]~3_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\ROM|memROM~2_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & 
-- ((\BancoRegistradores|registrador~1078_combout\)))) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( \BancoRegistradores|saidaA[3]~3_combout\ ) + ( (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\ROM|memROM~2_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & 
-- ((\BancoRegistradores|registrador~1078_combout\)))) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110001101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[3]~3_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1078_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\MUXRegImed|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[3]~4_combout\ = (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((!\ROM|memROM~2_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1078_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011100100101000001110010010100000111001001010000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1078_combout\,
	combout => \MUXRegImed|saida_MUX[3]~4_combout\);

\ULA|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~17_sumout\ = SUM(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1077_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[3]~4_combout\ ) + ( \ULA|Add1~14\ ))
-- \ULA|Add1~18\ = CARRY(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1077_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[3]~4_combout\ ) + ( \ULA|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1077_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[3]~4_combout\,
	cin => \ULA|Add1~14\,
	sumout => \ULA|Add1~17_sumout\,
	cout => \ULA|Add1~18\);

\ULA|saida[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~8_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[3]~4_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[3]~3_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~17_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~13_sumout\,
	datab => \ULA|ALT_INV_Add1~17_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[3]~3_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[3]~4_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[3]~8_combout\);

\ULA|saida[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~9_combout\ = ( \BancoRegistradores|saidaA[3]~3_combout\ & ( (!\ULA|saida[17]~95_combout\ & ((!\ULA|saida[17]~96_combout\))) # (\ULA|saida[17]~95_combout\ & (\MUXRegImed|saida_MUX[3]~4_combout\ & \ULA|saida[17]~96_combout\)) ) ) # ( 
-- !\BancoRegistradores|saidaA[3]~3_combout\ & ( (!\ULA|saida[17]~96_combout\ & (((\MUXRegImed|saida_MUX[3]~4_combout\ & \ULA|Equal7~0_combout\)) # (\ULA|saida[17]~95_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110000110000011100000100110000011100001100000111000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[3]~4_combout\,
	datab => \ULA|ALT_INV_saida[17]~95_combout\,
	datac => \ULA|ALT_INV_saida[17]~96_combout\,
	datad => \ULA|ALT_INV_Equal7~0_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[3]~3_combout\,
	combout => \ULA|saida[3]~9_combout\);

\ULA|saida[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~10_combout\ = (!\ulaUC|ulaOp[1]~2_combout\ & (\ULA|saida[3]~8_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((\ULA|saida[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[3]~8_combout\,
	datac => \ULA|ALT_INV_saida[3]~9_combout\,
	combout => \ULA|saida[3]~10_combout\);

\BancoRegistradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[3]~10_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~41_q\);

\BancoRegistradores|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1077_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~297_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~41_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~297_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1077_combout\);

\BancoRegistradores|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[3]~3_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1077_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1077_combout\,
	combout => \BancoRegistradores|saidaA[3]~3_combout\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1082_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( \MUXRegImed|saida_MUX[4]~6_combout\ ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1082_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( \MUXRegImed|saida_MUX[4]~6_combout\ ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1082_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[4]~6_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\ULA|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~21_sumout\ = SUM(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1082_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[4]~6_combout\ ) + ( \ULA|Add1~18\ ))
-- \ULA|Add1~22\ = CARRY(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1082_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[4]~6_combout\ ) + ( \ULA|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1082_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[4]~6_combout\,
	cin => \ULA|Add1~18\,
	sumout => \ULA|Add1~21_sumout\,
	cout => \ULA|Add1~22\);

\BancoRegistradores|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[4]~4_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1082_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1082_combout\,
	combout => \BancoRegistradores|saidaA[4]~4_combout\);

\ULA|saida[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~11_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[4]~6_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[4]~4_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~21_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~17_sumout\,
	datab => \ULA|ALT_INV_Add1~21_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[4]~4_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[4]~6_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[4]~11_combout\);

\ULA|saida[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~12_combout\ = ( \ULA|saida[17]~96_combout\ & ( \BancoRegistradores|saidaA[4]~4_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\MUXRegImed|saida_MUX[4]~6_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \BancoRegistradores|saidaA[4]~4_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (\ulaUC|ulaOp[1]~1_combout\))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\BancoRegistradores|saidaA[4]~4_combout\ & 
-- ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (\ulaUC|ulaOp[1]~1_combout\)) # (\ulaUC|ulaOp[0]~0_combout\ & ((!\ulaUC|ulaOp[1]~1_combout\) # (\MUXRegImed|saida_MUX[4]~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010011000000000000000000100001001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[4]~6_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[4]~4_combout\,
	combout => \ULA|saida[4]~12_combout\);

\ULA|saida[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~13_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[4]~11_combout\)) # (\ULA|saida[4]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[4]~11_combout\,
	datac => \ULA|ALT_INV_saida[4]~12_combout\,
	combout => \ULA|saida[4]~13_combout\);

\BancoRegistradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[4]~13_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~42_q\);

\BancoRegistradores|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1082_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~298_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~42_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~42_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~298_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1082_combout\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1087_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( \MUXRegImed|saida_MUX[5]~7_combout\ ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1087_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( \MUXRegImed|saida_MUX[5]~7_combout\ ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1087_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[5]~7_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\ULA|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~25_sumout\ = SUM(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1087_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[5]~7_combout\ ) + ( \ULA|Add1~22\ ))
-- \ULA|Add1~26\ = CARRY(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1087_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[5]~7_combout\ ) + ( \ULA|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1087_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[5]~7_combout\,
	cin => \ULA|Add1~22\,
	sumout => \ULA|Add1~25_sumout\,
	cout => \ULA|Add1~26\);

\BancoRegistradores|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[5]~5_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1087_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1087_combout\,
	combout => \BancoRegistradores|saidaA[5]~5_combout\);

\ULA|saida[5]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~14_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[5]~7_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[5]~5_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~25_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~21_sumout\,
	datab => \ULA|ALT_INV_Add1~25_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[5]~5_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[5]~7_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[5]~14_combout\);

\ULA|saida[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~15_combout\ = ( \BancoRegistradores|saidaA[5]~5_combout\ & ( (!\ULA|saida[17]~95_combout\ & ((!\ULA|saida[17]~96_combout\))) # (\ULA|saida[17]~95_combout\ & (\MUXRegImed|saida_MUX[5]~7_combout\ & \ULA|saida[17]~96_combout\)) ) ) # ( 
-- !\BancoRegistradores|saidaA[5]~5_combout\ & ( (!\ULA|saida[17]~96_combout\ & (((\MUXRegImed|saida_MUX[5]~7_combout\ & \ULA|Equal7~0_combout\)) # (\ULA|saida[17]~95_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110000110000011100000100110000011100001100000111000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[5]~7_combout\,
	datab => \ULA|ALT_INV_saida[17]~95_combout\,
	datac => \ULA|ALT_INV_saida[17]~96_combout\,
	datad => \ULA|ALT_INV_Equal7~0_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[5]~5_combout\,
	combout => \ULA|saida[5]~15_combout\);

\ULA|saida[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~16_combout\ = (!\ulaUC|ulaOp[1]~2_combout\ & (\ULA|saida[5]~14_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((\ULA|saida[5]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[5]~14_combout\,
	datac => \ULA|ALT_INV_saida[5]~15_combout\,
	combout => \ULA|saida[5]~16_combout\);

\BancoRegistradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[5]~16_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~43_q\);

\BancoRegistradores|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1087_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~299_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~43_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~43_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~299_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1087_combout\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( \BancoRegistradores|saidaA[6]~6_combout\ ) + ( (\BancoRegistradores|registrador~1093_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( \BancoRegistradores|saidaA[6]~6_combout\ ) + ( (\BancoRegistradores|registrador~1093_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1093_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[6]~6_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\MUXRegImed|saida_MUX[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[6]~8_combout\ = (\BancoRegistradores|registrador~1093_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1093_combout\,
	combout => \MUXRegImed|saida_MUX[6]~8_combout\);

\ULA|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~29_sumout\ = SUM(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1092_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[6]~8_combout\ ) + ( \ULA|Add1~26\ ))
-- \ULA|Add1~30\ = CARRY(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1092_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[6]~8_combout\ ) + ( \ULA|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1092_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[6]~8_combout\,
	cin => \ULA|Add1~26\,
	sumout => \ULA|Add1~29_sumout\,
	cout => \ULA|Add1~30\);

\ULA|saida[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~17_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[6]~8_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[6]~6_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~29_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~25_sumout\,
	datab => \ULA|ALT_INV_Add1~29_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[6]~6_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[6]~8_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[6]~17_combout\);

\ULA|saida[6]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~18_combout\ = ( \ULA|saida[17]~96_combout\ & ( \BancoRegistradores|saidaA[6]~6_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\MUXRegImed|saida_MUX[6]~8_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \BancoRegistradores|saidaA[6]~6_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (\ulaUC|ulaOp[1]~1_combout\))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\BancoRegistradores|saidaA[6]~6_combout\ & 
-- ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (\ulaUC|ulaOp[1]~1_combout\)) # (\ulaUC|ulaOp[0]~0_combout\ & ((!\ulaUC|ulaOp[1]~1_combout\) # (\MUXRegImed|saida_MUX[6]~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010011000000000000000000100001001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[6]~8_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[6]~6_combout\,
	combout => \ULA|saida[6]~18_combout\);

\ULA|saida[6]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~19_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[6]~17_combout\)) # (\ULA|saida[6]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[6]~17_combout\,
	datac => \ULA|ALT_INV_saida[6]~18_combout\,
	combout => \ULA|saida[6]~19_combout\);

\BancoRegistradores|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[6]~19_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~300_q\);

\BancoRegistradores|registrador~1231\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1231_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( \ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~44_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~44_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1231_combout\);

\BancoRegistradores|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1093_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1231_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1231_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1231_combout\ & ( (\BancoRegistradores|registrador~300_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~300_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1231_combout\,
	combout => \BancoRegistradores|registrador~1093_combout\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \BancoRegistradores|saidaA[7]~7_combout\ ) + ( (\BancoRegistradores|registrador~1098_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( \BancoRegistradores|saidaA[7]~7_combout\ ) + ( (\BancoRegistradores|registrador~1098_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \BancoRegistradores|ALT_INV_registrador~1098_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[7]~7_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\ULA|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~33_sumout\ = SUM(( \BancoRegistradores|saidaA[7]~7_combout\ ) + ( (!\BancoRegistradores|registrador~1098_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~30\ ))
-- \ULA|Add1~34\ = CARRY(( \BancoRegistradores|saidaA[7]~7_combout\ ) + ( (!\BancoRegistradores|registrador~1098_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[7]~7_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1098_combout\,
	cin => \ULA|Add1~30\,
	sumout => \ULA|Add1~33_sumout\,
	cout => \ULA|Add1~34\);

\MUXRegImed|saida_MUX[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[7]~9_combout\ = (\BancoRegistradores|registrador~1098_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1098_combout\,
	combout => \MUXRegImed|saida_MUX[7]~9_combout\);

\ULA|saida[7]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~20_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[7]~9_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[7]~7_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~33_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~29_sumout\,
	datab => \ULA|ALT_INV_Add1~33_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[7]~7_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[7]~9_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[7]~20_combout\);

\ULA|saida[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~21_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[7]~9_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[7]~7_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[7]~9_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[7]~7_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[7]~7_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[7]~9_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\ $ 
-- (\BancoRegistradores|saidaA[7]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[7]~7_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[7]~9_combout\,
	combout => \ULA|saida[7]~21_combout\);

\ULA|saida[7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~22_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[7]~20_combout\)) # (\ULA|saida[7]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[7]~20_combout\,
	datac => \ULA|ALT_INV_saida[7]~21_combout\,
	combout => \ULA|saida[7]~22_combout\);

\BancoRegistradores|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[7]~22_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~301_q\);

\BancoRegistradores|registrador~1232\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1232_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( \ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~45_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~45_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1232_combout\);

\BancoRegistradores|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1098_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1232_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1232_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1232_combout\ & ( (\BancoRegistradores|registrador~301_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~301_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1232_combout\,
	combout => \BancoRegistradores|registrador~1098_combout\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( \BancoRegistradores|saidaA[8]~8_combout\ ) + ( (\BancoRegistradores|registrador~1103_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( \BancoRegistradores|saidaA[8]~8_combout\ ) + ( (\BancoRegistradores|registrador~1103_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[8]~8_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1103_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\ULA|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~37_sumout\ = SUM(( \BancoRegistradores|saidaA[8]~8_combout\ ) + ( (!\BancoRegistradores|registrador~1103_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~34\ ))
-- \ULA|Add1~38\ = CARRY(( \BancoRegistradores|saidaA[8]~8_combout\ ) + ( (!\BancoRegistradores|registrador~1103_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[8]~8_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1103_combout\,
	cin => \ULA|Add1~34\,
	sumout => \ULA|Add1~37_sumout\,
	cout => \ULA|Add1~38\);

\MUXRegImed|saida_MUX[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[8]~10_combout\ = (\BancoRegistradores|registrador~1103_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1103_combout\,
	combout => \MUXRegImed|saida_MUX[8]~10_combout\);

\ULA|saida[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~23_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[8]~10_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[8]~8_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~37_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~33_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~33_sumout\,
	datab => \ULA|ALT_INV_Add1~37_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[8]~8_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[8]~10_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[8]~23_combout\);

\ULA|saida[8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~24_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[8]~10_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[8]~8_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[8]~10_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[8]~8_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[8]~8_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[8]~10_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\ $ 
-- (\BancoRegistradores|saidaA[8]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[8]~8_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[8]~10_combout\,
	combout => \ULA|saida[8]~24_combout\);

\ULA|saida[8]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[8]~25_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[8]~23_combout\)) # (\ULA|saida[8]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[8]~23_combout\,
	datac => \ULA|ALT_INV_saida[8]~24_combout\,
	combout => \ULA|saida[8]~25_combout\);

\BancoRegistradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[8]~25_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~46_q\);

\BancoRegistradores|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1102_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~302_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~46_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~46_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~302_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1102_combout\);

\BancoRegistradores|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[8]~8_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1102_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1102_combout\,
	combout => \BancoRegistradores|saidaA[8]~8_combout\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( \BancoRegistradores|saidaA[9]~9_combout\ ) + ( (\BancoRegistradores|registrador~1108_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( \BancoRegistradores|saidaA[9]~9_combout\ ) + ( (\BancoRegistradores|registrador~1108_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[9]~9_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1108_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\ULA|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~41_sumout\ = SUM(( \BancoRegistradores|saidaA[9]~9_combout\ ) + ( (!\BancoRegistradores|registrador~1108_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~38\ ))
-- \ULA|Add1~42\ = CARRY(( \BancoRegistradores|saidaA[9]~9_combout\ ) + ( (!\BancoRegistradores|registrador~1108_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[9]~9_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1108_combout\,
	cin => \ULA|Add1~38\,
	sumout => \ULA|Add1~41_sumout\,
	cout => \ULA|Add1~42\);

\MUXRegImed|saida_MUX[9]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[9]~11_combout\ = (\BancoRegistradores|registrador~1108_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1108_combout\,
	combout => \MUXRegImed|saida_MUX[9]~11_combout\);

\ULA|saida[9]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~26_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[9]~11_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[9]~9_combout\ ) ) ) # ( 
-- \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~41_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~37_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~37_sumout\,
	datab => \ULA|ALT_INV_Add1~41_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[9]~9_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[9]~11_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[9]~26_combout\);

\ULA|saida[9]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~27_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[9]~11_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[9]~9_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[9]~11_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[9]~9_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[9]~9_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[9]~11_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\ $ 
-- (\BancoRegistradores|saidaA[9]~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[9]~9_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[9]~11_combout\,
	combout => \ULA|saida[9]~27_combout\);

\ULA|saida[9]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[9]~28_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[9]~26_combout\)) # (\ULA|saida[9]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[9]~26_combout\,
	datac => \ULA|ALT_INV_saida[9]~27_combout\,
	combout => \ULA|saida[9]~28_combout\);

\BancoRegistradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[9]~28_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~47_q\);

\BancoRegistradores|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1107_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~303_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~47_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~47_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~303_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1107_combout\);

\BancoRegistradores|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[9]~9_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1107_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1107_combout\,
	combout => \BancoRegistradores|saidaA[9]~9_combout\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( \BancoRegistradores|saidaA[10]~10_combout\ ) + ( (\BancoRegistradores|registrador~1113_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( \BancoRegistradores|saidaA[10]~10_combout\ ) + ( (\BancoRegistradores|registrador~1113_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~38\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[10]~10_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1113_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\ULA|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~45_sumout\ = SUM(( \BancoRegistradores|saidaA[10]~10_combout\ ) + ( (!\BancoRegistradores|registrador~1113_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~42\ ))
-- \ULA|Add1~46\ = CARRY(( \BancoRegistradores|saidaA[10]~10_combout\ ) + ( (!\BancoRegistradores|registrador~1113_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[10]~10_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1113_combout\,
	cin => \ULA|Add1~42\,
	sumout => \ULA|Add1~45_sumout\,
	cout => \ULA|Add1~46\);

\MUXRegImed|saida_MUX[10]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[10]~12_combout\ = (\BancoRegistradores|registrador~1113_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1113_combout\,
	combout => \MUXRegImed|saida_MUX[10]~12_combout\);

\ULA|saida[10]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~29_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[10]~12_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[10]~10_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~45_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~41_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~41_sumout\,
	datab => \ULA|ALT_INV_Add1~45_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[10]~10_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[10]~12_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[10]~29_combout\);

\ULA|saida[10]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~30_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[10]~12_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[10]~10_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[10]~12_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[10]~10_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[10]~10_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[10]~12_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[10]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[10]~10_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[10]~12_combout\,
	combout => \ULA|saida[10]~30_combout\);

\ULA|saida[10]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[10]~31_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[10]~29_combout\)) # (\ULA|saida[10]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[10]~29_combout\,
	datac => \ULA|ALT_INV_saida[10]~30_combout\,
	combout => \ULA|saida[10]~31_combout\);

\BancoRegistradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[10]~31_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~48_q\);

\BancoRegistradores|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1112_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~304_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~48_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~48_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~304_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1112_combout\);

\BancoRegistradores|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[10]~10_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1112_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1112_combout\,
	combout => \BancoRegistradores|saidaA[10]~10_combout\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( \BancoRegistradores|saidaA[11]~11_combout\ ) + ( (\BancoRegistradores|registrador~1118_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( \BancoRegistradores|saidaA[11]~11_combout\ ) + ( (\BancoRegistradores|registrador~1118_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~42\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1118_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\ULA|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~49_sumout\ = SUM(( \BancoRegistradores|saidaA[11]~11_combout\ ) + ( (!\BancoRegistradores|registrador~1118_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~46\ ))
-- \ULA|Add1~50\ = CARRY(( \BancoRegistradores|saidaA[11]~11_combout\ ) + ( (!\BancoRegistradores|registrador~1118_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1118_combout\,
	cin => \ULA|Add1~46\,
	sumout => \ULA|Add1~49_sumout\,
	cout => \ULA|Add1~50\);

\MUXRegImed|saida_MUX[11]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[11]~13_combout\ = (\BancoRegistradores|registrador~1118_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1118_combout\,
	combout => \MUXRegImed|saida_MUX[11]~13_combout\);

\ULA|saida[11]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~32_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[11]~13_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[11]~11_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~49_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~45_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~45_sumout\,
	datab => \ULA|ALT_INV_Add1~49_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[11]~13_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[11]~32_combout\);

\ULA|saida[11]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~33_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[11]~13_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[11]~11_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[11]~13_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[11]~11_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[11]~11_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[11]~13_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[11]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[11]~13_combout\,
	combout => \ULA|saida[11]~33_combout\);

\ULA|saida[11]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[11]~34_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[11]~32_combout\)) # (\ULA|saida[11]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[11]~32_combout\,
	datac => \ULA|ALT_INV_saida[11]~33_combout\,
	combout => \ULA|saida[11]~34_combout\);

\BancoRegistradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[11]~34_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~49_q\);

\BancoRegistradores|registrador~1117\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1117_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~305_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~49_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~49_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~305_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1117_combout\);

\BancoRegistradores|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[11]~11_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1117_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1117_combout\,
	combout => \BancoRegistradores|saidaA[11]~11_combout\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( \BancoRegistradores|saidaA[12]~12_combout\ ) + ( (\BancoRegistradores|registrador~1123_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( \BancoRegistradores|saidaA[12]~12_combout\ ) + ( (\BancoRegistradores|registrador~1123_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~46\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1123_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\ULA|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~53_sumout\ = SUM(( \BancoRegistradores|saidaA[12]~12_combout\ ) + ( (!\BancoRegistradores|registrador~1123_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~50\ ))
-- \ULA|Add1~54\ = CARRY(( \BancoRegistradores|saidaA[12]~12_combout\ ) + ( (!\BancoRegistradores|registrador~1123_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1123_combout\,
	cin => \ULA|Add1~50\,
	sumout => \ULA|Add1~53_sumout\,
	cout => \ULA|Add1~54\);

\MUXRegImed|saida_MUX[12]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[12]~14_combout\ = (\BancoRegistradores|registrador~1123_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1123_combout\,
	combout => \MUXRegImed|saida_MUX[12]~14_combout\);

\ULA|saida[12]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~35_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[12]~14_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[12]~12_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~53_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~49_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~49_sumout\,
	datab => \ULA|ALT_INV_Add1~53_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[12]~14_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[12]~35_combout\);

\ULA|saida[12]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~36_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[12]~14_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[12]~12_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[12]~14_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[12]~12_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[12]~12_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[12]~14_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[12]~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[12]~14_combout\,
	combout => \ULA|saida[12]~36_combout\);

\ULA|saida[12]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[12]~37_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[12]~35_combout\)) # (\ULA|saida[12]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[12]~35_combout\,
	datac => \ULA|ALT_INV_saida[12]~36_combout\,
	combout => \ULA|saida[12]~37_combout\);

\BancoRegistradores|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[12]~37_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~50_q\);

\BancoRegistradores|registrador~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1122_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~306_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~50_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~50_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~306_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1122_combout\);

\BancoRegistradores|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[12]~12_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1122_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1122_combout\,
	combout => \BancoRegistradores|saidaA[12]~12_combout\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( \BancoRegistradores|saidaA[13]~13_combout\ ) + ( (\BancoRegistradores|registrador~1128_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( \BancoRegistradores|saidaA[13]~13_combout\ ) + ( (\BancoRegistradores|registrador~1128_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~50\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[13]~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1128_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\MUXRegImed|saida_MUX[13]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[13]~15_combout\ = (\BancoRegistradores|registrador~1128_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1128_combout\,
	combout => \MUXRegImed|saida_MUX[13]~15_combout\);

\ULA|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~57_sumout\ = SUM(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1127_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[13]~15_combout\ ) + ( \ULA|Add1~54\ ))
-- \ULA|Add1~58\ = CARRY(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1127_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[13]~15_combout\ ) + ( \ULA|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1127_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[13]~15_combout\,
	cin => \ULA|Add1~54\,
	sumout => \ULA|Add1~57_sumout\,
	cout => \ULA|Add1~58\);

\ULA|saida[13]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~38_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[13]~15_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[13]~13_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~57_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~53_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~53_sumout\,
	datab => \ULA|ALT_INV_Add1~57_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[13]~13_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[13]~15_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[13]~38_combout\);

\ULA|saida[13]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~39_combout\ = ( \ULA|saida[17]~96_combout\ & ( \BancoRegistradores|saidaA[13]~13_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\MUXRegImed|saida_MUX[13]~15_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \BancoRegistradores|saidaA[13]~13_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (\ulaUC|ulaOp[1]~1_combout\))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( 
-- !\BancoRegistradores|saidaA[13]~13_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (\ulaUC|ulaOp[1]~1_combout\)) # (\ulaUC|ulaOp[0]~0_combout\ & ((!\ulaUC|ulaOp[1]~1_combout\) # (\MUXRegImed|saida_MUX[13]~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010011000000000000000000100001001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[13]~15_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \BancoRegistradores|ALT_INV_saidaA[13]~13_combout\,
	combout => \ULA|saida[13]~39_combout\);

\ULA|saida[13]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[13]~40_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[13]~38_combout\)) # (\ULA|saida[13]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[13]~38_combout\,
	datac => \ULA|ALT_INV_saida[13]~39_combout\,
	combout => \ULA|saida[13]~40_combout\);

\BancoRegistradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[13]~40_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~51_q\);

\BancoRegistradores|registrador~1127\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1127_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~307_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~51_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~51_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~307_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1127_combout\);

\BancoRegistradores|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[13]~13_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1127_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1127_combout\,
	combout => \BancoRegistradores|saidaA[13]~13_combout\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1132_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( \MUXRegImed|saida_MUX[14]~16_combout\ ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1132_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( \MUXRegImed|saida_MUX[14]~16_combout\ ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1132_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[14]~16_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\ULA|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~61_sumout\ = SUM(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1132_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[14]~16_combout\ ) + ( \ULA|Add1~58\ ))
-- \ULA|Add1~62\ = CARRY(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1132_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( !\MUXRegImed|saida_MUX[14]~16_combout\ ) + ( \ULA|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1132_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[14]~16_combout\,
	cin => \ULA|Add1~58\,
	sumout => \ULA|Add1~61_sumout\,
	cout => \ULA|Add1~62\);

\BancoRegistradores|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[14]~14_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1132_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1132_combout\,
	combout => \BancoRegistradores|saidaA[14]~14_combout\);

\ULA|saida[14]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~41_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[14]~16_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[14]~14_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~61_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~57_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~57_sumout\,
	datab => \ULA|ALT_INV_Add1~61_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[14]~14_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[14]~16_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[14]~41_combout\);

\ULA|saida[14]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~42_combout\ = ( \BancoRegistradores|saidaA[14]~14_combout\ & ( (!\ULA|saida[17]~95_combout\ & ((!\ULA|saida[17]~96_combout\))) # (\ULA|saida[17]~95_combout\ & (\MUXRegImed|saida_MUX[14]~16_combout\ & \ULA|saida[17]~96_combout\)) ) ) # ( 
-- !\BancoRegistradores|saidaA[14]~14_combout\ & ( (!\ULA|saida[17]~96_combout\ & (((\MUXRegImed|saida_MUX[14]~16_combout\ & \ULA|Equal7~0_combout\)) # (\ULA|saida[17]~95_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110000110000011100000100110000011100001100000111000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[14]~16_combout\,
	datab => \ULA|ALT_INV_saida[17]~95_combout\,
	datac => \ULA|ALT_INV_saida[17]~96_combout\,
	datad => \ULA|ALT_INV_Equal7~0_combout\,
	datae => \BancoRegistradores|ALT_INV_saidaA[14]~14_combout\,
	combout => \ULA|saida[14]~42_combout\);

\ULA|saida[14]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[14]~43_combout\ = (!\ulaUC|ulaOp[1]~2_combout\ & (\ULA|saida[14]~41_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((\ULA|saida[14]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[14]~41_combout\,
	datac => \ULA|ALT_INV_saida[14]~42_combout\,
	combout => \ULA|saida[14]~43_combout\);

\BancoRegistradores|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[14]~43_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~52_q\);

\BancoRegistradores|registrador~1132\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1132_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~308_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~52_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~52_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~308_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1132_combout\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1137_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( \MUXRegImed|saida_MUX[15]~17_combout\ ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1137_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\)))) ) + ( \MUXRegImed|saida_MUX[15]~17_combout\ ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1137_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[15]~17_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\BancoRegistradores|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[15]~15_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1137_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1137_combout\,
	combout => \BancoRegistradores|saidaA[15]~15_combout\);

\ULA|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~65_sumout\ = SUM(( \BancoRegistradores|saidaA[15]~15_combout\ ) + ( (!\BancoRegistradores|registrador~1138_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~62\ ))
-- \ULA|Add1~66\ = CARRY(( \BancoRegistradores|saidaA[15]~15_combout\ ) + ( (!\BancoRegistradores|registrador~1138_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[15]~15_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1138_combout\,
	cin => \ULA|Add1~62\,
	sumout => \ULA|Add1~65_sumout\,
	cout => \ULA|Add1~66\);

\ULA|saida[15]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~44_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[15]~17_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[15]~15_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~65_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~61_sumout\,
	datab => \ULA|ALT_INV_Add1~65_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[15]~15_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[15]~17_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[15]~44_combout\);

\ULA|saida[15]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~45_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[15]~17_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[15]~15_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[15]~17_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[15]~15_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[15]~15_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[15]~17_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[15]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[15]~15_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[15]~17_combout\,
	combout => \ULA|saida[15]~45_combout\);

\ULA|saida[15]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[15]~46_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[15]~44_combout\)) # (\ULA|saida[15]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[15]~44_combout\,
	datac => \ULA|ALT_INV_saida[15]~45_combout\,
	combout => \ULA|saida[15]~46_combout\);

\BancoRegistradores|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[15]~46_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~53_q\);

\BancoRegistradores|registrador~1137\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1137_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~309_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~53_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~53_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~309_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1137_combout\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( \BancoRegistradores|saidaA[16]~16_combout\ ) + ( (\BancoRegistradores|registrador~1143_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( \BancoRegistradores|saidaA[16]~16_combout\ ) + ( (\BancoRegistradores|registrador~1143_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~62\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[16]~16_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1143_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\ULA|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~69_sumout\ = SUM(( \BancoRegistradores|saidaA[16]~16_combout\ ) + ( (!\BancoRegistradores|registrador~1143_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~66\ ))
-- \ULA|Add1~70\ = CARRY(( \BancoRegistradores|saidaA[16]~16_combout\ ) + ( (!\BancoRegistradores|registrador~1143_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[16]~16_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1143_combout\,
	cin => \ULA|Add1~66\,
	sumout => \ULA|Add1~69_sumout\,
	cout => \ULA|Add1~70\);

\MUXRegImed|saida_MUX[16]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[16]~18_combout\ = (\BancoRegistradores|registrador~1143_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1143_combout\,
	combout => \MUXRegImed|saida_MUX[16]~18_combout\);

\ULA|saida[16]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~47_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[16]~18_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[16]~16_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~69_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~65_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~65_sumout\,
	datab => \ULA|ALT_INV_Add1~69_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[16]~16_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[16]~18_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[16]~47_combout\);

\ULA|saida[16]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~48_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[16]~18_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[16]~16_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[16]~18_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[16]~16_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[16]~16_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[16]~18_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[16]~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[16]~16_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[16]~18_combout\,
	combout => \ULA|saida[16]~48_combout\);

\ULA|saida[16]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[16]~49_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[16]~47_combout\)) # (\ULA|saida[16]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[16]~47_combout\,
	datac => \ULA|ALT_INV_saida[16]~48_combout\,
	combout => \ULA|saida[16]~49_combout\);

\BancoRegistradores|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[16]~49_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~54_q\);

\BancoRegistradores|registrador~1142\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1142_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~310_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~54_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~54_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~310_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1142_combout\);

\BancoRegistradores|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[16]~16_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1142_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1142_combout\,
	combout => \BancoRegistradores|saidaA[16]~16_combout\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( \BancoRegistradores|saidaA[17]~17_combout\ ) + ( (\BancoRegistradores|registrador~1148_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( \BancoRegistradores|saidaA[17]~17_combout\ ) + ( (\BancoRegistradores|registrador~1148_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~66\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[17]~17_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1148_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\ULA|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~73_sumout\ = SUM(( \BancoRegistradores|saidaA[17]~17_combout\ ) + ( (!\BancoRegistradores|registrador~1148_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~70\ ))
-- \ULA|Add1~74\ = CARRY(( \BancoRegistradores|saidaA[17]~17_combout\ ) + ( (!\BancoRegistradores|registrador~1148_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[17]~17_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1148_combout\,
	cin => \ULA|Add1~70\,
	sumout => \ULA|Add1~73_sumout\,
	cout => \ULA|Add1~74\);

\MUXRegImed|saida_MUX[17]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[17]~19_combout\ = (\BancoRegistradores|registrador~1148_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1148_combout\,
	combout => \MUXRegImed|saida_MUX[17]~19_combout\);

\ULA|saida[17]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~50_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[17]~19_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[17]~17_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~73_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~69_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~69_sumout\,
	datab => \ULA|ALT_INV_Add1~73_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[17]~17_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[17]~19_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[17]~50_combout\);

\ULA|saida[17]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~51_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[17]~19_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[17]~17_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[17]~19_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[17]~17_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[17]~17_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[17]~19_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[17]~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[17]~17_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[17]~19_combout\,
	combout => \ULA|saida[17]~51_combout\);

\ULA|saida[17]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~52_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[17]~50_combout\)) # (\ULA|saida[17]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[17]~50_combout\,
	datac => \ULA|ALT_INV_saida[17]~51_combout\,
	combout => \ULA|saida[17]~52_combout\);

\BancoRegistradores|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[17]~52_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~55_q\);

\BancoRegistradores|registrador~1147\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1147_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~311_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~55_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~55_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~311_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1147_combout\);

\BancoRegistradores|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[17]~17_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1147_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1147_combout\,
	combout => \BancoRegistradores|saidaA[17]~17_combout\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( \BancoRegistradores|saidaA[18]~18_combout\ ) + ( (\BancoRegistradores|registrador~1153_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( \BancoRegistradores|saidaA[18]~18_combout\ ) + ( (\BancoRegistradores|registrador~1153_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~70\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[18]~18_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1153_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\ULA|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~77_sumout\ = SUM(( \BancoRegistradores|saidaA[18]~18_combout\ ) + ( (!\BancoRegistradores|registrador~1153_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~74\ ))
-- \ULA|Add1~78\ = CARRY(( \BancoRegistradores|saidaA[18]~18_combout\ ) + ( (!\BancoRegistradores|registrador~1153_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[18]~18_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1153_combout\,
	cin => \ULA|Add1~74\,
	sumout => \ULA|Add1~77_sumout\,
	cout => \ULA|Add1~78\);

\MUXRegImed|saida_MUX[18]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[18]~20_combout\ = (\BancoRegistradores|registrador~1153_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1153_combout\,
	combout => \MUXRegImed|saida_MUX[18]~20_combout\);

\ULA|saida[18]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~53_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[18]~20_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[18]~18_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~77_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~73_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~73_sumout\,
	datab => \ULA|ALT_INV_Add1~77_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[18]~18_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[18]~20_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[18]~53_combout\);

\ULA|saida[18]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~54_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[18]~20_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[18]~18_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[18]~20_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[18]~18_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[18]~18_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[18]~20_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[18]~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[18]~18_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[18]~20_combout\,
	combout => \ULA|saida[18]~54_combout\);

\ULA|saida[18]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[18]~55_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[18]~53_combout\)) # (\ULA|saida[18]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[18]~53_combout\,
	datac => \ULA|ALT_INV_saida[18]~54_combout\,
	combout => \ULA|saida[18]~55_combout\);

\BancoRegistradores|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[18]~55_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~56_q\);

\BancoRegistradores|registrador~1152\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1152_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~312_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~56_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~56_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~312_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1152_combout\);

\BancoRegistradores|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[18]~18_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1152_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1152_combout\,
	combout => \BancoRegistradores|saidaA[18]~18_combout\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( \BancoRegistradores|saidaA[19]~19_combout\ ) + ( (\BancoRegistradores|registrador~1158_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( \BancoRegistradores|saidaA[19]~19_combout\ ) + ( (\BancoRegistradores|registrador~1158_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~74\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[19]~19_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1158_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\ULA|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~81_sumout\ = SUM(( \BancoRegistradores|saidaA[19]~19_combout\ ) + ( (!\BancoRegistradores|registrador~1158_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~78\ ))
-- \ULA|Add1~82\ = CARRY(( \BancoRegistradores|saidaA[19]~19_combout\ ) + ( (!\BancoRegistradores|registrador~1158_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[19]~19_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1158_combout\,
	cin => \ULA|Add1~78\,
	sumout => \ULA|Add1~81_sumout\,
	cout => \ULA|Add1~82\);

\MUXRegImed|saida_MUX[19]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[19]~21_combout\ = (\BancoRegistradores|registrador~1158_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1158_combout\,
	combout => \MUXRegImed|saida_MUX[19]~21_combout\);

\ULA|saida[19]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~56_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[19]~21_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[19]~19_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~81_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~77_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~77_sumout\,
	datab => \ULA|ALT_INV_Add1~81_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[19]~19_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[19]~21_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[19]~56_combout\);

\ULA|saida[19]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~57_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[19]~21_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[19]~19_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[19]~21_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[19]~19_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[19]~19_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[19]~21_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[19]~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[19]~19_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[19]~21_combout\,
	combout => \ULA|saida[19]~57_combout\);

\ULA|saida[19]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[19]~58_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[19]~56_combout\)) # (\ULA|saida[19]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[19]~56_combout\,
	datac => \ULA|ALT_INV_saida[19]~57_combout\,
	combout => \ULA|saida[19]~58_combout\);

\BancoRegistradores|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[19]~58_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~57_q\);

\BancoRegistradores|registrador~1157\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1157_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~313_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~57_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~57_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~313_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1157_combout\);

\BancoRegistradores|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[19]~19_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1157_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1157_combout\,
	combout => \BancoRegistradores|saidaA[19]~19_combout\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( \BancoRegistradores|saidaA[20]~20_combout\ ) + ( (\BancoRegistradores|registrador~1163_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( \BancoRegistradores|saidaA[20]~20_combout\ ) + ( (\BancoRegistradores|registrador~1163_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~78\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[20]~20_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1163_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\ULA|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~85_sumout\ = SUM(( \BancoRegistradores|saidaA[20]~20_combout\ ) + ( (!\BancoRegistradores|registrador~1163_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~82\ ))
-- \ULA|Add1~86\ = CARRY(( \BancoRegistradores|saidaA[20]~20_combout\ ) + ( (!\BancoRegistradores|registrador~1163_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[20]~20_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1163_combout\,
	cin => \ULA|Add1~82\,
	sumout => \ULA|Add1~85_sumout\,
	cout => \ULA|Add1~86\);

\MUXRegImed|saida_MUX[20]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[20]~22_combout\ = (\BancoRegistradores|registrador~1163_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1163_combout\,
	combout => \MUXRegImed|saida_MUX[20]~22_combout\);

\ULA|saida[20]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~59_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[20]~22_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[20]~20_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~85_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~81_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~81_sumout\,
	datab => \ULA|ALT_INV_Add1~85_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[20]~20_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[20]~22_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[20]~59_combout\);

\ULA|saida[20]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~60_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[20]~22_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[20]~20_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[20]~22_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[20]~20_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[20]~20_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[20]~22_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[20]~20_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[20]~20_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[20]~22_combout\,
	combout => \ULA|saida[20]~60_combout\);

\ULA|saida[20]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[20]~61_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[20]~59_combout\)) # (\ULA|saida[20]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[20]~59_combout\,
	datac => \ULA|ALT_INV_saida[20]~60_combout\,
	combout => \ULA|saida[20]~61_combout\);

\BancoRegistradores|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[20]~61_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~58_q\);

\BancoRegistradores|registrador~1162\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1162_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~314_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~58_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~58_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~314_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1162_combout\);

\BancoRegistradores|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[20]~20_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1162_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1162_combout\,
	combout => \BancoRegistradores|saidaA[20]~20_combout\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( \BancoRegistradores|saidaA[21]~21_combout\ ) + ( (\BancoRegistradores|registrador~1168_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( \BancoRegistradores|saidaA[21]~21_combout\ ) + ( (\BancoRegistradores|registrador~1168_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~82\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[21]~21_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1168_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\ULA|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~89_sumout\ = SUM(( \BancoRegistradores|saidaA[21]~21_combout\ ) + ( (!\BancoRegistradores|registrador~1168_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~86\ ))
-- \ULA|Add1~90\ = CARRY(( \BancoRegistradores|saidaA[21]~21_combout\ ) + ( (!\BancoRegistradores|registrador~1168_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[21]~21_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1168_combout\,
	cin => \ULA|Add1~86\,
	sumout => \ULA|Add1~89_sumout\,
	cout => \ULA|Add1~90\);

\MUXRegImed|saida_MUX[21]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[21]~23_combout\ = (\BancoRegistradores|registrador~1168_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1168_combout\,
	combout => \MUXRegImed|saida_MUX[21]~23_combout\);

\ULA|saida[21]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~62_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[21]~23_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[21]~21_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~89_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~85_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~85_sumout\,
	datab => \ULA|ALT_INV_Add1~89_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[21]~21_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[21]~23_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[21]~62_combout\);

\ULA|saida[21]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~63_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[21]~23_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[21]~21_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[21]~23_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[21]~21_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[21]~21_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[21]~23_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[21]~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[21]~21_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[21]~23_combout\,
	combout => \ULA|saida[21]~63_combout\);

\ULA|saida[21]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[21]~64_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[21]~62_combout\)) # (\ULA|saida[21]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[21]~62_combout\,
	datac => \ULA|ALT_INV_saida[21]~63_combout\,
	combout => \ULA|saida[21]~64_combout\);

\BancoRegistradores|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[21]~64_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~59_q\);

\BancoRegistradores|registrador~1167\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1167_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~315_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~59_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~59_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~315_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1167_combout\);

\BancoRegistradores|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[21]~21_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1167_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1167_combout\,
	combout => \BancoRegistradores|saidaA[21]~21_combout\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( \BancoRegistradores|saidaA[22]~22_combout\ ) + ( (\BancoRegistradores|registrador~1173_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( \BancoRegistradores|saidaA[22]~22_combout\ ) + ( (\BancoRegistradores|registrador~1173_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~86\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[22]~22_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1173_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\ULA|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~93_sumout\ = SUM(( \BancoRegistradores|saidaA[22]~22_combout\ ) + ( (!\BancoRegistradores|registrador~1173_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~90\ ))
-- \ULA|Add1~94\ = CARRY(( \BancoRegistradores|saidaA[22]~22_combout\ ) + ( (!\BancoRegistradores|registrador~1173_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[22]~22_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1173_combout\,
	cin => \ULA|Add1~90\,
	sumout => \ULA|Add1~93_sumout\,
	cout => \ULA|Add1~94\);

\MUXRegImed|saida_MUX[22]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[22]~24_combout\ = (\BancoRegistradores|registrador~1173_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1173_combout\,
	combout => \MUXRegImed|saida_MUX[22]~24_combout\);

\ULA|saida[22]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~65_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[22]~24_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[22]~22_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~93_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~89_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~89_sumout\,
	datab => \ULA|ALT_INV_Add1~93_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[22]~22_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[22]~24_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[22]~65_combout\);

\ULA|saida[22]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~66_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[22]~24_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[22]~22_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[22]~24_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[22]~22_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[22]~22_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[22]~24_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[22]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[22]~22_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[22]~24_combout\,
	combout => \ULA|saida[22]~66_combout\);

\ULA|saida[22]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[22]~67_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[22]~65_combout\)) # (\ULA|saida[22]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[22]~65_combout\,
	datac => \ULA|ALT_INV_saida[22]~66_combout\,
	combout => \ULA|saida[22]~67_combout\);

\BancoRegistradores|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[22]~67_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~60_q\);

\BancoRegistradores|registrador~1172\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1172_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~316_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~60_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~60_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~316_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1172_combout\);

\BancoRegistradores|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[22]~22_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1172_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1172_combout\,
	combout => \BancoRegistradores|saidaA[22]~22_combout\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( \BancoRegistradores|saidaA[23]~23_combout\ ) + ( (\BancoRegistradores|registrador~1178_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( \BancoRegistradores|saidaA[23]~23_combout\ ) + ( (\BancoRegistradores|registrador~1178_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~90\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[23]~23_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1178_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\ULA|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~97_sumout\ = SUM(( \BancoRegistradores|saidaA[23]~23_combout\ ) + ( (!\BancoRegistradores|registrador~1178_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~94\ ))
-- \ULA|Add1~98\ = CARRY(( \BancoRegistradores|saidaA[23]~23_combout\ ) + ( (!\BancoRegistradores|registrador~1178_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[23]~23_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1178_combout\,
	cin => \ULA|Add1~94\,
	sumout => \ULA|Add1~97_sumout\,
	cout => \ULA|Add1~98\);

\MUXRegImed|saida_MUX[23]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[23]~25_combout\ = (\BancoRegistradores|registrador~1178_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1178_combout\,
	combout => \MUXRegImed|saida_MUX[23]~25_combout\);

\ULA|saida[23]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~68_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[23]~25_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[23]~23_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~97_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~93_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~93_sumout\,
	datab => \ULA|ALT_INV_Add1~97_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[23]~23_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[23]~25_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[23]~68_combout\);

\ULA|saida[23]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~69_combout\ = ( \ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[23]~25_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (\BancoRegistradores|saidaA[23]~23_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ (!\ulaUC|ulaOp[1]~1_combout\)))) ) ) ) # ( 
-- !\ULA|saida[17]~96_combout\ & ( \MUXRegImed|saida_MUX[23]~25_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (!\ulaUC|ulaOp[1]~1_combout\ $ (!\BancoRegistradores|saidaA[23]~23_combout\))) # (\ulaUC|ulaOp[0]~0_combout\ & 
-- ((!\BancoRegistradores|saidaA[23]~23_combout\) # (\ulaUC|ulaOp[1]~1_combout\))))) ) ) ) # ( !\ULA|saida[17]~96_combout\ & ( !\MUXRegImed|saida_MUX[23]~25_combout\ & ( (\ulaUC|ulaOp[1]~2_combout\ & (!\ulaUC|ulaOp[0]~0_combout\ $ 
-- (!\ulaUC|ulaOp[1]~1_combout\ $ (\BancoRegistradores|saidaA[23]~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000000000000000000010011001000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[23]~23_combout\,
	datae => \ULA|ALT_INV_saida[17]~96_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[23]~25_combout\,
	combout => \ULA|saida[23]~69_combout\);

\ULA|saida[23]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[23]~70_combout\ = ((!\ulaUC|ulaOp[1]~2_combout\ & \ULA|saida[23]~68_combout\)) # (\ULA|saida[23]~69_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[23]~68_combout\,
	datac => \ULA|ALT_INV_saida[23]~69_combout\,
	combout => \ULA|saida[23]~70_combout\);

\BancoRegistradores|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[23]~70_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~61_q\);

\BancoRegistradores|registrador~1177\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1177_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~317_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~61_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~61_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~317_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1177_combout\);

\BancoRegistradores|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[23]~23_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1177_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1177_combout\,
	combout => \BancoRegistradores|saidaA[23]~23_combout\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( \BancoRegistradores|saidaA[24]~24_combout\ ) + ( (\BancoRegistradores|registrador~1183_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( \BancoRegistradores|saidaA[24]~24_combout\ ) + ( (\BancoRegistradores|registrador~1183_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~94\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[24]~24_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1183_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\ULA|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~101_sumout\ = SUM(( \BancoRegistradores|saidaA[24]~24_combout\ ) + ( (!\BancoRegistradores|registrador~1183_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~98\ ))
-- \ULA|Add1~102\ = CARRY(( \BancoRegistradores|saidaA[24]~24_combout\ ) + ( (!\BancoRegistradores|registrador~1183_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[24]~24_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1183_combout\,
	cin => \ULA|Add1~98\,
	sumout => \ULA|Add1~101_sumout\,
	cout => \ULA|Add1~102\);

\MUXRegImed|saida_MUX[24]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[24]~26_combout\ = (\BancoRegistradores|registrador~1183_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1183_combout\,
	combout => \MUXRegImed|saida_MUX[24]~26_combout\);

\ULA|saida[24]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~71_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[24]~26_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[24]~24_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~101_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~97_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~97_sumout\,
	datab => \ULA|ALT_INV_Add1~101_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[24]~24_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[24]~26_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[24]~71_combout\);

\ULA|saida[24]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~72_combout\ = ( \MUXRegImed|saida_MUX[24]~26_combout\ & ( (!\BancoRegistradores|saidaA[24]~24_combout\ & (!\ULA|saida[17]~96_combout\ & ((\ULA|Equal7~0_combout\) # (\ULA|saida[17]~95_combout\)))) # 
-- (\BancoRegistradores|saidaA[24]~24_combout\ & (!\ULA|saida[17]~95_combout\ $ ((\ULA|saida[17]~96_combout\)))) ) ) # ( !\MUXRegImed|saida_MUX[24]~26_combout\ & ( (!\ULA|saida[17]~96_combout\ & (!\BancoRegistradores|saidaA[24]~24_combout\ $ 
-- (!\ULA|saida[17]~95_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000011110000101100000011000000110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[24]~24_combout\,
	datab => \ULA|ALT_INV_saida[17]~95_combout\,
	datac => \ULA|ALT_INV_saida[17]~96_combout\,
	datad => \ULA|ALT_INV_Equal7~0_combout\,
	datae => \MUXRegImed|ALT_INV_saida_MUX[24]~26_combout\,
	combout => \ULA|saida[24]~72_combout\);

\ULA|saida[24]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[24]~73_combout\ = (!\ulaUC|ulaOp[1]~2_combout\ & (\ULA|saida[24]~71_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((\ULA|saida[24]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[24]~71_combout\,
	datac => \ULA|ALT_INV_saida[24]~72_combout\,
	combout => \ULA|saida[24]~73_combout\);

\BancoRegistradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[24]~73_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~62_q\);

\BancoRegistradores|registrador~1182\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1182_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~318_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~62_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~62_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~318_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1182_combout\);

\BancoRegistradores|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[24]~24_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1182_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1182_combout\,
	combout => \BancoRegistradores|saidaA[24]~24_combout\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( \BancoRegistradores|saidaA[25]~25_combout\ ) + ( (\BancoRegistradores|registrador~1188_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( \BancoRegistradores|saidaA[25]~25_combout\ ) + ( (\BancoRegistradores|registrador~1188_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( \ULA|Add0~98\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[25]~25_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1188_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\ULA|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~105_sumout\ = SUM(( \BancoRegistradores|saidaA[25]~25_combout\ ) + ( (!\BancoRegistradores|registrador~1188_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~102\ ))
-- \ULA|Add1~106\ = CARRY(( \BancoRegistradores|saidaA[25]~25_combout\ ) + ( (!\BancoRegistradores|registrador~1188_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[25]~25_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1188_combout\,
	cin => \ULA|Add1~102\,
	sumout => \ULA|Add1~105_sumout\,
	cout => \ULA|Add1~106\);

\MUXRegImed|saida_MUX[25]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[25]~27_combout\ = (\BancoRegistradores|registrador~1188_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1188_combout\,
	combout => \MUXRegImed|saida_MUX[25]~27_combout\);

\ULA|saida[25]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~74_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[25]~27_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[25]~25_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~105_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~101_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~101_sumout\,
	datab => \ULA|ALT_INV_Add1~105_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[25]~25_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[25]~27_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[25]~74_combout\);

\ULA|saida[25]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~75_combout\ = ( \MUXRegImed|saida_MUX[25]~27_combout\ & ( (!\BancoRegistradores|saidaA[25]~25_combout\ & (!\ULA|saida[17]~96_combout\ & ((\ULA|Equal7~0_combout\) # (\ULA|saida[17]~95_combout\)))) # 
-- (\BancoRegistradores|saidaA[25]~25_combout\ & (!\ULA|saida[17]~95_combout\ $ ((\ULA|saida[17]~96_combout\)))) ) ) # ( !\MUXRegImed|saida_MUX[25]~27_combout\ & ( (!\ULA|saida[17]~96_combout\ & (!\BancoRegistradores|saidaA[25]~25_combout\ $ 
-- (!\ULA|saida[17]~95_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000011110000101100000011000000110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[25]~25_combout\,
	datab => \ULA|ALT_INV_saida[17]~95_combout\,
	datac => \ULA|ALT_INV_saida[17]~96_combout\,
	datad => \ULA|ALT_INV_Equal7~0_combout\,
	datae => \MUXRegImed|ALT_INV_saida_MUX[25]~27_combout\,
	combout => \ULA|saida[25]~75_combout\);

\ULA|saida[25]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[25]~76_combout\ = (!\ulaUC|ulaOp[1]~2_combout\ & (\ULA|saida[25]~74_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((\ULA|saida[25]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[25]~74_combout\,
	datac => \ULA|ALT_INV_saida[25]~75_combout\,
	combout => \ULA|saida[25]~76_combout\);

\BancoRegistradores|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[25]~76_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~63_q\);

\BancoRegistradores|registrador~1187\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1187_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~319_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~63_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~63_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~319_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1187_combout\);

\BancoRegistradores|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[25]~25_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1187_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1187_combout\,
	combout => \BancoRegistradores|saidaA[25]~25_combout\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( \BancoRegistradores|saidaA[26]~26_combout\ ) + ( (\BancoRegistradores|registrador~1193_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( \BancoRegistradores|saidaA[26]~26_combout\ ) + ( (\BancoRegistradores|registrador~1193_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[26]~26_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1193_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\ULA|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~109_sumout\ = SUM(( \BancoRegistradores|saidaA[26]~26_combout\ ) + ( (!\BancoRegistradores|registrador~1193_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~106\ ))
-- \ULA|Add1~110\ = CARRY(( \BancoRegistradores|saidaA[26]~26_combout\ ) + ( (!\BancoRegistradores|registrador~1193_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[26]~26_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1193_combout\,
	cin => \ULA|Add1~106\,
	sumout => \ULA|Add1~109_sumout\,
	cout => \ULA|Add1~110\);

\MUXRegImed|saida_MUX[26]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[26]~28_combout\ = (\BancoRegistradores|registrador~1193_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1193_combout\,
	combout => \MUXRegImed|saida_MUX[26]~28_combout\);

\ULA|saida[26]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~77_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[26]~28_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[26]~26_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~109_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~105_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~105_sumout\,
	datab => \ULA|ALT_INV_Add1~109_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[26]~26_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[26]~28_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[26]~77_combout\);

\ULA|saida[26]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~78_combout\ = ( \MUXRegImed|saida_MUX[26]~28_combout\ & ( (!\BancoRegistradores|saidaA[26]~26_combout\ & (!\ULA|saida[17]~96_combout\ & ((\ULA|Equal7~0_combout\) # (\ULA|saida[17]~95_combout\)))) # 
-- (\BancoRegistradores|saidaA[26]~26_combout\ & (!\ULA|saida[17]~95_combout\ $ ((\ULA|saida[17]~96_combout\)))) ) ) # ( !\MUXRegImed|saida_MUX[26]~28_combout\ & ( (!\ULA|saida[17]~96_combout\ & (!\BancoRegistradores|saidaA[26]~26_combout\ $ 
-- (!\ULA|saida[17]~95_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000011110000101100000011000000110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[26]~26_combout\,
	datab => \ULA|ALT_INV_saida[17]~95_combout\,
	datac => \ULA|ALT_INV_saida[17]~96_combout\,
	datad => \ULA|ALT_INV_Equal7~0_combout\,
	datae => \MUXRegImed|ALT_INV_saida_MUX[26]~28_combout\,
	combout => \ULA|saida[26]~78_combout\);

\ULA|saida[26]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[26]~79_combout\ = (!\ulaUC|ulaOp[1]~2_combout\ & (\ULA|saida[26]~77_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((\ULA|saida[26]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[26]~77_combout\,
	datac => \ULA|ALT_INV_saida[26]~78_combout\,
	combout => \ULA|saida[26]~79_combout\);

\BancoRegistradores|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[26]~79_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~64_q\);

\BancoRegistradores|registrador~1192\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1192_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~320_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~64_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~64_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~320_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1192_combout\);

\BancoRegistradores|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[26]~26_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1192_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1192_combout\,
	combout => \BancoRegistradores|saidaA[26]~26_combout\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( \BancoRegistradores|saidaA[27]~27_combout\ ) + ( (\BancoRegistradores|registrador~1198_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( \BancoRegistradores|saidaA[27]~27_combout\ ) + ( (\BancoRegistradores|registrador~1198_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[27]~27_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1198_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\ULA|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~113_sumout\ = SUM(( \BancoRegistradores|saidaA[27]~27_combout\ ) + ( (!\BancoRegistradores|registrador~1198_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~110\ ))
-- \ULA|Add1~114\ = CARRY(( \BancoRegistradores|saidaA[27]~27_combout\ ) + ( (!\BancoRegistradores|registrador~1198_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[27]~27_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1198_combout\,
	cin => \ULA|Add1~110\,
	sumout => \ULA|Add1~113_sumout\,
	cout => \ULA|Add1~114\);

\MUXRegImed|saida_MUX[27]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[27]~29_combout\ = (\BancoRegistradores|registrador~1198_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1198_combout\,
	combout => \MUXRegImed|saida_MUX[27]~29_combout\);

\ULA|saida[27]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~80_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[27]~29_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[27]~27_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~113_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~109_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~109_sumout\,
	datab => \ULA|ALT_INV_Add1~113_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[27]~27_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[27]~29_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[27]~80_combout\);

\ULA|saida[27]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~81_combout\ = ( \MUXRegImed|saida_MUX[27]~29_combout\ & ( (!\BancoRegistradores|saidaA[27]~27_combout\ & (!\ULA|saida[17]~96_combout\ & ((\ULA|Equal7~0_combout\) # (\ULA|saida[17]~95_combout\)))) # 
-- (\BancoRegistradores|saidaA[27]~27_combout\ & (!\ULA|saida[17]~95_combout\ $ ((\ULA|saida[17]~96_combout\)))) ) ) # ( !\MUXRegImed|saida_MUX[27]~29_combout\ & ( (!\ULA|saida[17]~96_combout\ & (!\BancoRegistradores|saidaA[27]~27_combout\ $ 
-- (!\ULA|saida[17]~95_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000011110000101100000011000000110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[27]~27_combout\,
	datab => \ULA|ALT_INV_saida[17]~95_combout\,
	datac => \ULA|ALT_INV_saida[17]~96_combout\,
	datad => \ULA|ALT_INV_Equal7~0_combout\,
	datae => \MUXRegImed|ALT_INV_saida_MUX[27]~29_combout\,
	combout => \ULA|saida[27]~81_combout\);

\ULA|saida[27]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[27]~82_combout\ = (!\ulaUC|ulaOp[1]~2_combout\ & (\ULA|saida[27]~80_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((\ULA|saida[27]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[27]~80_combout\,
	datac => \ULA|ALT_INV_saida[27]~81_combout\,
	combout => \ULA|saida[27]~82_combout\);

\BancoRegistradores|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[27]~82_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~65_q\);

\BancoRegistradores|registrador~1197\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1197_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~321_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~65_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~65_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~321_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1197_combout\);

\BancoRegistradores|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[27]~27_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1197_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1197_combout\,
	combout => \BancoRegistradores|saidaA[27]~27_combout\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( \BancoRegistradores|saidaA[28]~28_combout\ ) + ( (\BancoRegistradores|registrador~1203_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( \BancoRegistradores|saidaA[28]~28_combout\ ) + ( (\BancoRegistradores|registrador~1203_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[28]~28_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1203_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\ULA|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~117_sumout\ = SUM(( \BancoRegistradores|saidaA[28]~28_combout\ ) + ( (!\BancoRegistradores|registrador~1203_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~114\ ))
-- \ULA|Add1~118\ = CARRY(( \BancoRegistradores|saidaA[28]~28_combout\ ) + ( (!\BancoRegistradores|registrador~1203_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[28]~28_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1203_combout\,
	cin => \ULA|Add1~114\,
	sumout => \ULA|Add1~117_sumout\,
	cout => \ULA|Add1~118\);

\MUXRegImed|saida_MUX[28]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[28]~30_combout\ = (\BancoRegistradores|registrador~1203_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1203_combout\,
	combout => \MUXRegImed|saida_MUX[28]~30_combout\);

\ULA|saida[28]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~83_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[28]~30_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[28]~28_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~117_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~113_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~113_sumout\,
	datab => \ULA|ALT_INV_Add1~117_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[28]~28_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[28]~30_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[28]~83_combout\);

\ULA|saida[28]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~84_combout\ = ( \MUXRegImed|saida_MUX[28]~30_combout\ & ( (!\BancoRegistradores|saidaA[28]~28_combout\ & (!\ULA|saida[17]~96_combout\ & ((\ULA|Equal7~0_combout\) # (\ULA|saida[17]~95_combout\)))) # 
-- (\BancoRegistradores|saidaA[28]~28_combout\ & (!\ULA|saida[17]~95_combout\ $ ((\ULA|saida[17]~96_combout\)))) ) ) # ( !\MUXRegImed|saida_MUX[28]~30_combout\ & ( (!\ULA|saida[17]~96_combout\ & (!\BancoRegistradores|saidaA[28]~28_combout\ $ 
-- (!\ULA|saida[17]~95_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000011110000101100000011000000110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[28]~28_combout\,
	datab => \ULA|ALT_INV_saida[17]~95_combout\,
	datac => \ULA|ALT_INV_saida[17]~96_combout\,
	datad => \ULA|ALT_INV_Equal7~0_combout\,
	datae => \MUXRegImed|ALT_INV_saida_MUX[28]~30_combout\,
	combout => \ULA|saida[28]~84_combout\);

\ULA|saida[28]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[28]~85_combout\ = (!\ulaUC|ulaOp[1]~2_combout\ & (\ULA|saida[28]~83_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((\ULA|saida[28]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[28]~83_combout\,
	datac => \ULA|ALT_INV_saida[28]~84_combout\,
	combout => \ULA|saida[28]~85_combout\);

\BancoRegistradores|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[28]~85_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~66_q\);

\BancoRegistradores|registrador~1202\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1202_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~322_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~66_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~66_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~322_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1202_combout\);

\BancoRegistradores|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[28]~28_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1202_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1202_combout\,
	combout => \BancoRegistradores|saidaA[28]~28_combout\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( \BancoRegistradores|saidaA[29]~29_combout\ ) + ( (\BancoRegistradores|registrador~1208_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( \BancoRegistradores|saidaA[29]~29_combout\ ) + ( (\BancoRegistradores|registrador~1208_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[29]~29_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1208_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\ULA|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~121_sumout\ = SUM(( \BancoRegistradores|saidaA[29]~29_combout\ ) + ( (!\BancoRegistradores|registrador~1208_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~118\ ))
-- \ULA|Add1~122\ = CARRY(( \BancoRegistradores|saidaA[29]~29_combout\ ) + ( (!\BancoRegistradores|registrador~1208_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[29]~29_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1208_combout\,
	cin => \ULA|Add1~118\,
	sumout => \ULA|Add1~121_sumout\,
	cout => \ULA|Add1~122\);

\MUXRegImed|saida_MUX[29]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[29]~31_combout\ = (\BancoRegistradores|registrador~1208_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1208_combout\,
	combout => \MUXRegImed|saida_MUX[29]~31_combout\);

\ULA|saida[29]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~86_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[29]~31_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[29]~29_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~121_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~117_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~117_sumout\,
	datab => \ULA|ALT_INV_Add1~121_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[29]~29_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[29]~31_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[29]~86_combout\);

\ULA|saida[29]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~87_combout\ = ( \MUXRegImed|saida_MUX[29]~31_combout\ & ( (!\BancoRegistradores|saidaA[29]~29_combout\ & (!\ULA|saida[17]~96_combout\ & ((\ULA|Equal7~0_combout\) # (\ULA|saida[17]~95_combout\)))) # 
-- (\BancoRegistradores|saidaA[29]~29_combout\ & (!\ULA|saida[17]~95_combout\ $ ((\ULA|saida[17]~96_combout\)))) ) ) # ( !\MUXRegImed|saida_MUX[29]~31_combout\ & ( (!\ULA|saida[17]~96_combout\ & (!\BancoRegistradores|saidaA[29]~29_combout\ $ 
-- (!\ULA|saida[17]~95_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000011110000101100000011000000110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[29]~29_combout\,
	datab => \ULA|ALT_INV_saida[17]~95_combout\,
	datac => \ULA|ALT_INV_saida[17]~96_combout\,
	datad => \ULA|ALT_INV_Equal7~0_combout\,
	datae => \MUXRegImed|ALT_INV_saida_MUX[29]~31_combout\,
	combout => \ULA|saida[29]~87_combout\);

\ULA|saida[29]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[29]~88_combout\ = (!\ulaUC|ulaOp[1]~2_combout\ & (\ULA|saida[29]~86_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((\ULA|saida[29]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[29]~86_combout\,
	datac => \ULA|ALT_INV_saida[29]~87_combout\,
	combout => \ULA|saida[29]~88_combout\);

\BancoRegistradores|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[29]~88_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~67_q\);

\BancoRegistradores|registrador~1207\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1207_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~323_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~67_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~67_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~323_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1207_combout\);

\BancoRegistradores|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[29]~29_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1207_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1207_combout\,
	combout => \BancoRegistradores|saidaA[29]~29_combout\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( \BancoRegistradores|saidaA[30]~30_combout\ ) + ( (\BancoRegistradores|registrador~1213_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( \BancoRegistradores|saidaA[30]~30_combout\ ) + ( (\BancoRegistradores|registrador~1213_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[30]~30_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1213_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\ULA|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~125_sumout\ = SUM(( \BancoRegistradores|saidaA[30]~30_combout\ ) + ( (!\BancoRegistradores|registrador~1213_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~122\ ))
-- \ULA|Add1~126\ = CARRY(( \BancoRegistradores|saidaA[30]~30_combout\ ) + ( (!\BancoRegistradores|registrador~1213_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[30]~30_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1213_combout\,
	cin => \ULA|Add1~122\,
	sumout => \ULA|Add1~125_sumout\,
	cout => \ULA|Add1~126\);

\ULA|saida[30]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[30]~89_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[30]~32_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[30]~30_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~125_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~121_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~121_sumout\,
	datab => \ULA|ALT_INV_Add1~125_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[30]~30_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[30]~32_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[30]~89_combout\);

\ULA|Equal8~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~19_combout\ = ( !\ULA|saida[2]~6_combout\ & ( (!\ULA|saida[6]~18_combout\ & (!\ULA|saida[1]~3_combout\ & ((!\ulaUC|ulaOp[1]~2_combout\) # (!\ULA|saida[5]~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000000000000000000011100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[5]~15_combout\,
	datac => \ULA|ALT_INV_saida[6]~18_combout\,
	datad => \ULA|ALT_INV_saida[1]~3_combout\,
	datae => \ULA|ALT_INV_saida[2]~6_combout\,
	combout => \ULA|Equal8~19_combout\);

\ULA|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~0_combout\ = ( \ULA|saida[2]~5_combout\ & ( \ULA|Equal8~19_combout\ & ( \ulaUC|ulaOp[1]~2_combout\ ) ) ) # ( !\ULA|saida[2]~5_combout\ & ( \ULA|Equal8~19_combout\ & ( ((!\ULA|saida[5]~14_combout\ & (!\ULA|saida[6]~17_combout\ & 
-- !\ULA|saida[1]~2_combout\))) # (\ulaUC|ulaOp[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[5]~14_combout\,
	datac => \ULA|ALT_INV_saida[6]~17_combout\,
	datad => \ULA|ALT_INV_saida[1]~2_combout\,
	datae => \ULA|ALT_INV_saida[2]~5_combout\,
	dataf => \ULA|ALT_INV_Equal8~19_combout\,
	combout => \ULA|Equal8~0_combout\);

\ULA|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~1_combout\ = ( !\ULA|saida[16]~48_combout\ & ( \ULA|Equal8~0_combout\ & ( (!\ULA|saida[15]~45_combout\ & (((!\ULA|saida[15]~44_combout\ & !\ULA|saida[16]~47_combout\)) # (\ulaUC|ulaOp[1]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[15]~44_combout\,
	datac => \ULA|ALT_INV_saida[15]~45_combout\,
	datad => \ULA|ALT_INV_saida[16]~47_combout\,
	datae => \ULA|ALT_INV_saida[16]~48_combout\,
	dataf => \ULA|ALT_INV_Equal8~0_combout\,
	combout => \ULA|Equal8~1_combout\);

\ULA|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~2_combout\ = ( \ULA|saida[27]~81_combout\ & ( \ULA|Equal8~1_combout\ & ( (!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[26]~77_combout\ & !\ULA|saida[27]~80_combout\)) ) ) ) # ( !\ULA|saida[27]~81_combout\ & ( \ULA|Equal8~1_combout\ & ( 
-- (!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[26]~77_combout\ & ((!\ULA|saida[27]~80_combout\)))) # (\ulaUC|ulaOp[1]~2_combout\ & (((!\ULA|saida[26]~78_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[26]~77_combout\,
	datac => \ULA|ALT_INV_saida[26]~78_combout\,
	datad => \ULA|ALT_INV_saida[27]~80_combout\,
	datae => \ULA|ALT_INV_saida[27]~81_combout\,
	dataf => \ULA|ALT_INV_Equal8~1_combout\,
	combout => \ULA|Equal8~2_combout\);

\ULA|Equal8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~3_combout\ = ( !\ULA|saida[4]~12_combout\ & ( (!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[3]~8_combout\ & ((!\ULA|saida[4]~11_combout\)))) # (\ulaUC|ulaOp[1]~2_combout\ & (((!\ULA|saida[3]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000000000000000000011011000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[3]~8_combout\,
	datac => \ULA|ALT_INV_saida[3]~9_combout\,
	datad => \ULA|ALT_INV_saida[4]~11_combout\,
	datae => \ULA|ALT_INV_saida[4]~12_combout\,
	combout => \ULA|Equal8~3_combout\);

\ULA|Equal8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~4_combout\ = ( \ULA|saida[14]~42_combout\ & ( \ULA|Equal8~3_combout\ & ( (!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[13]~38_combout\ & (!\ULA|saida[13]~39_combout\ & !\ULA|saida[14]~41_combout\))) ) ) ) # ( !\ULA|saida[14]~42_combout\ & ( 
-- \ULA|Equal8~3_combout\ & ( (!\ULA|saida[13]~39_combout\ & (((!\ULA|saida[13]~38_combout\ & !\ULA|saida[14]~41_combout\)) # (\ulaUC|ulaOp[1]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000010100001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[13]~38_combout\,
	datac => \ULA|ALT_INV_saida[13]~39_combout\,
	datad => \ULA|ALT_INV_saida[14]~41_combout\,
	datae => \ULA|ALT_INV_saida[14]~42_combout\,
	dataf => \ULA|ALT_INV_Equal8~3_combout\,
	combout => \ULA|Equal8~4_combout\);

\ULA|Equal8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~5_combout\ = ( \ULA|saida[25]~75_combout\ & ( \ULA|Equal8~4_combout\ & ( (!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[24]~71_combout\ & !\ULA|saida[25]~74_combout\)) ) ) ) # ( !\ULA|saida[25]~75_combout\ & ( \ULA|Equal8~4_combout\ & ( 
-- (!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[24]~71_combout\ & ((!\ULA|saida[25]~74_combout\)))) # (\ulaUC|ulaOp[1]~2_combout\ & (((!\ULA|saida[24]~72_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[24]~71_combout\,
	datac => \ULA|ALT_INV_saida[24]~72_combout\,
	datad => \ULA|ALT_INV_saida[25]~74_combout\,
	datae => \ULA|ALT_INV_saida[25]~75_combout\,
	dataf => \ULA|ALT_INV_Equal8~4_combout\,
	combout => \ULA|Equal8~5_combout\);

\ULA|Equal8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~18_combout\ = (!\ULA|saida[19]~57_combout\ & (!\ULA|saida[20]~60_combout\ & (!\ULA|saida[9]~27_combout\ & !\ULA|saida[10]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[19]~57_combout\,
	datab => \ULA|ALT_INV_saida[20]~60_combout\,
	datac => \ULA|ALT_INV_saida[9]~27_combout\,
	datad => \ULA|ALT_INV_saida[10]~30_combout\,
	combout => \ULA|Equal8~18_combout\);

\ULA|Equal8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~6_combout\ = ( \ULA|saida[10]~29_combout\ & ( \ULA|Equal8~18_combout\ & ( \ulaUC|ulaOp[1]~2_combout\ ) ) ) # ( !\ULA|saida[10]~29_combout\ & ( \ULA|Equal8~18_combout\ & ( ((!\ULA|saida[19]~56_combout\ & (!\ULA|saida[20]~59_combout\ & 
-- !\ULA|saida[9]~26_combout\))) # (\ulaUC|ulaOp[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[19]~56_combout\,
	datac => \ULA|ALT_INV_saida[20]~59_combout\,
	datad => \ULA|ALT_INV_saida[9]~26_combout\,
	datae => \ULA|ALT_INV_saida[10]~29_combout\,
	dataf => \ULA|ALT_INV_Equal8~18_combout\,
	combout => \ULA|Equal8~6_combout\);

\ULA|Equal8~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~16_combout\ = ( \ULA|Equal8~5_combout\ & ( \ULA|Equal8~6_combout\ & ( (\ULA|Equal8~2_combout\ & ((!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[30]~89_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((!\ULA|saida[30]~90_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[30]~89_combout\,
	datac => \ULA|ALT_INV_saida[30]~90_combout\,
	datad => \ULA|ALT_INV_Equal8~2_combout\,
	datae => \ULA|ALT_INV_Equal8~5_combout\,
	dataf => \ULA|ALT_INV_Equal8~6_combout\,
	combout => \ULA|Equal8~16_combout\);

\BancoRegistradores|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[31]~94_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~325_q\);

\BancoRegistradores|registrador~1256\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1256_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\BancoRegistradores|registrador~69_q\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~69_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \BancoRegistradores|registrador~1256_combout\);

\BancoRegistradores|registrador~1218\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1218_combout\ = ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1256_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~1256_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\BancoRegistradores|registrador~1256_combout\ & ( (\BancoRegistradores|registrador~325_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BancoRegistradores|ALT_INV_registrador~325_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1256_combout\,
	combout => \BancoRegistradores|registrador~1218_combout\);

\MUXRegImed|saida_MUX[31]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[31]~33_combout\ = (\BancoRegistradores|registrador~1218_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1218_combout\,
	combout => \MUXRegImed|saida_MUX[31]~33_combout\);

\ULA|saida[31]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~93_combout\ = ( \MUXRegImed|saida_MUX[31]~33_combout\ & ( (!\BancoRegistradores|saidaA[31]~31_combout\ & (!\ULA|saida[17]~96_combout\ & ((\ULA|Equal7~0_combout\) # (\ULA|saida[17]~95_combout\)))) # 
-- (\BancoRegistradores|saidaA[31]~31_combout\ & (!\ULA|saida[17]~95_combout\ $ ((\ULA|saida[17]~96_combout\)))) ) ) # ( !\MUXRegImed|saida_MUX[31]~33_combout\ & ( (!\ULA|saida[17]~96_combout\ & (!\BancoRegistradores|saidaA[31]~31_combout\ $ 
-- (!\ULA|saida[17]~95_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000011110000101100000011000000110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_saidaA[31]~31_combout\,
	datab => \ULA|ALT_INV_saida[17]~95_combout\,
	datac => \ULA|ALT_INV_saida[17]~96_combout\,
	datad => \ULA|ALT_INV_Equal7~0_combout\,
	datae => \MUXRegImed|ALT_INV_saida_MUX[31]~33_combout\,
	combout => \ULA|saida[31]~93_combout\);

\ULA|saida[31]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~94_combout\ = (!\ulaUC|ulaOp[1]~2_combout\ & (\ULA|saida[31]~92_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((\ULA|saida[31]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[31]~92_combout\,
	datac => \ULA|ALT_INV_saida[31]~93_combout\,
	combout => \ULA|saida[31]~94_combout\);

\BancoRegistradores|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ULA|saida[31]~94_combout\,
	sclr => \UC|Equal8~0_combout\,
	ena => \BancoRegistradores|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoRegistradores|registrador~69_q\);

\BancoRegistradores|registrador~1217\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|registrador~1217_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~325_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \BancoRegistradores|registrador~69_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BancoRegistradores|ALT_INV_registrador~69_q\,
	datac => \BancoRegistradores|ALT_INV_registrador~325_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \BancoRegistradores|registrador~1217_combout\);

\BancoRegistradores|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BancoRegistradores|saidaA[31]~31_combout\ = (!\PC|DOUT\(7) & (\BancoRegistradores|registrador~1217_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1217_combout\,
	combout => \BancoRegistradores|saidaA[31]~31_combout\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( \BancoRegistradores|saidaA[31]~31_combout\ ) + ( (\BancoRegistradores|registrador~1218_combout\ & (((!\BancoRegistradores|Equal0~0_combout\ & \MUXRegImed|saida_MUX[31]~5_combout\)) # (\ROM|memROM~14_combout\))) ) + ( 
-- \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[31]~31_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1218_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\ULA|saida[31]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[31]~92_combout\ = ( \ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \MUXRegImed|saida_MUX[31]~33_combout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( \ulaUC|ulaOp[1]~1_combout\ & ( \BancoRegistradores|saidaA[31]~31_combout\ ) ) ) # 
-- ( \ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add1~1_sumout\ ) ) ) # ( !\ulaUC|ulaOp[0]~0_combout\ & ( !\ulaUC|ulaOp[1]~1_combout\ & ( \ULA|Add0~125_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~125_sumout\,
	datab => \ULA|ALT_INV_Add1~1_sumout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[31]~31_combout\,
	datad => \MUXRegImed|ALT_INV_saida_MUX[31]~33_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	dataf => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[31]~92_combout\);

\ULA|Equal8~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~20_combout\ = (!\ULA|saida[17]~51_combout\ & (!\ULA|saida[18]~54_combout\ & (!\ULA|saida[7]~21_combout\ & !\ULA|saida[8]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[17]~51_combout\,
	datab => \ULA|ALT_INV_saida[18]~54_combout\,
	datac => \ULA|ALT_INV_saida[7]~21_combout\,
	datad => \ULA|ALT_INV_saida[8]~24_combout\,
	combout => \ULA|Equal8~20_combout\);

\ULA|Equal8~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~8_combout\ = ( \ULA|saida[8]~23_combout\ & ( \ULA|Equal8~20_combout\ & ( \ulaUC|ulaOp[1]~2_combout\ ) ) ) # ( !\ULA|saida[8]~23_combout\ & ( \ULA|Equal8~20_combout\ & ( ((!\ULA|saida[17]~50_combout\ & (!\ULA|saida[18]~53_combout\ & 
-- !\ULA|saida[7]~20_combout\))) # (\ulaUC|ulaOp[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[17]~50_combout\,
	datac => \ULA|ALT_INV_saida[18]~53_combout\,
	datad => \ULA|ALT_INV_saida[7]~20_combout\,
	datae => \ULA|ALT_INV_saida[8]~23_combout\,
	dataf => \ULA|ALT_INV_Equal8~20_combout\,
	combout => \ULA|Equal8~8_combout\);

\ULA|Equal8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~9_combout\ = ( \ULA|saida[29]~87_combout\ & ( \ULA|Equal8~8_combout\ & ( (!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[28]~83_combout\ & !\ULA|saida[29]~86_combout\)) ) ) ) # ( !\ULA|saida[29]~87_combout\ & ( \ULA|Equal8~8_combout\ & ( 
-- (!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[28]~83_combout\ & ((!\ULA|saida[29]~86_combout\)))) # (\ulaUC|ulaOp[1]~2_combout\ & (((!\ULA|saida[28]~84_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[28]~83_combout\,
	datac => \ULA|ALT_INV_saida[28]~84_combout\,
	datad => \ULA|ALT_INV_saida[29]~86_combout\,
	datae => \ULA|ALT_INV_saida[29]~87_combout\,
	dataf => \ULA|ALT_INV_Equal8~8_combout\,
	combout => \ULA|Equal8~9_combout\);

\ULA|Equal8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~10_combout\ = ( !\ULA|saida[12]~36_combout\ & ( (!\ULA|saida[11]~33_combout\ & (((!\ULA|saida[11]~32_combout\ & !\ULA|saida[12]~35_combout\)) # (\ulaUC|ulaOp[1]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001010000000000000000000011010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[11]~32_combout\,
	datac => \ULA|ALT_INV_saida[11]~33_combout\,
	datad => \ULA|ALT_INV_saida[12]~35_combout\,
	datae => \ULA|ALT_INV_saida[12]~36_combout\,
	combout => \ULA|Equal8~10_combout\);

\ULA|Equal8~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~11_combout\ = ( !\ULA|saida[23]~69_combout\ & ( \ULA|Equal8~10_combout\ & ( (!\ULA|saida[22]~66_combout\ & (((!\ULA|saida[22]~65_combout\ & !\ULA|saida[23]~68_combout\)) # (\ulaUC|ulaOp[1]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[22]~65_combout\,
	datac => \ULA|ALT_INV_saida[22]~66_combout\,
	datad => \ULA|ALT_INV_saida[23]~68_combout\,
	datae => \ULA|ALT_INV_saida[23]~69_combout\,
	dataf => \ULA|ALT_INV_Equal8~10_combout\,
	combout => \ULA|Equal8~11_combout\);

\ULA|saida[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[17]~0_combout\ = (!\ulaUC|ulaOp[0]~0_combout\ & (\ulaUC|ulaOp[1]~2_combout\ & !\ulaUC|ulaOp[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	combout => \ULA|saida[17]~0_combout\);

\MUXRegImed|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXRegImed|saida_MUX[0]~1_combout\ = (!\MUXRegImed|saida_MUX[0]~0_combout\ & (((\ROM|memROM~8_combout\)))) # (\MUXRegImed|saida_MUX[0]~0_combout\ & (!\BancoRegistradores|Equal0~0_combout\ & ((\BancoRegistradores|registrador~1063_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000001010010011100000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXRegImed|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \BancoRegistradores|ALT_INV_registrador~1063_combout\,
	combout => \MUXRegImed|saida_MUX[0]~1_combout\);

\ULA|saida[0]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~97_combout\ = ( !\ulaUC|ulaOp[1]~1_combout\ & ( (!\ulaUC|ulaOp[1]~2_combout\ & ((!\ulaUC|ulaOp[0]~0_combout\ & (((\ULA|Add0~1_sumout\)))) # (\ulaUC|ulaOp[0]~0_combout\ & (\ULA|Add1~5_sumout\)))) ) ) # ( \ulaUC|ulaOp[1]~1_combout\ & ( 
-- ((!\BancoRegistradores|saidaA[0]~0_combout\ & (((\ulaUC|ulaOp[0]~0_combout\ & \MUXRegImed|saida_MUX[0]~1_combout\)))) # (\BancoRegistradores|saidaA[0]~0_combout\ & ((!\ulaUC|ulaOp[1]~2_combout\ $ (\ulaUC|ulaOp[0]~0_combout\)) # 
-- (\MUXRegImed|saida_MUX[0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001000100000011000000001100001100010001000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~5_sumout\,
	datab => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datac => \BancoRegistradores|ALT_INV_saidaA[0]~0_combout\,
	datad => \ulaUC|ALT_INV_ulaOp[0]~0_combout\,
	datae => \ulaUC|ALT_INV_ulaOp[1]~1_combout\,
	dataf => \MUXRegImed|ALT_INV_saida_MUX[0]~1_combout\,
	datag => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \ULA|saida[0]~97_combout\);

\ULA|Equal8~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~12_combout\ = ( !\ULA|saida[21]~63_combout\ & ( !\ULA|saida[0]~97_combout\ & ( (!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[21]~62_combout\ & ((!\ULA|Add1~1_sumout\) # (!\ULA|saida[17]~0_combout\)))) # (\ulaUC|ulaOp[1]~2_combout\ & 
-- ((!\ULA|Add1~1_sumout\) # ((!\ULA|saida[17]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110001010100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_Add1~1_sumout\,
	datac => \ULA|ALT_INV_saida[17]~0_combout\,
	datad => \ULA|ALT_INV_saida[21]~62_combout\,
	datae => \ULA|ALT_INV_saida[21]~63_combout\,
	dataf => \ULA|ALT_INV_saida[0]~97_combout\,
	combout => \ULA|Equal8~12_combout\);

\ULA|Equal8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~17_combout\ = ( \ULA|Equal8~11_combout\ & ( \ULA|Equal8~12_combout\ & ( (\ULA|Equal8~9_combout\ & ((!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[31]~92_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((!\ULA|saida[31]~93_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[31]~92_combout\,
	datac => \ULA|ALT_INV_saida[31]~93_combout\,
	datad => \ULA|ALT_INV_Equal8~9_combout\,
	datae => \ULA|ALT_INV_Equal8~11_combout\,
	dataf => \ULA|ALT_INV_Equal8~12_combout\,
	combout => \ULA|Equal8~17_combout\);

\UC|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal9~0_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~0_combout\ & ( ((!\PC|DOUT\(3) & ((\PC|DOUT\(4)))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(4))))) # (\PC|DOUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \UC|Equal9~0_combout\);

\MUXFETCH|saida_MUX[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[6]~1_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~5_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~5_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~17_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~5_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~17_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
	combout => \MUXFETCH|saida_MUX[6]~1_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\ULA|Equal8~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~7_combout\ = (\ULA|Equal8~6_combout\ & ((!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[30]~89_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((!\ULA|saida[30]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011000000000001101100000000000110110000000000011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[30]~89_combout\,
	datac => \ULA|ALT_INV_saida[30]~90_combout\,
	datad => \ULA|ALT_INV_Equal8~6_combout\,
	combout => \ULA|Equal8~7_combout\);

\ULA|Equal8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~13_combout\ = (\ULA|Equal8~12_combout\ & ((!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[31]~92_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((!\ULA|saida[31]~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011000000000001101100000000000110110000000000011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[31]~92_combout\,
	datac => \ULA|ALT_INV_saida[31]~93_combout\,
	datad => \ULA|ALT_INV_Equal8~12_combout\,
	combout => \ULA|Equal8~13_combout\);

\ULA|Equal8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~14_combout\ = ( \ULA|Equal8~11_combout\ & ( \ULA|Equal8~13_combout\ & ( (\ULA|Equal8~2_combout\ & (\ULA|Equal8~5_combout\ & (\ULA|Equal8~7_combout\ & \ULA|Equal8~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Equal8~2_combout\,
	datab => \ULA|ALT_INV_Equal8~5_combout\,
	datac => \ULA|ALT_INV_Equal8~7_combout\,
	datad => \ULA|ALT_INV_Equal8~9_combout\,
	datae => \ULA|ALT_INV_Equal8~11_combout\,
	dataf => \ULA|ALT_INV_Equal8~13_combout\,
	combout => \ULA|Equal8~14_combout\);

\MUXFETCH|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[5]~5_combout\ = ( \ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( !\ROM|memROM~2_combout\ ) ) ) # ( !\ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( !\ROM|memROM~2_combout\ ) ) ) # ( \ULA|Equal8~14_combout\ & ( 
-- !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~21_sumout\)) # (\UC|Equal7~0_combout\ & ((\somaSHIFT|Add0~13_sumout\))) ) ) ) # ( !\ULA|Equal8~14_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010100101111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \somaQuatro|ALT_INV_Add0~21_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~13_sumout\,
	datae => \ULA|ALT_INV_Equal8~14_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
	combout => \MUXFETCH|saida_MUX[5]~5_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & ((\PC|DOUT\(4)) # (\PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000000000000000000000101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~13_combout\);

\somaQuatro|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~1_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somaQuatro|Add0~6\ ))
-- \somaQuatro|Add0~2\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \somaQuatro|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somaQuatro|Add0~6\,
	sumout => \somaQuatro|Add0~1_sumout\,
	cout => \somaQuatro|Add0~2\);

\somaSHIFT|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~21_sumout\ = SUM(( (!\PC|DOUT\(7) & \ROM|memROM~7_combout\) ) + ( \somaQuatro|Add0~1_sumout\ ) + ( \somaSHIFT|Add0~18\ ))
-- \somaSHIFT|Add0~22\ = CARRY(( (!\PC|DOUT\(7) & \ROM|memROM~7_combout\) ) + ( \somaQuatro|Add0~1_sumout\ ) + ( \somaSHIFT|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~1_sumout\,
	cin => \somaSHIFT|Add0~18\,
	sumout => \somaSHIFT|Add0~21_sumout\,
	cout => \somaSHIFT|Add0~22\);

\MUXFETCH|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[7]~0_combout\ = ( \ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~13_combout\ ) ) ) # ( !\ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~13_combout\ ) ) ) # ( \ULA|Equal8~14_combout\ & ( 
-- !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~1_sumout\)) # (\UC|Equal7~0_combout\ & ((\somaSHIFT|Add0~21_sumout\))) ) ) ) # ( !\ULA|Equal8~14_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \UC|ALT_INV_Equal7~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~1_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~21_sumout\,
	datae => \ULA|ALT_INV_Equal8~14_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
	combout => \MUXFETCH|saida_MUX[7]~0_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[7]~0_combout\,
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

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\MUXFETCH|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[4]~4_combout\ = ( \ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~6_combout\ ) ) ) # ( !\ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~6_combout\ ) ) ) # ( \ULA|Equal8~14_combout\ & ( 
-- !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~17_sumout\)) # (\UC|Equal7~0_combout\ & ((\somaSHIFT|Add0~9_sumout\))) ) ) ) # ( !\ULA|Equal8~14_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010100101111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \somaQuatro|ALT_INV_Add0~17_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~9_sumout\,
	datae => \ULA|ALT_INV_Equal8~14_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
	combout => \MUXFETCH|saida_MUX[4]~4_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~9_combout\);

\UC|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal7~0_combout\ = (\ROM|memROM~10_combout\ & ((!\ROM|memROM~9_combout\) # (!\ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	combout => \UC|Equal7~0_combout\);

\MUXFETCH|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[3]~3_combout\ = ( \ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~4_combout\ ) ) ) # ( !\ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~4_combout\ ) ) ) # ( \ULA|Equal8~14_combout\ & ( 
-- !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~13_sumout\)) # (\UC|Equal7~0_combout\ & ((\somaSHIFT|Add0~5_sumout\))) ) ) ) # ( !\ULA|Equal8~14_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010100101111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \somaQuatro|ALT_INV_Add0~13_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~5_sumout\,
	datae => \ULA|ALT_INV_Equal8~14_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
	combout => \MUXFETCH|saida_MUX[3]~3_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~8_combout\);

\MUXFETCH|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[2]~2_combout\ = ( \ULA|Equal8~17_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~8_combout\ ) ) ) # ( !\ULA|Equal8~17_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~8_combout\ ) ) ) # ( \ULA|Equal8~17_combout\ & ( 
-- !\UC|Equal9~0_combout\ & ( (\somaQuatro|Add0~9_sumout\ & ((!\UC|Equal7~0_combout\) # (!\ULA|Equal8~16_combout\))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000110001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \UC|ALT_INV_Equal7~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~9_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
	combout => \MUXFETCH|saida_MUX[2]~2_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MUXFETCH|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~14_combout\);

\ULA|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~1_sumout\ = SUM(( \BancoRegistradores|saidaA[31]~31_combout\ ) + ( (!\BancoRegistradores|registrador~1218_combout\) # ((!\ROM|memROM~14_combout\ & ((!\MUXRegImed|saida_MUX[31]~5_combout\) # (\BancoRegistradores|Equal0~0_combout\)))) ) + ( 
-- \ULA|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \BancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \MUXRegImed|ALT_INV_saida_MUX[31]~5_combout\,
	datad => \BancoRegistradores|ALT_INV_saidaA[31]~31_combout\,
	dataf => \BancoRegistradores|ALT_INV_registrador~1218_combout\,
	cin => \ULA|Add1~126\,
	sumout => \ULA|Add1~1_sumout\);

\ULA|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~1_combout\ = ((\ULA|Add1~1_sumout\ & \ULA|saida[17]~0_combout\)) # (\ULA|saida[0]~97_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~1_sumout\,
	datab => \ULA|ALT_INV_saida[17]~0_combout\,
	datac => \ULA|ALT_INV_saida[0]~97_combout\,
	combout => \ULA|saida[0]~1_combout\);

\somaQuatro|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaQuatro|Add0~25_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \somaQuatro|Add0~2\ ))
-- \somaQuatro|Add0~26\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \somaQuatro|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \somaQuatro|Add0~2\,
	sumout => \somaQuatro|Add0~25_sumout\,
	cout => \somaQuatro|Add0~26\);

\somaSHIFT|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaSHIFT|Add0~25_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~25_sumout\ ) + ( \somaSHIFT|Add0~22\ ))
-- \somaSHIFT|Add0~26\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~25_sumout\ ) + ( \somaSHIFT|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~25_sumout\,
	cin => \somaSHIFT|Add0~22\,
	sumout => \somaSHIFT|Add0~25_sumout\,
	cout => \somaSHIFT|Add0~26\);

\MUXFETCH|saida_MUX[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[8]~6_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~25_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~25_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~25_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~25_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~25_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~29_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~29_sumout\ ) + ( \somaSHIFT|Add0~26\ ))
-- \somaSHIFT|Add0~30\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~29_sumout\ ) + ( \somaSHIFT|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~29_sumout\,
	cin => \somaSHIFT|Add0~26\,
	sumout => \somaSHIFT|Add0~29_sumout\,
	cout => \somaSHIFT|Add0~30\);

\MUXFETCH|saida_MUX[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[9]~7_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~29_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~29_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~29_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~29_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~29_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~33_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~33_sumout\ ) + ( \somaSHIFT|Add0~30\ ))
-- \somaSHIFT|Add0~34\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~33_sumout\ ) + ( \somaSHIFT|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~33_sumout\,
	cin => \somaSHIFT|Add0~30\,
	sumout => \somaSHIFT|Add0~33_sumout\,
	cout => \somaSHIFT|Add0~34\);

\MUXFETCH|saida_MUX[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[10]~8_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~33_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~33_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~33_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~33_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~33_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~33_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~37_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~37_sumout\ ) + ( \somaSHIFT|Add0~34\ ))
-- \somaSHIFT|Add0~38\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~37_sumout\ ) + ( \somaSHIFT|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~37_sumout\,
	cin => \somaSHIFT|Add0~34\,
	sumout => \somaSHIFT|Add0~37_sumout\,
	cout => \somaSHIFT|Add0~38\);

\MUXFETCH|saida_MUX[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[11]~9_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~37_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~37_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~37_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~37_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~37_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~37_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~41_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~41_sumout\ ) + ( \somaSHIFT|Add0~38\ ))
-- \somaSHIFT|Add0~42\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~41_sumout\ ) + ( \somaSHIFT|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~41_sumout\,
	cin => \somaSHIFT|Add0~38\,
	sumout => \somaSHIFT|Add0~41_sumout\,
	cout => \somaSHIFT|Add0~42\);

\MUXFETCH|saida_MUX[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[12]~10_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~41_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~41_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~41_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~41_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~41_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~41_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~45_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~45_sumout\ ) + ( \somaSHIFT|Add0~42\ ))
-- \somaSHIFT|Add0~46\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~45_sumout\ ) + ( \somaSHIFT|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~45_sumout\,
	cin => \somaSHIFT|Add0~42\,
	sumout => \somaSHIFT|Add0~45_sumout\,
	cout => \somaSHIFT|Add0~46\);

\MUXFETCH|saida_MUX[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[13]~11_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~45_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~45_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~45_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~45_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~45_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~45_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~49_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~49_sumout\ ) + ( \somaSHIFT|Add0~46\ ))
-- \somaSHIFT|Add0~50\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~49_sumout\ ) + ( \somaSHIFT|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~49_sumout\,
	cin => \somaSHIFT|Add0~46\,
	sumout => \somaSHIFT|Add0~49_sumout\,
	cout => \somaSHIFT|Add0~50\);

\MUXFETCH|saida_MUX[14]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[14]~12_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~49_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~49_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~49_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~49_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~49_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~49_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~53_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~53_sumout\ ) + ( \somaSHIFT|Add0~50\ ))
-- \somaSHIFT|Add0~54\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~53_sumout\ ) + ( \somaSHIFT|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~53_sumout\,
	cin => \somaSHIFT|Add0~50\,
	sumout => \somaSHIFT|Add0~53_sumout\,
	cout => \somaSHIFT|Add0~54\);

\MUXFETCH|saida_MUX[15]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[15]~13_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~53_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~53_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~53_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~53_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~53_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~53_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~57_sumout\ = SUM(( (!\PC|DOUT\(7) & \ROM|memROM~7_combout\) ) + ( \somaQuatro|Add0~57_sumout\ ) + ( \somaSHIFT|Add0~54\ ))
-- \somaSHIFT|Add0~58\ = CARRY(( (!\PC|DOUT\(7) & \ROM|memROM~7_combout\) ) + ( \somaQuatro|Add0~57_sumout\ ) + ( \somaSHIFT|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~57_sumout\,
	cin => \somaSHIFT|Add0~54\,
	sumout => \somaSHIFT|Add0~57_sumout\,
	cout => \somaSHIFT|Add0~58\);

\MUXFETCH|saida_MUX[16]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[16]~14_combout\ = ( \ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~13_combout\ ) ) ) # ( !\ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~13_combout\ ) ) ) # ( \ULA|Equal8~14_combout\ & ( 
-- !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~57_sumout\)) # (\UC|Equal7~0_combout\ & ((\somaSHIFT|Add0~57_sumout\))) ) ) ) # ( !\ULA|Equal8~14_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~57_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \UC|ALT_INV_Equal7~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~57_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~57_sumout\,
	datae => \ULA|ALT_INV_Equal8~14_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~61_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~61_sumout\ ) + ( \somaSHIFT|Add0~58\ ))
-- \somaSHIFT|Add0~62\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~61_sumout\ ) + ( \somaSHIFT|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~61_sumout\,
	cin => \somaSHIFT|Add0~58\,
	sumout => \somaSHIFT|Add0~61_sumout\,
	cout => \somaSHIFT|Add0~62\);

\MUXFETCH|saida_MUX[17]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[17]~15_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~61_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~61_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~61_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~61_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~61_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~65_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~65_sumout\ ) + ( \somaSHIFT|Add0~62\ ))
-- \somaSHIFT|Add0~66\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~65_sumout\ ) + ( \somaSHIFT|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~65_sumout\,
	cin => \somaSHIFT|Add0~62\,
	sumout => \somaSHIFT|Add0~65_sumout\,
	cout => \somaSHIFT|Add0~66\);

\MUXFETCH|saida_MUX[18]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[18]~16_combout\ = ( \ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( !\ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~16_combout\ ) ) ) # ( \ULA|Equal8~14_combout\ & ( 
-- !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~65_sumout\)) # (\UC|Equal7~0_combout\ & ((\somaSHIFT|Add0~65_sumout\))) ) ) ) # ( !\ULA|Equal8~14_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~65_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \UC|ALT_INV_Equal7~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~65_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~65_sumout\,
	datae => \ULA|ALT_INV_Equal8~14_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~69_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~69_sumout\ ) + ( \somaSHIFT|Add0~66\ ))
-- \somaSHIFT|Add0~70\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~69_sumout\ ) + ( \somaSHIFT|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~69_sumout\,
	cin => \somaSHIFT|Add0~66\,
	sumout => \somaSHIFT|Add0~69_sumout\,
	cout => \somaSHIFT|Add0~70\);

\MUXFETCH|saida_MUX[19]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[19]~17_combout\ = ( \ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~13_combout\ ) ) ) # ( !\ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~13_combout\ ) ) ) # ( \ULA|Equal8~14_combout\ & ( 
-- !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~69_sumout\)) # (\UC|Equal7~0_combout\ & ((\somaSHIFT|Add0~69_sumout\))) ) ) ) # ( !\ULA|Equal8~14_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~69_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \UC|ALT_INV_Equal7~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~69_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~69_sumout\,
	datae => \ULA|ALT_INV_Equal8~14_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~73_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~73_sumout\ ) + ( \somaSHIFT|Add0~70\ ))
-- \somaSHIFT|Add0~74\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~73_sumout\ ) + ( \somaSHIFT|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~73_sumout\,
	cin => \somaSHIFT|Add0~70\,
	sumout => \somaSHIFT|Add0~73_sumout\,
	cout => \somaSHIFT|Add0~74\);

\MUXFETCH|saida_MUX[20]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[20]~18_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~73_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~73_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~73_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~73_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~73_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~73_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~77_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~77_sumout\ ) + ( \somaSHIFT|Add0~74\ ))
-- \somaSHIFT|Add0~78\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~77_sumout\ ) + ( \somaSHIFT|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~77_sumout\,
	cin => \somaSHIFT|Add0~74\,
	sumout => \somaSHIFT|Add0~77_sumout\,
	cout => \somaSHIFT|Add0~78\);

\MUXFETCH|saida_MUX[21]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[21]~19_combout\ = ( \ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ULA|Equal8~14_combout\ & ( 
-- !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~77_sumout\)) # (\UC|Equal7~0_combout\ & ((\somaSHIFT|Add0~77_sumout\))) ) ) ) # ( !\ULA|Equal8~14_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~77_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \UC|ALT_INV_Equal7~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~77_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~77_sumout\,
	datae => \ULA|ALT_INV_Equal8~14_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~81_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~81_sumout\ ) + ( \somaSHIFT|Add0~78\ ))
-- \somaSHIFT|Add0~82\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~81_sumout\ ) + ( \somaSHIFT|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~81_sumout\,
	cin => \somaSHIFT|Add0~78\,
	sumout => \somaSHIFT|Add0~81_sumout\,
	cout => \somaSHIFT|Add0~82\);

\MUXFETCH|saida_MUX[22]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[22]~20_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~81_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~81_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~81_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~81_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~81_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~81_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~85_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~85_sumout\ ) + ( \somaSHIFT|Add0~82\ ))
-- \somaSHIFT|Add0~86\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~85_sumout\ ) + ( \somaSHIFT|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~85_sumout\,
	cin => \somaSHIFT|Add0~82\,
	sumout => \somaSHIFT|Add0~85_sumout\,
	cout => \somaSHIFT|Add0~86\);

\MUXFETCH|saida_MUX[23]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[23]~21_combout\ = ( \ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~12_combout\ ) ) ) # ( !\ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~12_combout\ ) ) ) # ( \ULA|Equal8~14_combout\ & ( 
-- !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~85_sumout\)) # (\UC|Equal7~0_combout\ & ((\somaSHIFT|Add0~85_sumout\))) ) ) ) # ( !\ULA|Equal8~14_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~85_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \UC|ALT_INV_Equal7~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~85_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~85_sumout\,
	datae => \ULA|ALT_INV_Equal8~14_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~89_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~89_sumout\ ) + ( \somaSHIFT|Add0~86\ ))
-- \somaSHIFT|Add0~90\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~89_sumout\ ) + ( \somaSHIFT|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~89_sumout\,
	cin => \somaSHIFT|Add0~86\,
	sumout => \somaSHIFT|Add0~89_sumout\,
	cout => \somaSHIFT|Add0~90\);

\MUXFETCH|saida_MUX[24]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[24]~22_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~89_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~89_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~89_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~89_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~89_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~89_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~93_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~93_sumout\ ) + ( \somaSHIFT|Add0~90\ ))
-- \somaSHIFT|Add0~94\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~93_sumout\ ) + ( \somaSHIFT|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~93_sumout\,
	cin => \somaSHIFT|Add0~90\,
	sumout => \somaSHIFT|Add0~93_sumout\,
	cout => \somaSHIFT|Add0~94\);

\MUXFETCH|saida_MUX[25]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[25]~23_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~93_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~93_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~93_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~93_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~93_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~93_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~97_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~97_sumout\ ) + ( \somaSHIFT|Add0~94\ ))
-- \somaSHIFT|Add0~98\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~97_sumout\ ) + ( \somaSHIFT|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~97_sumout\,
	cin => \somaSHIFT|Add0~94\,
	sumout => \somaSHIFT|Add0~97_sumout\,
	cout => \somaSHIFT|Add0~98\);

\MUXFETCH|saida_MUX[26]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[26]~24_combout\ = ( \ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~13_combout\ ) ) ) # ( !\ULA|Equal8~14_combout\ & ( \UC|Equal9~0_combout\ & ( \ROM|memROM~13_combout\ ) ) ) # ( \ULA|Equal8~14_combout\ & ( 
-- !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~97_sumout\)) # (\UC|Equal7~0_combout\ & ((\somaSHIFT|Add0~97_sumout\))) ) ) ) # ( !\ULA|Equal8~14_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~97_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \UC|ALT_INV_Equal7~0_combout\,
	datac => \somaQuatro|ALT_INV_Add0~97_sumout\,
	datad => \somaSHIFT|ALT_INV_Add0~97_sumout\,
	datae => \ULA|ALT_INV_Equal8~14_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~101_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~101_sumout\ ) + ( \somaSHIFT|Add0~98\ ))
-- \somaSHIFT|Add0~102\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~101_sumout\ ) + ( \somaSHIFT|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~101_sumout\,
	cin => \somaSHIFT|Add0~98\,
	sumout => \somaSHIFT|Add0~101_sumout\,
	cout => \somaSHIFT|Add0~102\);

\MUXFETCH|saida_MUX[27]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[27]~25_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~101_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~101_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~101_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~101_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~101_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~101_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~105_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~105_sumout\ ) + ( \somaSHIFT|Add0~102\ ))
-- \somaSHIFT|Add0~106\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~105_sumout\ ) + ( \somaSHIFT|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~105_sumout\,
	cin => \somaSHIFT|Add0~102\,
	sumout => \somaSHIFT|Add0~105_sumout\,
	cout => \somaSHIFT|Add0~106\);

\MUXFETCH|saida_MUX[28]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[28]~26_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~105_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~105_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~105_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~105_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~105_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~105_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~109_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~109_sumout\ ) + ( \somaSHIFT|Add0~106\ ))
-- \somaSHIFT|Add0~110\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~109_sumout\ ) + ( \somaSHIFT|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~109_sumout\,
	cin => \somaSHIFT|Add0~106\,
	sumout => \somaSHIFT|Add0~109_sumout\,
	cout => \somaSHIFT|Add0~110\);

\MUXFETCH|saida_MUX[29]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[29]~27_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~109_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~109_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~109_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~109_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~109_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~109_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~113_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~113_sumout\ ) + ( \somaSHIFT|Add0~110\ ))
-- \somaSHIFT|Add0~114\ = CARRY(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~113_sumout\ ) + ( \somaSHIFT|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~113_sumout\,
	cin => \somaSHIFT|Add0~110\,
	sumout => \somaSHIFT|Add0~113_sumout\,
	cout => \somaSHIFT|Add0~114\);

\MUXFETCH|saida_MUX[30]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[30]~28_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~113_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~113_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~113_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~113_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~113_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~113_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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
-- \somaSHIFT|Add0~117_sumout\ = SUM(( \ROM|memROM~10_combout\ ) + ( \somaQuatro|Add0~117_sumout\ ) + ( \somaSHIFT|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \somaQuatro|ALT_INV_Add0~117_sumout\,
	cin => \somaSHIFT|Add0~114\,
	sumout => \somaSHIFT|Add0~117_sumout\);

\MUXFETCH|saida_MUX[31]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXFETCH|saida_MUX[31]~29_combout\ = ( \ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( (!\UC|Equal7~0_combout\ & (\somaQuatro|Add0~117_sumout\)) # (\UC|Equal7~0_combout\ & ((!\ULA|Equal8~16_combout\ & (\somaQuatro|Add0~117_sumout\)) # 
-- (\ULA|Equal8~16_combout\ & ((\somaSHIFT|Add0~117_sumout\))))) ) ) ) # ( !\ULA|Equal8~17_combout\ & ( !\UC|Equal9~0_combout\ & ( \somaQuatro|Add0~117_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \somaQuatro|ALT_INV_Add0~117_sumout\,
	datac => \somaSHIFT|ALT_INV_Add0~117_sumout\,
	datad => \ULA|ALT_INV_Equal8~16_combout\,
	datae => \ULA|ALT_INV_Equal8~17_combout\,
	dataf => \UC|ALT_INV_Equal9~0_combout\,
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

\ULA|Equal8~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Equal8~15_combout\ = ( \ULA|Equal8~12_combout\ & ( (\ULA|Equal8~11_combout\ & ((!\ulaUC|ulaOp[1]~2_combout\ & (!\ULA|saida[31]~92_combout\)) # (\ulaUC|ulaOp[1]~2_combout\ & ((!\ULA|saida[31]~93_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101100000000000000000000000000011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ulaUC|ALT_INV_ulaOp[1]~2_combout\,
	datab => \ULA|ALT_INV_saida[31]~92_combout\,
	datac => \ULA|ALT_INV_saida[31]~93_combout\,
	datad => \ULA|ALT_INV_Equal8~11_combout\,
	datae => \ULA|ALT_INV_Equal8~12_combout\,
	combout => \ULA|Equal8~15_combout\);

andCONTROLEZEROSignal : cyclonev_lcell_comb
-- Equation(s):
-- \andCONTROLEZEROSignal~combout\ = ( \ULA|Equal8~9_combout\ & ( \ULA|Equal8~15_combout\ & ( (\UC|Equal7~0_combout\ & (\ULA|Equal8~2_combout\ & (\ULA|Equal8~5_combout\ & \ULA|Equal8~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_Equal7~0_combout\,
	datab => \ULA|ALT_INV_Equal8~2_combout\,
	datac => \ULA|ALT_INV_Equal8~5_combout\,
	datad => \ULA|ALT_INV_Equal8~7_combout\,
	datae => \ULA|ALT_INV_Equal8~9_combout\,
	dataf => \ULA|ALT_INV_Equal8~15_combout\,
	combout => \andCONTROLEZEROSignal~combout\);

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


