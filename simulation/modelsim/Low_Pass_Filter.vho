-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "03/31/2023 13:42:17"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Low_Pass_Filter IS
    PORT (
	input : IN std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	reset : IN std_logic;
	output : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Low_Pass_Filter;

-- Design Ports Information
-- output[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Low_Pass_Filter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_output : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult2~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult2~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~mac_AX_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult1~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult1~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~mac_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0~mac_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult0~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult2~8\ : std_logic;
SIGNAL \Mult2~9\ : std_logic;
SIGNAL \Mult2~10\ : std_logic;
SIGNAL \Mult2~11\ : std_logic;
SIGNAL \Mult2~12\ : std_logic;
SIGNAL \Mult2~13\ : std_logic;
SIGNAL \Mult2~14\ : std_logic;
SIGNAL \Mult2~15\ : std_logic;
SIGNAL \Mult2~16\ : std_logic;
SIGNAL \Mult2~17\ : std_logic;
SIGNAL \Mult2~18\ : std_logic;
SIGNAL \Mult2~19\ : std_logic;
SIGNAL \Mult2~20\ : std_logic;
SIGNAL \Mult2~21\ : std_logic;
SIGNAL \Mult2~22\ : std_logic;
SIGNAL \Mult2~23\ : std_logic;
SIGNAL \Mult2~24\ : std_logic;
SIGNAL \Mult2~25\ : std_logic;
SIGNAL \Mult2~26\ : std_logic;
SIGNAL \Mult2~27\ : std_logic;
SIGNAL \Mult2~28\ : std_logic;
SIGNAL \Mult2~29\ : std_logic;
SIGNAL \Mult2~30\ : std_logic;
SIGNAL \Mult2~31\ : std_logic;
SIGNAL \Mult2~32\ : std_logic;
SIGNAL \Mult2~33\ : std_logic;
SIGNAL \Mult2~34\ : std_logic;
SIGNAL \Mult2~35\ : std_logic;
SIGNAL \Mult2~36\ : std_logic;
SIGNAL \Mult2~37\ : std_logic;
SIGNAL \Mult2~38\ : std_logic;
SIGNAL \Mult2~39\ : std_logic;
SIGNAL \Mult2~40\ : std_logic;
SIGNAL \Mult2~41\ : std_logic;
SIGNAL \Mult2~42\ : std_logic;
SIGNAL \Mult2~43\ : std_logic;
SIGNAL \Mult2~44\ : std_logic;
SIGNAL \Mult2~45\ : std_logic;
SIGNAL \Mult2~46\ : std_logic;
SIGNAL \Mult2~47\ : std_logic;
SIGNAL \Mult2~48\ : std_logic;
SIGNAL \Mult2~49\ : std_logic;
SIGNAL \Mult2~50\ : std_logic;
SIGNAL \Mult2~51\ : std_logic;
SIGNAL \Mult2~52\ : std_logic;
SIGNAL \Mult2~53\ : std_logic;
SIGNAL \Mult2~54\ : std_logic;
SIGNAL \Mult2~55\ : std_logic;
SIGNAL \Mult1~8\ : std_logic;
SIGNAL \Mult1~9\ : std_logic;
SIGNAL \Mult1~10\ : std_logic;
SIGNAL \Mult1~11\ : std_logic;
SIGNAL \Mult1~12\ : std_logic;
SIGNAL \Mult1~13\ : std_logic;
SIGNAL \Mult1~14\ : std_logic;
SIGNAL \Mult1~15\ : std_logic;
SIGNAL \Mult1~16\ : std_logic;
SIGNAL \Mult1~17\ : std_logic;
SIGNAL \Mult1~18\ : std_logic;
SIGNAL \Mult1~19\ : std_logic;
SIGNAL \Mult1~20\ : std_logic;
SIGNAL \Mult1~21\ : std_logic;
SIGNAL \Mult1~22\ : std_logic;
SIGNAL \Mult1~23\ : std_logic;
SIGNAL \Mult1~24\ : std_logic;
SIGNAL \Mult1~25\ : std_logic;
SIGNAL \Mult1~26\ : std_logic;
SIGNAL \Mult1~27\ : std_logic;
SIGNAL \Mult1~28\ : std_logic;
SIGNAL \Mult1~29\ : std_logic;
SIGNAL \Mult1~30\ : std_logic;
SIGNAL \Mult1~31\ : std_logic;
SIGNAL \Mult1~32\ : std_logic;
SIGNAL \Mult1~33\ : std_logic;
SIGNAL \Mult1~34\ : std_logic;
SIGNAL \Mult1~35\ : std_logic;
SIGNAL \Mult1~36\ : std_logic;
SIGNAL \Mult1~37\ : std_logic;
SIGNAL \Mult1~38\ : std_logic;
SIGNAL \Mult1~39\ : std_logic;
SIGNAL \Mult1~40\ : std_logic;
SIGNAL \Mult1~41\ : std_logic;
SIGNAL \Mult1~42\ : std_logic;
SIGNAL \Mult1~43\ : std_logic;
SIGNAL \Mult1~44\ : std_logic;
SIGNAL \Mult1~45\ : std_logic;
SIGNAL \Mult1~46\ : std_logic;
SIGNAL \Mult1~47\ : std_logic;
SIGNAL \Mult1~48\ : std_logic;
SIGNAL \Mult1~49\ : std_logic;
SIGNAL \Mult1~50\ : std_logic;
SIGNAL \Mult1~51\ : std_logic;
SIGNAL \Mult1~52\ : std_logic;
SIGNAL \Mult1~53\ : std_logic;
SIGNAL \Mult1~54\ : std_logic;
SIGNAL \Mult1~55\ : std_logic;
SIGNAL \Mult0~8\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Lowpass:1:N_Bit_Register_unit|output[0]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:1:N_Bit_Register_unit|output[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Lowpass:5:N_Bit_Register_unit|output[0]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:7:N_Bit_Register_unit|output[0]~feeder_combout\ : std_logic;
SIGNAL \Add17~1_sumout\ : std_logic;
SIGNAL \Lowpass:7:N_Bit_Register_unit|output[0]~DUPLICATE_q\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \Lowpass:1:N_Bit_Register_unit|output[1]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:1:N_Bit_Register_unit|output[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Lowpass:3:N_Bit_Register_unit|output[1]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:5:N_Bit_Register_unit|output[1]~feeder_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \Lowpass:2:N_Bit_Register_unit|output[2]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:4:N_Bit_Register_unit|output[2]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:4:N_Bit_Register_unit|output[2]~DUPLICATE_q\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \Lowpass:0:N_Bit_Register_unit|output[3]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:2:N_Bit_Register_unit|output[3]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:2:N_Bit_Register_unit|output[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Lowpass:4:N_Bit_Register_unit|output[3]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:5:N_Bit_Register_unit|output[3]~feeder_combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \Lowpass:0:N_Bit_Register_unit|output[4]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:6:N_Bit_Register_unit|output[4]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:7:N_Bit_Register_unit|output[4]~feeder_combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \Lowpass:1:N_Bit_Register_unit|output[5]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:1:N_Bit_Register_unit|output[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Lowpass:3:N_Bit_Register_unit|output[5]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:5:N_Bit_Register_unit|output[5]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:7:N_Bit_Register_unit|output[5]~DUPLICATE_q\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \Lowpass:0:N_Bit_Register_unit|output[6]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:2:N_Bit_Register_unit|output[6]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:3:N_Bit_Register_unit|output[6]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:4:N_Bit_Register_unit|output[6]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:5:N_Bit_Register_unit|output[6]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:5:N_Bit_Register_unit|output[6]~DUPLICATE_q\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \Lowpass:2:N_Bit_Register_unit|output[7]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:3:N_Bit_Register_unit|output[7]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:5:N_Bit_Register_unit|output[7]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:7:N_Bit_Register_unit|output[7]~feeder_combout\ : std_logic;
SIGNAL \Lowpass:4:N_Bit_Register_unit|output[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \added_value[2][0]\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \Add7~61_sumout\ : std_logic;
SIGNAL \added_value[2][1]\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \added_value[2][2]\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \Lowpass:3:N_Bit_Register_unit|output[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~62\ : std_logic;
SIGNAL \Add7~63\ : std_logic;
SIGNAL \Add7~65_sumout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \added_value[2][3]\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add7~66\ : std_logic;
SIGNAL \Add7~67\ : std_logic;
SIGNAL \Add7~69_sumout\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \added_value[2][4]\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \Add7~70\ : std_logic;
SIGNAL \Add7~71\ : std_logic;
SIGNAL \Add7~73_sumout\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \added_value[2][5]\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \Lowpass:3:N_Bit_Register_unit|output[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~74\ : std_logic;
SIGNAL \Add7~75\ : std_logic;
SIGNAL \Add7~77_sumout\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \added_value[2][6]\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \Add7~78\ : std_logic;
SIGNAL \Add7~79\ : std_logic;
SIGNAL \Add7~81_sumout\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \Add7~82\ : std_logic;
SIGNAL \Add7~83\ : std_logic;
SIGNAL \Add7~85_sumout\ : std_logic;
SIGNAL \added_value[2][7]\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \Add7~86\ : std_logic;
SIGNAL \Add7~87\ : std_logic;
SIGNAL \Add7~89_sumout\ : std_logic;
SIGNAL \added_value[2][8]\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \Add7~90\ : std_logic;
SIGNAL \Add7~91\ : std_logic;
SIGNAL \Add7~93_sumout\ : std_logic;
SIGNAL \added_value[2][9]\ : std_logic;
SIGNAL \Add6~34\ : std_logic;
SIGNAL \Add6~37_sumout\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \Add7~94\ : std_logic;
SIGNAL \Add7~95\ : std_logic;
SIGNAL \Add7~97_sumout\ : std_logic;
SIGNAL \added_value[2][10]\ : std_logic;
SIGNAL \Add6~38\ : std_logic;
SIGNAL \Add6~41_sumout\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \added_value[2][11]\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~45_sumout\ : std_logic;
SIGNAL \Add7~98\ : std_logic;
SIGNAL \Add7~99\ : std_logic;
SIGNAL \Add7~101_sumout\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~41_sumout\ : std_logic;
SIGNAL \added_value[2][12]\ : std_logic;
SIGNAL \Add6~46\ : std_logic;
SIGNAL \Add6~49_sumout\ : std_logic;
SIGNAL \Add7~102\ : std_logic;
SIGNAL \Add7~103\ : std_logic;
SIGNAL \Add7~105_sumout\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~45_sumout\ : std_logic;
SIGNAL \Add7~106\ : std_logic;
SIGNAL \Add7~107\ : std_logic;
SIGNAL \Add7~109_sumout\ : std_logic;
SIGNAL \added_value[2][13]\ : std_logic;
SIGNAL \Add6~50\ : std_logic;
SIGNAL \Add6~53_sumout\ : std_logic;
SIGNAL \Add7~46\ : std_logic;
SIGNAL \Add7~49_sumout\ : std_logic;
SIGNAL \added_value[2][14]\ : std_logic;
SIGNAL \Add6~54\ : std_logic;
SIGNAL \Add6~57_sumout\ : std_logic;
SIGNAL \Add7~50\ : std_logic;
SIGNAL \Add7~53_sumout\ : std_logic;
SIGNAL \added_value[2][15]\ : std_logic;
SIGNAL \Add6~58\ : std_logic;
SIGNAL \Add6~61_sumout\ : std_logic;
SIGNAL \Add7~54\ : std_logic;
SIGNAL \Add7~57_sumout\ : std_logic;
SIGNAL \added_value[5][0]\ : std_logic;
SIGNAL \Add15~1_sumout\ : std_logic;
SIGNAL \Add14~1_sumout\ : std_logic;
SIGNAL \added_value[5][1]\ : std_logic;
SIGNAL \Add11~1_sumout\ : std_logic;
SIGNAL \Add13~1_sumout\ : std_logic;
SIGNAL \Add15~2\ : std_logic;
SIGNAL \Add15~5_sumout\ : std_logic;
SIGNAL \Add14~2\ : std_logic;
SIGNAL \Add14~5_sumout\ : std_logic;
SIGNAL \added_value[5][2]\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5_sumout\ : std_logic;
SIGNAL \Add13~2\ : std_logic;
SIGNAL \Add13~5_sumout\ : std_logic;
SIGNAL \Add15~6\ : std_logic;
SIGNAL \Add15~9_sumout\ : std_logic;
SIGNAL \Add14~6\ : std_logic;
SIGNAL \Add14~9_sumout\ : std_logic;
SIGNAL \added_value[5][3]\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9_sumout\ : std_logic;
SIGNAL \Add13~6\ : std_logic;
SIGNAL \Add13~9_sumout\ : std_logic;
SIGNAL \Add15~10\ : std_logic;
SIGNAL \Add15~13_sumout\ : std_logic;
SIGNAL \Add14~10\ : std_logic;
SIGNAL \Add14~13_sumout\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~13_sumout\ : std_logic;
SIGNAL \added_value[5][4]\ : std_logic;
SIGNAL \Add13~10\ : std_logic;
SIGNAL \Add13~13_sumout\ : std_logic;
SIGNAL \Add15~14\ : std_logic;
SIGNAL \Add15~17_sumout\ : std_logic;
SIGNAL \Add14~14\ : std_logic;
SIGNAL \Add14~17_sumout\ : std_logic;
SIGNAL \added_value[5][5]\ : std_logic;
SIGNAL \Add11~14\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~17_sumout\ : std_logic;
SIGNAL \Add13~14\ : std_logic;
SIGNAL \Add13~17_sumout\ : std_logic;
SIGNAL \Add15~18\ : std_logic;
SIGNAL \Add15~21_sumout\ : std_logic;
SIGNAL \added_value[5][6]\ : std_logic;
SIGNAL \Add11~18\ : std_logic;
SIGNAL \Add11~19\ : std_logic;
SIGNAL \Add11~21_sumout\ : std_logic;
SIGNAL \Add13~18\ : std_logic;
SIGNAL \Add13~21_sumout\ : std_logic;
SIGNAL \Add14~18\ : std_logic;
SIGNAL \Add14~21_sumout\ : std_logic;
SIGNAL \Add15~22\ : std_logic;
SIGNAL \Add15~25_sumout\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~23\ : std_logic;
SIGNAL \Add11~25_sumout\ : std_logic;
SIGNAL \added_value[5][7]\ : std_logic;
SIGNAL \Add13~22\ : std_logic;
SIGNAL \Add13~25_sumout\ : std_logic;
SIGNAL \Add14~22\ : std_logic;
SIGNAL \Add14~25_sumout\ : std_logic;
SIGNAL \Add15~26\ : std_logic;
SIGNAL \Add15~29_sumout\ : std_logic;
SIGNAL \Add14~26\ : std_logic;
SIGNAL \Add14~29_sumout\ : std_logic;
SIGNAL \Add11~26\ : std_logic;
SIGNAL \Add11~27\ : std_logic;
SIGNAL \Add11~29_sumout\ : std_logic;
SIGNAL \added_value[5][8]\ : std_logic;
SIGNAL \Add13~26\ : std_logic;
SIGNAL \Add13~29_sumout\ : std_logic;
SIGNAL \Add15~30\ : std_logic;
SIGNAL \Add15~33_sumout\ : std_logic;
SIGNAL \Add11~30\ : std_logic;
SIGNAL \Add11~31\ : std_logic;
SIGNAL \Add11~33_sumout\ : std_logic;
SIGNAL \added_value[5][9]\ : std_logic;
SIGNAL \Add13~30\ : std_logic;
SIGNAL \Add13~33_sumout\ : std_logic;
SIGNAL \Add15~34\ : std_logic;
SIGNAL \Add15~37_sumout\ : std_logic;
SIGNAL \Add11~34\ : std_logic;
SIGNAL \Add11~35\ : std_logic;
SIGNAL \Add11~37_sumout\ : std_logic;
SIGNAL \added_value[5][10]\ : std_logic;
SIGNAL \Add13~34\ : std_logic;
SIGNAL \Add13~37_sumout\ : std_logic;
SIGNAL \Add15~38\ : std_logic;
SIGNAL \Add15~41_sumout\ : std_logic;
SIGNAL \added_value[5][11]\ : std_logic;
SIGNAL \Add11~38\ : std_logic;
SIGNAL \Add11~39\ : std_logic;
SIGNAL \Add11~41_sumout\ : std_logic;
SIGNAL \Add13~38\ : std_logic;
SIGNAL \Add13~41_sumout\ : std_logic;
SIGNAL \Add15~42\ : std_logic;
SIGNAL \Add15~45_sumout\ : std_logic;
SIGNAL \Add11~42\ : std_logic;
SIGNAL \Add11~43\ : std_logic;
SIGNAL \Add11~45_sumout\ : std_logic;
SIGNAL \added_value[5][12]\ : std_logic;
SIGNAL \Add13~42\ : std_logic;
SIGNAL \Add13~45_sumout\ : std_logic;
SIGNAL \Add15~46\ : std_logic;
SIGNAL \Add15~49_sumout\ : std_logic;
SIGNAL \Add11~46\ : std_logic;
SIGNAL \Add11~47\ : std_logic;
SIGNAL \Add11~49_sumout\ : std_logic;
SIGNAL \added_value[5][13]\ : std_logic;
SIGNAL \Add13~46\ : std_logic;
SIGNAL \Add13~49_sumout\ : std_logic;
SIGNAL \Add15~50\ : std_logic;
SIGNAL \Add15~53_sumout\ : std_logic;
SIGNAL \added_value[5][14]\ : std_logic;
SIGNAL \Add13~50\ : std_logic;
SIGNAL \Add13~53_sumout\ : std_logic;
SIGNAL \Add15~54\ : std_logic;
SIGNAL \Add15~57_sumout\ : std_logic;
SIGNAL \added_value[5][15]\ : std_logic;
SIGNAL \Add13~54\ : std_logic;
SIGNAL \Add13~57_sumout\ : std_logic;
SIGNAL \Add15~58\ : std_logic;
SIGNAL \Add15~61_sumout\ : std_logic;
SIGNAL \added_value[8][0]\ : std_logic;
SIGNAL \Lowpass:8:N_Bit_Register_unit|output[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add19~1_sumout\ : std_logic;
SIGNAL \added_value[8][1]\ : std_logic;
SIGNAL \Add17~2\ : std_logic;
SIGNAL \Add17~5_sumout\ : std_logic;
SIGNAL \Add19~2\ : std_logic;
SIGNAL \Add19~3\ : std_logic;
SIGNAL \Add19~5_sumout\ : std_logic;
SIGNAL \Add17~6\ : std_logic;
SIGNAL \Add17~9_sumout\ : std_logic;
SIGNAL \added_value[8][2]\ : std_logic;
SIGNAL \Add20~1_sumout\ : std_logic;
SIGNAL \Add19~6\ : std_logic;
SIGNAL \Add19~7\ : std_logic;
SIGNAL \Add19~9_sumout\ : std_logic;
SIGNAL \Lowpass:8:N_Bit_Register_unit|output[3]~feeder_combout\ : std_logic;
SIGNAL \Add17~10\ : std_logic;
SIGNAL \Add17~17_sumout\ : std_logic;
SIGNAL \Add18~1_sumout\ : std_logic;
SIGNAL \Add20~2\ : std_logic;
SIGNAL \Add20~5_sumout\ : std_logic;
SIGNAL \added_value[8][3]\ : std_logic;
SIGNAL \Add19~10\ : std_logic;
SIGNAL \Add19~11\ : std_logic;
SIGNAL \Add19~13_sumout\ : std_logic;
SIGNAL \Lowpass:8:N_Bit_Register_unit|output[4]~feeder_combout\ : std_logic;
SIGNAL \Add17~18\ : std_logic;
SIGNAL \Add17~21_sumout\ : std_logic;
SIGNAL \Add18~2\ : std_logic;
SIGNAL \Add18~5_sumout\ : std_logic;
SIGNAL \added_value[8][4]\ : std_logic;
SIGNAL \Add20~6\ : std_logic;
SIGNAL \Add20~9_sumout\ : std_logic;
SIGNAL \Add19~14\ : std_logic;
SIGNAL \Add19~15\ : std_logic;
SIGNAL \Add19~17_sumout\ : std_logic;
SIGNAL \added_value[8][5]\ : std_logic;
SIGNAL \Add20~10\ : std_logic;
SIGNAL \Add20~13_sumout\ : std_logic;
SIGNAL \Add17~22\ : std_logic;
SIGNAL \Add17~25_sumout\ : std_logic;
SIGNAL \Add18~6\ : std_logic;
SIGNAL \Add18~9_sumout\ : std_logic;
SIGNAL \Add19~18\ : std_logic;
SIGNAL \Add19~19\ : std_logic;
SIGNAL \Add19~21_sumout\ : std_logic;
SIGNAL \added_value[8][6]\ : std_logic;
SIGNAL \Add17~26\ : std_logic;
SIGNAL \Add17~29_sumout\ : std_logic;
SIGNAL \Add18~10\ : std_logic;
SIGNAL \Add18~13_sumout\ : std_logic;
SIGNAL \Add20~14\ : std_logic;
SIGNAL \Add20~17_sumout\ : std_logic;
SIGNAL \Add19~22\ : std_logic;
SIGNAL \Add19~23\ : std_logic;
SIGNAL \Add19~25_sumout\ : std_logic;
SIGNAL \Lowpass:7:N_Bit_Register_unit|output[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add20~18\ : std_logic;
SIGNAL \Add20~21_sumout\ : std_logic;
SIGNAL \Add17~30\ : std_logic;
SIGNAL \Add17~33_sumout\ : std_logic;
SIGNAL \Add18~14\ : std_logic;
SIGNAL \Add18~17_sumout\ : std_logic;
SIGNAL \added_value[8][7]\ : std_logic;
SIGNAL \Add19~26\ : std_logic;
SIGNAL \Add19~27\ : std_logic;
SIGNAL \Add19~29_sumout\ : std_logic;
SIGNAL \Add17~34\ : std_logic;
SIGNAL \Add17~13_sumout\ : std_logic;
SIGNAL \Add18~18\ : std_logic;
SIGNAL \Add18~21_sumout\ : std_logic;
SIGNAL \Add20~22\ : std_logic;
SIGNAL \Add20~25_sumout\ : std_logic;
SIGNAL \added_value[8][8]\ : std_logic;
SIGNAL \Add19~30\ : std_logic;
SIGNAL \Add19~31\ : std_logic;
SIGNAL \Add19~33_sumout\ : std_logic;
SIGNAL \added_value[8][9]\ : std_logic;
SIGNAL \Add18~22\ : std_logic;
SIGNAL \Add18~25_sumout\ : std_logic;
SIGNAL \Add20~26\ : std_logic;
SIGNAL \Add20~29_sumout\ : std_logic;
SIGNAL \Add19~34\ : std_logic;
SIGNAL \Add19~35\ : std_logic;
SIGNAL \Add19~37_sumout\ : std_logic;
SIGNAL \Add18~26\ : std_logic;
SIGNAL \Add18~29_sumout\ : std_logic;
SIGNAL \added_value[8][10]\ : std_logic;
SIGNAL \Add19~38\ : std_logic;
SIGNAL \Add19~39\ : std_logic;
SIGNAL \Add19~41_sumout\ : std_logic;
SIGNAL \Add18~30\ : std_logic;
SIGNAL \Add18~33_sumout\ : std_logic;
SIGNAL \added_value[8][11]\ : std_logic;
SIGNAL \Add19~42\ : std_logic;
SIGNAL \Add19~43\ : std_logic;
SIGNAL \Add19~45_sumout\ : std_logic;
SIGNAL \added_value[8][12]\ : std_logic;
SIGNAL \Add18~34\ : std_logic;
SIGNAL \Add18~37_sumout\ : std_logic;
SIGNAL \Add19~46\ : std_logic;
SIGNAL \Add19~47\ : std_logic;
SIGNAL \Add19~49_sumout\ : std_logic;
SIGNAL \added_value[8][13]\ : std_logic;
SIGNAL \Add19~50\ : std_logic;
SIGNAL \Add19~51\ : std_logic;
SIGNAL \Add19~53_sumout\ : std_logic;
SIGNAL \added_value[8][14]\ : std_logic;
SIGNAL \Add19~54\ : std_logic;
SIGNAL \Add19~55\ : std_logic;
SIGNAL \Add19~57_sumout\ : std_logic;
SIGNAL \added_value[8][15]\ : std_logic;
SIGNAL \Add19~58\ : std_logic;
SIGNAL \Add19~59\ : std_logic;
SIGNAL \Add19~61_sumout\ : std_logic;
SIGNAL \Lowpass:1:N_Bit_Register_unit|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:9:N_Bit_Register_unit|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:8:N_Bit_Register_unit|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:7:N_Bit_Register_unit|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:6:N_Bit_Register_unit|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:5:N_Bit_Register_unit|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:4:N_Bit_Register_unit|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:3:N_Bit_Register_unit|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:2:N_Bit_Register_unit|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:0:N_Bit_Register_unit|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:3:N_Bit_Register_unit|ALT_INV_output[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Lowpass:3:N_Bit_Register_unit|ALT_INV_output[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_input[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:1:N_Bit_Register_unit|ALT_INV_output\ : std_logic_vector(7 DOWNTO 2);
SIGNAL \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:4:N_Bit_Register_unit|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:8:N_Bit_Register_unit|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Lowpass:7:N_Bit_Register_unit|ALT_INV_output\ : std_logic_vector(4 DOWNTO 3);
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \ALT_INV_added_value[2][15]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][14]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][13]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][12]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][11]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][10]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][9]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][8]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][7]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][6]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][5]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][4]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][3]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][2]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][1]\ : std_logic;
SIGNAL \ALT_INV_added_value[2][0]\ : std_logic;
SIGNAL \ALT_INV_Add11~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~1_sumout\ : std_logic;
SIGNAL \ALT_INV_added_value[5][15]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][14]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][13]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][12]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][11]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][10]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][9]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][8]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][7]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][6]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][5]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][4]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][3]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][2]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][1]\ : std_logic;
SIGNAL \ALT_INV_added_value[5][0]\ : std_logic;
SIGNAL \ALT_INV_Add17~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add18~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add18~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add18~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add18~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add18~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add18~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add18~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add18~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add18~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add18~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add20~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add17~5_sumout\ : std_logic;
SIGNAL \ALT_INV_added_value[8][15]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][14]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][13]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][12]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][11]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][10]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][9]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][8]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][7]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][6]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][5]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][4]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][3]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][2]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][1]\ : std_logic;
SIGNAL \ALT_INV_added_value[8][0]\ : std_logic;
SIGNAL \ALT_INV_Add17~1_sumout\ : std_logic;

BEGIN

ww_input <= input;
ww_clock <= clock;
ww_reset <= reset;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult2~mac_AX_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & vcc);

\Mult2~mac_AY_bus\ <= (\Lowpass:7:N_Bit_Register_unit|output\(7) & \Lowpass:7:N_Bit_Register_unit|output\(7) & \Lowpass:7:N_Bit_Register_unit|output\(7) & \Lowpass:7:N_Bit_Register_unit|output\(7) & \Lowpass:7:N_Bit_Register_unit|output\(7) & 
\Lowpass:7:N_Bit_Register_unit|output\(7) & \Lowpass:7:N_Bit_Register_unit|output\(7) & \Lowpass:7:N_Bit_Register_unit|output\(7) & \Lowpass:7:N_Bit_Register_unit|output\(7) & \Lowpass:7:N_Bit_Register_unit|output\(7) & 
\Lowpass:7:N_Bit_Register_unit|output\(7) & \Lowpass:7:N_Bit_Register_unit|output\(7) & \Lowpass:7:N_Bit_Register_unit|output\(6) & \Lowpass:7:N_Bit_Register_unit|output[5]~DUPLICATE_q\ & \Lowpass:7:N_Bit_Register_unit|output\(4) & 
\Lowpass:7:N_Bit_Register_unit|output\(3) & \Lowpass:7:N_Bit_Register_unit|output\(2) & \Lowpass:7:N_Bit_Register_unit|output\(1) & \Lowpass:7:N_Bit_Register_unit|output[0]~DUPLICATE_q\);

\Mult2~mac_BX_bus\ <= (\Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & 
\Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\);

\Mult2~mac_BY_bus\ <= (\Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~61_sumout\ & \Add15~57_sumout\ & \Add15~53_sumout\ & \Add15~49_sumout\ & \Add15~45_sumout\ & \Add15~41_sumout\ & \Add15~37_sumout\ & \Add15~33_sumout\ & \Add15~29_sumout\ & 
\Add15~25_sumout\ & \Add15~21_sumout\ & \Add15~17_sumout\ & \Add15~13_sumout\ & \Add15~9_sumout\ & \Add15~5_sumout\ & \Add15~1_sumout\);

\added_value[8][0]\ <= \Mult2~mac_RESULTA_bus\(0);
\added_value[8][1]\ <= \Mult2~mac_RESULTA_bus\(1);
\added_value[8][2]\ <= \Mult2~mac_RESULTA_bus\(2);
\added_value[8][3]\ <= \Mult2~mac_RESULTA_bus\(3);
\added_value[8][4]\ <= \Mult2~mac_RESULTA_bus\(4);
\added_value[8][5]\ <= \Mult2~mac_RESULTA_bus\(5);
\added_value[8][6]\ <= \Mult2~mac_RESULTA_bus\(6);
\added_value[8][7]\ <= \Mult2~mac_RESULTA_bus\(7);
\added_value[8][8]\ <= \Mult2~mac_RESULTA_bus\(8);
\added_value[8][9]\ <= \Mult2~mac_RESULTA_bus\(9);
\added_value[8][10]\ <= \Mult2~mac_RESULTA_bus\(10);
\added_value[8][11]\ <= \Mult2~mac_RESULTA_bus\(11);
\added_value[8][12]\ <= \Mult2~mac_RESULTA_bus\(12);
\added_value[8][13]\ <= \Mult2~mac_RESULTA_bus\(13);
\added_value[8][14]\ <= \Mult2~mac_RESULTA_bus\(14);
\added_value[8][15]\ <= \Mult2~mac_RESULTA_bus\(15);
\Mult2~8\ <= \Mult2~mac_RESULTA_bus\(16);
\Mult2~9\ <= \Mult2~mac_RESULTA_bus\(17);
\Mult2~10\ <= \Mult2~mac_RESULTA_bus\(18);
\Mult2~11\ <= \Mult2~mac_RESULTA_bus\(19);
\Mult2~12\ <= \Mult2~mac_RESULTA_bus\(20);
\Mult2~13\ <= \Mult2~mac_RESULTA_bus\(21);
\Mult2~14\ <= \Mult2~mac_RESULTA_bus\(22);
\Mult2~15\ <= \Mult2~mac_RESULTA_bus\(23);
\Mult2~16\ <= \Mult2~mac_RESULTA_bus\(24);
\Mult2~17\ <= \Mult2~mac_RESULTA_bus\(25);
\Mult2~18\ <= \Mult2~mac_RESULTA_bus\(26);
\Mult2~19\ <= \Mult2~mac_RESULTA_bus\(27);
\Mult2~20\ <= \Mult2~mac_RESULTA_bus\(28);
\Mult2~21\ <= \Mult2~mac_RESULTA_bus\(29);
\Mult2~22\ <= \Mult2~mac_RESULTA_bus\(30);
\Mult2~23\ <= \Mult2~mac_RESULTA_bus\(31);
\Mult2~24\ <= \Mult2~mac_RESULTA_bus\(32);
\Mult2~25\ <= \Mult2~mac_RESULTA_bus\(33);
\Mult2~26\ <= \Mult2~mac_RESULTA_bus\(34);
\Mult2~27\ <= \Mult2~mac_RESULTA_bus\(35);
\Mult2~28\ <= \Mult2~mac_RESULTA_bus\(36);
\Mult2~29\ <= \Mult2~mac_RESULTA_bus\(37);
\Mult2~30\ <= \Mult2~mac_RESULTA_bus\(38);
\Mult2~31\ <= \Mult2~mac_RESULTA_bus\(39);
\Mult2~32\ <= \Mult2~mac_RESULTA_bus\(40);
\Mult2~33\ <= \Mult2~mac_RESULTA_bus\(41);
\Mult2~34\ <= \Mult2~mac_RESULTA_bus\(42);
\Mult2~35\ <= \Mult2~mac_RESULTA_bus\(43);
\Mult2~36\ <= \Mult2~mac_RESULTA_bus\(44);
\Mult2~37\ <= \Mult2~mac_RESULTA_bus\(45);
\Mult2~38\ <= \Mult2~mac_RESULTA_bus\(46);
\Mult2~39\ <= \Mult2~mac_RESULTA_bus\(47);
\Mult2~40\ <= \Mult2~mac_RESULTA_bus\(48);
\Mult2~41\ <= \Mult2~mac_RESULTA_bus\(49);
\Mult2~42\ <= \Mult2~mac_RESULTA_bus\(50);
\Mult2~43\ <= \Mult2~mac_RESULTA_bus\(51);
\Mult2~44\ <= \Mult2~mac_RESULTA_bus\(52);
\Mult2~45\ <= \Mult2~mac_RESULTA_bus\(53);
\Mult2~46\ <= \Mult2~mac_RESULTA_bus\(54);
\Mult2~47\ <= \Mult2~mac_RESULTA_bus\(55);
\Mult2~48\ <= \Mult2~mac_RESULTA_bus\(56);
\Mult2~49\ <= \Mult2~mac_RESULTA_bus\(57);
\Mult2~50\ <= \Mult2~mac_RESULTA_bus\(58);
\Mult2~51\ <= \Mult2~mac_RESULTA_bus\(59);
\Mult2~52\ <= \Mult2~mac_RESULTA_bus\(60);
\Mult2~53\ <= \Mult2~mac_RESULTA_bus\(61);
\Mult2~54\ <= \Mult2~mac_RESULTA_bus\(62);
\Mult2~55\ <= \Mult2~mac_RESULTA_bus\(63);

\Mult1~mac_AX_bus\ <= (vcc & gnd & vcc & vcc & gnd & gnd);

\Mult1~mac_AY_bus\ <= (\Lowpass:4:N_Bit_Register_unit|output\(7) & \Lowpass:4:N_Bit_Register_unit|output\(7) & \Lowpass:4:N_Bit_Register_unit|output\(7) & \Lowpass:4:N_Bit_Register_unit|output\(7) & \Lowpass:4:N_Bit_Register_unit|output\(7) & 
\Lowpass:4:N_Bit_Register_unit|output\(7) & \Lowpass:4:N_Bit_Register_unit|output\(7) & \Lowpass:4:N_Bit_Register_unit|output\(7) & \Lowpass:4:N_Bit_Register_unit|output\(7) & \Lowpass:4:N_Bit_Register_unit|output\(7) & 
\Lowpass:4:N_Bit_Register_unit|output\(7) & \Lowpass:4:N_Bit_Register_unit|output\(7) & \Lowpass:4:N_Bit_Register_unit|output\(6) & \Lowpass:4:N_Bit_Register_unit|output\(5) & \Lowpass:4:N_Bit_Register_unit|output[4]~DUPLICATE_q\ & 
\Lowpass:4:N_Bit_Register_unit|output\(3) & \Lowpass:4:N_Bit_Register_unit|output\(2) & \Lowpass:4:N_Bit_Register_unit|output\(1) & \Lowpass:4:N_Bit_Register_unit|output\(0));

\Mult1~mac_BX_bus\ <= (\Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & 
\Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\);

\Mult1~mac_BY_bus\ <= (\Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~57_sumout\ & \Add7~53_sumout\ & \Add7~49_sumout\ & \Add7~45_sumout\ & \Add7~41_sumout\ & \Add7~37_sumout\ & \Add7~33_sumout\ & \Add7~29_sumout\ & \Add7~25_sumout\ & \Add7~21_sumout\ & 
\Add7~17_sumout\ & \Add7~13_sumout\ & \Add7~9_sumout\ & \Add7~5_sumout\ & \Add7~1_sumout\ & \Add6~1_sumout\);

\added_value[5][0]\ <= \Mult1~mac_RESULTA_bus\(0);
\added_value[5][1]\ <= \Mult1~mac_RESULTA_bus\(1);
\added_value[5][2]\ <= \Mult1~mac_RESULTA_bus\(2);
\added_value[5][3]\ <= \Mult1~mac_RESULTA_bus\(3);
\added_value[5][4]\ <= \Mult1~mac_RESULTA_bus\(4);
\added_value[5][5]\ <= \Mult1~mac_RESULTA_bus\(5);
\added_value[5][6]\ <= \Mult1~mac_RESULTA_bus\(6);
\added_value[5][7]\ <= \Mult1~mac_RESULTA_bus\(7);
\added_value[5][8]\ <= \Mult1~mac_RESULTA_bus\(8);
\added_value[5][9]\ <= \Mult1~mac_RESULTA_bus\(9);
\added_value[5][10]\ <= \Mult1~mac_RESULTA_bus\(10);
\added_value[5][11]\ <= \Mult1~mac_RESULTA_bus\(11);
\added_value[5][12]\ <= \Mult1~mac_RESULTA_bus\(12);
\added_value[5][13]\ <= \Mult1~mac_RESULTA_bus\(13);
\added_value[5][14]\ <= \Mult1~mac_RESULTA_bus\(14);
\added_value[5][15]\ <= \Mult1~mac_RESULTA_bus\(15);
\Mult1~8\ <= \Mult1~mac_RESULTA_bus\(16);
\Mult1~9\ <= \Mult1~mac_RESULTA_bus\(17);
\Mult1~10\ <= \Mult1~mac_RESULTA_bus\(18);
\Mult1~11\ <= \Mult1~mac_RESULTA_bus\(19);
\Mult1~12\ <= \Mult1~mac_RESULTA_bus\(20);
\Mult1~13\ <= \Mult1~mac_RESULTA_bus\(21);
\Mult1~14\ <= \Mult1~mac_RESULTA_bus\(22);
\Mult1~15\ <= \Mult1~mac_RESULTA_bus\(23);
\Mult1~16\ <= \Mult1~mac_RESULTA_bus\(24);
\Mult1~17\ <= \Mult1~mac_RESULTA_bus\(25);
\Mult1~18\ <= \Mult1~mac_RESULTA_bus\(26);
\Mult1~19\ <= \Mult1~mac_RESULTA_bus\(27);
\Mult1~20\ <= \Mult1~mac_RESULTA_bus\(28);
\Mult1~21\ <= \Mult1~mac_RESULTA_bus\(29);
\Mult1~22\ <= \Mult1~mac_RESULTA_bus\(30);
\Mult1~23\ <= \Mult1~mac_RESULTA_bus\(31);
\Mult1~24\ <= \Mult1~mac_RESULTA_bus\(32);
\Mult1~25\ <= \Mult1~mac_RESULTA_bus\(33);
\Mult1~26\ <= \Mult1~mac_RESULTA_bus\(34);
\Mult1~27\ <= \Mult1~mac_RESULTA_bus\(35);
\Mult1~28\ <= \Mult1~mac_RESULTA_bus\(36);
\Mult1~29\ <= \Mult1~mac_RESULTA_bus\(37);
\Mult1~30\ <= \Mult1~mac_RESULTA_bus\(38);
\Mult1~31\ <= \Mult1~mac_RESULTA_bus\(39);
\Mult1~32\ <= \Mult1~mac_RESULTA_bus\(40);
\Mult1~33\ <= \Mult1~mac_RESULTA_bus\(41);
\Mult1~34\ <= \Mult1~mac_RESULTA_bus\(42);
\Mult1~35\ <= \Mult1~mac_RESULTA_bus\(43);
\Mult1~36\ <= \Mult1~mac_RESULTA_bus\(44);
\Mult1~37\ <= \Mult1~mac_RESULTA_bus\(45);
\Mult1~38\ <= \Mult1~mac_RESULTA_bus\(46);
\Mult1~39\ <= \Mult1~mac_RESULTA_bus\(47);
\Mult1~40\ <= \Mult1~mac_RESULTA_bus\(48);
\Mult1~41\ <= \Mult1~mac_RESULTA_bus\(49);
\Mult1~42\ <= \Mult1~mac_RESULTA_bus\(50);
\Mult1~43\ <= \Mult1~mac_RESULTA_bus\(51);
\Mult1~44\ <= \Mult1~mac_RESULTA_bus\(52);
\Mult1~45\ <= \Mult1~mac_RESULTA_bus\(53);
\Mult1~46\ <= \Mult1~mac_RESULTA_bus\(54);
\Mult1~47\ <= \Mult1~mac_RESULTA_bus\(55);
\Mult1~48\ <= \Mult1~mac_RESULTA_bus\(56);
\Mult1~49\ <= \Mult1~mac_RESULTA_bus\(57);
\Mult1~50\ <= \Mult1~mac_RESULTA_bus\(58);
\Mult1~51\ <= \Mult1~mac_RESULTA_bus\(59);
\Mult1~52\ <= \Mult1~mac_RESULTA_bus\(60);
\Mult1~53\ <= \Mult1~mac_RESULTA_bus\(61);
\Mult1~54\ <= \Mult1~mac_RESULTA_bus\(62);
\Mult1~55\ <= \Mult1~mac_RESULTA_bus\(63);

\Mult0~mac_AX_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & vcc);

\Mult0~mac_AY_bus\ <= (\Lowpass:1:N_Bit_Register_unit|output\(7) & \Lowpass:1:N_Bit_Register_unit|output\(7) & \Lowpass:1:N_Bit_Register_unit|output\(7) & \Lowpass:1:N_Bit_Register_unit|output\(7) & \Lowpass:1:N_Bit_Register_unit|output\(7) & 
\Lowpass:1:N_Bit_Register_unit|output\(7) & \Lowpass:1:N_Bit_Register_unit|output\(7) & \Lowpass:1:N_Bit_Register_unit|output\(7) & \Lowpass:1:N_Bit_Register_unit|output\(7) & \Lowpass:1:N_Bit_Register_unit|output\(7) & 
\Lowpass:1:N_Bit_Register_unit|output\(7) & \Lowpass:1:N_Bit_Register_unit|output\(7) & \Lowpass:1:N_Bit_Register_unit|output\(6) & \Lowpass:1:N_Bit_Register_unit|output\(5) & \Lowpass:1:N_Bit_Register_unit|output\(4) & 
\Lowpass:1:N_Bit_Register_unit|output\(3) & \Lowpass:1:N_Bit_Register_unit|output\(2) & \Lowpass:1:N_Bit_Register_unit|output\(1) & \Lowpass:1:N_Bit_Register_unit|output\(0));

\Mult0~mac_BX_bus\ <= (\Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & 
\Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\);

\Mult0~mac_BY_bus\ <= (\Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~57_sumout\ & \Add3~53_sumout\ & \Add3~49_sumout\ & \Add3~45_sumout\ & \Add3~41_sumout\ & \Add3~37_sumout\ & \Add3~33_sumout\ & \Add3~29_sumout\ & \Add3~25_sumout\ & 
\Add3~21_sumout\ & \Add3~17_sumout\ & \Add3~13_sumout\ & \Add3~9_sumout\ & \Add3~5_sumout\ & \Add3~1_sumout\);

\added_value[2][0]\ <= \Mult0~mac_RESULTA_bus\(0);
\added_value[2][1]\ <= \Mult0~mac_RESULTA_bus\(1);
\added_value[2][2]\ <= \Mult0~mac_RESULTA_bus\(2);
\added_value[2][3]\ <= \Mult0~mac_RESULTA_bus\(3);
\added_value[2][4]\ <= \Mult0~mac_RESULTA_bus\(4);
\added_value[2][5]\ <= \Mult0~mac_RESULTA_bus\(5);
\added_value[2][6]\ <= \Mult0~mac_RESULTA_bus\(6);
\added_value[2][7]\ <= \Mult0~mac_RESULTA_bus\(7);
\added_value[2][8]\ <= \Mult0~mac_RESULTA_bus\(8);
\added_value[2][9]\ <= \Mult0~mac_RESULTA_bus\(9);
\added_value[2][10]\ <= \Mult0~mac_RESULTA_bus\(10);
\added_value[2][11]\ <= \Mult0~mac_RESULTA_bus\(11);
\added_value[2][12]\ <= \Mult0~mac_RESULTA_bus\(12);
\added_value[2][13]\ <= \Mult0~mac_RESULTA_bus\(13);
\added_value[2][14]\ <= \Mult0~mac_RESULTA_bus\(14);
\added_value[2][15]\ <= \Mult0~mac_RESULTA_bus\(15);
\Mult0~8\ <= \Mult0~mac_RESULTA_bus\(16);
\Mult0~9\ <= \Mult0~mac_RESULTA_bus\(17);
\Mult0~10\ <= \Mult0~mac_RESULTA_bus\(18);
\Mult0~11\ <= \Mult0~mac_RESULTA_bus\(19);
\Mult0~12\ <= \Mult0~mac_RESULTA_bus\(20);
\Mult0~13\ <= \Mult0~mac_RESULTA_bus\(21);
\Mult0~14\ <= \Mult0~mac_RESULTA_bus\(22);
\Mult0~15\ <= \Mult0~mac_RESULTA_bus\(23);
\Mult0~16\ <= \Mult0~mac_RESULTA_bus\(24);
\Mult0~17\ <= \Mult0~mac_RESULTA_bus\(25);
\Mult0~18\ <= \Mult0~mac_RESULTA_bus\(26);
\Mult0~19\ <= \Mult0~mac_RESULTA_bus\(27);
\Mult0~20\ <= \Mult0~mac_RESULTA_bus\(28);
\Mult0~21\ <= \Mult0~mac_RESULTA_bus\(29);
\Mult0~22\ <= \Mult0~mac_RESULTA_bus\(30);
\Mult0~23\ <= \Mult0~mac_RESULTA_bus\(31);
\Mult0~24\ <= \Mult0~mac_RESULTA_bus\(32);
\Mult0~25\ <= \Mult0~mac_RESULTA_bus\(33);
\Mult0~26\ <= \Mult0~mac_RESULTA_bus\(34);
\Mult0~27\ <= \Mult0~mac_RESULTA_bus\(35);
\Mult0~28\ <= \Mult0~mac_RESULTA_bus\(36);
\Mult0~29\ <= \Mult0~mac_RESULTA_bus\(37);
\Mult0~30\ <= \Mult0~mac_RESULTA_bus\(38);
\Mult0~31\ <= \Mult0~mac_RESULTA_bus\(39);
\Mult0~32\ <= \Mult0~mac_RESULTA_bus\(40);
\Mult0~33\ <= \Mult0~mac_RESULTA_bus\(41);
\Mult0~34\ <= \Mult0~mac_RESULTA_bus\(42);
\Mult0~35\ <= \Mult0~mac_RESULTA_bus\(43);
\Mult0~36\ <= \Mult0~mac_RESULTA_bus\(44);
\Mult0~37\ <= \Mult0~mac_RESULTA_bus\(45);
\Mult0~38\ <= \Mult0~mac_RESULTA_bus\(46);
\Mult0~39\ <= \Mult0~mac_RESULTA_bus\(47);
\Mult0~40\ <= \Mult0~mac_RESULTA_bus\(48);
\Mult0~41\ <= \Mult0~mac_RESULTA_bus\(49);
\Mult0~42\ <= \Mult0~mac_RESULTA_bus\(50);
\Mult0~43\ <= \Mult0~mac_RESULTA_bus\(51);
\Mult0~44\ <= \Mult0~mac_RESULTA_bus\(52);
\Mult0~45\ <= \Mult0~mac_RESULTA_bus\(53);
\Mult0~46\ <= \Mult0~mac_RESULTA_bus\(54);
\Mult0~47\ <= \Mult0~mac_RESULTA_bus\(55);
\Mult0~48\ <= \Mult0~mac_RESULTA_bus\(56);
\Mult0~49\ <= \Mult0~mac_RESULTA_bus\(57);
\Mult0~50\ <= \Mult0~mac_RESULTA_bus\(58);
\Mult0~51\ <= \Mult0~mac_RESULTA_bus\(59);
\Mult0~52\ <= \Mult0~mac_RESULTA_bus\(60);
\Mult0~53\ <= \Mult0~mac_RESULTA_bus\(61);
\Mult0~54\ <= \Mult0~mac_RESULTA_bus\(62);
\Mult0~55\ <= \Mult0~mac_RESULTA_bus\(63);
\Lowpass:3:N_Bit_Register_unit|ALT_INV_output[4]~DUPLICATE_q\ <= NOT \Lowpass:3:N_Bit_Register_unit|output[4]~DUPLICATE_q\;
\Lowpass:3:N_Bit_Register_unit|ALT_INV_output[1]~DUPLICATE_q\ <= NOT \Lowpass:3:N_Bit_Register_unit|output[1]~DUPLICATE_q\;
\ALT_INV_input[6]~input_o\ <= NOT \input[6]~input_o\;
\ALT_INV_input[5]~input_o\ <= NOT \input[5]~input_o\;
\ALT_INV_input[4]~input_o\ <= NOT \input[4]~input_o\;
\ALT_INV_input[3]~input_o\ <= NOT \input[3]~input_o\;
\ALT_INV_input[2]~input_o\ <= NOT \input[2]~input_o\;
\ALT_INV_input[7]~input_o\ <= NOT \input[7]~input_o\;
\ALT_INV_input[1]~input_o\ <= NOT \input[1]~input_o\;
\ALT_INV_input[0]~input_o\ <= NOT \input[0]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(7) <= NOT \Lowpass:0:N_Bit_Register_unit|output\(7);
\Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(6) <= NOT \Lowpass:0:N_Bit_Register_unit|output\(6);
\Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(5) <= NOT \Lowpass:0:N_Bit_Register_unit|output\(5);
\Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(4) <= NOT \Lowpass:0:N_Bit_Register_unit|output\(4);
\Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(3) <= NOT \Lowpass:0:N_Bit_Register_unit|output\(3);
\Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(2) <= NOT \Lowpass:0:N_Bit_Register_unit|output\(2);
\Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(1) <= NOT \Lowpass:0:N_Bit_Register_unit|output\(1);
\Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(0) <= NOT \Lowpass:0:N_Bit_Register_unit|output\(0);
\Lowpass:1:N_Bit_Register_unit|ALT_INV_output\(7) <= NOT \Lowpass:1:N_Bit_Register_unit|output\(7);
\Lowpass:1:N_Bit_Register_unit|ALT_INV_output\(6) <= NOT \Lowpass:1:N_Bit_Register_unit|output\(6);
\Lowpass:1:N_Bit_Register_unit|ALT_INV_output\(3) <= NOT \Lowpass:1:N_Bit_Register_unit|output\(3);
\Lowpass:1:N_Bit_Register_unit|ALT_INV_output\(2) <= NOT \Lowpass:1:N_Bit_Register_unit|output\(2);
\Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(7) <= NOT \Lowpass:2:N_Bit_Register_unit|output\(7);
\Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(6) <= NOT \Lowpass:2:N_Bit_Register_unit|output\(6);
\Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(5) <= NOT \Lowpass:2:N_Bit_Register_unit|output\(5);
\Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(4) <= NOT \Lowpass:2:N_Bit_Register_unit|output\(4);
\Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(3) <= NOT \Lowpass:2:N_Bit_Register_unit|output\(3);
\Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(2) <= NOT \Lowpass:2:N_Bit_Register_unit|output\(2);
\Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(1) <= NOT \Lowpass:2:N_Bit_Register_unit|output\(1);
\Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(0) <= NOT \Lowpass:2:N_Bit_Register_unit|output\(0);
\Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(7) <= NOT \Lowpass:3:N_Bit_Register_unit|output\(7);
\Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(6) <= NOT \Lowpass:3:N_Bit_Register_unit|output\(6);
\Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(5) <= NOT \Lowpass:3:N_Bit_Register_unit|output\(5);
\Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(3) <= NOT \Lowpass:3:N_Bit_Register_unit|output\(3);
\Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(2) <= NOT \Lowpass:3:N_Bit_Register_unit|output\(2);
\Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(0) <= NOT \Lowpass:3:N_Bit_Register_unit|output\(0);
\Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(7) <= NOT \Lowpass:4:N_Bit_Register_unit|output\(7);
\Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(6) <= NOT \Lowpass:4:N_Bit_Register_unit|output\(6);
\Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(5) <= NOT \Lowpass:4:N_Bit_Register_unit|output\(5);
\Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(3) <= NOT \Lowpass:4:N_Bit_Register_unit|output\(3);
\Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(1) <= NOT \Lowpass:4:N_Bit_Register_unit|output\(1);
\Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(0) <= NOT \Lowpass:4:N_Bit_Register_unit|output\(0);
\Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(7) <= NOT \Lowpass:5:N_Bit_Register_unit|output\(7);
\Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(6) <= NOT \Lowpass:5:N_Bit_Register_unit|output\(6);
\Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(5) <= NOT \Lowpass:5:N_Bit_Register_unit|output\(5);
\Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(4) <= NOT \Lowpass:5:N_Bit_Register_unit|output\(4);
\Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(3) <= NOT \Lowpass:5:N_Bit_Register_unit|output\(3);
\Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(2) <= NOT \Lowpass:5:N_Bit_Register_unit|output\(2);
\Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(1) <= NOT \Lowpass:5:N_Bit_Register_unit|output\(1);
\Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(0) <= NOT \Lowpass:5:N_Bit_Register_unit|output\(0);
\Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(6) <= NOT \Lowpass:8:N_Bit_Register_unit|output\(6);
\Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(5) <= NOT \Lowpass:8:N_Bit_Register_unit|output\(5);
\Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(4) <= NOT \Lowpass:8:N_Bit_Register_unit|output\(4);
\Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(3) <= NOT \Lowpass:8:N_Bit_Register_unit|output\(3);
\Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(7) <= NOT \Lowpass:6:N_Bit_Register_unit|output\(7);
\Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(6) <= NOT \Lowpass:6:N_Bit_Register_unit|output\(6);
\Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(5) <= NOT \Lowpass:6:N_Bit_Register_unit|output\(5);
\Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(4) <= NOT \Lowpass:6:N_Bit_Register_unit|output\(4);
\Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(3) <= NOT \Lowpass:6:N_Bit_Register_unit|output\(3);
\Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(2) <= NOT \Lowpass:6:N_Bit_Register_unit|output\(2);
\Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(1) <= NOT \Lowpass:6:N_Bit_Register_unit|output\(1);
\Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(0) <= NOT \Lowpass:6:N_Bit_Register_unit|output\(0);
\Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(7) <= NOT \Lowpass:8:N_Bit_Register_unit|output\(7);
\Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(6) <= NOT \Lowpass:9:N_Bit_Register_unit|output\(6);
\Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(5) <= NOT \Lowpass:9:N_Bit_Register_unit|output\(5);
\Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(4) <= NOT \Lowpass:9:N_Bit_Register_unit|output\(4);
\Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(3) <= NOT \Lowpass:9:N_Bit_Register_unit|output\(3);
\Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(2) <= NOT \Lowpass:9:N_Bit_Register_unit|output\(2);
\Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(2) <= NOT \Lowpass:8:N_Bit_Register_unit|output\(2);
\Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(1) <= NOT \Lowpass:8:N_Bit_Register_unit|output\(1);
\Lowpass:7:N_Bit_Register_unit|ALT_INV_output\(4) <= NOT \Lowpass:7:N_Bit_Register_unit|output\(4);
\Lowpass:7:N_Bit_Register_unit|ALT_INV_output\(3) <= NOT \Lowpass:7:N_Bit_Register_unit|output\(3);
\Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(0) <= NOT \Lowpass:8:N_Bit_Register_unit|output\(0);
\Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(7) <= NOT \Lowpass:9:N_Bit_Register_unit|output\(7);
\Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(1) <= NOT \Lowpass:9:N_Bit_Register_unit|output\(1);
\Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(0) <= NOT \Lowpass:9:N_Bit_Register_unit|output\(0);
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Add6~61_sumout\ <= NOT \Add6~61_sumout\;
\ALT_INV_Add6~57_sumout\ <= NOT \Add6~57_sumout\;
\ALT_INV_Add7~109_sumout\ <= NOT \Add7~109_sumout\;
\ALT_INV_Add6~53_sumout\ <= NOT \Add6~53_sumout\;
\ALT_INV_Add7~105_sumout\ <= NOT \Add7~105_sumout\;
\ALT_INV_Add6~49_sumout\ <= NOT \Add6~49_sumout\;
\ALT_INV_Add7~101_sumout\ <= NOT \Add7~101_sumout\;
\ALT_INV_Add6~45_sumout\ <= NOT \Add6~45_sumout\;
\ALT_INV_Add7~97_sumout\ <= NOT \Add7~97_sumout\;
\ALT_INV_Add6~41_sumout\ <= NOT \Add6~41_sumout\;
\ALT_INV_Add7~93_sumout\ <= NOT \Add7~93_sumout\;
\ALT_INV_Add6~37_sumout\ <= NOT \Add6~37_sumout\;
\ALT_INV_Add7~89_sumout\ <= NOT \Add7~89_sumout\;
\ALT_INV_Add6~33_sumout\ <= NOT \Add6~33_sumout\;
\ALT_INV_Add7~85_sumout\ <= NOT \Add7~85_sumout\;
\ALT_INV_Add6~29_sumout\ <= NOT \Add6~29_sumout\;
\ALT_INV_Add7~81_sumout\ <= NOT \Add7~81_sumout\;
\ALT_INV_Add6~25_sumout\ <= NOT \Add6~25_sumout\;
\ALT_INV_Add7~77_sumout\ <= NOT \Add7~77_sumout\;
\ALT_INV_Add6~21_sumout\ <= NOT \Add6~21_sumout\;
\ALT_INV_Add7~73_sumout\ <= NOT \Add7~73_sumout\;
\ALT_INV_Add6~17_sumout\ <= NOT \Add6~17_sumout\;
\ALT_INV_Add7~69_sumout\ <= NOT \Add7~69_sumout\;
\ALT_INV_Add6~13_sumout\ <= NOT \Add6~13_sumout\;
\ALT_INV_Add7~65_sumout\ <= NOT \Add7~65_sumout\;
\ALT_INV_Add6~9_sumout\ <= NOT \Add6~9_sumout\;
\ALT_INV_Add7~61_sumout\ <= NOT \Add7~61_sumout\;
\ALT_INV_Add6~5_sumout\ <= NOT \Add6~5_sumout\;
\ALT_INV_added_value[2][15]\ <= NOT \added_value[2][15]\;
\ALT_INV_added_value[2][14]\ <= NOT \added_value[2][14]\;
\ALT_INV_added_value[2][13]\ <= NOT \added_value[2][13]\;
\ALT_INV_added_value[2][12]\ <= NOT \added_value[2][12]\;
\ALT_INV_added_value[2][11]\ <= NOT \added_value[2][11]\;
\ALT_INV_added_value[2][10]\ <= NOT \added_value[2][10]\;
\ALT_INV_added_value[2][9]\ <= NOT \added_value[2][9]\;
\ALT_INV_added_value[2][8]\ <= NOT \added_value[2][8]\;
\ALT_INV_added_value[2][7]\ <= NOT \added_value[2][7]\;
\ALT_INV_added_value[2][6]\ <= NOT \added_value[2][6]\;
\ALT_INV_added_value[2][5]\ <= NOT \added_value[2][5]\;
\ALT_INV_added_value[2][4]\ <= NOT \added_value[2][4]\;
\ALT_INV_added_value[2][3]\ <= NOT \added_value[2][3]\;
\ALT_INV_added_value[2][2]\ <= NOT \added_value[2][2]\;
\ALT_INV_added_value[2][1]\ <= NOT \added_value[2][1]\;
\ALT_INV_added_value[2][0]\ <= NOT \added_value[2][0]\;
\ALT_INV_Add11~49_sumout\ <= NOT \Add11~49_sumout\;
\ALT_INV_Add11~45_sumout\ <= NOT \Add11~45_sumout\;
\ALT_INV_Add11~41_sumout\ <= NOT \Add11~41_sumout\;
\ALT_INV_Add11~37_sumout\ <= NOT \Add11~37_sumout\;
\ALT_INV_Add11~33_sumout\ <= NOT \Add11~33_sumout\;
\ALT_INV_Add11~29_sumout\ <= NOT \Add11~29_sumout\;
\ALT_INV_Add11~25_sumout\ <= NOT \Add11~25_sumout\;
\ALT_INV_Add11~21_sumout\ <= NOT \Add11~21_sumout\;
\ALT_INV_Add11~17_sumout\ <= NOT \Add11~17_sumout\;
\ALT_INV_Add11~13_sumout\ <= NOT \Add11~13_sumout\;
\ALT_INV_Add11~9_sumout\ <= NOT \Add11~9_sumout\;
\ALT_INV_Add11~5_sumout\ <= NOT \Add11~5_sumout\;
\ALT_INV_Add11~1_sumout\ <= NOT \Add11~1_sumout\;
\ALT_INV_Add13~57_sumout\ <= NOT \Add13~57_sumout\;
\ALT_INV_Add13~53_sumout\ <= NOT \Add13~53_sumout\;
\ALT_INV_Add13~49_sumout\ <= NOT \Add13~49_sumout\;
\ALT_INV_Add13~45_sumout\ <= NOT \Add13~45_sumout\;
\ALT_INV_Add13~41_sumout\ <= NOT \Add13~41_sumout\;
\ALT_INV_Add13~37_sumout\ <= NOT \Add13~37_sumout\;
\ALT_INV_Add13~33_sumout\ <= NOT \Add13~33_sumout\;
\ALT_INV_Add14~29_sumout\ <= NOT \Add14~29_sumout\;
\ALT_INV_Add13~29_sumout\ <= NOT \Add13~29_sumout\;
\ALT_INV_Add14~25_sumout\ <= NOT \Add14~25_sumout\;
\ALT_INV_Add13~25_sumout\ <= NOT \Add13~25_sumout\;
\ALT_INV_Add14~21_sumout\ <= NOT \Add14~21_sumout\;
\ALT_INV_Add13~21_sumout\ <= NOT \Add13~21_sumout\;
\ALT_INV_Add14~17_sumout\ <= NOT \Add14~17_sumout\;
\ALT_INV_Add13~17_sumout\ <= NOT \Add13~17_sumout\;
\ALT_INV_Add14~13_sumout\ <= NOT \Add14~13_sumout\;
\ALT_INV_Add13~13_sumout\ <= NOT \Add13~13_sumout\;
\ALT_INV_Add14~9_sumout\ <= NOT \Add14~9_sumout\;
\ALT_INV_Add13~9_sumout\ <= NOT \Add13~9_sumout\;
\ALT_INV_Add14~5_sumout\ <= NOT \Add14~5_sumout\;
\ALT_INV_Add13~5_sumout\ <= NOT \Add13~5_sumout\;
\ALT_INV_Add14~1_sumout\ <= NOT \Add14~1_sumout\;
\ALT_INV_Add13~1_sumout\ <= NOT \Add13~1_sumout\;
\ALT_INV_added_value[5][15]\ <= NOT \added_value[5][15]\;
\ALT_INV_added_value[5][14]\ <= NOT \added_value[5][14]\;
\ALT_INV_added_value[5][13]\ <= NOT \added_value[5][13]\;
\ALT_INV_added_value[5][12]\ <= NOT \added_value[5][12]\;
\ALT_INV_added_value[5][11]\ <= NOT \added_value[5][11]\;
\ALT_INV_added_value[5][10]\ <= NOT \added_value[5][10]\;
\ALT_INV_added_value[5][9]\ <= NOT \added_value[5][9]\;
\ALT_INV_added_value[5][8]\ <= NOT \added_value[5][8]\;
\ALT_INV_added_value[5][7]\ <= NOT \added_value[5][7]\;
\ALT_INV_added_value[5][6]\ <= NOT \added_value[5][6]\;
\ALT_INV_added_value[5][5]\ <= NOT \added_value[5][5]\;
\ALT_INV_added_value[5][4]\ <= NOT \added_value[5][4]\;
\ALT_INV_added_value[5][3]\ <= NOT \added_value[5][3]\;
\ALT_INV_added_value[5][2]\ <= NOT \added_value[5][2]\;
\ALT_INV_added_value[5][1]\ <= NOT \added_value[5][1]\;
\ALT_INV_added_value[5][0]\ <= NOT \added_value[5][0]\;
\ALT_INV_Add17~33_sumout\ <= NOT \Add17~33_sumout\;
\ALT_INV_Add17~29_sumout\ <= NOT \Add17~29_sumout\;
\ALT_INV_Add17~25_sumout\ <= NOT \Add17~25_sumout\;
\ALT_INV_Add17~21_sumout\ <= NOT \Add17~21_sumout\;
\ALT_INV_Add17~17_sumout\ <= NOT \Add17~17_sumout\;
\ALT_INV_Add17~13_sumout\ <= NOT \Add17~13_sumout\;
\ALT_INV_Add18~37_sumout\ <= NOT \Add18~37_sumout\;
\ALT_INV_Add18~33_sumout\ <= NOT \Add18~33_sumout\;
\ALT_INV_Add18~29_sumout\ <= NOT \Add18~29_sumout\;
\ALT_INV_Add20~29_sumout\ <= NOT \Add20~29_sumout\;
\ALT_INV_Add18~25_sumout\ <= NOT \Add18~25_sumout\;
\ALT_INV_Add20~25_sumout\ <= NOT \Add20~25_sumout\;
\ALT_INV_Add18~21_sumout\ <= NOT \Add18~21_sumout\;
\ALT_INV_Add20~21_sumout\ <= NOT \Add20~21_sumout\;
\ALT_INV_Add18~17_sumout\ <= NOT \Add18~17_sumout\;
\ALT_INV_Add20~17_sumout\ <= NOT \Add20~17_sumout\;
\ALT_INV_Add18~13_sumout\ <= NOT \Add18~13_sumout\;
\ALT_INV_Add20~13_sumout\ <= NOT \Add20~13_sumout\;
\ALT_INV_Add18~9_sumout\ <= NOT \Add18~9_sumout\;
\ALT_INV_Add20~9_sumout\ <= NOT \Add20~9_sumout\;
\ALT_INV_Add18~5_sumout\ <= NOT \Add18~5_sumout\;
\ALT_INV_Add20~5_sumout\ <= NOT \Add20~5_sumout\;
\ALT_INV_Add18~1_sumout\ <= NOT \Add18~1_sumout\;
\ALT_INV_Add20~1_sumout\ <= NOT \Add20~1_sumout\;
\ALT_INV_Add17~9_sumout\ <= NOT \Add17~9_sumout\;
\ALT_INV_Add17~5_sumout\ <= NOT \Add17~5_sumout\;
\ALT_INV_added_value[8][15]\ <= NOT \added_value[8][15]\;
\ALT_INV_added_value[8][14]\ <= NOT \added_value[8][14]\;
\ALT_INV_added_value[8][13]\ <= NOT \added_value[8][13]\;
\ALT_INV_added_value[8][12]\ <= NOT \added_value[8][12]\;
\ALT_INV_added_value[8][11]\ <= NOT \added_value[8][11]\;
\ALT_INV_added_value[8][10]\ <= NOT \added_value[8][10]\;
\ALT_INV_added_value[8][9]\ <= NOT \added_value[8][9]\;
\ALT_INV_added_value[8][8]\ <= NOT \added_value[8][8]\;
\ALT_INV_added_value[8][7]\ <= NOT \added_value[8][7]\;
\ALT_INV_added_value[8][6]\ <= NOT \added_value[8][6]\;
\ALT_INV_added_value[8][5]\ <= NOT \added_value[8][5]\;
\ALT_INV_added_value[8][4]\ <= NOT \added_value[8][4]\;
\ALT_INV_added_value[8][3]\ <= NOT \added_value[8][3]\;
\ALT_INV_added_value[8][2]\ <= NOT \added_value[8][2]\;
\ALT_INV_added_value[8][1]\ <= NOT \added_value[8][1]\;
\ALT_INV_added_value[8][0]\ <= NOT \added_value[8][0]\;
\ALT_INV_Add17~1_sumout\ <= NOT \Add17~1_sumout\;

-- Location: IOOBUF_X89_Y8_N5
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~1_sumout\,
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X89_Y4_N62
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~5_sumout\,
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X89_Y6_N22
\output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~9_sumout\,
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X89_Y4_N45
\output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~13_sumout\,
	devoe => ww_devoe,
	o => ww_output(3));

-- Location: IOOBUF_X86_Y0_N19
\output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~17_sumout\,
	devoe => ww_devoe,
	o => ww_output(4));

-- Location: IOOBUF_X89_Y4_N96
\output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~21_sumout\,
	devoe => ww_devoe,
	o => ww_output(5));

-- Location: IOOBUF_X88_Y0_N20
\output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~25_sumout\,
	devoe => ww_devoe,
	o => ww_output(6));

-- Location: IOOBUF_X86_Y0_N53
\output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~29_sumout\,
	devoe => ww_devoe,
	o => ww_output(7));

-- Location: IOOBUF_X89_Y8_N56
\output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~33_sumout\,
	devoe => ww_devoe,
	o => ww_output(8));

-- Location: IOOBUF_X89_Y8_N22
\output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~37_sumout\,
	devoe => ww_devoe,
	o => ww_output(9));

-- Location: IOOBUF_X89_Y4_N79
\output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~41_sumout\,
	devoe => ww_devoe,
	o => ww_output(10));

-- Location: IOOBUF_X88_Y0_N3
\output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~45_sumout\,
	devoe => ww_devoe,
	o => ww_output(11));

-- Location: IOOBUF_X86_Y0_N36
\output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~49_sumout\,
	devoe => ww_devoe,
	o => ww_output(12));

-- Location: IOOBUF_X89_Y8_N39
\output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~53_sumout\,
	devoe => ww_devoe,
	o => ww_output(13));

-- Location: IOOBUF_X88_Y0_N37
\output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~57_sumout\,
	devoe => ww_devoe,
	o => ww_output(14));

-- Location: IOOBUF_X88_Y0_N54
\output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add19~61_sumout\,
	devoe => ww_devoe,
	o => ww_output(15));

-- Location: IOIBUF_X89_Y25_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y6_N4
\input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X84_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X82_Y4_N50
\Lowpass:0:N_Bit_Register_unit|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \input[0]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:0:N_Bit_Register_unit|output\(0));

-- Location: MLABCELL_X82_Y4_N45
\Lowpass:1:N_Bit_Register_unit|output[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:1:N_Bit_Register_unit|output[0]~feeder_combout\ = ( \Lowpass:0:N_Bit_Register_unit|output\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(0),
	combout => \Lowpass:1:N_Bit_Register_unit|output[0]~feeder_combout\);

-- Location: FF_X82_Y4_N47
\Lowpass:1:N_Bit_Register_unit|output[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:1:N_Bit_Register_unit|output[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:1:N_Bit_Register_unit|output[0]~DUPLICATE_q\);

-- Location: FF_X82_Y4_N44
\Lowpass:2:N_Bit_Register_unit|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:1:N_Bit_Register_unit|output[0]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:2:N_Bit_Register_unit|output\(0));

-- Location: FF_X82_Y4_N11
\Lowpass:3:N_Bit_Register_unit|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:2:N_Bit_Register_unit|output\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:3:N_Bit_Register_unit|output\(0));

-- Location: FF_X82_Y4_N20
\Lowpass:4:N_Bit_Register_unit|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:3:N_Bit_Register_unit|output\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:4:N_Bit_Register_unit|output\(0));

-- Location: MLABCELL_X82_Y4_N51
\Lowpass:5:N_Bit_Register_unit|output[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:5:N_Bit_Register_unit|output[0]~feeder_combout\ = ( \Lowpass:4:N_Bit_Register_unit|output\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(0),
	combout => \Lowpass:5:N_Bit_Register_unit|output[0]~feeder_combout\);

-- Location: FF_X82_Y4_N53
\Lowpass:5:N_Bit_Register_unit|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:5:N_Bit_Register_unit|output[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:5:N_Bit_Register_unit|output\(0));

-- Location: FF_X82_Y4_N55
\Lowpass:6:N_Bit_Register_unit|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:5:N_Bit_Register_unit|output\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:6:N_Bit_Register_unit|output\(0));

-- Location: LABCELL_X83_Y4_N48
\Lowpass:7:N_Bit_Register_unit|output[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:7:N_Bit_Register_unit|output[0]~feeder_combout\ = ( \Lowpass:6:N_Bit_Register_unit|output\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(0),
	combout => \Lowpass:7:N_Bit_Register_unit|output[0]~feeder_combout\);

-- Location: FF_X83_Y4_N50
\Lowpass:7:N_Bit_Register_unit|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:7:N_Bit_Register_unit|output[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:7:N_Bit_Register_unit|output\(0));

-- Location: FF_X82_Y4_N41
\Lowpass:8:N_Bit_Register_unit|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:7:N_Bit_Register_unit|output\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:8:N_Bit_Register_unit|output\(0));

-- Location: MLABCELL_X84_Y4_N0
\Add17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~1_sumout\ = SUM(( !\Lowpass:8:N_Bit_Register_unit|output\(0) ) + ( VCC ) + ( !VCC ))
-- \Add17~2\ = CARRY(( !\Lowpass:8:N_Bit_Register_unit|output\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(0),
	cin => GND,
	sumout => \Add17~1_sumout\,
	cout => \Add17~2\);

-- Location: FF_X83_Y4_N49
\Lowpass:7:N_Bit_Register_unit|output[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:7:N_Bit_Register_unit|output[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:7:N_Bit_Register_unit|output[0]~DUPLICATE_q\);

-- Location: IOIBUF_X89_Y6_N55
\input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: FF_X82_Y3_N4
\Lowpass:0:N_Bit_Register_unit|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \input[1]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:0:N_Bit_Register_unit|output\(1));

-- Location: LABCELL_X83_Y3_N36
\Lowpass:1:N_Bit_Register_unit|output[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:1:N_Bit_Register_unit|output[1]~feeder_combout\ = ( \Lowpass:0:N_Bit_Register_unit|output\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(1),
	combout => \Lowpass:1:N_Bit_Register_unit|output[1]~feeder_combout\);

-- Location: FF_X83_Y3_N38
\Lowpass:1:N_Bit_Register_unit|output[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:1:N_Bit_Register_unit|output[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:1:N_Bit_Register_unit|output[1]~DUPLICATE_q\);

-- Location: FF_X83_Y3_N58
\Lowpass:2:N_Bit_Register_unit|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:1:N_Bit_Register_unit|output[1]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:2:N_Bit_Register_unit|output\(1));

-- Location: LABCELL_X83_Y3_N9
\Lowpass:3:N_Bit_Register_unit|output[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:3:N_Bit_Register_unit|output[1]~feeder_combout\ = ( \Lowpass:2:N_Bit_Register_unit|output\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(1),
	combout => \Lowpass:3:N_Bit_Register_unit|output[1]~feeder_combout\);

-- Location: FF_X83_Y3_N10
\Lowpass:3:N_Bit_Register_unit|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:3:N_Bit_Register_unit|output[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:3:N_Bit_Register_unit|output\(1));

-- Location: FF_X84_Y4_N5
\Lowpass:4:N_Bit_Register_unit|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:3:N_Bit_Register_unit|output\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:4:N_Bit_Register_unit|output\(1));

-- Location: LABCELL_X85_Y4_N54
\Lowpass:5:N_Bit_Register_unit|output[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:5:N_Bit_Register_unit|output[1]~feeder_combout\ = ( \Lowpass:4:N_Bit_Register_unit|output\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(1),
	combout => \Lowpass:5:N_Bit_Register_unit|output[1]~feeder_combout\);

-- Location: FF_X85_Y4_N56
\Lowpass:5:N_Bit_Register_unit|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:5:N_Bit_Register_unit|output[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:5:N_Bit_Register_unit|output\(1));

-- Location: FF_X85_Y4_N59
\Lowpass:6:N_Bit_Register_unit|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:5:N_Bit_Register_unit|output\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:6:N_Bit_Register_unit|output\(1));

-- Location: FF_X84_Y4_N32
\Lowpass:7:N_Bit_Register_unit|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:6:N_Bit_Register_unit|output\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:7:N_Bit_Register_unit|output\(1));

-- Location: IOIBUF_X82_Y0_N41
\input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: FF_X81_Y3_N47
\Lowpass:0:N_Bit_Register_unit|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \input[2]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:0:N_Bit_Register_unit|output\(2));

-- Location: FF_X81_Y3_N58
\Lowpass:1:N_Bit_Register_unit|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:0:N_Bit_Register_unit|output\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:1:N_Bit_Register_unit|output\(2));

-- Location: LABCELL_X81_Y3_N48
\Lowpass:2:N_Bit_Register_unit|output[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:2:N_Bit_Register_unit|output[2]~feeder_combout\ = ( \Lowpass:1:N_Bit_Register_unit|output\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:1:N_Bit_Register_unit|ALT_INV_output\(2),
	combout => \Lowpass:2:N_Bit_Register_unit|output[2]~feeder_combout\);

-- Location: FF_X81_Y3_N50
\Lowpass:2:N_Bit_Register_unit|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:2:N_Bit_Register_unit|output[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:2:N_Bit_Register_unit|output\(2));

-- Location: FF_X81_Y3_N38
\Lowpass:3:N_Bit_Register_unit|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:2:N_Bit_Register_unit|output\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:3:N_Bit_Register_unit|output\(2));

-- Location: MLABCELL_X82_Y3_N57
\Lowpass:4:N_Bit_Register_unit|output[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:4:N_Bit_Register_unit|output[2]~feeder_combout\ = ( \Lowpass:3:N_Bit_Register_unit|output\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(2),
	combout => \Lowpass:4:N_Bit_Register_unit|output[2]~feeder_combout\);

-- Location: FF_X82_Y3_N58
\Lowpass:4:N_Bit_Register_unit|output[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:4:N_Bit_Register_unit|output[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:4:N_Bit_Register_unit|output[2]~DUPLICATE_q\);

-- Location: FF_X82_Y4_N5
\Lowpass:5:N_Bit_Register_unit|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:4:N_Bit_Register_unit|output[2]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:5:N_Bit_Register_unit|output\(2));

-- Location: FF_X82_Y4_N32
\Lowpass:6:N_Bit_Register_unit|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:5:N_Bit_Register_unit|output\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:6:N_Bit_Register_unit|output\(2));

-- Location: FF_X83_Y4_N32
\Lowpass:7:N_Bit_Register_unit|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:6:N_Bit_Register_unit|output\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:7:N_Bit_Register_unit|output\(2));

-- Location: IOIBUF_X84_Y0_N1
\input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LABCELL_X83_Y3_N39
\Lowpass:0:N_Bit_Register_unit|output[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:0:N_Bit_Register_unit|output[3]~feeder_combout\ = ( \input[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_input[3]~input_o\,
	combout => \Lowpass:0:N_Bit_Register_unit|output[3]~feeder_combout\);

-- Location: FF_X83_Y3_N41
\Lowpass:0:N_Bit_Register_unit|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:0:N_Bit_Register_unit|output[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:0:N_Bit_Register_unit|output\(3));

-- Location: FF_X83_Y3_N32
\Lowpass:1:N_Bit_Register_unit|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:0:N_Bit_Register_unit|output\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:1:N_Bit_Register_unit|output\(3));

-- Location: MLABCELL_X82_Y3_N45
\Lowpass:2:N_Bit_Register_unit|output[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:2:N_Bit_Register_unit|output[3]~feeder_combout\ = ( \Lowpass:1:N_Bit_Register_unit|output\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:1:N_Bit_Register_unit|ALT_INV_output\(3),
	combout => \Lowpass:2:N_Bit_Register_unit|output[3]~feeder_combout\);

-- Location: FF_X82_Y3_N47
\Lowpass:2:N_Bit_Register_unit|output[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:2:N_Bit_Register_unit|output[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:2:N_Bit_Register_unit|output[3]~DUPLICATE_q\);

-- Location: FF_X82_Y3_N44
\Lowpass:3:N_Bit_Register_unit|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:2:N_Bit_Register_unit|output[3]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:3:N_Bit_Register_unit|output\(3));

-- Location: LABCELL_X81_Y4_N57
\Lowpass:4:N_Bit_Register_unit|output[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:4:N_Bit_Register_unit|output[3]~feeder_combout\ = ( \Lowpass:3:N_Bit_Register_unit|output\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(3),
	combout => \Lowpass:4:N_Bit_Register_unit|output[3]~feeder_combout\);

-- Location: FF_X81_Y4_N58
\Lowpass:4:N_Bit_Register_unit|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:4:N_Bit_Register_unit|output[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:4:N_Bit_Register_unit|output\(3));

-- Location: LABCELL_X81_Y4_N39
\Lowpass:5:N_Bit_Register_unit|output[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:5:N_Bit_Register_unit|output[3]~feeder_combout\ = ( \Lowpass:4:N_Bit_Register_unit|output\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(3),
	combout => \Lowpass:5:N_Bit_Register_unit|output[3]~feeder_combout\);

-- Location: FF_X81_Y4_N40
\Lowpass:5:N_Bit_Register_unit|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:5:N_Bit_Register_unit|output[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:5:N_Bit_Register_unit|output\(3));

-- Location: FF_X82_Y4_N38
\Lowpass:6:N_Bit_Register_unit|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:5:N_Bit_Register_unit|output\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:6:N_Bit_Register_unit|output\(3));

-- Location: FF_X82_Y4_N29
\Lowpass:7:N_Bit_Register_unit|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:6:N_Bit_Register_unit|output\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:7:N_Bit_Register_unit|output\(3));

-- Location: IOIBUF_X84_Y0_N35
\input[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: MLABCELL_X82_Y3_N30
\Lowpass:0:N_Bit_Register_unit|output[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:0:N_Bit_Register_unit|output[4]~feeder_combout\ = ( \input[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_input[4]~input_o\,
	combout => \Lowpass:0:N_Bit_Register_unit|output[4]~feeder_combout\);

-- Location: FF_X82_Y3_N32
\Lowpass:0:N_Bit_Register_unit|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:0:N_Bit_Register_unit|output[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:0:N_Bit_Register_unit|output\(4));

-- Location: FF_X82_Y3_N29
\Lowpass:1:N_Bit_Register_unit|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:0:N_Bit_Register_unit|output\(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:1:N_Bit_Register_unit|output\(4));

-- Location: FF_X82_Y3_N8
\Lowpass:2:N_Bit_Register_unit|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:1:N_Bit_Register_unit|output\(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:2:N_Bit_Register_unit|output\(4));

-- Location: FF_X82_Y3_N53
\Lowpass:3:N_Bit_Register_unit|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:2:N_Bit_Register_unit|output\(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:3:N_Bit_Register_unit|output\(4));

-- Location: FF_X82_Y3_N38
\Lowpass:4:N_Bit_Register_unit|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:3:N_Bit_Register_unit|output\(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:4:N_Bit_Register_unit|output\(4));

-- Location: FF_X82_Y3_N40
\Lowpass:5:N_Bit_Register_unit|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:4:N_Bit_Register_unit|output\(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:5:N_Bit_Register_unit|output\(4));

-- Location: LABCELL_X83_Y3_N3
\Lowpass:6:N_Bit_Register_unit|output[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:6:N_Bit_Register_unit|output[4]~feeder_combout\ = ( \Lowpass:5:N_Bit_Register_unit|output\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(4),
	combout => \Lowpass:6:N_Bit_Register_unit|output[4]~feeder_combout\);

-- Location: FF_X83_Y3_N4
\Lowpass:6:N_Bit_Register_unit|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:6:N_Bit_Register_unit|output[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:6:N_Bit_Register_unit|output\(4));

-- Location: LABCELL_X83_Y4_N51
\Lowpass:7:N_Bit_Register_unit|output[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:7:N_Bit_Register_unit|output[4]~feeder_combout\ = ( \Lowpass:6:N_Bit_Register_unit|output\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(4),
	combout => \Lowpass:7:N_Bit_Register_unit|output[4]~feeder_combout\);

-- Location: FF_X83_Y4_N53
\Lowpass:7:N_Bit_Register_unit|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:7:N_Bit_Register_unit|output[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:7:N_Bit_Register_unit|output\(4));

-- Location: IOIBUF_X84_Y0_N52
\input[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: FF_X81_Y3_N41
\Lowpass:0:N_Bit_Register_unit|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \input[5]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:0:N_Bit_Register_unit|output\(5));

-- Location: LABCELL_X81_Y3_N51
\Lowpass:1:N_Bit_Register_unit|output[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:1:N_Bit_Register_unit|output[5]~feeder_combout\ = ( \Lowpass:0:N_Bit_Register_unit|output\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(5),
	combout => \Lowpass:1:N_Bit_Register_unit|output[5]~feeder_combout\);

-- Location: FF_X81_Y3_N53
\Lowpass:1:N_Bit_Register_unit|output[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:1:N_Bit_Register_unit|output[5]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:1:N_Bit_Register_unit|output[5]~DUPLICATE_q\);

-- Location: FF_X81_Y3_N55
\Lowpass:2:N_Bit_Register_unit|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:1:N_Bit_Register_unit|output[5]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:2:N_Bit_Register_unit|output\(5));

-- Location: LABCELL_X81_Y4_N51
\Lowpass:3:N_Bit_Register_unit|output[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:3:N_Bit_Register_unit|output[5]~feeder_combout\ = ( \Lowpass:2:N_Bit_Register_unit|output\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(5),
	combout => \Lowpass:3:N_Bit_Register_unit|output[5]~feeder_combout\);

-- Location: FF_X81_Y4_N53
\Lowpass:3:N_Bit_Register_unit|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:3:N_Bit_Register_unit|output[5]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:3:N_Bit_Register_unit|output\(5));

-- Location: FF_X81_Y4_N25
\Lowpass:4:N_Bit_Register_unit|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:3:N_Bit_Register_unit|output\(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:4:N_Bit_Register_unit|output\(5));

-- Location: LABCELL_X81_Y4_N42
\Lowpass:5:N_Bit_Register_unit|output[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:5:N_Bit_Register_unit|output[5]~feeder_combout\ = ( \Lowpass:4:N_Bit_Register_unit|output\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(5),
	combout => \Lowpass:5:N_Bit_Register_unit|output[5]~feeder_combout\);

-- Location: FF_X81_Y4_N43
\Lowpass:5:N_Bit_Register_unit|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:5:N_Bit_Register_unit|output[5]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:5:N_Bit_Register_unit|output\(5));

-- Location: FF_X82_Y4_N35
\Lowpass:6:N_Bit_Register_unit|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:5:N_Bit_Register_unit|output\(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:6:N_Bit_Register_unit|output\(5));

-- Location: FF_X82_Y4_N58
\Lowpass:7:N_Bit_Register_unit|output[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:6:N_Bit_Register_unit|output\(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:7:N_Bit_Register_unit|output[5]~DUPLICATE_q\);

-- Location: IOIBUF_X82_Y0_N75
\input[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: MLABCELL_X82_Y3_N33
\Lowpass:0:N_Bit_Register_unit|output[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:0:N_Bit_Register_unit|output[6]~feeder_combout\ = ( \input[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_input[6]~input_o\,
	combout => \Lowpass:0:N_Bit_Register_unit|output[6]~feeder_combout\);

-- Location: FF_X82_Y3_N35
\Lowpass:0:N_Bit_Register_unit|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:0:N_Bit_Register_unit|output[6]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:0:N_Bit_Register_unit|output\(6));

-- Location: FF_X82_Y3_N17
\Lowpass:1:N_Bit_Register_unit|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:0:N_Bit_Register_unit|output\(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:1:N_Bit_Register_unit|output\(6));

-- Location: LABCELL_X83_Y3_N24
\Lowpass:2:N_Bit_Register_unit|output[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:2:N_Bit_Register_unit|output[6]~feeder_combout\ = ( \Lowpass:1:N_Bit_Register_unit|output\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:1:N_Bit_Register_unit|ALT_INV_output\(6),
	combout => \Lowpass:2:N_Bit_Register_unit|output[6]~feeder_combout\);

-- Location: FF_X83_Y3_N25
\Lowpass:2:N_Bit_Register_unit|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:2:N_Bit_Register_unit|output[6]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:2:N_Bit_Register_unit|output\(6));

-- Location: LABCELL_X83_Y3_N51
\Lowpass:3:N_Bit_Register_unit|output[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:3:N_Bit_Register_unit|output[6]~feeder_combout\ = ( \Lowpass:2:N_Bit_Register_unit|output\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(6),
	combout => \Lowpass:3:N_Bit_Register_unit|output[6]~feeder_combout\);

-- Location: FF_X83_Y3_N52
\Lowpass:3:N_Bit_Register_unit|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:3:N_Bit_Register_unit|output[6]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:3:N_Bit_Register_unit|output\(6));

-- Location: MLABCELL_X84_Y3_N18
\Lowpass:4:N_Bit_Register_unit|output[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:4:N_Bit_Register_unit|output[6]~feeder_combout\ = ( \Lowpass:3:N_Bit_Register_unit|output\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(6),
	combout => \Lowpass:4:N_Bit_Register_unit|output[6]~feeder_combout\);

-- Location: FF_X84_Y3_N19
\Lowpass:4:N_Bit_Register_unit|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:4:N_Bit_Register_unit|output[6]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:4:N_Bit_Register_unit|output\(6));

-- Location: MLABCELL_X84_Y3_N48
\Lowpass:5:N_Bit_Register_unit|output[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:5:N_Bit_Register_unit|output[6]~feeder_combout\ = ( \Lowpass:4:N_Bit_Register_unit|output\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(6),
	combout => \Lowpass:5:N_Bit_Register_unit|output[6]~feeder_combout\);

-- Location: FF_X84_Y3_N49
\Lowpass:5:N_Bit_Register_unit|output[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:5:N_Bit_Register_unit|output[6]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:5:N_Bit_Register_unit|output[6]~DUPLICATE_q\);

-- Location: FF_X84_Y4_N20
\Lowpass:6:N_Bit_Register_unit|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:5:N_Bit_Register_unit|output[6]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:6:N_Bit_Register_unit|output\(6));

-- Location: FF_X84_Y4_N26
\Lowpass:7:N_Bit_Register_unit|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:6:N_Bit_Register_unit|output\(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:7:N_Bit_Register_unit|output\(6));

-- Location: IOIBUF_X89_Y6_N38
\input[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: FF_X81_Y4_N32
\Lowpass:0:N_Bit_Register_unit|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \input[7]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:0:N_Bit_Register_unit|output\(7));

-- Location: FF_X81_Y4_N35
\Lowpass:1:N_Bit_Register_unit|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:0:N_Bit_Register_unit|output\(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:1:N_Bit_Register_unit|output\(7));

-- Location: LABCELL_X80_Y4_N36
\Lowpass:2:N_Bit_Register_unit|output[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:2:N_Bit_Register_unit|output[7]~feeder_combout\ = ( \Lowpass:1:N_Bit_Register_unit|output\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:1:N_Bit_Register_unit|ALT_INV_output\(7),
	combout => \Lowpass:2:N_Bit_Register_unit|output[7]~feeder_combout\);

-- Location: FF_X80_Y4_N37
\Lowpass:2:N_Bit_Register_unit|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:2:N_Bit_Register_unit|output[7]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:2:N_Bit_Register_unit|output\(7));

-- Location: LABCELL_X81_Y4_N21
\Lowpass:3:N_Bit_Register_unit|output[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:3:N_Bit_Register_unit|output[7]~feeder_combout\ = ( \Lowpass:2:N_Bit_Register_unit|output\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(7),
	combout => \Lowpass:3:N_Bit_Register_unit|output[7]~feeder_combout\);

-- Location: FF_X81_Y4_N22
\Lowpass:3:N_Bit_Register_unit|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:3:N_Bit_Register_unit|output[7]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:3:N_Bit_Register_unit|output\(7));

-- Location: FF_X82_Y4_N2
\Lowpass:4:N_Bit_Register_unit|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:3:N_Bit_Register_unit|output\(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:4:N_Bit_Register_unit|output\(7));

-- Location: LABCELL_X83_Y4_N57
\Lowpass:5:N_Bit_Register_unit|output[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:5:N_Bit_Register_unit|output[7]~feeder_combout\ = ( \Lowpass:4:N_Bit_Register_unit|output\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:4:N_Bit_Register_unit|ALT_INV_output\(7),
	combout => \Lowpass:5:N_Bit_Register_unit|output[7]~feeder_combout\);

-- Location: FF_X83_Y4_N58
\Lowpass:5:N_Bit_Register_unit|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:5:N_Bit_Register_unit|output[7]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:5:N_Bit_Register_unit|output\(7));

-- Location: FF_X84_Y4_N58
\Lowpass:6:N_Bit_Register_unit|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:5:N_Bit_Register_unit|output\(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:6:N_Bit_Register_unit|output\(7));

-- Location: MLABCELL_X84_Y4_N54
\Lowpass:7:N_Bit_Register_unit|output[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:7:N_Bit_Register_unit|output[7]~feeder_combout\ = ( \Lowpass:6:N_Bit_Register_unit|output\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(7),
	combout => \Lowpass:7:N_Bit_Register_unit|output[7]~feeder_combout\);

-- Location: FF_X84_Y4_N55
\Lowpass:7:N_Bit_Register_unit|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:7:N_Bit_Register_unit|output[7]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:7:N_Bit_Register_unit|output\(7));

-- Location: FF_X82_Y3_N59
\Lowpass:4:N_Bit_Register_unit|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:4:N_Bit_Register_unit|output[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:4:N_Bit_Register_unit|output\(2));

-- Location: FF_X82_Y3_N37
\Lowpass:4:N_Bit_Register_unit|output[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:3:N_Bit_Register_unit|output\(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:4:N_Bit_Register_unit|output[4]~DUPLICATE_q\);

-- Location: FF_X82_Y4_N46
\Lowpass:1:N_Bit_Register_unit|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:1:N_Bit_Register_unit|output[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:1:N_Bit_Register_unit|output\(0));

-- Location: FF_X83_Y3_N37
\Lowpass:1:N_Bit_Register_unit|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:1:N_Bit_Register_unit|output[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:1:N_Bit_Register_unit|output\(1));

-- Location: FF_X81_Y3_N52
\Lowpass:1:N_Bit_Register_unit|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:1:N_Bit_Register_unit|output[5]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:1:N_Bit_Register_unit|output\(5));

-- Location: MLABCELL_X82_Y3_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\Lowpass:0:N_Bit_Register_unit|output\(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\Lowpass:0:N_Bit_Register_unit|output\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X85_Y6_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \Add1~1_sumout\ ) + ( \input[0]~input_o\ ) + ( !VCC ))
-- \Add3~2\ = CARRY(( \Add1~1_sumout\ ) + ( \input[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_input[0]~input_o\,
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: MLABCELL_X82_Y3_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\Lowpass:0:N_Bit_Register_unit|output\(1) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\Lowpass:0:N_Bit_Register_unit|output\(1) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X85_Y6_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \Add1~5_sumout\ ) + ( \input[1]~input_o\ ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( \Add1~5_sumout\ ) + ( \input[1]~input_o\ ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~5_sumout\,
	dataf => \ALT_INV_input[1]~input_o\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: MLABCELL_X84_Y6_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \input[2]~input_o\ ) + ( \input[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \input[2]~input_o\ ) + ( \input[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[2]~input_o\,
	datac => \ALT_INV_input[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X82_Y3_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\Lowpass:0:N_Bit_Register_unit|output\(2) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\Lowpass:0:N_Bit_Register_unit|output\(2) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X85_Y6_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \Add0~1_sumout\ ) + ( \Add1~9_sumout\ ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \Add0~1_sumout\ ) + ( \Add1~9_sumout\ ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_Add1~9_sumout\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: MLABCELL_X82_Y3_N9
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\Lowpass:0:N_Bit_Register_unit|output\(3) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~18\ = CARRY(( !\Lowpass:0:N_Bit_Register_unit|output\(3) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(3),
	cin => \Add1~10\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: MLABCELL_X84_Y6_N30
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \Add1~1_sumout\ ) + ( \Add1~17_sumout\ ) + ( !VCC ))
-- \Add2~2\ = CARRY(( \Add1~1_sumout\ ) + ( \Add1~17_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: MLABCELL_X84_Y6_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \input[3]~input_o\ ) + ( \input[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \input[3]~input_o\ ) + ( \input[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[3]~input_o\,
	datac => \ALT_INV_input[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X85_Y6_N9
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \Add2~1_sumout\ ) + ( \Add0~5_sumout\ ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( \Add2~1_sumout\ ) + ( \Add0~5_sumout\ ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~1_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: MLABCELL_X82_Y3_N12
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\Lowpass:0:N_Bit_Register_unit|output\(4) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\Lowpass:0:N_Bit_Register_unit|output\(4) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(4),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: MLABCELL_X84_Y6_N33
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \Add1~5_sumout\ ) + ( \Add1~21_sumout\ ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( \Add1~5_sumout\ ) + ( \Add1~21_sumout\ ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~21_sumout\,
	datad => \ALT_INV_Add1~5_sumout\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: MLABCELL_X84_Y6_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \input[4]~input_o\ ) + ( \input[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \input[4]~input_o\ ) + ( \input[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[2]~input_o\,
	datac => \ALT_INV_input[4]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X85_Y6_N12
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \Add2~5_sumout\ ) + ( \Add0~9_sumout\ ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( \Add2~5_sumout\ ) + ( \Add0~9_sumout\ ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~5_sumout\,
	datac => \ALT_INV_Add0~9_sumout\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: MLABCELL_X82_Y3_N15
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\Lowpass:0:N_Bit_Register_unit|output\(5) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\Lowpass:0:N_Bit_Register_unit|output\(5) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(5),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: MLABCELL_X84_Y6_N36
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \Add1~25_sumout\ ) + ( \Add1~9_sumout\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( \Add1~25_sumout\ ) + ( \Add1~9_sumout\ ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Add1~25_sumout\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: MLABCELL_X84_Y6_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \input[5]~input_o\ ) + ( \input[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \input[5]~input_o\ ) + ( \input[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[3]~input_o\,
	datac => \ALT_INV_input[5]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X85_Y6_N15
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \Add2~9_sumout\ ) + ( \Add0~13_sumout\ ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( \Add2~9_sumout\ ) + ( \Add0~13_sumout\ ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~9_sumout\,
	datac => \ALT_INV_Add0~13_sumout\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: MLABCELL_X84_Y6_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \input[6]~input_o\ ) + ( \input[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \input[6]~input_o\ ) + ( \input[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[6]~input_o\,
	datac => \ALT_INV_input[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X82_Y3_N18
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\Lowpass:0:N_Bit_Register_unit|output\(6) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\Lowpass:0:N_Bit_Register_unit|output\(6) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(6),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: MLABCELL_X84_Y6_N39
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \Add1~29_sumout\ ) + ( \Add1~17_sumout\ ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \Add1~29_sumout\ ) + ( \Add1~17_sumout\ ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~29_sumout\,
	dataf => \ALT_INV_Add1~17_sumout\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X85_Y6_N18
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( \Add2~13_sumout\ ) + ( \Add0~17_sumout\ ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( \Add2~13_sumout\ ) + ( \Add0~17_sumout\ ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_Add2~13_sumout\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: MLABCELL_X82_Y3_N21
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\Lowpass:0:N_Bit_Register_unit|output\(7) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\Lowpass:0:N_Bit_Register_unit|output\(7) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: MLABCELL_X84_Y6_N42
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \Add1~21_sumout\ ) + ( \Add1~33_sumout\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( \Add1~21_sumout\ ) + ( \Add1~33_sumout\ ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~21_sumout\,
	dataf => \ALT_INV_Add1~33_sumout\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X84_Y6_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \input[7]~input_o\ ) + ( \input[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \input[7]~input_o\ ) + ( \input[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[7]~input_o\,
	datac => \ALT_INV_input[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X85_Y6_N21
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( \Add2~17_sumout\ ) + ( \Add0~21_sumout\ ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( \Add2~17_sumout\ ) + ( \Add0~21_sumout\ ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~17_sumout\,
	datac => \ALT_INV_Add0~21_sumout\,
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: MLABCELL_X84_Y6_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \input[7]~input_o\ ) + ( \input[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \input[7]~input_o\ ) + ( \input[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[6]~input_o\,
	datac => \ALT_INV_input[7]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X82_Y3_N24
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\Lowpass:0:N_Bit_Register_unit|output\(7) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:0:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add1~34\,
	sumout => \Add1~13_sumout\);

-- Location: MLABCELL_X84_Y6_N45
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \Add1~25_sumout\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \Add1~13_sumout\ ) + ( \Add1~25_sumout\ ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~25_sumout\,
	datac => \ALT_INV_Add1~13_sumout\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X85_Y6_N24
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( \Add2~21_sumout\ ) + ( \Add0~25_sumout\ ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( \Add2~21_sumout\ ) + ( \Add0~25_sumout\ ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_Add2~21_sumout\,
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: MLABCELL_X84_Y6_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( GND ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

-- Location: MLABCELL_X84_Y6_N48
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \Add1~29_sumout\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( \Add1~13_sumout\ ) + ( \Add1~29_sumout\ ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_Add1~13_sumout\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: LABCELL_X85_Y6_N27
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( \Add2~25_sumout\ ) + ( \Add0~29_sumout\ ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( \Add2~25_sumout\ ) + ( \Add0~29_sumout\ ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_Add2~25_sumout\,
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: MLABCELL_X84_Y6_N51
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \Add1~33_sumout\ ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( \Add1~13_sumout\ ) + ( \Add1~33_sumout\ ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~33_sumout\,
	datad => \ALT_INV_Add1~13_sumout\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: LABCELL_X85_Y6_N30
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( \Add2~29_sumout\ ) + ( \input[7]~input_o\ ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( \Add2~29_sumout\ ) + ( \input[7]~input_o\ ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[7]~input_o\,
	datac => \ALT_INV_Add2~29_sumout\,
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: MLABCELL_X84_Y6_N54
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \Add1~13_sumout\ ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( \Add1~13_sumout\ ) + ( \Add1~13_sumout\ ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~13_sumout\,
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: LABCELL_X85_Y6_N33
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( \Add2~33_sumout\ ) + ( \input[7]~input_o\ ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( \Add2~33_sumout\ ) + ( \input[7]~input_o\ ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~33_sumout\,
	datac => \ALT_INV_input[7]~input_o\,
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: MLABCELL_X84_Y6_N57
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( GND ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\);

-- Location: LABCELL_X85_Y6_N36
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( \Add2~37_sumout\ ) + ( \input[7]~input_o\ ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( \Add2~37_sumout\ ) + ( \input[7]~input_o\ ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~37_sumout\,
	dataf => \ALT_INV_input[7]~input_o\,
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: LABCELL_X85_Y6_N39
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \input[7]~input_o\ ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( \Add1~13_sumout\ ) + ( \input[7]~input_o\ ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~13_sumout\,
	dataf => \ALT_INV_input[7]~input_o\,
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: LABCELL_X85_Y6_N42
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( \Add1~13_sumout\ ) + ( \input[7]~input_o\ ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~13_sumout\,
	dataf => \ALT_INV_input[7]~input_o\,
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\);

-- Location: DSP_X86_Y6_N0
\Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~mac_AX_bus\,
	ay => \Mult0~mac_AY_bus\,
	bx => \Mult0~mac_BX_bus\,
	by => \Mult0~mac_BY_bus\,
	resulta => \Mult0~mac_RESULTA_bus\);

-- Location: MLABCELL_X84_Y5_N0
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( \added_value[2][0]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(0) ) + ( !VCC ))
-- \Add6~2\ = CARRY(( \added_value[2][0]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_added_value[2][0]\,
	datac => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(0),
	cin => GND,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

-- Location: LABCELL_X80_Y3_N0
\Add7~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~61_sumout\ = SUM(( \Lowpass:3:N_Bit_Register_unit|output\(0) ) + ( !VCC ) + ( !VCC ))
-- \Add7~62\ = CARRY(( \Lowpass:3:N_Bit_Register_unit|output\(0) ) + ( !VCC ) + ( !VCC ))
-- \Add7~63\ = SHARE(!\Lowpass:3:N_Bit_Register_unit|output\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(0),
	cin => GND,
	sharein => GND,
	sumout => \Add7~61_sumout\,
	cout => \Add7~62\,
	shareout => \Add7~63\);

-- Location: LABCELL_X83_Y5_N0
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( \Lowpass:2:N_Bit_Register_unit|output\(1) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(0) ) + ( !VCC ))
-- \Add5~2\ = CARRY(( \Lowpass:2:N_Bit_Register_unit|output\(1) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(0),
	datad => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(1),
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: MLABCELL_X84_Y5_N3
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( \added_value[2][1]\ ) + ( \Add5~1_sumout\ ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( \added_value[2][1]\ ) + ( \Add5~1_sumout\ ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_added_value[2][1]\,
	datac => \ALT_INV_Add5~1_sumout\,
	cin => \Add6~2\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: LABCELL_X81_Y3_N0
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( \Add6~5_sumout\ ) + ( \Add7~61_sumout\ ) + ( !VCC ))
-- \Add7~2\ = CARRY(( \Add6~5_sumout\ ) + ( \Add7~61_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add7~61_sumout\,
	datac => \ALT_INV_Add6~5_sumout\,
	cin => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: LABCELL_X83_Y5_N3
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( \Lowpass:2:N_Bit_Register_unit|output\(2) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(1) ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( \Lowpass:2:N_Bit_Register_unit|output\(2) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(1) ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(2),
	datac => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(1),
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: MLABCELL_X84_Y5_N6
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( \added_value[2][2]\ ) + ( \Add5~5_sumout\ ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( \added_value[2][2]\ ) + ( \Add5~5_sumout\ ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~5_sumout\,
	datac => \ALT_INV_added_value[2][2]\,
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: FF_X83_Y3_N11
\Lowpass:3:N_Bit_Register_unit|output[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:3:N_Bit_Register_unit|output[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:3:N_Bit_Register_unit|output[1]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y3_N3
\Add7~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~65_sumout\ = SUM(( !\Lowpass:3:N_Bit_Register_unit|output[1]~DUPLICATE_q\ ) + ( \Add7~63\ ) + ( \Add7~62\ ))
-- \Add7~66\ = CARRY(( !\Lowpass:3:N_Bit_Register_unit|output[1]~DUPLICATE_q\ ) + ( \Add7~63\ ) + ( \Add7~62\ ))
-- \Add7~67\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output[1]~DUPLICATE_q\,
	cin => \Add7~62\,
	sharein => \Add7~63\,
	sumout => \Add7~65_sumout\,
	cout => \Add7~66\,
	shareout => \Add7~67\);

-- Location: LABCELL_X81_Y3_N3
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( \Add6~9_sumout\ ) + ( \Add7~65_sumout\ ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( \Add6~9_sumout\ ) + ( \Add7~65_sumout\ ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~9_sumout\,
	datac => \ALT_INV_Add7~65_sumout\,
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: FF_X82_Y3_N46
\Lowpass:2:N_Bit_Register_unit|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:2:N_Bit_Register_unit|output[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:2:N_Bit_Register_unit|output\(3));

-- Location: LABCELL_X83_Y5_N6
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( \Lowpass:2:N_Bit_Register_unit|output\(2) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(3) ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( \Lowpass:2:N_Bit_Register_unit|output\(2) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(3) ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(2),
	dataf => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(3),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: MLABCELL_X84_Y5_N9
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( \added_value[2][3]\ ) + ( \Add5~9_sumout\ ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( \added_value[2][3]\ ) + ( \Add5~9_sumout\ ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~9_sumout\,
	datac => \ALT_INV_added_value[2][3]\,
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: LABCELL_X80_Y3_N6
\Add7~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~69_sumout\ = SUM(( !\Lowpass:3:N_Bit_Register_unit|output\(2) ) + ( \Add7~67\ ) + ( \Add7~66\ ))
-- \Add7~70\ = CARRY(( !\Lowpass:3:N_Bit_Register_unit|output\(2) ) + ( \Add7~67\ ) + ( \Add7~66\ ))
-- \Add7~71\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(2),
	cin => \Add7~66\,
	sharein => \Add7~67\,
	sumout => \Add7~69_sumout\,
	cout => \Add7~70\,
	shareout => \Add7~71\);

-- Location: LABCELL_X81_Y3_N6
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( \Add7~69_sumout\ ) + ( \Add6~13_sumout\ ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( \Add7~69_sumout\ ) + ( \Add6~13_sumout\ ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add6~13_sumout\,
	datad => \ALT_INV_Add7~69_sumout\,
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: LABCELL_X83_Y5_N9
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( \Lowpass:2:N_Bit_Register_unit|output\(4) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(3) ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( \Lowpass:2:N_Bit_Register_unit|output\(4) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(3) ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(4),
	dataf => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(3),
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: MLABCELL_X84_Y5_N12
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( \added_value[2][4]\ ) + ( \Add5~13_sumout\ ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( \added_value[2][4]\ ) + ( \Add5~13_sumout\ ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~13_sumout\,
	datac => \ALT_INV_added_value[2][4]\,
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: LABCELL_X80_Y3_N9
\Add7~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~73_sumout\ = SUM(( !\Lowpass:3:N_Bit_Register_unit|output\(3) ) + ( \Add7~71\ ) + ( \Add7~70\ ))
-- \Add7~74\ = CARRY(( !\Lowpass:3:N_Bit_Register_unit|output\(3) ) + ( \Add7~71\ ) + ( \Add7~70\ ))
-- \Add7~75\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(3),
	cin => \Add7~70\,
	sharein => \Add7~71\,
	sumout => \Add7~73_sumout\,
	cout => \Add7~74\,
	shareout => \Add7~75\);

-- Location: LABCELL_X81_Y3_N9
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( \Add6~17_sumout\ ) + ( \Add7~73_sumout\ ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( \Add6~17_sumout\ ) + ( \Add7~73_sumout\ ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~17_sumout\,
	datac => \ALT_INV_Add7~73_sumout\,
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: LABCELL_X83_Y5_N12
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( \Lowpass:2:N_Bit_Register_unit|output\(4) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(5) ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( \Lowpass:2:N_Bit_Register_unit|output\(4) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(5) ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(5),
	datac => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(4),
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: MLABCELL_X84_Y5_N15
\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( \Add5~17_sumout\ ) + ( \added_value[2][5]\ ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( \Add5~17_sumout\ ) + ( \added_value[2][5]\ ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_added_value[2][5]\,
	datad => \ALT_INV_Add5~17_sumout\,
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

-- Location: FF_X82_Y3_N52
\Lowpass:3:N_Bit_Register_unit|output[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:2:N_Bit_Register_unit|output\(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:3:N_Bit_Register_unit|output[4]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y3_N12
\Add7~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~77_sumout\ = SUM(( !\Lowpass:3:N_Bit_Register_unit|output[4]~DUPLICATE_q\ $ (\Lowpass:3:N_Bit_Register_unit|output\(0)) ) + ( \Add7~75\ ) + ( \Add7~74\ ))
-- \Add7~78\ = CARRY(( !\Lowpass:3:N_Bit_Register_unit|output[4]~DUPLICATE_q\ $ (\Lowpass:3:N_Bit_Register_unit|output\(0)) ) + ( \Add7~75\ ) + ( \Add7~74\ ))
-- \Add7~79\ = SHARE((!\Lowpass:3:N_Bit_Register_unit|output[4]~DUPLICATE_q\ & \Lowpass:3:N_Bit_Register_unit|output\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output[4]~DUPLICATE_q\,
	datad => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(0),
	cin => \Add7~74\,
	sharein => \Add7~75\,
	sumout => \Add7~77_sumout\,
	cout => \Add7~78\,
	shareout => \Add7~79\);

-- Location: LABCELL_X81_Y3_N12
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( \Add6~21_sumout\ ) + ( \Add7~77_sumout\ ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( \Add6~21_sumout\ ) + ( \Add7~77_sumout\ ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~21_sumout\,
	datac => \ALT_INV_Add7~77_sumout\,
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: LABCELL_X83_Y5_N15
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( \Lowpass:2:N_Bit_Register_unit|output\(5) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(6) ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( \Lowpass:2:N_Bit_Register_unit|output\(5) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(6) ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(5),
	dataf => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(6),
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: MLABCELL_X84_Y5_N18
\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( \added_value[2][6]\ ) + ( \Add5~21_sumout\ ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( \added_value[2][6]\ ) + ( \Add5~21_sumout\ ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~21_sumout\,
	datac => \ALT_INV_added_value[2][6]\,
	cin => \Add6~22\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

-- Location: LABCELL_X80_Y3_N15
\Add7~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~81_sumout\ = SUM(( !\Lowpass:3:N_Bit_Register_unit|output[1]~DUPLICATE_q\ $ (\Lowpass:3:N_Bit_Register_unit|output\(5)) ) + ( \Add7~79\ ) + ( \Add7~78\ ))
-- \Add7~82\ = CARRY(( !\Lowpass:3:N_Bit_Register_unit|output[1]~DUPLICATE_q\ $ (\Lowpass:3:N_Bit_Register_unit|output\(5)) ) + ( \Add7~79\ ) + ( \Add7~78\ ))
-- \Add7~83\ = SHARE((\Lowpass:3:N_Bit_Register_unit|output[1]~DUPLICATE_q\ & !\Lowpass:3:N_Bit_Register_unit|output\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output[1]~DUPLICATE_q\,
	datac => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(5),
	cin => \Add7~78\,
	sharein => \Add7~79\,
	sumout => \Add7~81_sumout\,
	cout => \Add7~82\,
	shareout => \Add7~83\);

-- Location: LABCELL_X81_Y3_N15
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( \Add6~25_sumout\ ) + ( \Add7~81_sumout\ ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( \Add6~25_sumout\ ) + ( \Add7~81_sumout\ ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add6~25_sumout\,
	datac => \ALT_INV_Add7~81_sumout\,
	cin => \Add7~18\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: LABCELL_X80_Y3_N18
\Add7~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~85_sumout\ = SUM(( !\Lowpass:3:N_Bit_Register_unit|output\(2) $ (\Lowpass:3:N_Bit_Register_unit|output\(6)) ) + ( \Add7~83\ ) + ( \Add7~82\ ))
-- \Add7~86\ = CARRY(( !\Lowpass:3:N_Bit_Register_unit|output\(2) $ (\Lowpass:3:N_Bit_Register_unit|output\(6)) ) + ( \Add7~83\ ) + ( \Add7~82\ ))
-- \Add7~87\ = SHARE((\Lowpass:3:N_Bit_Register_unit|output\(2) & !\Lowpass:3:N_Bit_Register_unit|output\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(2),
	datad => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(6),
	cin => \Add7~82\,
	sharein => \Add7~83\,
	sumout => \Add7~85_sumout\,
	cout => \Add7~86\,
	shareout => \Add7~87\);

-- Location: LABCELL_X83_Y5_N18
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( \Lowpass:2:N_Bit_Register_unit|output\(6) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( \Lowpass:2:N_Bit_Register_unit|output\(6) ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(6),
	datac => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: MLABCELL_X84_Y5_N21
\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( \added_value[2][7]\ ) + ( \Add5~25_sumout\ ) + ( \Add6~26\ ))
-- \Add6~30\ = CARRY(( \added_value[2][7]\ ) + ( \Add5~25_sumout\ ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_added_value[2][7]\,
	dataf => \ALT_INV_Add5~25_sumout\,
	cin => \Add6~26\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\);

-- Location: LABCELL_X81_Y3_N18
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( \Add6~29_sumout\ ) + ( \Add7~85_sumout\ ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( \Add6~29_sumout\ ) + ( \Add7~85_sumout\ ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add7~85_sumout\,
	datac => \ALT_INV_Add6~29_sumout\,
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: LABCELL_X80_Y3_N21
\Add7~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~89_sumout\ = SUM(( !\Lowpass:3:N_Bit_Register_unit|output\(7) $ (\Lowpass:3:N_Bit_Register_unit|output\(3)) ) + ( \Add7~87\ ) + ( \Add7~86\ ))
-- \Add7~90\ = CARRY(( !\Lowpass:3:N_Bit_Register_unit|output\(7) $ (\Lowpass:3:N_Bit_Register_unit|output\(3)) ) + ( \Add7~87\ ) + ( \Add7~86\ ))
-- \Add7~91\ = SHARE((!\Lowpass:3:N_Bit_Register_unit|output\(7) & \Lowpass:3:N_Bit_Register_unit|output\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(3),
	cin => \Add7~86\,
	sharein => \Add7~87\,
	sumout => \Add7~89_sumout\,
	cout => \Add7~90\,
	shareout => \Add7~91\);

-- Location: LABCELL_X83_Y5_N21
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( GND ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\);

-- Location: MLABCELL_X84_Y5_N24
\Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( \added_value[2][8]\ ) + ( \Add5~29_sumout\ ) + ( \Add6~30\ ))
-- \Add6~34\ = CARRY(( \added_value[2][8]\ ) + ( \Add5~29_sumout\ ) + ( \Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_added_value[2][8]\,
	datac => \ALT_INV_Add5~29_sumout\,
	cin => \Add6~30\,
	sumout => \Add6~33_sumout\,
	cout => \Add6~34\);

-- Location: LABCELL_X81_Y3_N21
\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( \Add7~89_sumout\ ) + ( \Add6~33_sumout\ ) + ( \Add7~26\ ))
-- \Add7~30\ = CARRY(( \Add7~89_sumout\ ) + ( \Add6~33_sumout\ ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~89_sumout\,
	dataf => \ALT_INV_Add6~33_sumout\,
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\);

-- Location: LABCELL_X80_Y3_N24
\Add7~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~93_sumout\ = SUM(( !\Lowpass:3:N_Bit_Register_unit|output\(7) $ (\Lowpass:3:N_Bit_Register_unit|output[4]~DUPLICATE_q\) ) + ( \Add7~91\ ) + ( \Add7~90\ ))
-- \Add7~94\ = CARRY(( !\Lowpass:3:N_Bit_Register_unit|output\(7) $ (\Lowpass:3:N_Bit_Register_unit|output[4]~DUPLICATE_q\) ) + ( \Add7~91\ ) + ( \Add7~90\ ))
-- \Add7~95\ = SHARE((!\Lowpass:3:N_Bit_Register_unit|output\(7) & \Lowpass:3:N_Bit_Register_unit|output[4]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output[4]~DUPLICATE_q\,
	cin => \Add7~90\,
	sharein => \Add7~91\,
	sumout => \Add7~93_sumout\,
	cout => \Add7~94\,
	shareout => \Add7~95\);

-- Location: MLABCELL_X84_Y5_N27
\Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~37_sumout\ = SUM(( \added_value[2][9]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~34\ ))
-- \Add6~38\ = CARRY(( \added_value[2][9]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_added_value[2][9]\,
	datac => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add6~34\,
	sumout => \Add6~37_sumout\,
	cout => \Add6~38\);

-- Location: LABCELL_X81_Y3_N24
\Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( \Add6~37_sumout\ ) + ( \Add7~93_sumout\ ) + ( \Add7~30\ ))
-- \Add7~34\ = CARRY(( \Add6~37_sumout\ ) + ( \Add7~93_sumout\ ) + ( \Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add7~93_sumout\,
	datac => \ALT_INV_Add6~37_sumout\,
	cin => \Add7~30\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\);

-- Location: LABCELL_X80_Y3_N27
\Add7~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~97_sumout\ = SUM(( !\Lowpass:3:N_Bit_Register_unit|output\(7) $ (\Lowpass:3:N_Bit_Register_unit|output\(5)) ) + ( \Add7~95\ ) + ( \Add7~94\ ))
-- \Add7~98\ = CARRY(( !\Lowpass:3:N_Bit_Register_unit|output\(7) $ (\Lowpass:3:N_Bit_Register_unit|output\(5)) ) + ( \Add7~95\ ) + ( \Add7~94\ ))
-- \Add7~99\ = SHARE((!\Lowpass:3:N_Bit_Register_unit|output\(7) & \Lowpass:3:N_Bit_Register_unit|output\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(5),
	cin => \Add7~94\,
	sharein => \Add7~95\,
	sumout => \Add7~97_sumout\,
	cout => \Add7~98\,
	shareout => \Add7~99\);

-- Location: MLABCELL_X84_Y5_N30
\Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~41_sumout\ = SUM(( \added_value[2][10]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~38\ ))
-- \Add6~42\ = CARRY(( \added_value[2][10]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \ALT_INV_added_value[2][10]\,
	cin => \Add6~38\,
	sumout => \Add6~41_sumout\,
	cout => \Add6~42\);

-- Location: LABCELL_X81_Y3_N27
\Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( \Add7~97_sumout\ ) + ( \Add6~41_sumout\ ) + ( \Add7~34\ ))
-- \Add7~38\ = CARRY(( \Add7~97_sumout\ ) + ( \Add6~41_sumout\ ) + ( \Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~97_sumout\,
	dataf => \ALT_INV_Add6~41_sumout\,
	cin => \Add7~34\,
	sumout => \Add7~37_sumout\,
	cout => \Add7~38\);

-- Location: MLABCELL_X84_Y5_N33
\Add6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~45_sumout\ = SUM(( \added_value[2][11]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~42\ ))
-- \Add6~46\ = CARRY(( \added_value[2][11]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \ALT_INV_added_value[2][11]\,
	cin => \Add6~42\,
	sumout => \Add6~45_sumout\,
	cout => \Add6~46\);

-- Location: LABCELL_X80_Y3_N30
\Add7~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~101_sumout\ = SUM(( !\Lowpass:3:N_Bit_Register_unit|output\(6) $ (\Lowpass:3:N_Bit_Register_unit|output\(7)) ) + ( \Add7~99\ ) + ( \Add7~98\ ))
-- \Add7~102\ = CARRY(( !\Lowpass:3:N_Bit_Register_unit|output\(6) $ (\Lowpass:3:N_Bit_Register_unit|output\(7)) ) + ( \Add7~99\ ) + ( \Add7~98\ ))
-- \Add7~103\ = SHARE((\Lowpass:3:N_Bit_Register_unit|output\(6) & !\Lowpass:3:N_Bit_Register_unit|output\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(6),
	datac => \Lowpass:3:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add7~98\,
	sharein => \Add7~99\,
	sumout => \Add7~101_sumout\,
	cout => \Add7~102\,
	shareout => \Add7~103\);

-- Location: LABCELL_X81_Y3_N30
\Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~41_sumout\ = SUM(( \Add6~45_sumout\ ) + ( \Add7~101_sumout\ ) + ( \Add7~38\ ))
-- \Add7~42\ = CARRY(( \Add6~45_sumout\ ) + ( \Add7~101_sumout\ ) + ( \Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add6~45_sumout\,
	datac => \ALT_INV_Add7~101_sumout\,
	cin => \Add7~38\,
	sumout => \Add7~41_sumout\,
	cout => \Add7~42\);

-- Location: MLABCELL_X84_Y5_N36
\Add6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~49_sumout\ = SUM(( \added_value[2][12]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~46\ ))
-- \Add6~50\ = CARRY(( \added_value[2][12]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \ALT_INV_added_value[2][12]\,
	cin => \Add6~46\,
	sumout => \Add6~49_sumout\,
	cout => \Add6~50\);

-- Location: LABCELL_X80_Y3_N33
\Add7~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~105_sumout\ = SUM(( VCC ) + ( \Add7~103\ ) + ( \Add7~102\ ))
-- \Add7~106\ = CARRY(( VCC ) + ( \Add7~103\ ) + ( \Add7~102\ ))
-- \Add7~107\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add7~102\,
	sharein => \Add7~103\,
	sumout => \Add7~105_sumout\,
	cout => \Add7~106\,
	shareout => \Add7~107\);

-- Location: LABCELL_X81_Y3_N33
\Add7~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~45_sumout\ = SUM(( \Add6~49_sumout\ ) + ( \Add7~105_sumout\ ) + ( \Add7~42\ ))
-- \Add7~46\ = CARRY(( \Add6~49_sumout\ ) + ( \Add7~105_sumout\ ) + ( \Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~49_sumout\,
	datac => \ALT_INV_Add7~105_sumout\,
	cin => \Add7~42\,
	sumout => \Add7~45_sumout\,
	cout => \Add7~46\);

-- Location: LABCELL_X80_Y3_N36
\Add7~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~109_sumout\ = SUM(( VCC ) + ( \Add7~107\ ) + ( \Add7~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add7~106\,
	sharein => \Add7~107\,
	sumout => \Add7~109_sumout\);

-- Location: MLABCELL_X84_Y5_N39
\Add6~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~53_sumout\ = SUM(( \added_value[2][13]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~50\ ))
-- \Add6~54\ = CARRY(( \added_value[2][13]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_added_value[2][13]\,
	datac => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add6~50\,
	sumout => \Add6~53_sumout\,
	cout => \Add6~54\);

-- Location: LABCELL_X81_Y3_N36
\Add7~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~49_sumout\ = SUM(( \Add6~53_sumout\ ) + ( \Add7~109_sumout\ ) + ( \Add7~46\ ))
-- \Add7~50\ = CARRY(( \Add6~53_sumout\ ) + ( \Add7~109_sumout\ ) + ( \Add7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~109_sumout\,
	datac => \ALT_INV_Add6~53_sumout\,
	cin => \Add7~46\,
	sumout => \Add7~49_sumout\,
	cout => \Add7~50\);

-- Location: MLABCELL_X84_Y5_N42
\Add6~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~57_sumout\ = SUM(( \added_value[2][14]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~54\ ))
-- \Add6~58\ = CARRY(( \added_value[2][14]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(7),
	datad => \ALT_INV_added_value[2][14]\,
	cin => \Add6~54\,
	sumout => \Add6~57_sumout\,
	cout => \Add6~58\);

-- Location: LABCELL_X81_Y3_N39
\Add7~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~53_sumout\ = SUM(( \Add6~57_sumout\ ) + ( \Add7~109_sumout\ ) + ( \Add7~50\ ))
-- \Add7~54\ = CARRY(( \Add6~57_sumout\ ) + ( \Add7~109_sumout\ ) + ( \Add7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~109_sumout\,
	datac => \ALT_INV_Add6~57_sumout\,
	cin => \Add7~50\,
	sumout => \Add7~53_sumout\,
	cout => \Add7~54\);

-- Location: MLABCELL_X84_Y5_N45
\Add6~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~61_sumout\ = SUM(( \added_value[2][15]\ ) + ( \Lowpass:2:N_Bit_Register_unit|output\(7) ) + ( \Add6~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_added_value[2][15]\,
	datab => \Lowpass:2:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add6~58\,
	sumout => \Add6~61_sumout\);

-- Location: LABCELL_X81_Y3_N42
\Add7~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~57_sumout\ = SUM(( \Add6~61_sumout\ ) + ( \Add7~109_sumout\ ) + ( \Add7~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~61_sumout\,
	datac => \ALT_INV_Add7~109_sumout\,
	cin => \Add7~54\,
	sumout => \Add7~57_sumout\);

-- Location: DSP_X86_Y2_N0
\Mult1~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 6,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult1~mac_AX_bus\,
	ay => \Mult1~mac_AY_bus\,
	bx => \Mult1~mac_BX_bus\,
	by => \Mult1~mac_BY_bus\,
	resulta => \Mult1~mac_RESULTA_bus\);

-- Location: LABCELL_X85_Y4_N0
\Add15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~1_sumout\ = SUM(( \added_value[5][0]\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(0) ) + ( !VCC ))
-- \Add15~2\ = CARRY(( \added_value[5][0]\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_added_value[5][0]\,
	datac => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(0),
	cin => GND,
	sumout => \Add15~1_sumout\,
	cout => \Add15~2\);

-- Location: MLABCELL_X84_Y4_N30
\Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~1_sumout\ = SUM(( \Lowpass:6:N_Bit_Register_unit|output\(1) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(0) ) + ( !VCC ))
-- \Add14~2\ = CARRY(( \Lowpass:6:N_Bit_Register_unit|output\(1) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(0),
	datad => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(1),
	cin => GND,
	sumout => \Add14~1_sumout\,
	cout => \Add14~2\);

-- Location: MLABCELL_X82_Y4_N0
\Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~1_sumout\ = SUM(( \Lowpass:5:N_Bit_Register_unit|output\(0) ) + ( !VCC ) + ( !VCC ))
-- \Add11~2\ = CARRY(( \Lowpass:5:N_Bit_Register_unit|output\(0) ) + ( !VCC ) + ( !VCC ))
-- \Add11~3\ = SHARE(!\Lowpass:5:N_Bit_Register_unit|output\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(0),
	cin => GND,
	sharein => GND,
	sumout => \Add11~1_sumout\,
	cout => \Add11~2\,
	shareout => \Add11~3\);

-- Location: LABCELL_X83_Y4_N0
\Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~1_sumout\ = SUM(( \added_value[5][1]\ ) + ( \Add11~1_sumout\ ) + ( !VCC ))
-- \Add13~2\ = CARRY(( \added_value[5][1]\ ) + ( \Add11~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_added_value[5][1]\,
	datac => \ALT_INV_Add11~1_sumout\,
	cin => GND,
	sumout => \Add13~1_sumout\,
	cout => \Add13~2\);

-- Location: LABCELL_X85_Y4_N3
\Add15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~5_sumout\ = SUM(( \Add13~1_sumout\ ) + ( \Add14~1_sumout\ ) + ( \Add15~2\ ))
-- \Add15~6\ = CARRY(( \Add13~1_sumout\ ) + ( \Add14~1_sumout\ ) + ( \Add15~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add14~1_sumout\,
	datac => \ALT_INV_Add13~1_sumout\,
	cin => \Add15~2\,
	sumout => \Add15~5_sumout\,
	cout => \Add15~6\);

-- Location: MLABCELL_X84_Y4_N33
\Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~5_sumout\ = SUM(( \Lowpass:6:N_Bit_Register_unit|output\(1) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(2) ) + ( \Add14~2\ ))
-- \Add14~6\ = CARRY(( \Lowpass:6:N_Bit_Register_unit|output\(1) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(2) ) + ( \Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(2),
	datad => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(1),
	cin => \Add14~2\,
	sumout => \Add14~5_sumout\,
	cout => \Add14~6\);

-- Location: MLABCELL_X82_Y4_N3
\Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~5_sumout\ = SUM(( !\Lowpass:5:N_Bit_Register_unit|output\(1) ) + ( \Add11~3\ ) + ( \Add11~2\ ))
-- \Add11~6\ = CARRY(( !\Lowpass:5:N_Bit_Register_unit|output\(1) ) + ( \Add11~3\ ) + ( \Add11~2\ ))
-- \Add11~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(1),
	cin => \Add11~2\,
	sharein => \Add11~3\,
	sumout => \Add11~5_sumout\,
	cout => \Add11~6\,
	shareout => \Add11~7\);

-- Location: LABCELL_X83_Y4_N3
\Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~5_sumout\ = SUM(( \added_value[5][2]\ ) + ( \Add11~5_sumout\ ) + ( \Add13~2\ ))
-- \Add13~6\ = CARRY(( \added_value[5][2]\ ) + ( \Add11~5_sumout\ ) + ( \Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_added_value[5][2]\,
	dataf => \ALT_INV_Add11~5_sumout\,
	cin => \Add13~2\,
	sumout => \Add13~5_sumout\,
	cout => \Add13~6\);

-- Location: LABCELL_X85_Y4_N6
\Add15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~9_sumout\ = SUM(( \Add13~5_sumout\ ) + ( \Add14~5_sumout\ ) + ( \Add15~6\ ))
-- \Add15~10\ = CARRY(( \Add13~5_sumout\ ) + ( \Add14~5_sumout\ ) + ( \Add15~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add14~5_sumout\,
	datac => \ALT_INV_Add13~5_sumout\,
	cin => \Add15~6\,
	sumout => \Add15~9_sumout\,
	cout => \Add15~10\);

-- Location: MLABCELL_X84_Y4_N36
\Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~9_sumout\ = SUM(( \Lowpass:6:N_Bit_Register_unit|output\(3) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(2) ) + ( \Add14~6\ ))
-- \Add14~10\ = CARRY(( \Lowpass:6:N_Bit_Register_unit|output\(3) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(2) ) + ( \Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(3),
	dataf => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(2),
	cin => \Add14~6\,
	sumout => \Add14~9_sumout\,
	cout => \Add14~10\);

-- Location: MLABCELL_X82_Y4_N6
\Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~9_sumout\ = SUM(( !\Lowpass:5:N_Bit_Register_unit|output\(2) ) + ( \Add11~7\ ) + ( \Add11~6\ ))
-- \Add11~10\ = CARRY(( !\Lowpass:5:N_Bit_Register_unit|output\(2) ) + ( \Add11~7\ ) + ( \Add11~6\ ))
-- \Add11~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(2),
	cin => \Add11~6\,
	sharein => \Add11~7\,
	sumout => \Add11~9_sumout\,
	cout => \Add11~10\,
	shareout => \Add11~11\);

-- Location: LABCELL_X83_Y4_N6
\Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~9_sumout\ = SUM(( \added_value[5][3]\ ) + ( \Add11~9_sumout\ ) + ( \Add13~6\ ))
-- \Add13~10\ = CARRY(( \added_value[5][3]\ ) + ( \Add11~9_sumout\ ) + ( \Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_added_value[5][3]\,
	datac => \ALT_INV_Add11~9_sumout\,
	cin => \Add13~6\,
	sumout => \Add13~9_sumout\,
	cout => \Add13~10\);

-- Location: LABCELL_X85_Y4_N9
\Add15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~13_sumout\ = SUM(( \Add13~9_sumout\ ) + ( \Add14~9_sumout\ ) + ( \Add15~10\ ))
-- \Add15~14\ = CARRY(( \Add13~9_sumout\ ) + ( \Add14~9_sumout\ ) + ( \Add15~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add14~9_sumout\,
	datac => \ALT_INV_Add13~9_sumout\,
	cin => \Add15~10\,
	sumout => \Add15~13_sumout\,
	cout => \Add15~14\);

-- Location: MLABCELL_X84_Y4_N39
\Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~13_sumout\ = SUM(( \Lowpass:6:N_Bit_Register_unit|output\(4) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(3) ) + ( \Add14~10\ ))
-- \Add14~14\ = CARRY(( \Lowpass:6:N_Bit_Register_unit|output\(4) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(3) ) + ( \Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(4),
	datab => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(3),
	cin => \Add14~10\,
	sumout => \Add14~13_sumout\,
	cout => \Add14~14\);

-- Location: MLABCELL_X82_Y4_N9
\Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~13_sumout\ = SUM(( !\Lowpass:5:N_Bit_Register_unit|output\(3) ) + ( \Add11~11\ ) + ( \Add11~10\ ))
-- \Add11~14\ = CARRY(( !\Lowpass:5:N_Bit_Register_unit|output\(3) ) + ( \Add11~11\ ) + ( \Add11~10\ ))
-- \Add11~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(3),
	cin => \Add11~10\,
	sharein => \Add11~11\,
	sumout => \Add11~13_sumout\,
	cout => \Add11~14\,
	shareout => \Add11~15\);

-- Location: LABCELL_X83_Y4_N9
\Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~13_sumout\ = SUM(( \added_value[5][4]\ ) + ( \Add11~13_sumout\ ) + ( \Add13~10\ ))
-- \Add13~14\ = CARRY(( \added_value[5][4]\ ) + ( \Add11~13_sumout\ ) + ( \Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add11~13_sumout\,
	datac => \ALT_INV_added_value[5][4]\,
	cin => \Add13~10\,
	sumout => \Add13~13_sumout\,
	cout => \Add13~14\);

-- Location: LABCELL_X85_Y4_N12
\Add15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~17_sumout\ = SUM(( \Add14~13_sumout\ ) + ( \Add13~13_sumout\ ) + ( \Add15~14\ ))
-- \Add15~18\ = CARRY(( \Add14~13_sumout\ ) + ( \Add13~13_sumout\ ) + ( \Add15~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add14~13_sumout\,
	dataf => \ALT_INV_Add13~13_sumout\,
	cin => \Add15~14\,
	sumout => \Add15~17_sumout\,
	cout => \Add15~18\);

-- Location: MLABCELL_X84_Y4_N42
\Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~17_sumout\ = SUM(( \Lowpass:6:N_Bit_Register_unit|output\(5) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(4) ) + ( \Add14~14\ ))
-- \Add14~18\ = CARRY(( \Lowpass:6:N_Bit_Register_unit|output\(5) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(4) ) + ( \Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(4),
	datad => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(5),
	cin => \Add14~14\,
	sumout => \Add14~17_sumout\,
	cout => \Add14~18\);

-- Location: MLABCELL_X82_Y4_N12
\Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~17_sumout\ = SUM(( !\Lowpass:5:N_Bit_Register_unit|output\(4) $ (\Lowpass:5:N_Bit_Register_unit|output\(0)) ) + ( \Add11~15\ ) + ( \Add11~14\ ))
-- \Add11~18\ = CARRY(( !\Lowpass:5:N_Bit_Register_unit|output\(4) $ (\Lowpass:5:N_Bit_Register_unit|output\(0)) ) + ( \Add11~15\ ) + ( \Add11~14\ ))
-- \Add11~19\ = SHARE((!\Lowpass:5:N_Bit_Register_unit|output\(4) & \Lowpass:5:N_Bit_Register_unit|output\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(4),
	datac => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(0),
	cin => \Add11~14\,
	sharein => \Add11~15\,
	sumout => \Add11~17_sumout\,
	cout => \Add11~18\,
	shareout => \Add11~19\);

-- Location: LABCELL_X83_Y4_N12
\Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~17_sumout\ = SUM(( \Add11~17_sumout\ ) + ( \added_value[5][5]\ ) + ( \Add13~14\ ))
-- \Add13~18\ = CARRY(( \Add11~17_sumout\ ) + ( \added_value[5][5]\ ) + ( \Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_added_value[5][5]\,
	datad => \ALT_INV_Add11~17_sumout\,
	cin => \Add13~14\,
	sumout => \Add13~17_sumout\,
	cout => \Add13~18\);

-- Location: LABCELL_X85_Y4_N15
\Add15~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~21_sumout\ = SUM(( \Add13~17_sumout\ ) + ( \Add14~17_sumout\ ) + ( \Add15~18\ ))
-- \Add15~22\ = CARRY(( \Add13~17_sumout\ ) + ( \Add14~17_sumout\ ) + ( \Add15~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add14~17_sumout\,
	datac => \ALT_INV_Add13~17_sumout\,
	cin => \Add15~18\,
	sumout => \Add15~21_sumout\,
	cout => \Add15~22\);

-- Location: MLABCELL_X82_Y4_N15
\Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~21_sumout\ = SUM(( !\Lowpass:5:N_Bit_Register_unit|output\(1) $ (\Lowpass:5:N_Bit_Register_unit|output\(5)) ) + ( \Add11~19\ ) + ( \Add11~18\ ))
-- \Add11~22\ = CARRY(( !\Lowpass:5:N_Bit_Register_unit|output\(1) $ (\Lowpass:5:N_Bit_Register_unit|output\(5)) ) + ( \Add11~19\ ) + ( \Add11~18\ ))
-- \Add11~23\ = SHARE((\Lowpass:5:N_Bit_Register_unit|output\(1) & !\Lowpass:5:N_Bit_Register_unit|output\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(1),
	datac => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(5),
	cin => \Add11~18\,
	sharein => \Add11~19\,
	sumout => \Add11~21_sumout\,
	cout => \Add11~22\,
	shareout => \Add11~23\);

-- Location: LABCELL_X83_Y4_N15
\Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~21_sumout\ = SUM(( \added_value[5][6]\ ) + ( \Add11~21_sumout\ ) + ( \Add13~18\ ))
-- \Add13~22\ = CARRY(( \added_value[5][6]\ ) + ( \Add11~21_sumout\ ) + ( \Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_added_value[5][6]\,
	datab => \ALT_INV_Add11~21_sumout\,
	cin => \Add13~18\,
	sumout => \Add13~21_sumout\,
	cout => \Add13~22\);

-- Location: MLABCELL_X84_Y4_N45
\Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~21_sumout\ = SUM(( \Lowpass:6:N_Bit_Register_unit|output\(6) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(5) ) + ( \Add14~18\ ))
-- \Add14~22\ = CARRY(( \Lowpass:6:N_Bit_Register_unit|output\(6) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(5) ) + ( \Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(6),
	datac => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(5),
	cin => \Add14~18\,
	sumout => \Add14~21_sumout\,
	cout => \Add14~22\);

-- Location: LABCELL_X85_Y4_N18
\Add15~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~25_sumout\ = SUM(( \Add13~21_sumout\ ) + ( \Add14~21_sumout\ ) + ( \Add15~22\ ))
-- \Add15~26\ = CARRY(( \Add13~21_sumout\ ) + ( \Add14~21_sumout\ ) + ( \Add15~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add13~21_sumout\,
	datac => \ALT_INV_Add14~21_sumout\,
	cin => \Add15~22\,
	sumout => \Add15~25_sumout\,
	cout => \Add15~26\);

-- Location: FF_X84_Y3_N50
\Lowpass:5:N_Bit_Register_unit|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:5:N_Bit_Register_unit|output[6]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:5:N_Bit_Register_unit|output\(6));

-- Location: MLABCELL_X82_Y4_N18
\Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~25_sumout\ = SUM(( !\Lowpass:5:N_Bit_Register_unit|output\(6) $ (\Lowpass:5:N_Bit_Register_unit|output\(2)) ) + ( \Add11~23\ ) + ( \Add11~22\ ))
-- \Add11~26\ = CARRY(( !\Lowpass:5:N_Bit_Register_unit|output\(6) $ (\Lowpass:5:N_Bit_Register_unit|output\(2)) ) + ( \Add11~23\ ) + ( \Add11~22\ ))
-- \Add11~27\ = SHARE((!\Lowpass:5:N_Bit_Register_unit|output\(6) & \Lowpass:5:N_Bit_Register_unit|output\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(6),
	datad => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(2),
	cin => \Add11~22\,
	sharein => \Add11~23\,
	sumout => \Add11~25_sumout\,
	cout => \Add11~26\,
	shareout => \Add11~27\);

-- Location: LABCELL_X83_Y4_N18
\Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~25_sumout\ = SUM(( \Add11~25_sumout\ ) + ( \added_value[5][7]\ ) + ( \Add13~22\ ))
-- \Add13~26\ = CARRY(( \Add11~25_sumout\ ) + ( \added_value[5][7]\ ) + ( \Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add11~25_sumout\,
	dataf => \ALT_INV_added_value[5][7]\,
	cin => \Add13~22\,
	sumout => \Add13~25_sumout\,
	cout => \Add13~26\);

-- Location: MLABCELL_X84_Y4_N48
\Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~25_sumout\ = SUM(( \Lowpass:6:N_Bit_Register_unit|output\(6) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add14~22\ ))
-- \Add14~26\ = CARRY(( \Lowpass:6:N_Bit_Register_unit|output\(6) ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(6),
	cin => \Add14~22\,
	sumout => \Add14~25_sumout\,
	cout => \Add14~26\);

-- Location: LABCELL_X85_Y4_N21
\Add15~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~29_sumout\ = SUM(( \Add13~25_sumout\ ) + ( \Add14~25_sumout\ ) + ( \Add15~26\ ))
-- \Add15~30\ = CARRY(( \Add13~25_sumout\ ) + ( \Add14~25_sumout\ ) + ( \Add15~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add13~25_sumout\,
	datac => \ALT_INV_Add14~25_sumout\,
	cin => \Add15~26\,
	sumout => \Add15~29_sumout\,
	cout => \Add15~30\);

-- Location: MLABCELL_X84_Y4_N51
\Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~29_sumout\ = SUM(( GND ) + ( GND ) + ( \Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add14~26\,
	sumout => \Add14~29_sumout\);

-- Location: MLABCELL_X82_Y4_N21
\Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~29_sumout\ = SUM(( !\Lowpass:5:N_Bit_Register_unit|output\(3) $ (\Lowpass:5:N_Bit_Register_unit|output\(7)) ) + ( \Add11~27\ ) + ( \Add11~26\ ))
-- \Add11~30\ = CARRY(( !\Lowpass:5:N_Bit_Register_unit|output\(3) $ (\Lowpass:5:N_Bit_Register_unit|output\(7)) ) + ( \Add11~27\ ) + ( \Add11~26\ ))
-- \Add11~31\ = SHARE((\Lowpass:5:N_Bit_Register_unit|output\(3) & !\Lowpass:5:N_Bit_Register_unit|output\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(3),
	datac => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add11~26\,
	sharein => \Add11~27\,
	sumout => \Add11~29_sumout\,
	cout => \Add11~30\,
	shareout => \Add11~31\);

-- Location: LABCELL_X83_Y4_N21
\Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~29_sumout\ = SUM(( \added_value[5][8]\ ) + ( \Add11~29_sumout\ ) + ( \Add13~26\ ))
-- \Add13~30\ = CARRY(( \added_value[5][8]\ ) + ( \Add11~29_sumout\ ) + ( \Add13~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~29_sumout\,
	datac => \ALT_INV_added_value[5][8]\,
	cin => \Add13~26\,
	sumout => \Add13~29_sumout\,
	cout => \Add13~30\);

-- Location: LABCELL_X85_Y4_N24
\Add15~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~33_sumout\ = SUM(( \Add13~29_sumout\ ) + ( \Add14~29_sumout\ ) + ( \Add15~30\ ))
-- \Add15~34\ = CARRY(( \Add13~29_sumout\ ) + ( \Add14~29_sumout\ ) + ( \Add15~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add14~29_sumout\,
	datac => \ALT_INV_Add13~29_sumout\,
	cin => \Add15~30\,
	sumout => \Add15~33_sumout\,
	cout => \Add15~34\);

-- Location: MLABCELL_X82_Y4_N24
\Add11~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~33_sumout\ = SUM(( !\Lowpass:5:N_Bit_Register_unit|output\(7) $ (\Lowpass:5:N_Bit_Register_unit|output\(4)) ) + ( \Add11~31\ ) + ( \Add11~30\ ))
-- \Add11~34\ = CARRY(( !\Lowpass:5:N_Bit_Register_unit|output\(7) $ (\Lowpass:5:N_Bit_Register_unit|output\(4)) ) + ( \Add11~31\ ) + ( \Add11~30\ ))
-- \Add11~35\ = SHARE((!\Lowpass:5:N_Bit_Register_unit|output\(7) & \Lowpass:5:N_Bit_Register_unit|output\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(4),
	cin => \Add11~30\,
	sharein => \Add11~31\,
	sumout => \Add11~33_sumout\,
	cout => \Add11~34\,
	shareout => \Add11~35\);

-- Location: LABCELL_X83_Y4_N24
\Add13~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~33_sumout\ = SUM(( \added_value[5][9]\ ) + ( \Add11~33_sumout\ ) + ( \Add13~30\ ))
-- \Add13~34\ = CARRY(( \added_value[5][9]\ ) + ( \Add11~33_sumout\ ) + ( \Add13~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add11~33_sumout\,
	datac => \ALT_INV_added_value[5][9]\,
	cin => \Add13~30\,
	sumout => \Add13~33_sumout\,
	cout => \Add13~34\);

-- Location: LABCELL_X85_Y4_N27
\Add15~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~37_sumout\ = SUM(( \Add13~33_sumout\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add15~34\ ))
-- \Add15~38\ = CARRY(( \Add13~33_sumout\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add15~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add13~33_sumout\,
	datac => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add15~34\,
	sumout => \Add15~37_sumout\,
	cout => \Add15~38\);

-- Location: MLABCELL_X82_Y4_N27
\Add11~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~37_sumout\ = SUM(( !\Lowpass:5:N_Bit_Register_unit|output\(7) $ (\Lowpass:5:N_Bit_Register_unit|output\(5)) ) + ( \Add11~35\ ) + ( \Add11~34\ ))
-- \Add11~38\ = CARRY(( !\Lowpass:5:N_Bit_Register_unit|output\(7) $ (\Lowpass:5:N_Bit_Register_unit|output\(5)) ) + ( \Add11~35\ ) + ( \Add11~34\ ))
-- \Add11~39\ = SHARE((!\Lowpass:5:N_Bit_Register_unit|output\(7) & \Lowpass:5:N_Bit_Register_unit|output\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(5),
	cin => \Add11~34\,
	sharein => \Add11~35\,
	sumout => \Add11~37_sumout\,
	cout => \Add11~38\,
	shareout => \Add11~39\);

-- Location: LABCELL_X83_Y4_N27
\Add13~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~37_sumout\ = SUM(( \added_value[5][10]\ ) + ( \Add11~37_sumout\ ) + ( \Add13~34\ ))
-- \Add13~38\ = CARRY(( \added_value[5][10]\ ) + ( \Add11~37_sumout\ ) + ( \Add13~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~37_sumout\,
	datac => \ALT_INV_added_value[5][10]\,
	cin => \Add13~34\,
	sumout => \Add13~37_sumout\,
	cout => \Add13~38\);

-- Location: LABCELL_X85_Y4_N30
\Add15~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~41_sumout\ = SUM(( \Add13~37_sumout\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add15~38\ ))
-- \Add15~42\ = CARRY(( \Add13~37_sumout\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add15~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \ALT_INV_Add13~37_sumout\,
	cin => \Add15~38\,
	sumout => \Add15~41_sumout\,
	cout => \Add15~42\);

-- Location: MLABCELL_X82_Y4_N30
\Add11~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~41_sumout\ = SUM(( !\Lowpass:5:N_Bit_Register_unit|output\(6) $ (\Lowpass:5:N_Bit_Register_unit|output\(7)) ) + ( \Add11~39\ ) + ( \Add11~38\ ))
-- \Add11~42\ = CARRY(( !\Lowpass:5:N_Bit_Register_unit|output\(6) $ (\Lowpass:5:N_Bit_Register_unit|output\(7)) ) + ( \Add11~39\ ) + ( \Add11~38\ ))
-- \Add11~43\ = SHARE((\Lowpass:5:N_Bit_Register_unit|output\(6) & !\Lowpass:5:N_Bit_Register_unit|output\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(6),
	datab => \Lowpass:5:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add11~38\,
	sharein => \Add11~39\,
	sumout => \Add11~41_sumout\,
	cout => \Add11~42\,
	shareout => \Add11~43\);

-- Location: LABCELL_X83_Y4_N30
\Add13~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~41_sumout\ = SUM(( \Add11~41_sumout\ ) + ( \added_value[5][11]\ ) + ( \Add13~38\ ))
-- \Add13~42\ = CARRY(( \Add11~41_sumout\ ) + ( \added_value[5][11]\ ) + ( \Add13~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_added_value[5][11]\,
	datad => \ALT_INV_Add11~41_sumout\,
	cin => \Add13~38\,
	sumout => \Add13~41_sumout\,
	cout => \Add13~42\);

-- Location: LABCELL_X85_Y4_N33
\Add15~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~45_sumout\ = SUM(( \Add13~41_sumout\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add15~42\ ))
-- \Add15~46\ = CARRY(( \Add13~41_sumout\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add15~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add13~41_sumout\,
	datac => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add15~42\,
	sumout => \Add15~45_sumout\,
	cout => \Add15~46\);

-- Location: MLABCELL_X82_Y4_N33
\Add11~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~45_sumout\ = SUM(( VCC ) + ( \Add11~43\ ) + ( \Add11~42\ ))
-- \Add11~46\ = CARRY(( VCC ) + ( \Add11~43\ ) + ( \Add11~42\ ))
-- \Add11~47\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add11~42\,
	sharein => \Add11~43\,
	sumout => \Add11~45_sumout\,
	cout => \Add11~46\,
	shareout => \Add11~47\);

-- Location: LABCELL_X83_Y4_N33
\Add13~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~45_sumout\ = SUM(( \added_value[5][12]\ ) + ( \Add11~45_sumout\ ) + ( \Add13~42\ ))
-- \Add13~46\ = CARRY(( \added_value[5][12]\ ) + ( \Add11~45_sumout\ ) + ( \Add13~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add11~45_sumout\,
	datad => \ALT_INV_added_value[5][12]\,
	cin => \Add13~42\,
	sumout => \Add13~45_sumout\,
	cout => \Add13~46\);

-- Location: LABCELL_X85_Y4_N36
\Add15~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~49_sumout\ = SUM(( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add13~45_sumout\ ) + ( \Add15~46\ ))
-- \Add15~50\ = CARRY(( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add13~45_sumout\ ) + ( \Add15~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add13~45_sumout\,
	datad => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add15~46\,
	sumout => \Add15~49_sumout\,
	cout => \Add15~50\);

-- Location: MLABCELL_X82_Y4_N36
\Add11~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~49_sumout\ = SUM(( VCC ) + ( \Add11~47\ ) + ( \Add11~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add11~46\,
	sharein => \Add11~47\,
	sumout => \Add11~49_sumout\);

-- Location: LABCELL_X83_Y4_N36
\Add13~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~49_sumout\ = SUM(( \added_value[5][13]\ ) + ( \Add11~49_sumout\ ) + ( \Add13~46\ ))
-- \Add13~50\ = CARRY(( \added_value[5][13]\ ) + ( \Add11~49_sumout\ ) + ( \Add13~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~49_sumout\,
	datac => \ALT_INV_added_value[5][13]\,
	cin => \Add13~46\,
	sumout => \Add13~49_sumout\,
	cout => \Add13~50\);

-- Location: LABCELL_X85_Y4_N39
\Add15~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~53_sumout\ = SUM(( \Add13~49_sumout\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add15~50\ ))
-- \Add15~54\ = CARRY(( \Add13~49_sumout\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add15~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add13~49_sumout\,
	datac => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add15~50\,
	sumout => \Add15~53_sumout\,
	cout => \Add15~54\);

-- Location: LABCELL_X83_Y4_N39
\Add13~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~53_sumout\ = SUM(( \added_value[5][14]\ ) + ( \Add11~49_sumout\ ) + ( \Add13~50\ ))
-- \Add13~54\ = CARRY(( \added_value[5][14]\ ) + ( \Add11~49_sumout\ ) + ( \Add13~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~49_sumout\,
	datac => \ALT_INV_added_value[5][14]\,
	cin => \Add13~50\,
	sumout => \Add13~53_sumout\,
	cout => \Add13~54\);

-- Location: LABCELL_X85_Y4_N42
\Add15~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~57_sumout\ = SUM(( \Add13~53_sumout\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add15~54\ ))
-- \Add15~58\ = CARRY(( \Add13~53_sumout\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add15~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \ALT_INV_Add13~53_sumout\,
	cin => \Add15~54\,
	sumout => \Add15~57_sumout\,
	cout => \Add15~58\);

-- Location: LABCELL_X83_Y4_N42
\Add13~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~57_sumout\ = SUM(( \added_value[5][15]\ ) + ( \Add11~49_sumout\ ) + ( \Add13~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_added_value[5][15]\,
	datac => \ALT_INV_Add11~49_sumout\,
	cin => \Add13~54\,
	sumout => \Add13~57_sumout\);

-- Location: LABCELL_X85_Y4_N45
\Add15~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~61_sumout\ = SUM(( \Add13~57_sumout\ ) + ( \Lowpass:6:N_Bit_Register_unit|output\(7) ) + ( \Add15~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add13~57_sumout\,
	datac => \Lowpass:6:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add15~58\,
	sumout => \Add15~61_sumout\);

-- Location: DSP_X86_Y4_N0
\Mult2~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult2~mac_AX_bus\,
	ay => \Mult2~mac_AY_bus\,
	bx => \Mult2~mac_BX_bus\,
	by => \Mult2~mac_BY_bus\,
	resulta => \Mult2~mac_RESULTA_bus\);

-- Location: FF_X82_Y4_N40
\Lowpass:8:N_Bit_Register_unit|output[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:7:N_Bit_Register_unit|output\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:8:N_Bit_Register_unit|output[0]~DUPLICATE_q\);

-- Location: FF_X83_Y4_N14
\Lowpass:9:N_Bit_Register_unit|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:8:N_Bit_Register_unit|output[0]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:9:N_Bit_Register_unit|output\(0));

-- Location: MLABCELL_X87_Y4_N0
\Add19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~1_sumout\ = SUM(( !\Add17~1_sumout\ $ (!\added_value[8][0]\ $ (\Lowpass:9:N_Bit_Register_unit|output\(0))) ) + ( !VCC ) + ( !VCC ))
-- \Add19~2\ = CARRY(( !\Add17~1_sumout\ $ (!\added_value[8][0]\ $ (\Lowpass:9:N_Bit_Register_unit|output\(0))) ) + ( !VCC ) + ( !VCC ))
-- \Add19~3\ = SHARE((!\Add17~1_sumout\ & (\added_value[8][0]\ & \Lowpass:9:N_Bit_Register_unit|output\(0))) # (\Add17~1_sumout\ & ((\Lowpass:9:N_Bit_Register_unit|output\(0)) # (\added_value[8][0]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add17~1_sumout\,
	datac => \ALT_INV_added_value[8][0]\,
	datad => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(0),
	cin => GND,
	sharein => GND,
	sumout => \Add19~1_sumout\,
	cout => \Add19~2\,
	shareout => \Add19~3\);

-- Location: FF_X83_Y4_N44
\Lowpass:8:N_Bit_Register_unit|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:7:N_Bit_Register_unit|output\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:8:N_Bit_Register_unit|output\(1));

-- Location: FF_X84_Y4_N35
\Lowpass:9:N_Bit_Register_unit|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:8:N_Bit_Register_unit|output\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:9:N_Bit_Register_unit|output\(1));

-- Location: MLABCELL_X84_Y4_N3
\Add17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~5_sumout\ = SUM(( !\Lowpass:8:N_Bit_Register_unit|output\(1) ) + ( GND ) + ( \Add17~2\ ))
-- \Add17~6\ = CARRY(( !\Lowpass:8:N_Bit_Register_unit|output\(1) ) + ( GND ) + ( \Add17~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(1),
	cin => \Add17~2\,
	sumout => \Add17~5_sumout\,
	cout => \Add17~6\);

-- Location: MLABCELL_X87_Y4_N3
\Add19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~5_sumout\ = SUM(( !\added_value[8][1]\ $ (!\Lowpass:9:N_Bit_Register_unit|output\(1) $ (\Add17~5_sumout\)) ) + ( \Add19~3\ ) + ( \Add19~2\ ))
-- \Add19~6\ = CARRY(( !\added_value[8][1]\ $ (!\Lowpass:9:N_Bit_Register_unit|output\(1) $ (\Add17~5_sumout\)) ) + ( \Add19~3\ ) + ( \Add19~2\ ))
-- \Add19~7\ = SHARE((!\added_value[8][1]\ & (\Lowpass:9:N_Bit_Register_unit|output\(1) & \Add17~5_sumout\)) # (\added_value[8][1]\ & ((\Add17~5_sumout\) # (\Lowpass:9:N_Bit_Register_unit|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_added_value[8][1]\,
	datac => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(1),
	datad => \ALT_INV_Add17~5_sumout\,
	cin => \Add19~2\,
	sharein => \Add19~3\,
	sumout => \Add19~5_sumout\,
	cout => \Add19~6\,
	shareout => \Add19~7\);

-- Location: FF_X83_Y4_N20
\Lowpass:8:N_Bit_Register_unit|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:7:N_Bit_Register_unit|output\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:8:N_Bit_Register_unit|output\(2));

-- Location: MLABCELL_X84_Y4_N6
\Add17~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~9_sumout\ = SUM(( !\Lowpass:8:N_Bit_Register_unit|output\(2) ) + ( GND ) + ( \Add17~6\ ))
-- \Add17~10\ = CARRY(( !\Lowpass:8:N_Bit_Register_unit|output\(2) ) + ( GND ) + ( \Add17~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(2),
	cin => \Add17~6\,
	sumout => \Add17~9_sumout\,
	cout => \Add17~10\);

-- Location: FF_X83_Y4_N46
\Lowpass:9:N_Bit_Register_unit|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:8:N_Bit_Register_unit|output\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:9:N_Bit_Register_unit|output\(2));

-- Location: LABCELL_X88_Y4_N0
\Add20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~1_sumout\ = SUM(( \Lowpass:9:N_Bit_Register_unit|output\(0) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(2) ) + ( !VCC ))
-- \Add20~2\ = CARRY(( \Lowpass:9:N_Bit_Register_unit|output\(0) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(0),
	datac => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(2),
	cin => GND,
	sumout => \Add20~1_sumout\,
	cout => \Add20~2\);

-- Location: MLABCELL_X87_Y4_N6
\Add19~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~9_sumout\ = SUM(( !\Add17~9_sumout\ $ (!\added_value[8][2]\ $ (\Add20~1_sumout\)) ) + ( \Add19~7\ ) + ( \Add19~6\ ))
-- \Add19~10\ = CARRY(( !\Add17~9_sumout\ $ (!\added_value[8][2]\ $ (\Add20~1_sumout\)) ) + ( \Add19~7\ ) + ( \Add19~6\ ))
-- \Add19~11\ = SHARE((!\Add17~9_sumout\ & (\added_value[8][2]\ & \Add20~1_sumout\)) # (\Add17~9_sumout\ & ((\Add20~1_sumout\) # (\added_value[8][2]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add17~9_sumout\,
	datac => \ALT_INV_added_value[8][2]\,
	datad => \ALT_INV_Add20~1_sumout\,
	cin => \Add19~6\,
	sharein => \Add19~7\,
	sumout => \Add19~9_sumout\,
	cout => \Add19~10\,
	shareout => \Add19~11\);

-- Location: LABCELL_X83_Y3_N18
\Lowpass:8:N_Bit_Register_unit|output[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:8:N_Bit_Register_unit|output[3]~feeder_combout\ = ( \Lowpass:7:N_Bit_Register_unit|output\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Lowpass:7:N_Bit_Register_unit|ALT_INV_output\(3),
	combout => \Lowpass:8:N_Bit_Register_unit|output[3]~feeder_combout\);

-- Location: FF_X83_Y3_N19
\Lowpass:8:N_Bit_Register_unit|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:8:N_Bit_Register_unit|output[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:8:N_Bit_Register_unit|output\(3));

-- Location: MLABCELL_X84_Y4_N9
\Add17~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~17_sumout\ = SUM(( !\Lowpass:8:N_Bit_Register_unit|output\(3) ) + ( GND ) + ( \Add17~10\ ))
-- \Add17~18\ = CARRY(( !\Lowpass:8:N_Bit_Register_unit|output\(3) ) + ( GND ) + ( \Add17~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(3),
	cin => \Add17~10\,
	sumout => \Add17~17_sumout\,
	cout => \Add17~18\);

-- Location: LABCELL_X88_Y4_N30
\Add18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~1_sumout\ = SUM(( \Add17~17_sumout\ ) + ( \Add17~1_sumout\ ) + ( !VCC ))
-- \Add18~2\ = CARRY(( \Add17~17_sumout\ ) + ( \Add17~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add17~17_sumout\,
	datac => \ALT_INV_Add17~1_sumout\,
	cin => GND,
	sumout => \Add18~1_sumout\,
	cout => \Add18~2\);

-- Location: FF_X84_Y4_N2
\Lowpass:9:N_Bit_Register_unit|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:8:N_Bit_Register_unit|output\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:9:N_Bit_Register_unit|output\(3));

-- Location: LABCELL_X88_Y4_N3
\Add20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~5_sumout\ = SUM(( \Lowpass:9:N_Bit_Register_unit|output\(1) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(3) ) + ( \Add20~2\ ))
-- \Add20~6\ = CARRY(( \Lowpass:9:N_Bit_Register_unit|output\(1) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(3) ) + ( \Add20~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(1),
	dataf => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(3),
	cin => \Add20~2\,
	sumout => \Add20~5_sumout\,
	cout => \Add20~6\);

-- Location: MLABCELL_X87_Y4_N9
\Add19~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~13_sumout\ = SUM(( !\Add18~1_sumout\ $ (!\Add20~5_sumout\ $ (\added_value[8][3]\)) ) + ( \Add19~11\ ) + ( \Add19~10\ ))
-- \Add19~14\ = CARRY(( !\Add18~1_sumout\ $ (!\Add20~5_sumout\ $ (\added_value[8][3]\)) ) + ( \Add19~11\ ) + ( \Add19~10\ ))
-- \Add19~15\ = SHARE((!\Add18~1_sumout\ & (\Add20~5_sumout\ & \added_value[8][3]\)) # (\Add18~1_sumout\ & ((\added_value[8][3]\) # (\Add20~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add18~1_sumout\,
	datac => \ALT_INV_Add20~5_sumout\,
	datad => \ALT_INV_added_value[8][3]\,
	cin => \Add19~10\,
	sharein => \Add19~11\,
	sumout => \Add19~13_sumout\,
	cout => \Add19~14\,
	shareout => \Add19~15\);

-- Location: LABCELL_X83_Y4_N54
\Lowpass:8:N_Bit_Register_unit|output[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Lowpass:8:N_Bit_Register_unit|output[4]~feeder_combout\ = \Lowpass:7:N_Bit_Register_unit|output\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:7:N_Bit_Register_unit|ALT_INV_output\(4),
	combout => \Lowpass:8:N_Bit_Register_unit|output[4]~feeder_combout\);

-- Location: FF_X83_Y4_N55
\Lowpass:8:N_Bit_Register_unit|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:8:N_Bit_Register_unit|output[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:8:N_Bit_Register_unit|output\(4));

-- Location: MLABCELL_X84_Y4_N12
\Add17~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~21_sumout\ = SUM(( !\Lowpass:8:N_Bit_Register_unit|output\(4) ) + ( GND ) + ( \Add17~18\ ))
-- \Add17~22\ = CARRY(( !\Lowpass:8:N_Bit_Register_unit|output\(4) ) + ( GND ) + ( \Add17~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(4),
	cin => \Add17~18\,
	sumout => \Add17~21_sumout\,
	cout => \Add17~22\);

-- Location: LABCELL_X88_Y4_N33
\Add18~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~5_sumout\ = SUM(( \Add17~21_sumout\ ) + ( \Add17~5_sumout\ ) + ( \Add18~2\ ))
-- \Add18~6\ = CARRY(( \Add17~21_sumout\ ) + ( \Add17~5_sumout\ ) + ( \Add18~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add17~5_sumout\,
	datac => \ALT_INV_Add17~21_sumout\,
	cin => \Add18~2\,
	sumout => \Add18~5_sumout\,
	cout => \Add18~6\);

-- Location: FF_X84_Y4_N50
\Lowpass:9:N_Bit_Register_unit|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:8:N_Bit_Register_unit|output\(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:9:N_Bit_Register_unit|output\(4));

-- Location: LABCELL_X88_Y4_N6
\Add20~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~9_sumout\ = SUM(( \Lowpass:9:N_Bit_Register_unit|output\(4) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(2) ) + ( \Add20~6\ ))
-- \Add20~10\ = CARRY(( \Lowpass:9:N_Bit_Register_unit|output\(4) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(2) ) + ( \Add20~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(4),
	dataf => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(2),
	cin => \Add20~6\,
	sumout => \Add20~9_sumout\,
	cout => \Add20~10\);

-- Location: MLABCELL_X87_Y4_N12
\Add19~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~17_sumout\ = SUM(( !\Add18~5_sumout\ $ (!\added_value[8][4]\ $ (\Add20~9_sumout\)) ) + ( \Add19~15\ ) + ( \Add19~14\ ))
-- \Add19~18\ = CARRY(( !\Add18~5_sumout\ $ (!\added_value[8][4]\ $ (\Add20~9_sumout\)) ) + ( \Add19~15\ ) + ( \Add19~14\ ))
-- \Add19~19\ = SHARE((!\Add18~5_sumout\ & (\added_value[8][4]\ & \Add20~9_sumout\)) # (\Add18~5_sumout\ & ((\Add20~9_sumout\) # (\added_value[8][4]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add18~5_sumout\,
	datac => \ALT_INV_added_value[8][4]\,
	datad => \ALT_INV_Add20~9_sumout\,
	cin => \Add19~14\,
	sharein => \Add19~15\,
	sumout => \Add19~17_sumout\,
	cout => \Add19~18\,
	shareout => \Add19~19\);

-- Location: FF_X82_Y4_N59
\Lowpass:7:N_Bit_Register_unit|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:6:N_Bit_Register_unit|output\(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:7:N_Bit_Register_unit|output\(5));

-- Location: FF_X82_Y4_N17
\Lowpass:8:N_Bit_Register_unit|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:7:N_Bit_Register_unit|output\(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:8:N_Bit_Register_unit|output\(5));

-- Location: FF_X81_Y4_N49
\Lowpass:9:N_Bit_Register_unit|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:8:N_Bit_Register_unit|output\(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:9:N_Bit_Register_unit|output\(5));

-- Location: LABCELL_X88_Y4_N9
\Add20~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~13_sumout\ = SUM(( \Lowpass:9:N_Bit_Register_unit|output\(3) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(5) ) + ( \Add20~10\ ))
-- \Add20~14\ = CARRY(( \Lowpass:9:N_Bit_Register_unit|output\(3) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(5) ) + ( \Add20~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(5),
	datac => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(3),
	cin => \Add20~10\,
	sumout => \Add20~13_sumout\,
	cout => \Add20~14\);

-- Location: MLABCELL_X84_Y4_N15
\Add17~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~25_sumout\ = SUM(( !\Lowpass:8:N_Bit_Register_unit|output\(5) ) + ( GND ) + ( \Add17~22\ ))
-- \Add17~26\ = CARRY(( !\Lowpass:8:N_Bit_Register_unit|output\(5) ) + ( GND ) + ( \Add17~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(5),
	cin => \Add17~22\,
	sumout => \Add17~25_sumout\,
	cout => \Add17~26\);

-- Location: LABCELL_X88_Y4_N36
\Add18~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~9_sumout\ = SUM(( \Add17~25_sumout\ ) + ( \Add17~9_sumout\ ) + ( \Add18~6\ ))
-- \Add18~10\ = CARRY(( \Add17~25_sumout\ ) + ( \Add17~9_sumout\ ) + ( \Add18~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add17~25_sumout\,
	dataf => \ALT_INV_Add17~9_sumout\,
	cin => \Add18~6\,
	sumout => \Add18~9_sumout\,
	cout => \Add18~10\);

-- Location: MLABCELL_X87_Y4_N15
\Add19~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~21_sumout\ = SUM(( !\added_value[8][5]\ $ (!\Add20~13_sumout\ $ (\Add18~9_sumout\)) ) + ( \Add19~19\ ) + ( \Add19~18\ ))
-- \Add19~22\ = CARRY(( !\added_value[8][5]\ $ (!\Add20~13_sumout\ $ (\Add18~9_sumout\)) ) + ( \Add19~19\ ) + ( \Add19~18\ ))
-- \Add19~23\ = SHARE((!\added_value[8][5]\ & (\Add20~13_sumout\ & \Add18~9_sumout\)) # (\added_value[8][5]\ & ((\Add18~9_sumout\) # (\Add20~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_added_value[8][5]\,
	datac => \ALT_INV_Add20~13_sumout\,
	datad => \ALT_INV_Add18~9_sumout\,
	cin => \Add19~18\,
	sharein => \Add19~19\,
	sumout => \Add19~21_sumout\,
	cout => \Add19~22\,
	shareout => \Add19~23\);

-- Location: FF_X84_Y4_N53
\Lowpass:8:N_Bit_Register_unit|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:7:N_Bit_Register_unit|output\(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:8:N_Bit_Register_unit|output\(6));

-- Location: MLABCELL_X84_Y4_N18
\Add17~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~29_sumout\ = SUM(( !\Lowpass:8:N_Bit_Register_unit|output\(6) ) + ( GND ) + ( \Add17~26\ ))
-- \Add17~30\ = CARRY(( !\Lowpass:8:N_Bit_Register_unit|output\(6) ) + ( GND ) + ( \Add17~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(6),
	cin => \Add17~26\,
	sumout => \Add17~29_sumout\,
	cout => \Add17~30\);

-- Location: LABCELL_X88_Y4_N39
\Add18~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~13_sumout\ = SUM(( \Add17~29_sumout\ ) + ( \Add17~17_sumout\ ) + ( \Add18~10\ ))
-- \Add18~14\ = CARRY(( \Add17~29_sumout\ ) + ( \Add17~17_sumout\ ) + ( \Add18~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add17~29_sumout\,
	datac => \ALT_INV_Add17~17_sumout\,
	cin => \Add18~10\,
	sumout => \Add18~13_sumout\,
	cout => \Add18~14\);

-- Location: FF_X84_Y4_N47
\Lowpass:9:N_Bit_Register_unit|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:8:N_Bit_Register_unit|output\(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:9:N_Bit_Register_unit|output\(6));

-- Location: LABCELL_X88_Y4_N12
\Add20~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~17_sumout\ = SUM(( \Lowpass:9:N_Bit_Register_unit|output\(4) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(6) ) + ( \Add20~14\ ))
-- \Add20~18\ = CARRY(( \Lowpass:9:N_Bit_Register_unit|output\(4) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(6) ) + ( \Add20~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(4),
	dataf => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(6),
	cin => \Add20~14\,
	sumout => \Add20~17_sumout\,
	cout => \Add20~18\);

-- Location: MLABCELL_X87_Y4_N18
\Add19~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~25_sumout\ = SUM(( !\added_value[8][6]\ $ (!\Add18~13_sumout\ $ (\Add20~17_sumout\)) ) + ( \Add19~23\ ) + ( \Add19~22\ ))
-- \Add19~26\ = CARRY(( !\added_value[8][6]\ $ (!\Add18~13_sumout\ $ (\Add20~17_sumout\)) ) + ( \Add19~23\ ) + ( \Add19~22\ ))
-- \Add19~27\ = SHARE((!\added_value[8][6]\ & (\Add18~13_sumout\ & \Add20~17_sumout\)) # (\added_value[8][6]\ & ((\Add20~17_sumout\) # (\Add18~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_added_value[8][6]\,
	datac => \ALT_INV_Add18~13_sumout\,
	datad => \ALT_INV_Add20~17_sumout\,
	cin => \Add19~22\,
	sharein => \Add19~23\,
	sumout => \Add19~25_sumout\,
	cout => \Add19~26\,
	shareout => \Add19~27\);

-- Location: FF_X84_Y4_N56
\Lowpass:7:N_Bit_Register_unit|output[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Lowpass:7:N_Bit_Register_unit|output[7]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:7:N_Bit_Register_unit|output[7]~DUPLICATE_q\);

-- Location: FF_X84_Y4_N28
\Lowpass:8:N_Bit_Register_unit|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:7:N_Bit_Register_unit|output[7]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:8:N_Bit_Register_unit|output\(7));

-- Location: FF_X85_Y4_N49
\Lowpass:9:N_Bit_Register_unit|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Lowpass:8:N_Bit_Register_unit|output\(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Lowpass:9:N_Bit_Register_unit|output\(7));

-- Location: LABCELL_X88_Y4_N15
\Add20~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~21_sumout\ = SUM(( \Lowpass:9:N_Bit_Register_unit|output\(5) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(7) ) + ( \Add20~18\ ))
-- \Add20~22\ = CARRY(( \Lowpass:9:N_Bit_Register_unit|output\(5) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(7) ) + ( \Add20~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(5),
	datac => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add20~18\,
	sumout => \Add20~21_sumout\,
	cout => \Add20~22\);

-- Location: MLABCELL_X84_Y4_N21
\Add17~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~33_sumout\ = SUM(( !\Lowpass:8:N_Bit_Register_unit|output\(7) ) + ( GND ) + ( \Add17~30\ ))
-- \Add17~34\ = CARRY(( !\Lowpass:8:N_Bit_Register_unit|output\(7) ) + ( GND ) + ( \Add17~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add17~30\,
	sumout => \Add17~33_sumout\,
	cout => \Add17~34\);

-- Location: LABCELL_X88_Y4_N42
\Add18~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~17_sumout\ = SUM(( \Add17~33_sumout\ ) + ( \Add17~21_sumout\ ) + ( \Add18~14\ ))
-- \Add18~18\ = CARRY(( \Add17~33_sumout\ ) + ( \Add17~21_sumout\ ) + ( \Add18~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add17~33_sumout\,
	dataf => \ALT_INV_Add17~21_sumout\,
	cin => \Add18~14\,
	sumout => \Add18~17_sumout\,
	cout => \Add18~18\);

-- Location: MLABCELL_X87_Y4_N21
\Add19~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~29_sumout\ = SUM(( !\Add20~21_sumout\ $ (!\Add18~17_sumout\ $ (\added_value[8][7]\)) ) + ( \Add19~27\ ) + ( \Add19~26\ ))
-- \Add19~30\ = CARRY(( !\Add20~21_sumout\ $ (!\Add18~17_sumout\ $ (\added_value[8][7]\)) ) + ( \Add19~27\ ) + ( \Add19~26\ ))
-- \Add19~31\ = SHARE((!\Add20~21_sumout\ & (\Add18~17_sumout\ & \added_value[8][7]\)) # (\Add20~21_sumout\ & ((\added_value[8][7]\) # (\Add18~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add20~21_sumout\,
	datac => \ALT_INV_Add18~17_sumout\,
	datad => \ALT_INV_added_value[8][7]\,
	cin => \Add19~26\,
	sharein => \Add19~27\,
	sumout => \Add19~29_sumout\,
	cout => \Add19~30\,
	shareout => \Add19~31\);

-- Location: MLABCELL_X84_Y4_N24
\Add17~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add17~13_sumout\ = SUM(( !\Lowpass:8:N_Bit_Register_unit|output\(7) ) + ( GND ) + ( \Add17~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:8:N_Bit_Register_unit|ALT_INV_output\(7),
	cin => \Add17~34\,
	sumout => \Add17~13_sumout\);

-- Location: LABCELL_X88_Y4_N45
\Add18~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~21_sumout\ = SUM(( \Add17~13_sumout\ ) + ( \Add17~25_sumout\ ) + ( \Add18~18\ ))
-- \Add18~22\ = CARRY(( \Add17~13_sumout\ ) + ( \Add17~25_sumout\ ) + ( \Add18~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add17~13_sumout\,
	datac => \ALT_INV_Add17~25_sumout\,
	cin => \Add18~18\,
	sumout => \Add18~21_sumout\,
	cout => \Add18~22\);

-- Location: LABCELL_X88_Y4_N18
\Add20~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~25_sumout\ = SUM(( \Lowpass:9:N_Bit_Register_unit|output\(6) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(7) ) + ( \Add20~22\ ))
-- \Add20~26\ = CARRY(( \Lowpass:9:N_Bit_Register_unit|output\(6) ) + ( \Lowpass:9:N_Bit_Register_unit|output\(7) ) + ( \Add20~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(6),
	cin => \Add20~22\,
	sumout => \Add20~25_sumout\,
	cout => \Add20~26\);

-- Location: MLABCELL_X87_Y4_N24
\Add19~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~33_sumout\ = SUM(( !\Add18~21_sumout\ $ (!\Add20~25_sumout\ $ (\added_value[8][8]\)) ) + ( \Add19~31\ ) + ( \Add19~30\ ))
-- \Add19~34\ = CARRY(( !\Add18~21_sumout\ $ (!\Add20~25_sumout\ $ (\added_value[8][8]\)) ) + ( \Add19~31\ ) + ( \Add19~30\ ))
-- \Add19~35\ = SHARE((!\Add18~21_sumout\ & (\Add20~25_sumout\ & \added_value[8][8]\)) # (\Add18~21_sumout\ & ((\added_value[8][8]\) # (\Add20~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add18~21_sumout\,
	datac => \ALT_INV_Add20~25_sumout\,
	datad => \ALT_INV_added_value[8][8]\,
	cin => \Add19~30\,
	sharein => \Add19~31\,
	sumout => \Add19~33_sumout\,
	cout => \Add19~34\,
	shareout => \Add19~35\);

-- Location: LABCELL_X88_Y4_N48
\Add18~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~25_sumout\ = SUM(( \Add17~29_sumout\ ) + ( \Add17~13_sumout\ ) + ( \Add18~22\ ))
-- \Add18~26\ = CARRY(( \Add17~29_sumout\ ) + ( \Add17~13_sumout\ ) + ( \Add18~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add17~13_sumout\,
	datad => \ALT_INV_Add17~29_sumout\,
	cin => \Add18~22\,
	sumout => \Add18~25_sumout\,
	cout => \Add18~26\);

-- Location: LABCELL_X88_Y4_N21
\Add20~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add20~29_sumout\ = SUM(( GND ) + ( GND ) + ( \Add20~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add20~26\,
	sumout => \Add20~29_sumout\);

-- Location: MLABCELL_X87_Y4_N27
\Add19~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~37_sumout\ = SUM(( !\added_value[8][9]\ $ (!\Add18~25_sumout\ $ (\Add20~29_sumout\)) ) + ( \Add19~35\ ) + ( \Add19~34\ ))
-- \Add19~38\ = CARRY(( !\added_value[8][9]\ $ (!\Add18~25_sumout\ $ (\Add20~29_sumout\)) ) + ( \Add19~35\ ) + ( \Add19~34\ ))
-- \Add19~39\ = SHARE((!\added_value[8][9]\ & (\Add18~25_sumout\ & \Add20~29_sumout\)) # (\added_value[8][9]\ & ((\Add20~29_sumout\) # (\Add18~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_added_value[8][9]\,
	datac => \ALT_INV_Add18~25_sumout\,
	datad => \ALT_INV_Add20~29_sumout\,
	cin => \Add19~34\,
	sharein => \Add19~35\,
	sumout => \Add19~37_sumout\,
	cout => \Add19~38\,
	shareout => \Add19~39\);

-- Location: LABCELL_X88_Y4_N51
\Add18~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~29_sumout\ = SUM(( \Add17~13_sumout\ ) + ( \Add17~33_sumout\ ) + ( \Add18~26\ ))
-- \Add18~30\ = CARRY(( \Add17~13_sumout\ ) + ( \Add17~33_sumout\ ) + ( \Add18~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add17~13_sumout\,
	datac => \ALT_INV_Add17~33_sumout\,
	cin => \Add18~26\,
	sumout => \Add18~29_sumout\,
	cout => \Add18~30\);

-- Location: MLABCELL_X87_Y4_N30
\Add19~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~41_sumout\ = SUM(( !\Lowpass:9:N_Bit_Register_unit|output\(7) $ (!\Add18~29_sumout\ $ (\added_value[8][10]\)) ) + ( \Add19~39\ ) + ( \Add19~38\ ))
-- \Add19~42\ = CARRY(( !\Lowpass:9:N_Bit_Register_unit|output\(7) $ (!\Add18~29_sumout\ $ (\added_value[8][10]\)) ) + ( \Add19~39\ ) + ( \Add19~38\ ))
-- \Add19~43\ = SHARE((!\Lowpass:9:N_Bit_Register_unit|output\(7) & (\Add18~29_sumout\ & \added_value[8][10]\)) # (\Lowpass:9:N_Bit_Register_unit|output\(7) & ((\added_value[8][10]\) # (\Add18~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \ALT_INV_Add18~29_sumout\,
	datad => \ALT_INV_added_value[8][10]\,
	cin => \Add19~38\,
	sharein => \Add19~39\,
	sumout => \Add19~41_sumout\,
	cout => \Add19~42\,
	shareout => \Add19~43\);

-- Location: LABCELL_X88_Y4_N54
\Add18~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~33_sumout\ = SUM(( \Add17~13_sumout\ ) + ( \Add17~13_sumout\ ) + ( \Add18~30\ ))
-- \Add18~34\ = CARRY(( \Add17~13_sumout\ ) + ( \Add17~13_sumout\ ) + ( \Add18~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add17~13_sumout\,
	cin => \Add18~30\,
	sumout => \Add18~33_sumout\,
	cout => \Add18~34\);

-- Location: MLABCELL_X87_Y4_N33
\Add19~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~45_sumout\ = SUM(( !\Lowpass:9:N_Bit_Register_unit|output\(7) $ (!\Add18~33_sumout\ $ (\added_value[8][11]\)) ) + ( \Add19~43\ ) + ( \Add19~42\ ))
-- \Add19~46\ = CARRY(( !\Lowpass:9:N_Bit_Register_unit|output\(7) $ (!\Add18~33_sumout\ $ (\added_value[8][11]\)) ) + ( \Add19~43\ ) + ( \Add19~42\ ))
-- \Add19~47\ = SHARE((!\Lowpass:9:N_Bit_Register_unit|output\(7) & (\Add18~33_sumout\ & \added_value[8][11]\)) # (\Lowpass:9:N_Bit_Register_unit|output\(7) & ((\added_value[8][11]\) # (\Add18~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \ALT_INV_Add18~33_sumout\,
	datad => \ALT_INV_added_value[8][11]\,
	cin => \Add19~42\,
	sharein => \Add19~43\,
	sumout => \Add19~45_sumout\,
	cout => \Add19~46\,
	shareout => \Add19~47\);

-- Location: LABCELL_X88_Y4_N57
\Add18~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add18~37_sumout\ = SUM(( GND ) + ( GND ) + ( \Add18~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add18~34\,
	sumout => \Add18~37_sumout\);

-- Location: MLABCELL_X87_Y4_N36
\Add19~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~49_sumout\ = SUM(( !\Lowpass:9:N_Bit_Register_unit|output\(7) $ (!\added_value[8][12]\ $ (\Add18~37_sumout\)) ) + ( \Add19~47\ ) + ( \Add19~46\ ))
-- \Add19~50\ = CARRY(( !\Lowpass:9:N_Bit_Register_unit|output\(7) $ (!\added_value[8][12]\ $ (\Add18~37_sumout\)) ) + ( \Add19~47\ ) + ( \Add19~46\ ))
-- \Add19~51\ = SHARE((!\Lowpass:9:N_Bit_Register_unit|output\(7) & (\added_value[8][12]\ & \Add18~37_sumout\)) # (\Lowpass:9:N_Bit_Register_unit|output\(7) & ((\Add18~37_sumout\) # (\added_value[8][12]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \ALT_INV_added_value[8][12]\,
	datad => \ALT_INV_Add18~37_sumout\,
	cin => \Add19~46\,
	sharein => \Add19~47\,
	sumout => \Add19~49_sumout\,
	cout => \Add19~50\,
	shareout => \Add19~51\);

-- Location: MLABCELL_X87_Y4_N39
\Add19~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~53_sumout\ = SUM(( !\Lowpass:9:N_Bit_Register_unit|output\(7) $ (!\added_value[8][13]\ $ (\Add17~13_sumout\)) ) + ( \Add19~51\ ) + ( \Add19~50\ ))
-- \Add19~54\ = CARRY(( !\Lowpass:9:N_Bit_Register_unit|output\(7) $ (!\added_value[8][13]\ $ (\Add17~13_sumout\)) ) + ( \Add19~51\ ) + ( \Add19~50\ ))
-- \Add19~55\ = SHARE((!\Lowpass:9:N_Bit_Register_unit|output\(7) & (\added_value[8][13]\ & \Add17~13_sumout\)) # (\Lowpass:9:N_Bit_Register_unit|output\(7) & ((\Add17~13_sumout\) # (\added_value[8][13]\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(7),
	datac => \ALT_INV_added_value[8][13]\,
	datad => \ALT_INV_Add17~13_sumout\,
	cin => \Add19~50\,
	sharein => \Add19~51\,
	sumout => \Add19~53_sumout\,
	cout => \Add19~54\,
	shareout => \Add19~55\);

-- Location: MLABCELL_X87_Y4_N42
\Add19~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~57_sumout\ = SUM(( !\Lowpass:9:N_Bit_Register_unit|output\(7) $ (!\Add17~13_sumout\ $ (\added_value[8][14]\)) ) + ( \Add19~55\ ) + ( \Add19~54\ ))
-- \Add19~58\ = CARRY(( !\Lowpass:9:N_Bit_Register_unit|output\(7) $ (!\Add17~13_sumout\ $ (\added_value[8][14]\)) ) + ( \Add19~55\ ) + ( \Add19~54\ ))
-- \Add19~59\ = SHARE((!\Lowpass:9:N_Bit_Register_unit|output\(7) & (\Add17~13_sumout\ & \added_value[8][14]\)) # (\Lowpass:9:N_Bit_Register_unit|output\(7) & ((\added_value[8][14]\) # (\Add17~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(7),
	datab => \ALT_INV_Add17~13_sumout\,
	datac => \ALT_INV_added_value[8][14]\,
	cin => \Add19~54\,
	sharein => \Add19~55\,
	sumout => \Add19~57_sumout\,
	cout => \Add19~58\,
	shareout => \Add19~59\);

-- Location: MLABCELL_X87_Y4_N45
\Add19~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add19~61_sumout\ = SUM(( !\Lowpass:9:N_Bit_Register_unit|output\(7) $ (!\Add17~13_sumout\ $ (\added_value[8][15]\)) ) + ( \Add19~59\ ) + ( \Add19~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Lowpass:9:N_Bit_Register_unit|ALT_INV_output\(7),
	datab => \ALT_INV_Add17~13_sumout\,
	datac => \ALT_INV_added_value[8][15]\,
	cin => \Add19~58\,
	sharein => \Add19~59\,
	sumout => \Add19~61_sumout\);

-- Location: LABCELL_X11_Y15_N3
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


