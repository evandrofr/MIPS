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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/20/2020 19:04:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FDMIPS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FDMIPS_vhd_vec_tst IS
END FDMIPS_vhd_vec_tst;
ARCHITECTURE FDMIPS_arch OF FDMIPS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL andOut : STD_LOGIC;
SIGNAL BEQOut : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL flagZeroOut : STD_LOGIC;
SIGNAL MuxBEQout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PCout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL UlaAout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL UlaBOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULAout : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT FDMIPS
	PORT (
	andOut : OUT STD_LOGIC;
	BEQOut : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	flagZeroOut : OUT STD_LOGIC;
	MuxBEQout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	PCout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	UlaAout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	UlaBOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULAout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FDMIPS
	PORT MAP (
-- list connections between master ports and signals
	andOut => andOut,
	BEQOut => BEQOut,
	clk => clk,
	flagZeroOut => flagZeroOut,
	MuxBEQout => MuxBEQout,
	PCout => PCout,
	UlaAout => UlaAout,
	UlaBOut => UlaBOut,
	ULAout => ULAout
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END FDMIPS_arch;
