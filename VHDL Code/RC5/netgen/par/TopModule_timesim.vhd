--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: TopModule_timesim.vhd
-- /___/   /\     Timestamp: Mon Dec 12 23:15:46 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf TopModule.pcf -rpw 100 -tpw 0 -ar Structure -tm TopModule -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim TopModule.ncd TopModule_timesim.vhd 
-- Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
-- Input file	: TopModule.ncd
-- Output file	: C:\Users\Varun Sharma\Documents\GitHub\AHD-Project-2016\VHDL Code\RC5\netgen\par\TopModule_timesim.vhd
-- # of Entities	: 1
-- Design Name	: TopModule
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity TopModule is
  port (
    CLK : in STD_LOGIC := 'X'; 
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    BTN : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    SSEG_CA : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    SSEG_AN : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end TopModule;

architecture Structure of TopModule is
  signal DMemRead : STD_LOGIC; 
  signal Mmux_Write_data94_8271 : STD_LOGIC; 
  signal Mmux_Write_data93_0 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal ALUResult_1_0 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal LED_3_OBUF_8283 : STD_LOGIC; 
  signal LED_1_OBUF_8285 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_1_Q : STD_LOGIC; 
  signal ALUPort_Sh : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_4 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction1 : STD_LOGIC; 
  signal ALUSrc : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_411 : STD_LOGIC; 
  signal ALUPort_Sh40 : STD_LOGIC; 
  signal ALUPort_Sh4 : STD_LOGIC; 
  signal ALUPort_Sh8 : STD_LOGIC; 
  signal Mmux_Write_data115_8306 : STD_LOGIC; 
  signal Mmux_Write_data114_8307 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal IDecodePort_n0308_inv : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal IDecodePort_Reg_array_4_31_0 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal ALUPort_Sh271 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_416 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_418 : STD_LOGIC; 
  signal N474 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82_8360 : STD_LOGIC; 
  signal LED_0_OBUF_8361 : STD_LOGIC; 
  signal LED_2_OBUF_8362 : STD_LOGIC; 
  signal N564_0 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_17_0 : STD_LOGIC; 
  signal LED_6_OBUF_8366 : STD_LOGIC; 
  signal LED_5_OBUF_8367 : STD_LOGIC; 
  signal LED_4_OBUF_8368 : STD_LOGIC; 
  signal N389 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_427 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_428 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_430 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_429 : STD_LOGIC; 
  signal N518 : STD_LOGIC; 
  signal IDecodePort_write_register_address_1_0 : STD_LOGIC; 
  signal IDecodePort_n0296_inv1 : STD_LOGIC; 
  signal RType : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction10 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction27 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction29 : STD_LOGIC; 
  signal ControlUnitPort_ANDI_R_AND_OR_203_o1 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction26 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_425 : STD_LOGIC; 
  signal Mmux_Write_data44_8391 : STD_LOGIC; 
  signal Mmux_Write_data43 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N516 : STD_LOGIC; 
  signal N508 : STD_LOGIC; 
  signal Mmux_Write_data144_8404 : STD_LOGIC; 
  signal Mmux_Write_data143_8405 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal ControlUnitPort_BEQ_BNE_OR_198_o : STD_LOGIC; 
  signal ControlUnitPort_A_31_B_31_equal_31_o_0 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_0 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_0_Q : STD_LOGIC; 
  signal ControlUnitPort_PCIncby1_0_0 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction_0 : STD_LOGIC; 
  signal ControlUnitPort_n0111_0_0 : STD_LOGIC; 
  signal ControlUnitPort_JUMP : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output27 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output274_8419 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output29 : STD_LOGIC; 
  signal ALUResult_5_0 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output123 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output291_8424 : STD_LOGIC; 
  signal ALUPort_Sh148 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output272 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output294_8427 : STD_LOGIC; 
  signal N524 : STD_LOGIC; 
  signal N510 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_8434 : STD_LOGIC; 
  signal N578_0 : STD_LOGIC; 
  signal N512 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_10_0 : STD_LOGIC; 
  signal Mmux_Write_data36_8438 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal ALUPort_Mmux_B_input261_8446 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction3 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction17 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction18 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_976 : STD_LOGIC; 
  signal N522 : STD_LOGIC; 
  signal N506 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_835_8459 : STD_LOGIC; 
  signal IDecodePort_Reg_array_1_1_0 : STD_LOGIC; 
  signal IDecodePort_Reg_array_3_1_Q : STD_LOGIC; 
  signal IDecodePort_Reg_array_2_1_Q : STD_LOGIC; 
  signal Mmux_Write_data251_0 : STD_LOGIC; 
  signal Mmux_Write_data255_0 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal ALUPort_Sh156 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction2 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_422 : STD_LOGIC; 
  signal ALUPort_Sh124 : STD_LOGIC; 
  signal Mmux_Write_data314_8476 : STD_LOGIC; 
  signal Mmux_Write_data313_8477 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82_8483 : STD_LOGIC; 
  signal N556_0 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_21_0 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_3_Q : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_3_0 : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_82 : STD_LOGIC; 
  signal N502 : STD_LOGIC; 
  signal Mmux_Write_data153 : STD_LOGIC; 
  signal ALUPort_Sh150 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_414 : STD_LOGIC; 
  signal Mmux_Write_data151_8500 : STD_LOGIC; 
  signal Mmux_Write_data15 : STD_LOGIC; 
  signal IDecodePort_Reg_array_3_3_Q : STD_LOGIC; 
  signal IDecodePort_Reg_array_2_3_Q : STD_LOGIC; 
  signal Mmux_SSEG_CA64_8508 : STD_LOGIC; 
  signal Mmux_SSEG_CA110 : STD_LOGIC; 
  signal CONV4_Mram_Y22 : STD_LOGIC; 
  signal hexval_16_8511 : STD_LOGIC; 
  signal hexval_18_8512 : STD_LOGIC; 
  signal hexval_19_8513 : STD_LOGIC; 
  signal hexval_17_8514 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output273_8515 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal ControlUnitPort_n0257_inv_0 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_2_1_8525 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_2_Q : STD_LOGIC; 
  signal ControlUnitPort_n0247 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_2_2_8528 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_2_3_8529 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_8531 : STD_LOGIC; 
  signal N546_0 : STD_LOGIC; 
  signal N480 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_26_0 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output17_8535 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_424_0 : STD_LOGIC; 
  signal ALUPort_Sh23 : STD_LOGIC; 
  signal ALUPort_Sh19 : STD_LOGIC; 
  signal Mmux_Write_data252_8542 : STD_LOGIC; 
  signal ALUPort_Sh47 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_31_0 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_424 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_31_0 : STD_LOGIC; 
  signal Mmux_Write_data62_8548 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_45 : STD_LOGIC; 
  signal ALUPort_Sh46 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction4 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_426 : STD_LOGIC; 
  signal Mmux_Write_data22_8556 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_421 : STD_LOGIC; 
  signal ALUPort_Sh125 : STD_LOGIC; 
  signal N438 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output26 : STD_LOGIC; 
  signal ALUPort_Sh120 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal ALUPort_Sh20 : STD_LOGIC; 
  signal ALUPort_Sh12 : STD_LOGIC; 
  signal Mmux_Write_data172_0 : STD_LOGIC; 
  signal ALUPort_Sh16 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N514 : STD_LOGIC; 
  signal ALUPort_Sh121 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_420 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_419 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_417 : STD_LOGIC; 
  signal ALUPort_Sh149 : STD_LOGIC; 
  signal ALUPort_Sh117 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal ALUPort_Sh116 : STD_LOGIC; 
  signal DMemoryPort_n1038_inv2 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output23 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output236_8586 : STD_LOGIC; 
  signal ALUPort_Sh123 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_423 : STD_LOGIC; 
  signal ALUPort_Sh115 : STD_LOGIC; 
  signal Mmux_Write_data72_0 : STD_LOGIC; 
  signal ALUPort_Sh1391_0 : STD_LOGIC; 
  signal ALUPort_Sh127 : STD_LOGIC; 
  signal ALUPort_Sh126 : STD_LOGIC; 
  signal ALUPort_Sh122 : STD_LOGIC; 
  signal ALUPort_Sh118 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction23 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_970 : STD_LOGIC; 
  signal Mmux_Write_data322_8598 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output122_8599 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_411 : STD_LOGIC; 
  signal IDecodePort_n0304_inv : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output15_8604 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_0_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_0_0 : STD_LOGIC; 
  signal ALUPort_Sh147 : STD_LOGIC; 
  signal ALUPort_Sh119 : STD_LOGIC; 
  signal N449 : STD_LOGIC; 
  signal ALUPort_Sh2 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_422 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_4_2_8612 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_431 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_82_8615 : STD_LOGIC; 
  signal N594_0 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_0_0 : STD_LOGIC; 
  signal ALUPort_Sh110 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output234_8622 : STD_LOGIC; 
  signal ALUPort_Sh1012 : STD_LOGIC; 
  signal ALUPort_Sh1021 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output293_8625 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output292_8626 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal ALUPort_Sh108 : STD_LOGIC; 
  signal ALUPort_Sh112 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_0_1_8633 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_0_2_8634 : STD_LOGIC; 
  signal ALUPort_Sh114 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N534 : STD_LOGIC; 
  signal ALUPort_Sh105 : STD_LOGIC; 
  signal ALUPort_Sh109 : STD_LOGIC; 
  signal ALUPort_Sh113 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_49 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_412 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_410 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_48 : STD_LOGIC; 
  signal Mmux_Write_data31_8645 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal ALUPort_Sh1351 : STD_LOGIC; 
  signal ALUPort_Sh107 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_413 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_415 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_82_8651 : STD_LOGIC; 
  signal N554_0 : STD_LOGIC; 
  signal N488 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_23_0 : STD_LOGIC; 
  signal ALUPort_Sh106 : STD_LOGIC; 
  signal Mmux_Write_data105_8656 : STD_LOGIC; 
  signal Mmux_Write_data104_8657 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal ALUPort_Sh104 : STD_LOGIC; 
  signal ALUPort_Sh1281 : STD_LOGIC; 
  signal ControlUnitPort_ANDI_R_AND_OR_203_o_8664 : STD_LOGIC; 
  signal ControlUnitPort_SUBI_R_SUB_OR_202_o_8665 : STD_LOGIC; 
  signal ControlUnitPort_ORI_R_OR_OR_204_o_0 : STD_LOGIC; 
  signal ControlUnitPort_ADDI_R_ADD_OR_201_o : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_426 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_4_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_4_0 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output281 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal DMemWrite : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output261_8674 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_425 : STD_LOGIC; 
  signal ALUPort_Sh3 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output264_8677 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output262_8678 : STD_LOGIC; 
  signal ALUPort_Sh1311 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_3_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_3_0 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output232_8682 : STD_LOGIC; 
  signal Mmux_Write_data32_8684 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_9_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_9_0 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output13_8687 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output12 : STD_LOGIC; 
  signal ALUPort_Sh144 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output235_8690 : STD_LOGIC; 
  signal ALUPort_Sh146 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal IDecodePort_n0312_inv : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal ALUPort_Sh13112_8699 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_41 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_47 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_46 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_82_8703 : STD_LOGIC; 
  signal N544_0 : STD_LOGIC; 
  signal N478 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_28_0 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output14_8710 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output1 : STD_LOGIC; 
  signal ALUPort_Sh1001 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output125_8713 : STD_LOGIC; 
  signal ALUPort_Sh145 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_1_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_1_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82_8717 : STD_LOGIC; 
  signal N584 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_7_0 : STD_LOGIC; 
  signal N309 : STD_LOGIC; 
  signal N311 : STD_LOGIC; 
  signal N476 : STD_LOGIC; 
  signal Mmux_Write_data28 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_10_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_10_0 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_20_Q : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction22_8733 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction21 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_21_Q : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_22_Q : STD_LOGIC; 
  signal Mmux_Write_data194_8737 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_19_Q : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_27_Q : STD_LOGIC; 
  signal DMemoryPort_n1082_inv_rstpot_8745 : STD_LOGIC; 
  signal DMemoryPort_n1050_inv_cepot : STD_LOGIC; 
  signal IDecodePort_n0300_inv : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_23_Q : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_24_Q : STD_LOGIC; 
  signal Mmux_Write_data173_8750 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_24_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_24_0 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_25_Q : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_26_Q : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_42 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_11_Q : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_29_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_2_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_2_0 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_30_Q : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_31_Q : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_28_Q : STD_LOGIC; 
  signal ALUPort_Sh301 : STD_LOGIC; 
  signal ALUPort_Sh281_0 : STD_LOGIC; 
  signal Mmux_Write_data30 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_7_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_7_0 : STD_LOGIC; 
  signal DMemoryPort_n1042_inv1_rstpot_8771 : STD_LOGIC; 
  signal Mmux_Write_data2 : STD_LOGIC; 
  signal ALUPort_Sh1381 : STD_LOGIC; 
  signal Mmux_Write_data27 : STD_LOGIC; 
  signal Mmux_Write_data26_8775 : STD_LOGIC; 
  signal ALUPort_Sh42_8776 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal Mmux_Write_data3 : STD_LOGIC; 
  signal ALUPort_Sh43 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output282_8785 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output2831 : STD_LOGIC; 
  signal ALUPort_Sh451_8787 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_5_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_5_0 : STD_LOGIC; 
  signal Mmux_Write_data35_8790 : STD_LOGIC; 
  signal Mmux_Write_data33_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_11_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_11_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_6_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_6_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_8796 : STD_LOGIC; 
  signal N576_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_11_0 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output11_8799 : STD_LOGIC; 
  signal ALUPort_Sh961 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal ALUPort_Sh971 : STD_LOGIC; 
  signal ALUPort_Sh981 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_43 : STD_LOGIC; 
  signal Mmux_Write_data324_8805 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal IDecodePort_n0296_inv : STD_LOGIC; 
  signal ALUPort_Sh13 : STD_LOGIC; 
  signal ALUPort_Sh5 : STD_LOGIC; 
  signal ALUPort_Sh9 : STD_LOGIC; 
  signal ALUPort_Sh17 : STD_LOGIC; 
  signal ALUPort_Sh33 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_17_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_17_0 : STD_LOGIC; 
  signal ALUPort_Sh1002 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data1_44 : STD_LOGIC; 
  signal Mmux_Write_data6 : STD_LOGIC; 
  signal Mmux_Write_data63_8824 : STD_LOGIC; 
  signal Mmux_Write_data64_8825 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_14_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_14_0 : STD_LOGIC; 
  signal Mmux_Write_data5 : STD_LOGIC; 
  signal Mmux_Write_data53_8829 : STD_LOGIC; 
  signal Mmux_Write_data51_8830 : STD_LOGIC; 
  signal ALUPort_Sh45 : STD_LOGIC; 
  signal Mmux_Write_data54_8833 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_13_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_13_0 : STD_LOGIC; 
  signal ControlUnitPort_PCIncby1_2_0 : STD_LOGIC; 
  signal ControlUnitPort_n0111_2_0 : STD_LOGIC; 
  signal Mmux_Write_data84_8838 : STD_LOGIC; 
  signal Mmux_Write_data101_0 : STD_LOGIC; 
  signal Mmux_Write_data82 : STD_LOGIC; 
  signal Mmux_Write_data83_8841 : STD_LOGIC; 
  signal Mmux_Write_data85_8843 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_16_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_16_0 : STD_LOGIC; 
  signal Mmux_Write_data74_8846 : STD_LOGIC; 
  signal Mmux_Write_data73_8847 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_15_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_15_0 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal N414_0 : STD_LOGIC; 
  signal N413 : STD_LOGIC; 
  signal Mmux_Write_data163 : STD_LOGIC; 
  signal ALUPort_Sh151 : STD_LOGIC; 
  signal Mmux_Write_data161_8857 : STD_LOGIC; 
  signal Mmux_Write_data16 : STD_LOGIC; 
  signal N417 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_82_8860 : STD_LOGIC; 
  signal N590 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_5_0 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_3_Q : STD_LOGIC; 
  signal ControlUnitPort_PCIncby1_3_0 : STD_LOGIC; 
  signal ControlUnitPort_n0111_3_0 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_4_Q : STD_LOGIC; 
  signal ControlUnitPort_PCIncby1_4_0 : STD_LOGIC; 
  signal ControlUnitPort_n0111_4_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_82_8871 : STD_LOGIC; 
  signal N566_0 : STD_LOGIC; 
  signal N500 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_16_0 : STD_LOGIC; 
  signal N482 : STD_LOGIC; 
  signal N472 : STD_LOGIC; 
  signal N538 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82_8892 : STD_LOGIC; 
  signal N586_0 : STD_LOGIC; 
  signal N520 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_4_0 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal Mmux_SSEG_CA812 : STD_LOGIC; 
  signal Mmux_SSEG_CA8124_8903 : STD_LOGIC; 
  signal Mmux_SSEG_CA8125_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA16 : STD_LOGIC; 
  signal hexval_11_8906 : STD_LOGIC; 
  signal hexval_9_8907 : STD_LOGIC; 
  signal hexval_10_8908 : STD_LOGIC; 
  signal hexval_8_8909 : STD_LOGIC; 
  signal Mmux_SSEG_CA8121_8910 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_49 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_18_Q : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_47 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_16_Q : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_48 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_17_Q : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_45 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_14_Q : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_46 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_15_Q : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N528 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_4 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_43 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_44 : STD_LOGIC; 
  signal IDecodePort_Reg_array_5_13_Q : STD_LOGIC; 
  signal DMemoryPort_n1066_inv1 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction13 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal ALUPort_Sh291 : STD_LOGIC; 
  signal N405 : STD_LOGIC; 
  signal Cntr_26_GND_8_o_equal_8_o_26_Q : STD_LOGIC; 
  signal Cntr_26_GND_8_o_equal_8_o_26_1_8972 : STD_LOGIC; 
  signal Cntr_26_GND_8_o_equal_8_o_26_2_8979 : STD_LOGIC; 
  signal Cntr_26_GND_8_o_equal_8_o_26_3_8986 : STD_LOGIC; 
  signal Cntr_26_BTN_4_OR_92_o : STD_LOGIC; 
  signal BTN_4_IBUF_8994 : STD_LOGIC; 
  signal Cntr_26_GND_8_o_equal_8_o_26_4_8995 : STD_LOGIC; 
  signal Cntr_26_GND_8_o_equal_8_o : STD_LOGIC; 
  signal Mcount_Val_val : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_9005 : STD_LOGIC; 
  signal N568_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_13_0 : STD_LOGIC; 
  signal Mmux_Write_data201_9009 : STD_LOGIC; 
  signal Mmux_Write_data204_9010 : STD_LOGIC; 
  signal Mmux_Write_data202_9011 : STD_LOGIC; 
  signal Mmux_Write_data20 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_27_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_27_0 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_42 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_431 : STD_LOGIC; 
  signal Mmux_Write_data224_9018 : STD_LOGIC; 
  signal Mmux_Write_data221_9019 : STD_LOGIC; 
  signal N317 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_29_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_29_0 : STD_LOGIC; 
  signal Mmux_Write_data214_9024 : STD_LOGIC; 
  signal ALUPort_Sh44 : STD_LOGIC; 
  signal N314 : STD_LOGIC; 
  signal N313 : STD_LOGIC; 
  signal Mmux_Write_data213 : STD_LOGIC; 
  signal ALUPort_Sh561_0 : STD_LOGIC; 
  signal Mmux_Write_data211_9031 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_28_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_28_0 : STD_LOGIC; 
  signal Mmux_Write_data24_9034 : STD_LOGIC; 
  signal Mmux_Write_data242_9036 : STD_LOGIC; 
  signal ALUPort_Sh581_0 : STD_LOGIC; 
  signal ALUPort_Sh22 : STD_LOGIC; 
  signal Mmux_Write_data244_9039 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_30_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_30_0 : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_430 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal BTN_3_IBUF_9050 : STD_LOGIC; 
  signal BTN_0_IBUF_9051 : STD_LOGIC; 
  signal clr_9052 : STD_LOGIC; 
  signal DMemoryPort_n1050_inv_rstpot_9053 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_419 : STD_LOGIC; 
  signal N540_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA15 : STD_LOGIC; 
  signal hexval_5_9059 : STD_LOGIC; 
  signal hexval_7_9060 : STD_LOGIC; 
  signal hexval_4_9061 : STD_LOGIC; 
  signal hexval_6_9062 : STD_LOGIC; 
  signal Mmux_SSEG_CA22_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA19_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA105_9065 : STD_LOGIC; 
  signal Mmux_SSEG_CA145_9066 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_423 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_970 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_973 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_41 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_Q_9071 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_Q_9072 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_410 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_412 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_413 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_Q_9076 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_414 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_415 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N289_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA1216_9081 : STD_LOGIC; 
  signal hexval_14_9082 : STD_LOGIC; 
  signal hexval_12_9083 : STD_LOGIC; 
  signal hexval_13_9084 : STD_LOGIC; 
  signal hexval_15_9085 : STD_LOGIC; 
  signal Mmux_SSEG_CA18 : STD_LOGIC; 
  signal Mmux_SSEG_CA123_0 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_427 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_428 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_429 : STD_LOGIC; 
  signal N550_0 : STD_LOGIC; 
  signal N558_0 : STD_LOGIC; 
  signal SSEG_CA_0_OBUF_9097 : STD_LOGIC; 
  signal Mmux_SSEG_CA27_9098 : STD_LOGIC; 
  signal Mmux_SSEG_CA121 : STD_LOGIC; 
  signal Mmux_SSEG_CA2 : STD_LOGIC; 
  signal SSEG_AN_0_OBUF_9101 : STD_LOGIC; 
  signal hexval_2_9102 : STD_LOGIC; 
  signal hexval_0_9103 : STD_LOGIC; 
  signal hexval_3_9104 : STD_LOGIC; 
  signal hexval_1_9105 : STD_LOGIC; 
  signal Mmux_SSEG_CA61_0 : STD_LOGIC; 
  signal SSEG_CA_2_OBUF_9107 : STD_LOGIC; 
  signal Mmux_SSEG_CA68_9108 : STD_LOGIC; 
  signal Mmux_SSEG_CA42 : STD_LOGIC; 
  signal Mmux_SSEG_CA41_0 : STD_LOGIC; 
  signal hexval_28_9111 : STD_LOGIC; 
  signal hexval_31_9112 : STD_LOGIC; 
  signal hexval_29_9113 : STD_LOGIC; 
  signal hexval_30_9114 : STD_LOGIC; 
  signal Mmux_SSEG_CA101_9115 : STD_LOGIC; 
  signal Mmux_SSEG_CA141_9116 : STD_LOGIC; 
  signal hexval_26_9117 : STD_LOGIC; 
  signal hexval_27_9118 : STD_LOGIC; 
  signal hexval_24_9119 : STD_LOGIC; 
  signal hexval_25_9120 : STD_LOGIC; 
  signal Mmux_SSEG_CA82_9123 : STD_LOGIC; 
  signal Mmux_SSEG_CA24_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA84_9125 : STD_LOGIC; 
  signal hexval_21_9126 : STD_LOGIC; 
  signal Mmux_SSEG_CA17 : STD_LOGIC; 
  signal hexval_20_9128 : STD_LOGIC; 
  signal hexval_22_9129 : STD_LOGIC; 
  signal hexval_23_9130 : STD_LOGIC; 
  signal N572_0 : STD_LOGIC; 
  signal SSEG_AN_6_OBUF_9132 : STD_LOGIC; 
  signal SSEG_AN_7_OBUF_0 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_421 : STD_LOGIC; 
  signal N542_0 : STD_LOGIC; 
  signal N570_0 : STD_LOGIC; 
  signal ControlUnitPort_R_NOR_R_type_AND_110_o : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal Mmux_SSEG_CA103_9142 : STD_LOGIC; 
  signal Mmux_SSEG_CA1214_0 : STD_LOGIC; 
  signal BTN_2_BTN_1_OR_3_o_BUFG_9144 : STD_LOGIC; 
  signal BTN_2_BTN_1_OR_3_o : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_6_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_6_0 : STD_LOGIC; 
  signal BTN_2_IBUF_9148 : STD_LOGIC; 
  signal LED_15_OBUF_9149 : STD_LOGIC; 
  signal BTN_1_IBUF_9150 : STD_LOGIC; 
  signal Mmux_SSEG_CA142_9151 : STD_LOGIC; 
  signal Mmux_SSEG_CA44_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA49_9156 : STD_LOGIC; 
  signal Mmux_SSEG_CA62_0 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_416 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_417 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_418 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_420 : STD_LOGIC; 
  signal N548_0 : STD_LOGIC; 
  signal N552_0 : STD_LOGIC; 
  signal SSEG_AN_4_OBUF_9168 : STD_LOGIC; 
  signal SSEG_AN_5_OBUF_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA1212_9170 : STD_LOGIC; 
  signal Mmux_SSEG_CA124_0 : STD_LOGIC; 
  signal Mmux_Write_data184_0 : STD_LOGIC; 
  signal N574 : STD_LOGIC; 
  signal SSEG_AN_1_OBUF_9174 : STD_LOGIC; 
  signal N562_0 : STD_LOGIC; 
  signal N560_0 : STD_LOGIC; 
  signal Mmux_Write_data131_9181 : STD_LOGIC; 
  signal Mmux_SSEG_CA146_9182 : STD_LOGIC; 
  signal Mmux_SSEG_CA87_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA1215_9184 : STD_LOGIC; 
  signal Mmux_SSEG_CA66_9185 : STD_LOGIC; 
  signal Mmux_SSEG_CA48_9186 : STD_LOGIC; 
  signal CONV2_Mram_Y22 : STD_LOGIC; 
  signal Mmux_SSEG_CA85_9188 : STD_LOGIC; 
  signal Mmux_SSEG_CA4 : STD_LOGIC; 
  signal Mmux_SSEG_CA88_0 : STD_LOGIC; 
  signal SSEG_AN_2_OBUF_9191 : STD_LOGIC; 
  signal SSEG_AN_3_OBUF_0 : STD_LOGIC; 
  signal N592_0 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction28 : STD_LOGIC; 
  signal N588_0 : STD_LOGIC; 
  signal ControlUnitPort_n0257_inv5_9208 : STD_LOGIC; 
  signal start_9209 : STD_LOGIC; 
  signal Mmux_SSEG_CA106_9210 : STD_LOGIC; 
  signal Mmux_SSEG_CA12_0 : STD_LOGIC; 
  signal N580 : STD_LOGIC; 
  signal N582_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA25_9218 : STD_LOGIC; 
  signal Mmux_SSEG_CA63_0 : STD_LOGIC; 
  signal SSEG_CA_4_OBUF_9220 : STD_LOGIC; 
  signal SSEG_CA_6_OBUF_9221 : STD_LOGIC; 
  signal Mmux_SSEG_CA143_9222 : STD_LOGIC; 
  signal Mmux_SSEG_CA1211_9223 : STD_LOGIC; 
  signal Mmux_SSEG_CA122_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA81_9225 : STD_LOGIC; 
  signal Mmux_SSEG_CA212 : STD_LOGIC; 
  signal Mcount_Cntr_cy_3_Q_9227 : STD_LOGIC; 
  signal Mcount_Cntr_cy_7_Q_9228 : STD_LOGIC; 
  signal Mcount_Cntr_cy_11_Q_9229 : STD_LOGIC; 
  signal Mcount_Cntr_cy_15_Q_9230 : STD_LOGIC; 
  signal Mcount_Cntr_cy_19_Q_9231 : STD_LOGIC; 
  signal Mcount_Cntr_cy_23_Q_9232 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_Q_9234 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_Q_9235 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_Q_9237 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_Q_9239 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_8_0 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_Q_9241 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_12_0 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_Q_9243 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_18_0 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_Q_9245 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_19_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_20_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_21_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_22_0 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_Q_9250 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_23_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_25_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_26_0 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_Q_9254 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_Q_9255 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_Q_9256 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_8_0 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_Q_9258 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_12_0 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_Q_9260 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_18_0 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_Q_9262 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_19_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_20_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_21_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_22_0 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_Q_9267 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_23_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_25_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_26_0 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_Q_9271 : STD_LOGIC; 
  signal ControlUnitPort_PCIncby1_1_0 : STD_LOGIC; 
  signal ControlUnitPort_n0111_1_0 : STD_LOGIC; 
  signal LED_12_OBUF_9276 : STD_LOGIC; 
  signal LED_11_OBUF_9277 : STD_LOGIC; 
  signal LED_14_OBUF_9278 : STD_LOGIC; 
  signal LED_13_OBUF_9279 : STD_LOGIC; 
  signal LED_10_OBUF_9280 : STD_LOGIC; 
  signal SSEG_CA_5_OBUF_9281 : STD_LOGIC; 
  signal SSEG_CA_1_OBUF_9282 : STD_LOGIC; 
  signal SSEG_CA_3_OBUF_9283 : STD_LOGIC; 
  signal LED_7_OBUF_9284 : STD_LOGIC; 
  signal LED_8_OBUF_9285 : STD_LOGIC; 
  signal LED_9_OBUF_9286 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_9287 : STD_LOGIC; 
  signal ALUPort_Sh571_0 : STD_LOGIC; 
  signal ALUPort_Sh531 : STD_LOGIC; 
  signal Mmux_Write_data182_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_28_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_18_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_7_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_31_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_82_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_26_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_16_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_5_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_24_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_14_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_0_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_22_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_12_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_82_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_9_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_29_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_19_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_30_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_20_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_10_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_4_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_27_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_17_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_2_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_25_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_15_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_3_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_8_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_23_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_13_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_1_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_31_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_21_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_11_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_1_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_2_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_8_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_9_0 : STD_LOGIC; 
  signal N374 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_12_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_14_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_15_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_18_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_19_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_20_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_22_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_24_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_25_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_27_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_29_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_30_0 : STD_LOGIC; 
  signal Mmux_Write_data174_9368 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal Mmux_Write_data102 : STD_LOGIC; 
  signal Mmux_Write_data103_9374 : STD_LOGIC; 
  signal ALUPort_Sh14 : STD_LOGIC; 
  signal ALUPort_Sh6 : STD_LOGIC; 
  signal ALUPort_Sh10 : STD_LOGIC; 
  signal ALUPort_Sh18 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_82_9379 : STD_LOGIC; 
  signal Mmux_Write_data112 : STD_LOGIC; 
  signal Mmux_Write_data113_9381 : STD_LOGIC; 
  signal ALUPort_Sh15 : STD_LOGIC; 
  signal ALUPort_Sh7 : STD_LOGIC; 
  signal ALUPort_Sh11 : STD_LOGIC; 
  signal Mmux_Write_data141_9386 : STD_LOGIC; 
  signal Mmux_Write_data14 : STD_LOGIC; 
  signal Mmux_Write_data13 : STD_LOGIC; 
  signal ALUPort_Sh441 : STD_LOGIC; 
  signal Mmux_Write_data133_9391 : STD_LOGIC; 
  signal Mmux_Write_data134_9393 : STD_LOGIC; 
  signal Mmux_Write_data164_9394 : STD_LOGIC; 
  signal Mmux_Write_data154_9395 : STD_LOGIC; 
  signal Mmux_Write_data183_9396 : STD_LOGIC; 
  signal Mmux_Write_data186_9397 : STD_LOGIC; 
  signal Mmux_Write_data191_9399 : STD_LOGIC; 
  signal Mmux_Write_data19 : STD_LOGIC; 
  signal Mmux_Write_data193_9401 : STD_LOGIC; 
  signal ALUPort_Sh541 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82_9404 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_82_9416 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82_9417 : STD_LOGIC; 
  signal N486 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_4_1_9419 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal Mmux_Write_data303_9428 : STD_LOGIC; 
  signal Mmux_Write_data301_9429 : STD_LOGIC; 
  signal Mmux_Write_data321_9430 : STD_LOGIC; 
  signal ALUPort_Sh41_9431 : STD_LOGIC; 
  signal Mmux_Write_data311_9432 : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_82_9433 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_3_1_9446 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_9454 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82_9455 : STD_LOGIC; 
  signal ALUPort_Sh21_9456 : STD_LOGIC; 
  signal ALUPort_Sh551 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal Mmux_SSEG_CA421_9460 : STD_LOGIC; 
  signal Mmux_SSEG_CA424_9461 : STD_LOGIC; 
  signal Mmux_SSEG_CA423_9462 : STD_LOGIC; 
  signal Mmux_SSEG_CA426_9463 : STD_LOGIC; 
  signal Mmux_Write_data185_9464 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_9465 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_91 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_82_9471 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82_9472 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal Mmux_SSEG_CA125_9474 : STD_LOGIC; 
  signal Mmux_SSEG_CA126_9475 : STD_LOGIC; 
  signal Mmux_SSEG_CA127_9476 : STD_LOGIC; 
  signal Mmux_SSEG_CA129_9477 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_9478 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_9479 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_9480 : STD_LOGIC; 
  signal N416 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82_9482 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82_9483 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_9484 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_82_9485 : STD_LOGIC; 
  signal N504 : STD_LOGIC; 
  signal Mmux_SSEG_CA1213_9487 : STD_LOGIC; 
  signal Mmux_SSEG_CA1217_9488 : STD_LOGIC; 
  signal Mmux_SSEG_CA46_9489 : STD_LOGIC; 
  signal Mmux_SSEG_CA23_9490 : STD_LOGIC; 
  signal Mmux_SSEG_CA65_9491 : STD_LOGIC; 
  signal Mmux_SSEG_CA21_9492 : STD_LOGIC; 
  signal Mmux_SSEG_CA43_9493 : STD_LOGIC; 
  signal Mmux_SSEG_CA8122_9494 : STD_LOGIC; 
  signal clr_G_9495 : STD_LOGIC; 
  signal Mmux_SSEG_CA6 : STD_LOGIC; 
  signal Mmux_SSEG_CA107_9497 : STD_LOGIC; 
  signal Mmux_SSEG_CA147_9498 : STD_LOGIC; 
  signal Mmux_SSEG_CA86_9499 : STD_LOGIC; 
  signal Mmux_SSEG_CA8 : STD_LOGIC; 
  signal Mmux_SSEG_CA422_9501 : STD_LOGIC; 
  signal Mmux_SSEG_CA45_9502 : STD_LOGIC; 
  signal Mmux_SSEG_CA26_9503 : STD_LOGIC; 
  signal Mmux_SSEG_CA104_9504 : STD_LOGIC; 
  signal Mmux_SSEG_CA144_9505 : STD_LOGIC; 
  signal Mmux_SSEG_CA427_9506 : STD_LOGIC; 
  signal Mmux_SSEG_CA67_9507 : STD_LOGIC; 
  signal Mmux_SSEG_CA128_9508 : STD_LOGIC; 
  signal Mmux_SSEG_CA425_9509 : STD_LOGIC; 
  signal Mmux_SSEG_CA47_9510 : STD_LOGIC; 
  signal Mmux_SSEG_CA10 : STD_LOGIC; 
  signal Mmux_SSEG_CA14 : STD_LOGIC; 
  signal Mmux_SSEG_CA8123_9513 : STD_LOGIC; 
  signal Mmux_SSEG_CA83_9514 : STD_LOGIC; 
  signal Mmux_SSEG_CA102_9515 : STD_LOGIC; 
  signal DMemoryPort_mux30_82_9516 : STD_LOGIC; 
  signal DMemoryPort_mux31_82_9517 : STD_LOGIC; 
  signal DMemoryPort_mux28_82_9518 : STD_LOGIC; 
  signal DMemoryPort_mux29_82_9519 : STD_LOGIC; 
  signal DMemoryPort_mux4_82_9520 : STD_LOGIC; 
  signal DMemoryPort_mux5_82_9521 : STD_LOGIC; 
  signal DMemoryPort_mux26_82_9522 : STD_LOGIC; 
  signal DMemoryPort_mux27_82_9523 : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_91 : STD_LOGIC; 
  signal DMemoryPort_mux3_82_9525 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal DMemoryPort_mux1_82_9527 : STD_LOGIC; 
  signal DMemoryPort_mux2_82_9528 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal DMemoryPort_mux25_82_9530 : STD_LOGIC; 
  signal Mmux_Write_data10 : STD_LOGIC; 
  signal DMemoryPort_mux6_82_9532 : STD_LOGIC; 
  signal DMemoryPort_mux7_82_9533 : STD_LOGIC; 
  signal DMemoryPort_mux8_82_9534 : STD_LOGIC; 
  signal DMemoryPort_mux9_82_9535 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal N429 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal DMemoryPort_mux_82_9539 : STD_LOGIC; 
  signal DMemoryPort_mux22_82_9540 : STD_LOGIC; 
  signal DMemoryPort_mux13_82_9541 : STD_LOGIC; 
  signal DMemoryPort_mux14_82_9542 : STD_LOGIC; 
  signal Mmux_Write_data52_9543 : STD_LOGIC; 
  signal Mmux_Write_data312_9544 : STD_LOGIC; 
  signal Mmux_Write_data323_9545 : STD_LOGIC; 
  signal DMemoryPort_mux11_82_9546 : STD_LOGIC; 
  signal DMemoryPort_mux10_82_9547 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal DMemoryPort_mux12_82_9549 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output283_9550 : STD_LOGIC; 
  signal N407 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal N418 : STD_LOGIC; 
  signal DMemoryPort_mux15_82_9554 : STD_LOGIC; 
  signal DMemoryPort_mux17_82_9555 : STD_LOGIC; 
  signal DMemoryPort_mux16_82_9556 : STD_LOGIC; 
  signal DMemoryPort_mux18_82_9557 : STD_LOGIC; 
  signal Mmux_Write_data142_9558 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal Mmux_Write_data17 : STD_LOGIC; 
  signal Mmux_Write_data11 : STD_LOGIC; 
  signal N442 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output231_9563 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output124_9564 : STD_LOGIC; 
  signal N436 : STD_LOGIC; 
  signal Mmux_Write_data92 : STD_LOGIC; 
  signal Mmux_Write_data241_9567 : STD_LOGIC; 
  signal Mmux_Write_data192_9568 : STD_LOGIC; 
  signal DMemoryPort_mux23_82_9569 : STD_LOGIC; 
  signal DMemoryPort_mux24_82_9570 : STD_LOGIC; 
  signal DMemoryPort_mux21_82_9571 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal Mmux_Write_data23_9573 : STD_LOGIC; 
  signal DMemoryPort_mux19_82_9574 : STD_LOGIC; 
  signal DMemoryPort_mux20_82_9575 : STD_LOGIC; 
  signal ALUPort_Sh1371 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal Mmux_Write_data302_9578 : STD_LOGIC; 
  signal Mmux_Write_data8 : STD_LOGIC; 
  signal ALUPort_Sh521 : STD_LOGIC; 
  signal N452 : STD_LOGIC; 
  signal Mmux_Write_data61_9582 : STD_LOGIC; 
  signal ALUPort_Mmux_ALU_output263_9583 : STD_LOGIC; 
  signal Mmux_Write_data223 : STD_LOGIC; 
  signal Mmux_Write_data243_9585 : STD_LOGIC; 
  signal Mmux_Write_data132_9586 : STD_LOGIC; 
  signal Mmux_Write_data7 : STD_LOGIC; 
  signal Mmux_Write_data203_9588 : STD_LOGIC; 
  signal Mmux_Write_data253_9590 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal Mmux_Write_data34_9592 : STD_LOGIC; 
  signal N454 : STD_LOGIC; 
  signal Mmux_Write_data21_9594 : STD_LOGIC; 
  signal ALUPort_Sh13111_9595 : STD_LOGIC; 
  signal ALUPort_Sh591_9596 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_17_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_10_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_21_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_26_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_0_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_23_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_28_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_7_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_11_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_5_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_16_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_4_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_13_Q : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi4_190 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_4_Q_189 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi5_184 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_5_Q_183 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi6_178 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_6_Q_177 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi7_170 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_7_Q_169 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi8_220 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_8_Q_219 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi9_214 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_9_Q_213 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi10_208 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_10_Q_207 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi11_200 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_11_Q_199 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi_250 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_0_Q_249 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi1_244 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_1_Q_243 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi2_238 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_2_Q_237 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi3_230 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_3_Q_229 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi12_280 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_12_Q_279 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi13_274 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_13_Q_273 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi14_268 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_14_Q_267 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_Q_266 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi15_260 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_15_Q_259 : STD_LOGIC; 
  signal Cntr_1_rt_306 : STD_LOGIC; 
  signal Cntr_2_rt_302 : STD_LOGIC; 
  signal Cntr_3_rt_291 : STD_LOGIC; 
  signal Cntr_4_rt_338 : STD_LOGIC; 
  signal Cntr_5_rt_334 : STD_LOGIC; 
  signal Cntr_6_rt_330 : STD_LOGIC; 
  signal Cntr_7_rt_319 : STD_LOGIC; 
  signal Cntr_8_rt_366 : STD_LOGIC; 
  signal Cntr_9_rt_362 : STD_LOGIC; 
  signal Cntr_10_rt_358 : STD_LOGIC; 
  signal Cntr_11_rt_347 : STD_LOGIC; 
  signal Cntr_12_rt_394 : STD_LOGIC; 
  signal Cntr_13_rt_390 : STD_LOGIC; 
  signal Cntr_14_rt_386 : STD_LOGIC; 
  signal Cntr_15_rt_375 : STD_LOGIC; 
  signal Cntr_16_rt_422 : STD_LOGIC; 
  signal Cntr_17_rt_418 : STD_LOGIC; 
  signal Cntr_18_rt_414 : STD_LOGIC; 
  signal Cntr_19_rt_403 : STD_LOGIC; 
  signal Cntr_20_rt_450 : STD_LOGIC; 
  signal Cntr_21_rt_446 : STD_LOGIC; 
  signal Cntr_22_rt_442 : STD_LOGIC; 
  signal Cntr_23_rt_431 : STD_LOGIC; 
  signal Cntr_24_rt_471 : STD_LOGIC; 
  signal Cntr_25_rt_467 : STD_LOGIC; 
  signal Cntr_26_rt_464 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_0_Q_503 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_1_Q_495 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_2_Q_487 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_3_Q_477 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_4_Q_537 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_5_Q_529 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_6_Q_521 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_7_Q_513 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_0_Q_573 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_1_Q_565 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_2_Q_559 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_0_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_1_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_2_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_3_Q : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_3_Q_545 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_4_Q_605 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_5_Q_599 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_6_Q_593 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_4_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_5_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_6_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_7_Q : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_7_Q_581 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_8_Q_635 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_9_Q_629 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_10_Q_623 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_8_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_9_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_10_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_11_Q : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_11_Q_611 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_12_Q_665 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_13_Q_659 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_14_Q_653 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_12_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_13_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_14_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_15_Q : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_15_Q_641 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_16_Q_695 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_17_Q_689 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_18_Q_683 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_16_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_17_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_18_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_19_Q : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_19_Q_671 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_20_Q_725 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_21_Q_719 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_22_Q_713 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_20_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_21_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_22_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_23_Q : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_23_Q_701 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_24_Q_755 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_25_Q_749 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_26_Q_743 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_24_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_25_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_26_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_27_Q : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_27_Q_731 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_28_Q_783 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_29_Q_777 : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_30_Q_771 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_28_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_29_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_30_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_sub_7_OUT_31_Q : STD_LOGIC; 
  signal ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_31_Q_760 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_0_Q_817 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_1_Q_809 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_2_Q_803 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_0_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_1_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_2_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_3_Q : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_Q_789 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_4_Q_849 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_5_Q_843 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_6_Q_837 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_4_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_5_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_6_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_7_Q : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_7_Q_825 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_8_Q_879 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_9_Q_873 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_10_Q_867 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_8_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_9_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_10_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_11_Q : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_11_Q_855 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_12_Q_909 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_13_Q_903 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_14_Q_897 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_12_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_13_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_14_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_15_Q : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_15_Q_885 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_16_Q_939 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_17_Q_933 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_18_Q_927 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_16_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_17_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_18_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_19_Q : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_19_Q_915 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_20_Q_969 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_21_Q_963 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_22_Q_957 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_20_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_21_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_22_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_23_Q : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_23_Q_945 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_24_Q_999 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_25_Q_993 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_26_Q_987 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_24_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_25_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_26_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_27_Q : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_27_Q_975 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_28_Q_1027 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_29_Q_1021 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_30_Q_1015 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_28_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_29_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_30_Q : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_31_Q : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_31_Q_1004 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_1_rt_1044 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_2_rt_1041 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_3_rt_1032 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_4_rt_1056 : STD_LOGIC; 
  signal ProtoComp207_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal SW_9_ProtoComp207_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_28_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_28_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_18_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_18_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_7_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_7_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_31_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_26_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_26_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_16_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_16_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_5_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_5_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_24_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_24_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_14_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_14_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_0_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_0_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_22_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_22_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_12_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_12_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_9_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_9_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_29_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_29_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_19_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_19_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_30_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_30_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_20_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_20_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_10_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_10_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_4_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_4_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_27_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_27_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_17_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_17_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_2_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_2_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_25_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_25_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_15_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_15_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_3_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_8_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_8_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_23_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_23_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_13_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_13_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_1_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_31_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_31_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_21_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_21_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_11_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_11_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_18_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_2_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_29_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_30_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_9_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_22_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_24_Q : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_1_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_4 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_25_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_19_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_12_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_27_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_8_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_20_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_14_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_6_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_15_Q : STD_LOGIC; 
  signal SSEG_AN_5_OBUF_1737 : STD_LOGIC; 
  signal SSEG_AN_3_OBUF_1744 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Val_2_pack_6 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Mmux_SSEG_CA61_1836 : STD_LOGIC; 
  signal Mmux_SSEG_CA41_1866 : STD_LOGIC; 
  signal Mmux_SSEG_CA88_1861 : STD_LOGIC; 
  signal clr_D_1883 : STD_LOGIC; 
  signal Mmux_SSEG_CA122_1889 : STD_LOGIC; 
  signal Mmux_SSEG_CA6_pack_1 : STD_LOGIC; 
  signal Mmux_SSEG_CA22_1943 : STD_LOGIC; 
  signal Mmux_SSEG_CA87_1942 : STD_LOGIC; 
  signal Mmux_SSEG_CA19 : STD_LOGIC; 
  signal Mmux_SSEG_CA12 : STD_LOGIC; 
  signal Mmux_SSEG_CA107_pack_2 : STD_LOGIC; 
  signal Mmux_SSEG_CA62_1990 : STD_LOGIC; 
  signal Mmux_SSEG_CA8_pack_5 : STD_LOGIC; 
  signal Mmux_SSEG_CA104_pack_6 : STD_LOGIC; 
  signal Mmux_SSEG_CA17_pack_5 : STD_LOGIC; 
  signal Mmux_SSEG_CA44_2092 : STD_LOGIC; 
  signal Mmux_SSEG_CA123_2121 : STD_LOGIC; 
  signal Mmux_SSEG_CA63_2114 : STD_LOGIC; 
  signal Mmux_SSEG_CA124_2167 : STD_LOGIC; 
  signal Mmux_SSEG_CA47_pack_2 : STD_LOGIC; 
  signal Mmux_SSEG_CA10_pack_6 : STD_LOGIC; 
  signal Mmux_SSEG_CA8125_2278 : STD_LOGIC; 
  signal Mmux_SSEG_CA8123_pack_6 : STD_LOGIC; 
  signal Mmux_SSEG_CA24_2301 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_269_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_272_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_275_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_278_o : STD_LOGIC; 
  signal Mmux_SSEG_CA110_pack_7 : STD_LOGIC; 
  signal Mmux_SSEG_CA1214_2371 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_257_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_260_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_263_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_266_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_281_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_284_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_287_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_290_o : STD_LOGIC; 
  signal SSEG_AN_7_OBUF_2429 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_245_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_254_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_248_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_251_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_230_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_227_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_224_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_221_o : STD_LOGIC; 
  signal N588 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_10_dpot_2531 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_9_dpot_2521 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_8_dpot_2513 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_7_dpot_2505 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_10_dpot_2562 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_9_dpot_2560 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_8_dpot_2553 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_11_dpot_2541 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_10_dpot_2612 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_9_dpot_2602 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_8_dpot_2594 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_7_dpot_2586 : STD_LOGIC; 
  signal N582 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_6_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_6_4 : STD_LOGIC; 
  signal N578 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_4_dpot_2677 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_5_dpot_2669 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_6_dpot_2661 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_7_dpot_2651 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_10_dpot_2752 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_9_dpot_2742 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_8_dpot_2734 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_7_dpot_2726 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_242_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_239_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_236_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_233_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_206_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_203_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_200_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_197_o : STD_LOGIC; 
  signal DMemoryPort_DMem_2_11_dpot_2911 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_12_dpot_2903 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_13_dpot_2898 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_14_dpot_2891 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_3_dpot_2950 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_4_dpot_2945 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_5_dpot_2937 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_6_dpot_2927 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_3_dpot_3032 : STD_LOGIC; 
  signal N586 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_4_dpot_3024 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_5_dpot_3016 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_6_dpot_3006 : STD_LOGIC; 
  signal N594 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_11_dpot_3066 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_12_dpot_3058 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_13_dpot_3053 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_14_dpot_3046 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_215_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_212_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_209_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_218_o : STD_LOGIC; 
  signal DMemoryPort_DMem_12_3_dpot_3169 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_4_dpot_3164 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_5_dpot_3156 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_6_dpot_3146 : STD_LOGIC; 
  signal N576 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_11_dpot_3205 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_12_dpot_3197 : STD_LOGIC; 
  signal N568 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_13_dpot_3187 : STD_LOGIC; 
  signal N572 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_14_dpot_3180 : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_3_Q : STD_LOGIC; 
  signal DMemoryPort_DMem_9_3_dpot_3448 : STD_LOGIC; 
  signal ControlUnitPort_n0257_inv : STD_LOGIC; 
  signal DMemoryPort_DMem_12_15_dpot_3555 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_16_dpot_3547 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_17_dpot_3542 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_18_dpot_3535 : STD_LOGIC; 
  signal N605 : STD_LOGIC; 
  signal N604 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_3610 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_12_dpot_3652 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_13_dpot_3638 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_14_dpot_3626 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_3_dpot_3705 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_2_dpot_3698 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_1_dpot_3685 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_0_dpot_3681 : STD_LOGIC; 
  signal N570 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_15_dpot_3741 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_16_dpot_3740 : STD_LOGIC; 
  signal N566 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_17_dpot_3729 : STD_LOGIC; 
  signal N564 : STD_LOGIC; 
  signal N562 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_18_dpot_3717 : STD_LOGIC; 
  signal Mmux_Write_data101_3818 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction27_pack_8 : STD_LOGIC; 
  signal DMemoryPort_DMem_11_3_dpot_3832 : STD_LOGIC; 
  signal N607 : STD_LOGIC; 
  signal N606 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_82_3855 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_19_dpot_3987 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_20_dpot_3979 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_21_dpot_3974 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_22_dpot_3967 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_19_dpot_4009 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_20_dpot_4001 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_21_dpot_3996 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_22_dpot_3989 : STD_LOGIC; 
  signal N611 : STD_LOGIC; 
  signal N610 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_15_dpot_4285 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_16_dpot_4277 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_17_dpot_4272 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_18_dpot_4265 : STD_LOGIC; 
  signal N560 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_19_dpot_4328 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_20_dpot_4327 : STD_LOGIC; 
  signal N558 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_21_dpot_4316 : STD_LOGIC; 
  signal N556 : STD_LOGIC; 
  signal N550 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_22_dpot_4304 : STD_LOGIC; 
  signal ControlUnitPort_ORI_R_OR_OR_204_o_4434 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction : STD_LOGIC; 
  signal ControlUnitPort_ANDI_R_AND_OR_203_o1_pack_3 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_2_dpot_4554 : STD_LOGIC; 
  signal N592 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_0_dpot_4543 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_1_dpot_4542 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_30_dpot_4748 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_27_dpot_4743 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_29_dpot_4736 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_28_dpot_4731 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_23_dpot_4771 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_24_dpot_4763 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_25_dpot_4758 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_26_dpot_4751 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_19_dpot_4803 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_20_dpot_4795 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_21_dpot_4790 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_22_dpot_4783 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_2_dpot_5022 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_1_dpot_5009 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_0_dpot_5004 : STD_LOGIC; 
  signal N554 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_23_dpot_5191 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_24_dpot_5190 : STD_LOGIC; 
  signal N552 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_25_dpot_5179 : STD_LOGIC; 
  signal N548 : STD_LOGIC; 
  signal N546 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_26_dpot_5167 : STD_LOGIC; 
  signal N463 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal ControlUnitPort_R_NOR_R_type_AND_110_o_pack_1 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_1_Q : STD_LOGIC; 
  signal DMemoryPort_DMem_4_30_dpot_5651 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_28_dpot_5649 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_29_dpot_5643 : STD_LOGIC; 
  signal N542 : STD_LOGIC; 
  signal N544 : STD_LOGIC; 
  signal N540 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_27_dpot_5621 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_30_dpot_5677 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_27_dpot_5672 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_29_dpot_5665 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_28_dpot_5660 : STD_LOGIC; 
  signal ControlUnitPort_SUBI_R_SUB_OR_202_o_pack_2 : STD_LOGIC; 
  signal DMemoryPort_DMem_3_1_dpot_5890 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_9_Q_6061 : STD_LOGIC; 
  signal ControlUnitPort_A_31_B_31_equal_31_o : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_10_Q_6048 : STD_LOGIC; 
  signal ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_8_Q_6038 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_23_dpot_6089 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_24_dpot_6081 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_25_dpot_6076 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_26_dpot_6069 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_30_dpot_6162 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_27_dpot_6157 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_29_dpot_6150 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_28_dpot_6145 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_23_dpot_6185 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_24_dpot_6177 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_25_dpot_6172 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_26_dpot_6165 : STD_LOGIC; 
  signal N467 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
  signal N599 : STD_LOGIC; 
  signal N598 : STD_LOGIC; 
  signal Mmux_Write_data93_6275 : STD_LOGIC; 
  signal ALUPort_Sh531_pack_5 : STD_LOGIC; 
  signal ALUPort_Sh281 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_31_dpot_6599 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_31_dpot_6609 : STD_LOGIC; 
  signal Mmux_Write_data184_6732 : STD_LOGIC; 
  signal ALUop_1_pack_2 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_15_dpot_6821 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_16_dpot_6813 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_17_dpot_6808 : STD_LOGIC; 
  signal DMemoryPort_DMem_10_18_dpot_6801 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_424 : STD_LOGIC; 
  signal N609 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_82_6942 : STD_LOGIC; 
  signal N608 : STD_LOGIC; 
  signal DMemoryPort_DMem_4_31_dpot_6964 : STD_LOGIC; 
  signal ALUPort_Sh1371_pack_2 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N613 : STD_LOGIC; 
  signal Mmux_Write_data172 : STD_LOGIC; 
  signal N612 : STD_LOGIC; 
  signal ALUPort_Sh561_7185 : STD_LOGIC; 
  signal N457 : STD_LOGIC; 
  signal N456 : STD_LOGIC; 
  signal ALUPort_Sh581_7199 : STD_LOGIC; 
  signal DMemoryPort_DMem_12_31_dpot_7337 : STD_LOGIC; 
  signal IDecodePort_Mmux_read_data2_423_pack_3 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_0_dpot_7632 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_1_dpot_7627 : STD_LOGIC; 
  signal DMemoryPort_DMem_2_2_dpot_7614 : STD_LOGIC; 
  signal Mmux_Write_data33_7735 : STD_LOGIC; 
  signal N438_pack_2 : STD_LOGIC; 
  signal Mmux_Write_data251 : STD_LOGIC; 
  signal N596 : STD_LOGIC; 
  signal N597 : STD_LOGIC; 
  signal N461 : STD_LOGIC; 
  signal Mmux_Write_data255 : STD_LOGIC; 
  signal N460 : STD_LOGIC; 
  signal N603 : STD_LOGIC; 
  signal N602 : STD_LOGIC; 
  signal Mmux_Write_data182_7898 : STD_LOGIC; 
  signal N465 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal ALUPort_Sh571_8064 : STD_LOGIC; 
  signal N459 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal ALUPort_Sh1391_8093 : STD_LOGIC; 
  signal Mmux_Write_data72 : STD_LOGIC; 
  signal N601 : STD_LOGIC; 
  signal N600 : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_LED_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_CA_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_CA_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_CA_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_CA_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_CA_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_CA_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_CA_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_AN_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_AN_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_AN_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_AN_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_AN_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_AN_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_AN_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SSEG_AN_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_LED_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_BTN_2_BTN_1_OR_3_o_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_Val_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Val_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Val_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Val_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clr_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_16_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_9_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_2_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_2_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_11_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_18_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_17_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_3_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_23_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_3_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_3_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_22_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_21_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_20_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_19_IN : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_0_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_0_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_26_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_24_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_25_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_2_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_2_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_2_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_4_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_4_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_4_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_4_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_28_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_5_27_IN : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_10_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_30_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_29_IN : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_4_31_IN : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_4_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_12_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DMemoryPort_DMem_2_0_CLK : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_44_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_51_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_40_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_35_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_61_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_39_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_34_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_54_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_50_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_57_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_45_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_55_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_46_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp146_CYINITVCC_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_O_3_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_7_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp183_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_6_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_5_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CONV1_Mram_Y7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_11_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_10_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_9_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_8_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_15_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_14_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_13_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_12_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_19_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_18_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_17_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_16_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_23_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_22_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_21_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_20_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_27_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_26_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_25_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_24_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_26_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_26_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_26_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_26_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_26_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_26_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_26_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_26_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_29_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_28_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp186_CYINITVCC_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp189_CYINITVCC_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp195_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_96_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp201_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_97_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_98_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CONV1_Mram_Y7_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_4_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp203_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_66_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_73_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_86_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_30_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_67_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_77_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_88_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_69_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_79_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_91_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_71_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_81_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_82_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_65_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_75_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_63_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_74_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_84_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_89_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_64_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_76_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_92_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_68_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_78_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_58_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_85_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_70_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_80_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_60_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_62_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_72_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_83_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_43_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_59_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_33_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_31_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_52_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_37_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_38_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_93_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_36_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_42_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_49_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_32_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_53_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_41_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_48_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_56_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_47_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_87_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_90_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DMemoryPort_mux10_10_101_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal Write_data : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal ALUop : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ALUResult : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal DMemoryPort_DMem_2 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DMemoryPort_DMem_10 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal ControlUnitPort_NextPCSignal : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal IDecodePort_Reg_array_4 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal ALUPort_B_input : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal IDecodePort_write_register_address : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal DMemoryPort_DMem_11 : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal DMemoryPort_DMem_4 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DMemoryPort_DMem_12 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal DMemoryPort_DMem_9 : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal Cntr : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal Val : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ControlUnitPort_Madd_PCIncby1_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal ControlUnitPort_Madd_n0111_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal DMemoryPort_DMem_3 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Mcount_Cntr_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal ControlUnitPort_Madd_PCIncby1_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ControlUnitPort_PCIncby1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal ControlUnitPort_Madd_n0111_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal ControlUnitPort_n0111 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal IDecodePort_Reg_array_1 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_17_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_17_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y86"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_17_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_41 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y86",
      INIT => X"0055005500000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82_8360,
      ADR3 => LED_5_OBUF_8367,
      ADR0 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_4
    );
  DMemoryPort_mux10_10_44_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X49Y86",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_44_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y86",
      INIT => X"0101230101012301"
    )
    port map (
      ADR5 => '1',
      ADR1 => LED_0_OBUF_8361,
      ADR4 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR3 => N564_0,
      ADR2 => N498,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82_8360
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_10_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_10_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X36Y70"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_10_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_41 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y70",
      INIT => X"0033003300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_8434,
      ADR1 => LED_5_OBUF_8367,
      ADR3 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_4
    );
  DMemoryPort_mux10_10_51_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X36Y70",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_51_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y70",
      INIT => X"0000000008083B3B"
    )
    port map (
      ADR3 => '1',
      ADR5 => LED_0_OBUF_8361,
      ADR2 => LED_1_OBUF_8285,
      ADR1 => LED_2_OBUF_8362,
      ADR0 => N578_0,
      ADR4 => N512,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_8434
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_21_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_21_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X52Y89"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_21_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_41 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y89",
      INIT => X"0000555500000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82_8483,
      ADR4 => LED_5_OBUF_8367,
      ADR0 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_4
    );
  DMemoryPort_mux10_10_40_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X52Y89",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_40_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y89",
      INIT => X"00000A0A03030303"
    )
    port map (
      ADR3 => '1',
      ADR2 => LED_0_OBUF_8361,
      ADR4 => LED_1_OBUF_8285,
      ADR5 => LED_2_OBUF_8362,
      ADR0 => N556_0,
      ADR1 => N490,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82_8483
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_26_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_26_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y86"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_26_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_41 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y86",
      INIT => X"000000FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_8531,
      ADR3 => LED_5_OBUF_8367,
      ADR4 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_4
    );
  DMemoryPort_mux10_10_35_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X53Y86",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_35_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y86",
      INIT => X"1111000000550055"
    )
    port map (
      ADR2 => '1',
      ADR0 => LED_0_OBUF_8361,
      ADR1 => LED_1_OBUF_8285,
      ADR5 => LED_2_OBUF_8362,
      ADR4 => N546_0,
      ADR3 => N480,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_8531
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_0_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_0_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X38Y77"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_0_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_41 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y77",
      INIT => X"0000555500000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_82_8615,
      ADR0 => LED_5_OBUF_8367,
      ADR4 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_4
    );
  DMemoryPort_mux10_10_61_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X38Y77",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_61_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_82 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y77",
      INIT => X"0011001155110011"
    )
    port map (
      ADR2 => '1',
      ADR0 => LED_0_OBUF_8361,
      ADR5 => LED_1_OBUF_8285,
      ADR3 => LED_2_OBUF_8362,
      ADR4 => N594_0,
      ADR1 => N532,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_82_8615
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_23_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_23_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y85"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_23_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_41 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y85",
      INIT => X"0000333300000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_82_8651,
      ADR1 => LED_5_OBUF_8367,
      ADR4 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_4
    );
  DMemoryPort_mux10_10_39_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X53Y85",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_39_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_82 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y85",
      INIT => X"0505000000550055"
    )
    port map (
      ADR1 => '1',
      ADR0 => LED_0_OBUF_8361,
      ADR2 => LED_1_OBUF_8285,
      ADR5 => LED_2_OBUF_8362,
      ADR4 => N554_0,
      ADR3 => N488,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_82_8651
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_28_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_28_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y86"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_28_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_41 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y86",
      INIT => X"0033003300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_82_8703,
      ADR1 => LED_5_OBUF_8367,
      ADR3 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_4
    );
  DMemoryPort_mux10_10_34_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X55Y86",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_34_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_82 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y86",
      INIT => X"1111000000550055"
    )
    port map (
      ADR2 => '1',
      ADR0 => LED_0_OBUF_8361,
      ADR1 => LED_1_OBUF_8285,
      ADR5 => LED_2_OBUF_8362,
      ADR4 => N544_0,
      ADR3 => N478,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_82_8703
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_7_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_7_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X43Y63"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_7_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_41 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y63",
      INIT => X"000000FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82_8717,
      ADR3 => LED_5_OBUF_8367,
      ADR4 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_4
    );
  DMemoryPort_mux10_10_54_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X43Y63",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_54_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y63",
      INIT => X"000000000055A0F5"
    )
    port map (
      ADR1 => '1',
      ADR5 => LED_0_OBUF_8361,
      ADR4 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR2 => N584,
      ADR3 => N518,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82_8717
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_11_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_11_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X36Y73"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_11_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_41 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y73",
      INIT => X"0000000055550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_8796,
      ADR5 => LED_5_OBUF_8367,
      ADR0 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_4
    );
  DMemoryPort_mux10_10_50_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X36Y73",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_50_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y73",
      INIT => X"1010000013130303"
    )
    port map (
      ADR3 => '1',
      ADR1 => LED_0_OBUF_8361,
      ADR0 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR4 => N576_0,
      ADR5 => N510,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_8796
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_5_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_5_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X42Y68"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_5_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_41 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y68",
      INIT => X"0000333300000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_82_8860,
      ADR1 => LED_5_OBUF_8367,
      ADR4 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_4
    );
  DMemoryPort_mux10_10_57_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X42Y68",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_57_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_82 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y68",
      INIT => X"0022000011331111"
    )
    port map (
      ADR2 => '1',
      ADR1 => LED_0_OBUF_8361,
      ADR3 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR4 => N590,
      ADR5 => N524,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_82_8860
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_16_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_16_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y84"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_16_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_41 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y84",
      INIT => X"0303030300000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_82_8871,
      ADR1 => LED_5_OBUF_8367,
      ADR2 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_4
    );
  DMemoryPort_mux10_10_45_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X48Y84",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_45_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_82 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y84",
      INIT => X"001B001B00110011"
    )
    port map (
      ADR4 => '1',
      ADR3 => LED_0_OBUF_8361,
      ADR2 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR5 => N566_0,
      ADR1 => N500,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_82_8871
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_4_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_4_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y65"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_4_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_41 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y65",
      INIT => X"0033003300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82_8892,
      ADR1 => LED_5_OBUF_8367,
      ADR3 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_4
    );
  DMemoryPort_mux10_10_55_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X48Y65",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_55_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y65",
      INIT => X"000000CC000F000F"
    )
    port map (
      ADR0 => '1',
      ADR3 => LED_0_OBUF_8361,
      ADR4 => LED_1_OBUF_8285,
      ADR5 => LED_2_OBUF_8362,
      ADR1 => N586_0,
      ADR2 => N520,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82_8892
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_13_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_13_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y74"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_13_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_41 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y74",
      INIT => X"0505050500000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_9005,
      ADR0 => LED_5_OBUF_8367,
      ADR2 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_4
    );
  DMemoryPort_mux10_10_46_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X39Y74",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_46_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y74",
      INIT => X"0005080D0005080D"
    )
    port map (
      ADR5 => '1',
      ADR2 => LED_0_OBUF_8361,
      ADR4 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR1 => N568_0,
      ADR3 => N502,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_9005
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"9090090990900909"
    )
    port map (
      ADR3 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_45,
      ADR4 => IDecodePort_Mmux_read_data1_45,
      ADR0 => IDecodePort_Mmux_read_data2_46,
      ADR1 => IDecodePort_Mmux_read_data1_46,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_7_Q_169
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi7 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"4D4D4444"
    )
    port map (
      ADR3 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_45,
      ADR4 => IDecodePort_Mmux_read_data1_45,
      ADR0 => IDecodePort_Mmux_read_data2_46,
      ADR1 => IDecodePort_Mmux_read_data1_46,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi7_170
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X65Y78"
    )
    port map (
      CI => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_Q_9071,
      CYINIT => '0',
      CO(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_Q_9072,
      CO(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_CO_0_UNCONNECTED,
      DI(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi7_170,
      DI(2) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi6_178,
      DI(1) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi5_184,
      DI(0) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi4_190,
      O(3) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_O_3_UNCONNECTED,
      O(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_O_2_UNCONNECTED,
      O(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_O_1_UNCONNECTED,
      O(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_O_0_UNCONNECTED,
      S(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_7_Q_169,
      S(2) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_6_Q_177,
      S(1) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_5_Q_183,
      S(0) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_4_Q_189
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"9009900990099009"
    )
    port map (
      ADR4 => '1',
      ADR3 => IDecodePort_Mmux_read_data2_43,
      ADR2 => IDecodePort_Mmux_read_data1_43,
      ADR0 => IDecodePort_Mmux_read_data2_44,
      ADR1 => IDecodePort_Mmux_read_data1_44,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_6_Q_177
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"44D444D4"
    )
    port map (
      ADR4 => '1',
      ADR3 => IDecodePort_Mmux_read_data2_43,
      ADR2 => IDecodePort_Mmux_read_data1_43,
      ADR0 => IDecodePort_Mmux_read_data2_44,
      ADR1 => IDecodePort_Mmux_read_data1_44,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi6_178
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"8282414182824141"
    )
    port map (
      ADR3 => '1',
      ADR1 => IDecodePort_Mmux_read_data2_41,
      ADR2 => IDecodePort_Mmux_read_data1_41,
      ADR4 => IDecodePort_Mmux_read_data2_42,
      ADR0 => IDecodePort_Mmux_read_data1_42,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_5_Q_183
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"2020BABA"
    )
    port map (
      ADR3 => '1',
      ADR1 => IDecodePort_Mmux_read_data2_41,
      ADR2 => IDecodePort_Mmux_read_data1_41,
      ADR4 => IDecodePort_Mmux_read_data2_42,
      ADR0 => IDecodePort_Mmux_read_data1_42,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi5_184
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_430,
      ADR1 => IDecodePort_Mmux_read_data1_430,
      ADR3 => IDecodePort_Mmux_read_data2_431,
      ADR4 => IDecodePort_Mmux_read_data1_431,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_4_Q_189
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"0CFF000C"
    )
    port map (
      ADR0 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_430,
      ADR1 => IDecodePort_Mmux_read_data1_430,
      ADR3 => IDecodePort_Mmux_read_data2_431,
      ADR4 => IDecodePort_Mmux_read_data1_431,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi4_190
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y79",
      INIT => X"9900009999000099"
    )
    port map (
      ADR2 => '1',
      ADR3 => IDecodePort_Mmux_read_data2_414,
      ADR4 => IDecodePort_Mmux_read_data1_414,
      ADR0 => IDecodePort_Mmux_read_data2_415,
      ADR1 => IDecodePort_Mmux_read_data1_415,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_11_Q_199
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi11 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y79",
      INIT => X"44DD4444"
    )
    port map (
      ADR2 => '1',
      ADR3 => IDecodePort_Mmux_read_data2_414,
      ADR4 => IDecodePort_Mmux_read_data1_414,
      ADR0 => IDecodePort_Mmux_read_data2_415,
      ADR1 => IDecodePort_Mmux_read_data1_415,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi11_200
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X65Y79"
    )
    port map (
      CI => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_7_Q_9072,
      CYINIT => '0',
      CO(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_Q_9076,
      CO(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_CO_0_UNCONNECTED,
      DI(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi11_200,
      DI(2) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi10_208,
      DI(1) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi9_214,
      DI(0) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi8_220,
      O(3) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_O_3_UNCONNECTED,
      O(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_O_2_UNCONNECTED,
      O(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_O_1_UNCONNECTED,
      O(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_O_0_UNCONNECTED,
      S(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_11_Q_199,
      S(2) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_10_Q_207,
      S(1) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_9_Q_213,
      S(0) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_8_Q_219
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y79",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR1 => IDecodePort_Mmux_read_data2_412,
      ADR4 => IDecodePort_Mmux_read_data1_412,
      ADR0 => IDecodePort_Mmux_read_data2_413,
      ADR3 => IDecodePort_Mmux_read_data1_413,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_10_Q_207
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi10 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y79",
      INIT => X"77115500"
    )
    port map (
      ADR2 => '1',
      ADR1 => IDecodePort_Mmux_read_data2_412,
      ADR4 => IDecodePort_Mmux_read_data1_412,
      ADR0 => IDecodePort_Mmux_read_data2_413,
      ADR3 => IDecodePort_Mmux_read_data1_413,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi10_208
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y79",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR4 => IDecodePort_Mmux_read_data2_49,
      ADR3 => IDecodePort_Mmux_read_data1_49,
      ADR0 => IDecodePort_Mmux_read_data2_410,
      ADR2 => IDecodePort_Mmux_read_data1_410,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_9_Q_213
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi9 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y79",
      INIT => X"5050F550"
    )
    port map (
      ADR1 => '1',
      ADR4 => IDecodePort_Mmux_read_data2_49,
      ADR3 => IDecodePort_Mmux_read_data1_49,
      ADR0 => IDecodePort_Mmux_read_data2_410,
      ADR2 => IDecodePort_Mmux_read_data1_410,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi9_214
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y79",
      INIT => X"8421842184218421"
    )
    port map (
      ADR4 => '1',
      ADR3 => IDecodePort_Mmux_read_data2_47,
      ADR1 => IDecodePort_Mmux_read_data1_47,
      ADR2 => IDecodePort_Mmux_read_data2_48,
      ADR0 => IDecodePort_Mmux_read_data1_48,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_8_Q_219
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi8 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y79",
      INIT => X"0A8E0A8E"
    )
    port map (
      ADR4 => '1',
      ADR3 => IDecodePort_Mmux_read_data2_47,
      ADR1 => IDecodePort_Mmux_read_data1_47,
      ADR2 => IDecodePort_Mmux_read_data2_48,
      ADR0 => IDecodePort_Mmux_read_data1_48,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi8_220
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y77",
      INIT => X"A00A5005A00A5005"
    )
    port map (
      ADR1 => '1',
      ADR4 => IDecodePort_Mmux_read_data2_428,
      ADR0 => IDecodePort_Mmux_read_data1_428,
      ADR3 => IDecodePort_Mmux_read_data2_429,
      ADR2 => IDecodePort_Mmux_read_data1_429,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_3_Q_229
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y77",
      INIT => X"00F0A0FA"
    )
    port map (
      ADR1 => '1',
      ADR4 => IDecodePort_Mmux_read_data2_428,
      ADR0 => IDecodePort_Mmux_read_data1_428,
      ADR3 => IDecodePort_Mmux_read_data2_429,
      ADR2 => IDecodePort_Mmux_read_data1_429,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi3_230
    );
  ProtoComp146_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X65Y77"
    )
    port map (
      O => NLW_ProtoComp146_CYINITVCC_O_UNCONNECTED
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X65Y77"
    )
    port map (
      CI => '0',
      CYINIT => '1',
      CO(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_Q_9071,
      CO(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi3_230,
      DI(2) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi2_238,
      DI(1) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi1_244,
      DI(0) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi_250,
      O(3) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_3_O_0_UNCONNECTED,
      S(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_3_Q_229,
      S(2) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_2_Q_237,
      S(1) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_1_Q_243,
      S(0) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_0_Q_249
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y77",
      INIT => X"9900009999000099"
    )
    port map (
      ADR2 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_426,
      ADR1 => IDecodePort_Mmux_read_data1_426,
      ADR4 => IDecodePort_Mmux_read_data2_427,
      ADR3 => IDecodePort_Mmux_read_data1_427,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_2_Q_237
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y77",
      INIT => X"4400FF44"
    )
    port map (
      ADR2 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_426,
      ADR1 => IDecodePort_Mmux_read_data1_426,
      ADR4 => IDecodePort_Mmux_read_data2_427,
      ADR3 => IDecodePort_Mmux_read_data1_427,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi2_238
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y77",
      INIT => X"8282414182824141"
    )
    port map (
      ADR3 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_422,
      ADR4 => IDecodePort_Mmux_read_data1_422,
      ADR2 => IDecodePort_Mmux_read_data2_425,
      ADR1 => IDecodePort_Mmux_read_data1_425,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_1_Q_243
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y77",
      INIT => X"4D4D0C0C"
    )
    port map (
      ADR3 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_422,
      ADR4 => IDecodePort_Mmux_read_data1_422,
      ADR2 => IDecodePort_Mmux_read_data2_425,
      ADR1 => IDecodePort_Mmux_read_data1_425,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi1_244
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y77",
      INIT => X"8484212184842121"
    )
    port map (
      ADR3 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_4,
      ADR0 => IDecodePort_Mmux_read_data1_4,
      ADR1 => IDecodePort_Mmux_read_data2_411,
      ADR4 => IDecodePort_Mmux_read_data1_411,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_0_Q_249
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X65Y77",
      INIT => X"3B3B0202"
    )
    port map (
      ADR3 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_4,
      ADR0 => IDecodePort_Mmux_read_data1_4,
      ADR1 => IDecodePort_Mmux_read_data2_411,
      ADR4 => IDecodePort_Mmux_read_data1_411,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi_250
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_Q_266,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_0
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y80",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_423,
      ADR3 => IDecodePort_Mmux_read_data1_423,
      ADR4 => IDecodePort_Mmux_read_data2_424_0,
      ADR1 => IDecodePort_Mmux_read_data1_424,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_15_Q_259
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi15 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y80",
      INIT => X"4400DDCC"
    )
    port map (
      ADR2 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_423,
      ADR3 => IDecodePort_Mmux_read_data1_423,
      ADR4 => IDecodePort_Mmux_read_data2_424_0,
      ADR1 => IDecodePort_Mmux_read_data1_424,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi15_260
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X65Y80"
    )
    port map (
      CI => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_11_Q_9076,
      CYINIT => '0',
      CO(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_Q_266,
      CO(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_CO_0_UNCONNECTED,
      DI(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi15_260,
      DI(2) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi14_268,
      DI(1) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi13_274,
      DI(0) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi12_280,
      O(3) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_O_3_UNCONNECTED,
      O(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_O_2_UNCONNECTED,
      O(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_O_1_UNCONNECTED,
      O(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_O_0_UNCONNECTED,
      S(3) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_15_Q_259,
      S(2) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_14_Q_267,
      S(1) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_13_Q_273,
      S(0) => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_12_Q_279
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y80",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR4 => IDecodePort_Mmux_read_data2_420,
      ADR1 => IDecodePort_Mmux_read_data1_420,
      ADR0 => IDecodePort_Mmux_read_data2_421,
      ADR3 => IDecodePort_Mmux_read_data1_421,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_14_Q_267
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi14 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y80",
      INIT => X"5500DD44"
    )
    port map (
      ADR2 => '1',
      ADR4 => IDecodePort_Mmux_read_data2_420,
      ADR1 => IDecodePort_Mmux_read_data1_420,
      ADR0 => IDecodePort_Mmux_read_data2_421,
      ADR3 => IDecodePort_Mmux_read_data1_421,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi14_268
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y80",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_418,
      ADR3 => IDecodePort_Mmux_read_data1_418,
      ADR1 => IDecodePort_Mmux_read_data2_419,
      ADR4 => IDecodePort_Mmux_read_data1_419,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_13_Q_273
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi13 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y80",
      INIT => X"77331100"
    )
    port map (
      ADR2 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_418,
      ADR3 => IDecodePort_Mmux_read_data1_418,
      ADR1 => IDecodePort_Mmux_read_data2_419,
      ADR4 => IDecodePort_Mmux_read_data1_419,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi13_274
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X65Y80",
      INIT => X"8484212184842121"
    )
    port map (
      ADR3 => '1',
      ADR1 => IDecodePort_Mmux_read_data2_416,
      ADR4 => IDecodePort_Mmux_read_data1_416,
      ADR0 => IDecodePort_Mmux_read_data2_417,
      ADR2 => IDecodePort_Mmux_read_data1_417,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lut_12_Q_279
    );
  ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi12 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y80",
      INIT => X"71715050"
    )
    port map (
      ADR3 => '1',
      ADR1 => IDecodePort_Mmux_read_data2_416,
      ADR4 => IDecodePort_Mmux_read_data1_416,
      ADR0 => IDecodePort_Mmux_read_data2_417,
      ADR2 => IDecodePort_Mmux_read_data1_417,
      O => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_lutdi12_280
    );
  Cntr_3 : X_SFF
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_3_CLK,
      I => Result(3),
      O => Cntr(3),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(3),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_3_rt_291
    );
  DMemoryPort_mux10_10_7_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_7_D5LUT_O_UNCONNECTED
    );
  ProtoComp183_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X6Y87"
    )
    port map (
      O => NLW_ProtoComp183_CYINITGND_O_UNCONNECTED
    );
  Cntr_2 : X_SFF
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_2_CLK,
      I => Result(2),
      O => Cntr(2),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_Cntr_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y87"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => Mcount_Cntr_cy_3_Q_9227,
      CO(2) => NLW_Mcount_Cntr_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_Cntr_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_Cntr_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result(1),
      O(0) => Result(0),
      S(3) => Cntr_3_rt_291,
      S(2) => Cntr_2_rt_302,
      S(1) => Cntr_1_rt_306,
      S(0) => Mcount_Cntr_lut(0)
    );
  Cntr_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(2),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_2_rt_302
    );
  DMemoryPort_mux10_10_6_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_6_C5LUT_O_UNCONNECTED
    );
  Cntr_1 : X_SFF
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_1_CLK,
      I => Result(1),
      O => Cntr(1),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(1),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_1_rt_306
    );
  DMemoryPort_mux10_10_5_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_5_B5LUT_O_UNCONNECTED
    );
  Cntr_0 : X_SFF
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_0_CLK,
      I => Result(0),
      O => Cntr(0),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_Cntr_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(0),
      ADR4 => '1',
      ADR5 => '1',
      O => Mcount_Cntr_lut(0)
    );
  CONV1_Mram_Y7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y87",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_CONV1_Mram_Y7_A5LUT_O_UNCONNECTED
    );
  Cntr_7 : X_SFF
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_7_CLK,
      I => Result(7),
      O => Cntr(7),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(7),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_7_rt_319
    );
  DMemoryPort_mux10_10_11_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_11_D5LUT_O_UNCONNECTED
    );
  Cntr_6 : X_SFF
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_6_CLK,
      I => Result(6),
      O => Cntr(6),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_Cntr_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y88"
    )
    port map (
      CI => Mcount_Cntr_cy_3_Q_9227,
      CYINIT => '0',
      CO(3) => Mcount_Cntr_cy_7_Q_9228,
      CO(2) => NLW_Mcount_Cntr_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_Cntr_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_Cntr_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => Cntr_7_rt_319,
      S(2) => Cntr_6_rt_330,
      S(1) => Cntr_5_rt_334,
      S(0) => Cntr_4_rt_338
    );
  Cntr_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(6),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_6_rt_330
    );
  DMemoryPort_mux10_10_10_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_10_C5LUT_O_UNCONNECTED
    );
  Cntr_5 : X_SFF
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_5_CLK,
      I => Result(5),
      O => Cntr(5),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(5),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_5_rt_334
    );
  DMemoryPort_mux10_10_9_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_9_B5LUT_O_UNCONNECTED
    );
  Cntr_4 : X_SFF
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_4_CLK,
      I => Result(4),
      O => Cntr(4),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(4),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_4_rt_338
    );
  DMemoryPort_mux10_10_8_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y88",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_8_A5LUT_O_UNCONNECTED
    );
  Cntr_11 : X_SFF
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_11_CLK,
      I => Result(11),
      O => Cntr(11),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(11),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_11_rt_347
    );
  DMemoryPort_mux10_10_15_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_15_D5LUT_O_UNCONNECTED
    );
  Cntr_10 : X_SFF
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_10_CLK,
      I => Result(10),
      O => Cntr(10),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_Cntr_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y89"
    )
    port map (
      CI => Mcount_Cntr_cy_7_Q_9228,
      CYINIT => '0',
      CO(3) => Mcount_Cntr_cy_11_Q_9229,
      CO(2) => NLW_Mcount_Cntr_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_Cntr_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_Cntr_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(11),
      O(2) => Result(10),
      O(1) => Result(9),
      O(0) => Result(8),
      S(3) => Cntr_11_rt_347,
      S(2) => Cntr_10_rt_358,
      S(1) => Cntr_9_rt_362,
      S(0) => Cntr_8_rt_366
    );
  Cntr_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(10),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_10_rt_358
    );
  DMemoryPort_mux10_10_14_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_14_C5LUT_O_UNCONNECTED
    );
  Cntr_9 : X_SFF
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_9_CLK,
      I => Result(9),
      O => Cntr(9),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(9),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_9_rt_362
    );
  DMemoryPort_mux10_10_13_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_13_B5LUT_O_UNCONNECTED
    );
  Cntr_8 : X_SFF
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_8_CLK,
      I => Result(8),
      O => Cntr(8),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(8),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_8_rt_366
    );
  DMemoryPort_mux10_10_12_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y89",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_12_A5LUT_O_UNCONNECTED
    );
  Cntr_15 : X_SFF
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_15_CLK,
      I => Result(15),
      O => Cntr(15),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(15),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_15_rt_375
    );
  DMemoryPort_mux10_10_19_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_19_D5LUT_O_UNCONNECTED
    );
  Cntr_14 : X_SFF
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_14_CLK,
      I => Result(14),
      O => Cntr(14),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_Cntr_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y90"
    )
    port map (
      CI => Mcount_Cntr_cy_11_Q_9229,
      CYINIT => '0',
      CO(3) => Mcount_Cntr_cy_15_Q_9230,
      CO(2) => NLW_Mcount_Cntr_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_Cntr_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_Cntr_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(15),
      O(2) => Result(14),
      O(1) => Result(13),
      O(0) => Result(12),
      S(3) => Cntr_15_rt_375,
      S(2) => Cntr_14_rt_386,
      S(1) => Cntr_13_rt_390,
      S(0) => Cntr_12_rt_394
    );
  Cntr_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(14),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_14_rt_386
    );
  DMemoryPort_mux10_10_18_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_18_C5LUT_O_UNCONNECTED
    );
  Cntr_13 : X_SFF
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_13_CLK,
      I => Result(13),
      O => Cntr(13),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(13),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_13_rt_390
    );
  DMemoryPort_mux10_10_17_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_17_B5LUT_O_UNCONNECTED
    );
  Cntr_12 : X_SFF
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_12_CLK,
      I => Result(12),
      O => Cntr(12),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(12),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_12_rt_394
    );
  DMemoryPort_mux10_10_16_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y90",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_16_A5LUT_O_UNCONNECTED
    );
  Cntr_19 : X_SFF
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_19_CLK,
      I => Result(19),
      O => Cntr(19),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(19),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_19_rt_403
    );
  DMemoryPort_mux10_10_23_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_23_D5LUT_O_UNCONNECTED
    );
  Cntr_18 : X_SFF
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_18_CLK,
      I => Result(18),
      O => Cntr(18),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_Cntr_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y91"
    )
    port map (
      CI => Mcount_Cntr_cy_15_Q_9230,
      CYINIT => '0',
      CO(3) => Mcount_Cntr_cy_19_Q_9231,
      CO(2) => NLW_Mcount_Cntr_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_Cntr_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_Cntr_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(19),
      O(2) => Result(18),
      O(1) => Result(17),
      O(0) => Result(16),
      S(3) => Cntr_19_rt_403,
      S(2) => Cntr_18_rt_414,
      S(1) => Cntr_17_rt_418,
      S(0) => Cntr_16_rt_422
    );
  Cntr_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(18),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_18_rt_414
    );
  DMemoryPort_mux10_10_22_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_22_C5LUT_O_UNCONNECTED
    );
  Cntr_17 : X_SFF
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_17_CLK,
      I => Result(17),
      O => Cntr(17),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(17),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_17_rt_418
    );
  DMemoryPort_mux10_10_21_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_21_B5LUT_O_UNCONNECTED
    );
  Cntr_16 : X_SFF
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_16_CLK,
      I => Result(16),
      O => Cntr(16),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(16),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_16_rt_422
    );
  DMemoryPort_mux10_10_20_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y91",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_20_A5LUT_O_UNCONNECTED
    );
  Cntr_23 : X_SFF
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_23_CLK,
      I => Result(23),
      O => Cntr(23),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(23),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_23_rt_431
    );
  DMemoryPort_mux10_10_27_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_27_D5LUT_O_UNCONNECTED
    );
  Cntr_22 : X_SFF
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_22_CLK,
      I => Result(22),
      O => Cntr(22),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_Cntr_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y92"
    )
    port map (
      CI => Mcount_Cntr_cy_19_Q_9231,
      CYINIT => '0',
      CO(3) => Mcount_Cntr_cy_23_Q_9232,
      CO(2) => NLW_Mcount_Cntr_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_Cntr_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_Cntr_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(23),
      O(2) => Result(22),
      O(1) => Result(21),
      O(0) => Result(20),
      S(3) => Cntr_23_rt_431,
      S(2) => Cntr_22_rt_442,
      S(1) => Cntr_21_rt_446,
      S(0) => Cntr_20_rt_450
    );
  Cntr_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(22),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_22_rt_442
    );
  DMemoryPort_mux10_10_26_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_26_C5LUT_O_UNCONNECTED
    );
  Cntr_21 : X_SFF
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_21_CLK,
      I => Result(21),
      O => Cntr(21),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(21),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_21_rt_446
    );
  DMemoryPort_mux10_10_25_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_25_B5LUT_O_UNCONNECTED
    );
  Cntr_20 : X_SFF
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_20_CLK,
      I => Result(20),
      O => Cntr(20),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(20),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_20_rt_450
    );
  DMemoryPort_mux10_10_24_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y92",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_24_A5LUT_O_UNCONNECTED
    );
  Cntr_26 : X_SFF
    generic map(
      LOC => "SLICE_X6Y93",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_26_CLK,
      I => Result(26),
      O => Cntr(26),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_Cntr_xor_26_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y93"
    )
    port map (
      CI => Mcount_Cntr_cy_23_Q_9232,
      CYINIT => '0',
      CO(3) => NLW_Mcount_Cntr_xor_26_CO_3_UNCONNECTED,
      CO(2) => NLW_Mcount_Cntr_xor_26_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_Cntr_xor_26_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_Cntr_xor_26_CO_0_UNCONNECTED,
      DI(3) => NLW_Mcount_Cntr_xor_26_DI_3_UNCONNECTED,
      DI(2) => NLW_Mcount_Cntr_xor_26_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_Mcount_Cntr_xor_26_O_3_UNCONNECTED,
      O(2) => Result(26),
      O(1) => Result(25),
      O(0) => Result(24),
      S(3) => NLW_Mcount_Cntr_xor_26_S_3_UNCONNECTED,
      S(2) => Cntr_26_rt_464,
      S(1) => Cntr_25_rt_467,
      S(0) => Cntr_24_rt_471
    );
  Cntr_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y93",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(26),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_26_rt_464
    );
  Cntr_25 : X_SFF
    generic map(
      LOC => "SLICE_X6Y93",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_25_CLK,
      I => Result(25),
      O => Cntr(25),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y93",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(25),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_25_rt_467
    );
  DMemoryPort_mux10_10_29_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y93",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_29_B5LUT_O_UNCONNECTED
    );
  Cntr_24 : X_SFF
    generic map(
      LOC => "SLICE_X6Y93",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_24_CLK,
      I => Result(24),
      O => Cntr(24),
      SRST => Cntr_26_BTN_4_OR_92_o,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Cntr_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y93",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(24),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_24_rt_471
    );
  DMemoryPort_mux10_10_28_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y93",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_28_A5LUT_O_UNCONNECTED
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y77",
      INIT => X"9009000000009009"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data1_431,
      ADR2 => IDecodePort_Mmux_read_data2_431,
      ADR5 => IDecodePort_Mmux_read_data1_41,
      ADR4 => IDecodePort_Mmux_read_data2_41,
      ADR0 => IDecodePort_Mmux_read_data1_42,
      ADR1 => IDecodePort_Mmux_read_data2_42,
      O => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_3_Q_477
    );
  ProtoComp186_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X63Y77"
    )
    port map (
      O => NLW_ProtoComp186_CYINITVCC_O_UNCONNECTED
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X63Y77"
    )
    port map (
      CI => '0',
      CYINIT => '1',
      CO(3) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_Q_9234,
      CO(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_O_0_UNCONNECTED,
      S(3) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_3_Q_477,
      S(2) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_2_Q_487,
      S(1) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_1_Q_495,
      S(0) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_0_Q_503
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y77",
      INIT => X"8400210000840021"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data1_428,
      ADR5 => IDecodePort_Mmux_read_data2_428,
      ADR4 => IDecodePort_Mmux_read_data1_429,
      ADR1 => IDecodePort_Mmux_read_data2_429,
      ADR0 => IDecodePort_Mmux_read_data1_430,
      ADR2 => IDecodePort_Mmux_read_data2_430,
      O => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_2_Q_487
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y77",
      INIT => X"9000090000900009"
    )
    port map (
      ADR0 => IDecodePort_Mmux_read_data1_426,
      ADR3 => IDecodePort_Mmux_read_data1_427,
      ADR5 => IDecodePort_Mmux_read_data2_427,
      ADR1 => IDecodePort_Mmux_read_data2_426,
      ADR2 => IDecodePort_Mmux_read_data1_425,
      ADR4 => IDecodePort_Mmux_read_data2_425,
      O => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_1_Q_495
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y77",
      INIT => X"8040201008040201"
    )
    port map (
      ADR0 => IDecodePort_Mmux_read_data1_422,
      ADR1 => IDecodePort_Mmux_read_data1_4,
      ADR4 => IDecodePort_Mmux_read_data2_4,
      ADR3 => IDecodePort_Mmux_read_data2_422,
      ADR2 => IDecodePort_Mmux_read_data1_411,
      ADR5 => IDecodePort_Mmux_read_data2_411,
      O => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_0_Q_503
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y78",
      INIT => X"8200410000820041"
    )
    port map (
      ADR1 => IDecodePort_Mmux_read_data1_413,
      ADR4 => IDecodePort_Mmux_read_data1_414,
      ADR3 => IDecodePort_Mmux_read_data1_415,
      ADR5 => IDecodePort_Mmux_read_data2_415,
      ADR0 => IDecodePort_Mmux_read_data2_414,
      ADR2 => IDecodePort_Mmux_read_data2_413,
      O => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_7_Q_513
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X63Y78"
    )
    port map (
      CI => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_3_Q_9234,
      CYINIT => '0',
      CO(3) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_Q_9235,
      CO(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_O_3_UNCONNECTED,
      O(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_O_2_UNCONNECTED,
      O(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_O_1_UNCONNECTED,
      O(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_O_0_UNCONNECTED,
      S(3) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_7_Q_513,
      S(2) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_6_Q_521,
      S(1) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_5_Q_529,
      S(0) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_4_Q_537
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y78",
      INIT => X"8020401008020401"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data1_412,
      ADR0 => IDecodePort_Mmux_read_data1_410,
      ADR2 => IDecodePort_Mmux_read_data1_49,
      ADR1 => IDecodePort_Mmux_read_data2_412,
      ADR4 => IDecodePort_Mmux_read_data2_410,
      ADR5 => IDecodePort_Mmux_read_data2_49,
      O => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_6_Q_521
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y78",
      INIT => X"8040201008040201"
    )
    port map (
      ADR5 => IDecodePort_Mmux_read_data1_48,
      ADR4 => IDecodePort_Mmux_read_data1_47,
      ADR0 => IDecodePort_Mmux_read_data1_46,
      ADR2 => IDecodePort_Mmux_read_data2_48,
      ADR1 => IDecodePort_Mmux_read_data2_47,
      ADR3 => IDecodePort_Mmux_read_data2_46,
      O => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_5_Q_529
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y78",
      INIT => X"8040201008040201"
    )
    port map (
      ADR4 => IDecodePort_Mmux_read_data1_43,
      ADR1 => IDecodePort_Mmux_read_data2_43,
      ADR2 => IDecodePort_Mmux_read_data1_44,
      ADR3 => IDecodePort_Mmux_read_data1_45,
      ADR0 => IDecodePort_Mmux_read_data2_45,
      ADR5 => IDecodePort_Mmux_read_data2_44,
      O => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_4_Q_537
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_3_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_3_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_2_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_2_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_1_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_1_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_0_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_0_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y72",
      INIT => X"F0F0B4870F0FB487"
    )
    port map (
      ADR5 => IFetchPort_Mram_Instruction3,
      ADR1 => IFetchPort_Mram_Instruction18,
      ADR4 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data1_425,
      ADR0 => IDecodePort_Mmux_read_data2_976,
      ADR3 => N396,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_3_Q_545
    );
  ProtoComp189_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X64Y72"
    )
    port map (
      O => NLW_ProtoComp189_CYINITVCC_O_UNCONNECTED
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X64Y72"
    )
    port map (
      CI => '0',
      CYINIT => '1',
      CO(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_Q_9237,
      CO(2) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_sub_7_OUT_3_Q,
      O(2) => ALUPort_A_input_31_B_input_31_sub_7_OUT_2_Q,
      O(1) => ALUPort_A_input_31_B_input_31_sub_7_OUT_1_Q,
      O(0) => ALUPort_A_input_31_B_input_31_sub_7_OUT_0_Q,
      S(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_3_Q_545,
      S(2) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_2_Q_559,
      S(1) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_1_Q_565,
      S(0) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_0_Q_573
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y72",
      INIT => X"C3C3F0F0C3C30F0F"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => IDecodePort_Mmux_read_data1_422,
      ADR1 => IFetchPort_Mram_Instruction2,
      ADR5 => IDecodePort_Mmux_read_data2_422,
      ADR4 => ALUSrc,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_2_Q_559
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y72",
      INIT => X"C30FF03CE12DE12D"
    )
    port map (
      ADR3 => IFetchPort_Mram_Instruction1,
      ADR5 => IFetchPort_Mram_Instruction18,
      ADR1 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data1_411,
      ADR0 => IDecodePort_Mmux_read_data2_835_8459,
      ADR4 => N392,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_1_Q_565
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y72",
      INIT => X"EBBFFFBFEB57FF5F"
    )
    port map (
      ADR3 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR4 => IDecodePort_Reg_array_4(0),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(3),
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_0_Q_573
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_7_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_7_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_6_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_6_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_5_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_5_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_4_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_4_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y73",
      INIT => X"F0FFF0000F000FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => IFetchPort_Mram_Instruction10,
      ADR5 => IDecodePort_Mmux_read_data1_429,
      ADR4 => IDecodePort_Mmux_read_data2_429,
      ADR3 => ALUSrc,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_7_Q_581
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X64Y73"
    )
    port map (
      CI => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_Q_9237,
      CYINIT => '0',
      CO(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_Q_9239,
      CO(2) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_sub_7_OUT_7_Q,
      O(2) => ALUPort_A_input_31_B_input_31_sub_7_OUT_6_Q,
      O(1) => ALUPort_A_input_31_B_input_31_sub_7_OUT_5_Q,
      O(0) => ALUPort_A_input_31_B_input_31_sub_7_OUT_4_Q,
      S(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_7_Q_581,
      S(2) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_6_Q_593,
      S(1) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_5_Q_599,
      S(0) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_4_Q_605
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y73",
      INIT => X"FF0000FFCCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => IFetchPort_Mram_Instruction10,
      ADR4 => IDecodePort_Mmux_read_data1_428,
      ADR1 => IDecodePort_Mmux_read_data2_428,
      ADR5 => ALUSrc,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_6_Q_593
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y73",
      INIT => X"FFCC003300CCFF33"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => IFetchPort_Mram_Instruction10,
      ADR4 => IDecodePort_Mmux_read_data1_427,
      ADR1 => IDecodePort_Mmux_read_data2_427,
      ADR3 => ALUSrc,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_5_Q_599
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y73",
      INIT => X"F0F0A5A50F0FA5A5"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => IDecodePort_Mmux_read_data1_426,
      ADR5 => IFetchPort_Mram_Instruction4,
      ADR0 => IDecodePort_Mmux_read_data2_426,
      ADR4 => ALUSrc,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_4_Q_605
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_11_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_11_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_10_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_10_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_9_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_9_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_8_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_8_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y74",
      INIT => X"BB44BB4488778877"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => IFetchPort_Mram_Instruction10,
      ADR1 => ALUSrc,
      ADR3 => IDecodePort_Mmux_read_data1_42,
      ADR5 => IDecodePort_Mmux_read_data2_42,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_11_Q_611
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X64Y74"
    )
    port map (
      CI => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_Q_9239,
      CYINIT => '0',
      CO(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_Q_9241,
      CO(2) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_sub_7_OUT_11_Q,
      O(2) => ALUPort_A_input_31_B_input_31_sub_7_OUT_10_Q,
      O(1) => ALUPort_A_input_31_B_input_31_sub_7_OUT_9_Q,
      O(0) => ALUPort_A_input_31_B_input_31_sub_7_OUT_8_Q,
      S(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_11_Q_611,
      S(2) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_10_Q_623,
      S(1) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_9_Q_629,
      S(0) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_8_Q_635
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y74",
      INIT => X"99C399C399C399C3"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR1 => IDecodePort_Mmux_read_data1_41,
      ADR3 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data2_41,
      ADR0 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_10_Q_623
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y74",
      INIT => X"AAAA5555CCCC3333"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_431,
      ADR5 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data2_431,
      ADR0 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_9_Q_629
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y74",
      INIT => X"F0F00F0FC3C3C3C3"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => IDecodePort_Mmux_read_data1_430,
      ADR4 => IFetchPort_Mram_Instruction10,
      ADR1 => IDecodePort_Mmux_read_data2_430,
      ADR5 => ALUSrc,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_8_Q_635
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_15_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_15_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_14_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_14_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_13_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_13_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_12_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_12_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y75",
      INIT => X"AA55AA55CC33CC33"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => IFetchPort_Mram_Instruction10,
      ADR5 => ALUSrc,
      ADR3 => IDecodePort_Mmux_read_data1_46,
      ADR1 => IDecodePort_Mmux_read_data2_46,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_15_Q_641
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X64Y75"
    )
    port map (
      CI => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_Q_9241,
      CYINIT => '0',
      CO(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_Q_9243,
      CO(2) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_sub_7_OUT_15_Q,
      O(2) => ALUPort_A_input_31_B_input_31_sub_7_OUT_14_Q,
      O(1) => ALUPort_A_input_31_B_input_31_sub_7_OUT_13_Q,
      O(0) => ALUPort_A_input_31_B_input_31_sub_7_OUT_12_Q,
      S(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_15_Q_641,
      S(2) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_14_Q_653,
      S(1) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_13_Q_659,
      S(0) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_12_Q_665
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y75",
      INIT => X"AA99AA9955995599"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => IFetchPort_Mram_Instruction10,
      ADR3 => ALUSrc,
      ADR0 => IDecodePort_Mmux_read_data1_45,
      ADR1 => IDecodePort_Mmux_read_data2_45,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_14_Q_653
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y75",
      INIT => X"CCCC3333FF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => IFetchPort_Mram_Instruction13,
      ADR5 => ALUSrc,
      ADR4 => IDecodePort_Mmux_read_data1_44,
      ADR3 => IDecodePort_Mmux_read_data2_44,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_13_Q_659
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y75",
      INIT => X"AAAA5555A5A5A5A5"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => IDecodePort_Mmux_read_data1_43,
      ADR5 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data2_43,
      ADR4 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_12_Q_665
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_19_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_19_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_18_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_18_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_17_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_17_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_16_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_16_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y76",
      INIT => X"FFAA00AA0055FF55"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => IFetchPort_Mram_Instruction10,
      ADR3 => ALUSrc,
      ADR5 => IDecodePort_Mmux_read_data1_410,
      ADR0 => IDecodePort_Mmux_read_data2_410,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_19_Q_671
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X64Y76"
    )
    port map (
      CI => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_Q_9243,
      CYINIT => '0',
      CO(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_Q_9245,
      CO(2) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_sub_7_OUT_19_Q,
      O(2) => ALUPort_A_input_31_B_input_31_sub_7_OUT_18_Q,
      O(1) => ALUPort_A_input_31_B_input_31_sub_7_OUT_17_Q,
      O(0) => ALUPort_A_input_31_B_input_31_sub_7_OUT_16_Q,
      S(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_19_Q_671,
      S(2) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_18_Q_683,
      S(1) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_17_Q_689,
      S(0) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_16_Q_695
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y76",
      INIT => X"99999999CC33CC33"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => IFetchPort_Mram_Instruction10,
      ADR5 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data1_49,
      ADR3 => IDecodePort_Mmux_read_data2_49,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_18_Q_683
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y76",
      INIT => X"CCAA3355CCAA3355"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => IFetchPort_Mram_Instruction10,
      ADR3 => ALUSrc,
      ADR4 => IDecodePort_Mmux_read_data1_48,
      ADR0 => IDecodePort_Mmux_read_data2_48,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_17_Q_689
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y76",
      INIT => X"99999999AA55AA55"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => IFetchPort_Mram_Instruction10,
      ADR5 => ALUSrc,
      ADR0 => IDecodePort_Mmux_read_data1_47,
      ADR3 => IDecodePort_Mmux_read_data2_47,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_16_Q_695
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_23_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_23_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_22_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_22_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_21_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_21_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_20_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_20_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_23_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y77",
      INIT => X"9999AAAA99995555"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => IFetchPort_Mram_Instruction10,
      ADR4 => ALUSrc,
      ADR0 => IDecodePort_Mmux_read_data1_415,
      ADR5 => IDecodePort_Mmux_read_data2_415,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_23_Q_701
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X64Y77"
    )
    port map (
      CI => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_Q_9245,
      CYINIT => '0',
      CO(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_Q_9250,
      CO(2) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_sub_7_OUT_23_Q,
      O(2) => ALUPort_A_input_31_B_input_31_sub_7_OUT_22_Q,
      O(1) => ALUPort_A_input_31_B_input_31_sub_7_OUT_21_Q,
      O(0) => ALUPort_A_input_31_B_input_31_sub_7_OUT_20_Q,
      S(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_23_Q_701,
      S(2) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_22_Q_713,
      S(1) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_21_Q_719,
      S(0) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_20_Q_725
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_22_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y77",
      INIT => X"CCCCC3C33333C3C3"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => IFetchPort_Mram_Instruction10,
      ADR4 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data1_414,
      ADR2 => IDecodePort_Mmux_read_data2_414,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_22_Q_713
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_21_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y77",
      INIT => X"CC66CC6699339933"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => IFetchPort_Mram_Instruction10,
      ADR0 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data1_413,
      ADR5 => IDecodePort_Mmux_read_data2_413,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_21_Q_719
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_20_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y77",
      INIT => X"99999999A5A5A5A5"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => IFetchPort_Mram_Instruction10,
      ADR5 => ALUSrc,
      ADR0 => IDecodePort_Mmux_read_data1_412,
      ADR2 => IDecodePort_Mmux_read_data2_412,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_20_Q_725
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_27_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_27_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_26_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_26_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_25_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_25_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_24_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_24_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_27_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y78",
      INIT => X"AA99AA9955995599"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => IFetchPort_Mram_Instruction10,
      ADR3 => ALUSrc,
      ADR0 => IDecodePort_Mmux_read_data1_419,
      ADR1 => IDecodePort_Mmux_read_data2_419,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_27_Q_731
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X64Y78"
    )
    port map (
      CI => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_Q_9250,
      CYINIT => '0',
      CO(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_Q_9254,
      CO(2) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_sub_7_OUT_27_Q,
      O(2) => ALUPort_A_input_31_B_input_31_sub_7_OUT_26_Q,
      O(1) => ALUPort_A_input_31_B_input_31_sub_7_OUT_25_Q,
      O(0) => ALUPort_A_input_31_B_input_31_sub_7_OUT_24_Q,
      S(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_27_Q_731,
      S(2) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_26_Q_743,
      S(1) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_25_Q_749,
      S(0) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_24_Q_755
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_26_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y78",
      INIT => X"CCCC333399999999"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => IFetchPort_Mram_Instruction10,
      ADR5 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data1_418,
      ADR0 => IDecodePort_Mmux_read_data2_418,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_26_Q_743
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_25_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y78",
      INIT => X"C3A5C3A5C3A5C3A5"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR1 => IFetchPort_Mram_Instruction10,
      ADR3 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data1_417,
      ADR0 => IDecodePort_Mmux_read_data2_417,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_25_Q_749
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_24_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y78",
      INIT => X"CCCC3333FF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => IFetchPort_Mram_Instruction10,
      ADR5 => ALUSrc,
      ADR4 => IDecodePort_Mmux_read_data1_416,
      ADR3 => IDecodePort_Mmux_read_data2_416,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_24_Q_755
    );
  ALUPort_A_input_31_B_input_31_sub_7_OUT_31_ALUPort_A_input_31_B_input_31_sub_7_OUT_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_31_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_31_0
    );
  ALUPort_A_input_31_B_input_31_sub_7_OUT_31_ALUPort_A_input_31_B_input_31_sub_7_OUT_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_30_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_30_0
    );
  ALUPort_A_input_31_B_input_31_sub_7_OUT_31_ALUPort_A_input_31_B_input_31_sub_7_OUT_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_29_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_29_0
    );
  ALUPort_A_input_31_B_input_31_sub_7_OUT_31_ALUPort_A_input_31_B_input_31_sub_7_OUT_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_sub_7_OUT_28_Q,
      O => ALUPort_A_input_31_B_input_31_sub_7_OUT_28_0
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_31_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y79",
      INIT => X"F0C3F0C33C0F3C0F"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => IDecodePort_Mmux_read_data1_424,
      ADR1 => ALUSrc,
      ADR3 => IDecodePort_Mmux_read_data2_424_0,
      ADR5 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_31_Q_760
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X64Y79"
    )
    port map (
      CI => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_Q_9254,
      CYINIT => '0',
      CO(3) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_sub_7_OUT_31_Q,
      O(2) => ALUPort_A_input_31_B_input_31_sub_7_OUT_30_Q,
      O(1) => ALUPort_A_input_31_B_input_31_sub_7_OUT_29_Q,
      O(0) => ALUPort_A_input_31_B_input_31_sub_7_OUT_28_Q,
      S(3) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_31_Q_760,
      S(2) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_30_Q_771,
      S(1) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_29_Q_777,
      S(0) => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_28_Q_783
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y79",
      INIT => X"FF3300CCCC0033FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_423,
      ADR1 => ALUSrc,
      ADR5 => IDecodePort_Mmux_read_data2_423,
      ADR3 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_30_Q_771
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_29_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y79",
      INIT => X"FF33CC0000CC33FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => IFetchPort_Mram_Instruction10,
      ADR1 => ALUSrc,
      ADR5 => IDecodePort_Mmux_read_data1_421,
      ADR4 => IDecodePort_Mmux_read_data2_421,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_29_Q_777
    );
  ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_28_Q : X_LUT6
    generic map(
      LOC => "SLICE_X64Y79",
      INIT => X"FC30FC3003CF03CF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => IFetchPort_Mram_Instruction10,
      ADR1 => ALUSrc,
      ADR5 => IDecodePort_Mmux_read_data1_420,
      ADR2 => IDecodePort_Mmux_read_data2_420,
      O => ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_lut_28_Q_783
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_3_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_3_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_2_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_2_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_1_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_1_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_0_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_0_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y72",
      INIT => X"3C3C3C3C0F5AA5F0"
    )
    port map (
      ADR1 => IFetchPort_Mram_Instruction3,
      ADR0 => IFetchPort_Mram_Instruction18,
      ADR5 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data1_425,
      ADR4 => IDecodePort_Mmux_read_data2_976,
      ADR3 => N396,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_Q_789
    );
  ProtoComp195_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X62Y72"
    )
    port map (
      O => NLW_ProtoComp195_CYINITGND_O_UNCONNECTED
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X62Y72"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_Q_9255,
      CO(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_add_5_OUT_3_Q,
      O(2) => ALUPort_A_input_31_B_input_31_add_5_OUT_2_Q,
      O(1) => ALUPort_A_input_31_B_input_31_add_5_OUT_1_Q,
      O(0) => ALUPort_A_input_31_B_input_31_add_5_OUT_0_Q,
      S(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_Q_789,
      S(2) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_2_Q_803,
      S(1) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_1_Q_809,
      S(0) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_0_Q_817
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y72",
      INIT => X"0033FFCCFF3300CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_422,
      ADR5 => IFetchPort_Mram_Instruction2,
      ADR1 => IDecodePort_Mmux_read_data2_422,
      ADR3 => ALUSrc,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_2_Q_803
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y72",
      INIT => X"3CF03C5A3C0F3C5A"
    )
    port map (
      ADR1 => IFetchPort_Mram_Instruction1,
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR3 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data1_411,
      ADR0 => IDecodePort_Mmux_read_data2_835_8459,
      ADR5 => N392,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_1_Q_809
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y72",
      INIT => X"111110002C20C000"
    )
    port map (
      ADR1 => ControlUnitPort_NextPCSignal(4),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(1),
      ADR3 => IDecodePort_Reg_array_4(0),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_0_Q_817
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_7_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_7_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_6_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_6_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_5_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_5_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_4_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_4_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y73",
      INIT => X"636C636C636C636C"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR1 => IDecodePort_Mmux_read_data1_429,
      ADR2 => ALUSrc,
      ADR3 => IDecodePort_Mmux_read_data2_429,
      ADR0 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_7_Q_825
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X62Y73"
    )
    port map (
      CI => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_Q_9255,
      CYINIT => '0',
      CO(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_Q_9256,
      CO(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_add_5_OUT_7_Q,
      O(2) => ALUPort_A_input_31_B_input_31_add_5_OUT_6_Q,
      O(1) => ALUPort_A_input_31_B_input_31_add_5_OUT_5_Q,
      O(0) => ALUPort_A_input_31_B_input_31_add_5_OUT_4_Q,
      S(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_7_Q_825,
      S(2) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_6_Q_837,
      S(1) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_5_Q_843,
      S(0) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_4_Q_849
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y73",
      INIT => X"636363636C6C6C6C"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => IDecodePort_Mmux_read_data1_428,
      ADR2 => ALUSrc,
      ADR5 => IDecodePort_Mmux_read_data2_428,
      ADR0 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_6_Q_837
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y73",
      INIT => X"333399996666CCCC"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => IFetchPort_Mram_Instruction10,
      ADR1 => IDecodePort_Mmux_read_data1_427,
      ADR5 => IDecodePort_Mmux_read_data2_427,
      ADR0 => ALUSrc,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_5_Q_843
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y73",
      INIT => X"22227777DDDD8888"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => IDecodePort_Mmux_read_data1_426,
      ADR1 => IFetchPort_Mram_Instruction4,
      ADR4 => IDecodePort_Mmux_read_data2_426,
      ADR0 => ALUSrc,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_4_Q_849
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_11_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_11_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_10_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_10_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_9_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_9_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_8_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_8_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y74",
      INIT => X"5533AACC5533AACC"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR0 => IFetchPort_Mram_Instruction10,
      ADR3 => ALUSrc,
      ADR4 => IDecodePort_Mmux_read_data1_42,
      ADR1 => IDecodePort_Mmux_read_data2_42,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_11_Q_855
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X62Y74"
    )
    port map (
      CI => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_Q_9256,
      CYINIT => '0',
      CO(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_Q_9258,
      CO(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_add_5_OUT_11_Q,
      O(2) => ALUPort_A_input_31_B_input_31_add_5_OUT_10_Q,
      O(1) => ALUPort_A_input_31_B_input_31_add_5_OUT_9_Q,
      O(0) => ALUPort_A_input_31_B_input_31_add_5_OUT_8_Q,
      S(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_11_Q_855,
      S(2) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_10_Q_867,
      S(1) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_9_Q_873,
      S(0) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_8_Q_879
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y74",
      INIT => X"6633663366CC66CC"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => IDecodePort_Mmux_read_data1_41,
      ADR3 => ALUSrc,
      ADR5 => IDecodePort_Mmux_read_data2_41,
      ADR0 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_10_Q_867
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y74",
      INIT => X"3366CC663366CC66"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => IDecodePort_Mmux_read_data1_431,
      ADR3 => ALUSrc,
      ADR0 => IDecodePort_Mmux_read_data2_431,
      ADR4 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_9_Q_873
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y74",
      INIT => X"3333CCCC66666666"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => IDecodePort_Mmux_read_data1_430,
      ADR5 => ALUSrc,
      ADR0 => IDecodePort_Mmux_read_data2_430,
      ADR4 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_8_Q_879
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_15_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_15_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_14_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_14_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_13_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_13_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_12_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_12_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y75",
      INIT => X"0F0FC3C33C3CF0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => IFetchPort_Mram_Instruction10,
      ADR1 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data1_46,
      ADR5 => IDecodePort_Mmux_read_data2_46,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_15_Q_885
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X62Y75"
    )
    port map (
      CI => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_Q_9258,
      CYINIT => '0',
      CO(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_Q_9260,
      CO(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_add_5_OUT_15_Q,
      O(2) => ALUPort_A_input_31_B_input_31_add_5_OUT_14_Q,
      O(1) => ALUPort_A_input_31_B_input_31_add_5_OUT_13_Q,
      O(0) => ALUPort_A_input_31_B_input_31_add_5_OUT_12_Q,
      S(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_15_Q_885,
      S(2) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_14_Q_897,
      S(1) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_13_Q_903,
      S(0) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_12_Q_909
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y75",
      INIT => X"555AA5AA555AA5AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => IFetchPort_Mram_Instruction10,
      ADR2 => ALUSrc,
      ADR0 => IDecodePort_Mmux_read_data1_45,
      ADR3 => IDecodePort_Mmux_read_data2_45,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_14_Q_897
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y75",
      INIT => X"03FCF30C03FCF30C"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => IFetchPort_Mram_Instruction13,
      ADR2 => ALUSrc,
      ADR3 => IDecodePort_Mmux_read_data1_44,
      ADR1 => IDecodePort_Mmux_read_data2_44,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_13_Q_903
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y75",
      INIT => X"03CFFC3003CFFC30"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_43,
      ADR1 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data2_43,
      ADR3 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_12_Q_909
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_19_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_19_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_18_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_18_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_17_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_17_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_16_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_16_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y76",
      INIT => X"00FF3333FF00CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => IFetchPort_Mram_Instruction10,
      ADR4 => ALUSrc,
      ADR5 => IDecodePort_Mmux_read_data1_410,
      ADR1 => IDecodePort_Mmux_read_data2_410,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_19_Q_915
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X62Y76"
    )
    port map (
      CI => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_Q_9260,
      CYINIT => '0',
      CO(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_Q_9262,
      CO(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_add_5_OUT_19_Q,
      O(2) => ALUPort_A_input_31_B_input_31_add_5_OUT_18_Q,
      O(1) => ALUPort_A_input_31_B_input_31_add_5_OUT_17_Q,
      O(0) => ALUPort_A_input_31_B_input_31_add_5_OUT_16_Q,
      S(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_19_Q_915,
      S(2) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_18_Q_927,
      S(1) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_17_Q_933,
      S(0) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_16_Q_939
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y76",
      INIT => X"33CC333333CCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => IFetchPort_Mram_Instruction10,
      ADR4 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data1_49,
      ADR5 => IDecodePort_Mmux_read_data2_49,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_18_Q_927
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y76",
      INIT => X"11BB11BBEE44EE44"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => IFetchPort_Mram_Instruction10,
      ADR0 => ALUSrc,
      ADR5 => IDecodePort_Mmux_read_data1_48,
      ADR1 => IDecodePort_Mmux_read_data2_48,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_17_Q_933
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y76",
      INIT => X"1E1E1E1EB4B4B4B4"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => IFetchPort_Mram_Instruction10,
      ADR0 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data1_47,
      ADR1 => IDecodePort_Mmux_read_data2_47,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_16_Q_939
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_23_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_23_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_22_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_22_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_21_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_21_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_20_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_20_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_23_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y77",
      INIT => X"5A0F5A0F5AF05AF0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => IFetchPort_Mram_Instruction10,
      ADR3 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data1_415,
      ADR5 => IDecodePort_Mmux_read_data2_415,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_23_Q_945
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X62Y77"
    )
    port map (
      CI => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_Q_9262,
      CYINIT => '0',
      CO(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_Q_9267,
      CO(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_add_5_OUT_23_Q,
      O(2) => ALUPort_A_input_31_B_input_31_add_5_OUT_22_Q,
      O(1) => ALUPort_A_input_31_B_input_31_add_5_OUT_21_Q,
      O(0) => ALUPort_A_input_31_B_input_31_add_5_OUT_20_Q,
      S(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_23_Q_945,
      S(2) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_22_Q_957,
      S(1) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_21_Q_963,
      S(0) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_20_Q_969
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_22_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y77",
      INIT => X"666666663333CCCC"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => IFetchPort_Mram_Instruction10,
      ADR5 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data1_414,
      ADR4 => IDecodePort_Mmux_read_data2_414,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_22_Q_957
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_21_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y77",
      INIT => X"000FFF0FFFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => IFetchPort_Mram_Instruction10,
      ADR3 => ALUSrc,
      ADR5 => IDecodePort_Mmux_read_data1_413,
      ADR2 => IDecodePort_Mmux_read_data2_413,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_21_Q_963
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_20_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y77",
      INIT => X"3333CCCC66666666"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => IFetchPort_Mram_Instruction10,
      ADR5 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data1_412,
      ADR0 => IDecodePort_Mmux_read_data2_412,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_20_Q_969
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_27_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_27_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_26_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_26_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_25_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_25_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_24_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_24_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_27_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y78",
      INIT => X"6633663366CC66CC"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => IFetchPort_Mram_Instruction10,
      ADR3 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data1_419,
      ADR5 => IDecodePort_Mmux_read_data2_419,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_27_Q_975
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X62Y78"
    )
    port map (
      CI => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_Q_9267,
      CYINIT => '0',
      CO(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_Q_9271,
      CO(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_3_Q,
      DI(2) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_add_5_OUT_27_Q,
      O(2) => ALUPort_A_input_31_B_input_31_add_5_OUT_26_Q,
      O(1) => ALUPort_A_input_31_B_input_31_add_5_OUT_25_Q,
      O(0) => ALUPort_A_input_31_B_input_31_add_5_OUT_24_Q,
      S(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_27_Q_975,
      S(2) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_26_Q_987,
      S(1) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_25_Q_993,
      S(0) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_24_Q_999
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_26_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y78",
      INIT => X"33CC33CC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => IFetchPort_Mram_Instruction10,
      ADR5 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data1_418,
      ADR4 => IDecodePort_Mmux_read_data2_418,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_26_Q_987
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_25_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y78",
      INIT => X"11DD11DDEE22EE22"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => IFetchPort_Mram_Instruction10,
      ADR1 => ALUSrc,
      ADR5 => IDecodePort_Mmux_read_data1_417,
      ADR0 => IDecodePort_Mmux_read_data2_417,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_25_Q_993
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_24_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y78",
      INIT => X"11EE11EEDD22DD22"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => IFetchPort_Mram_Instruction10,
      ADR1 => ALUSrc,
      ADR3 => IDecodePort_Mmux_read_data1_416,
      ADR0 => IDecodePort_Mmux_read_data2_416,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_24_Q_999
    );
  ALUPort_A_input_31_B_input_31_add_5_OUT_31_ALUPort_A_input_31_B_input_31_add_5_OUT_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_31_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_31_0
    );
  ALUPort_A_input_31_B_input_31_add_5_OUT_31_ALUPort_A_input_31_B_input_31_add_5_OUT_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_30_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_30_0
    );
  ALUPort_A_input_31_B_input_31_add_5_OUT_31_ALUPort_A_input_31_B_input_31_add_5_OUT_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_29_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_29_0
    );
  ALUPort_A_input_31_B_input_31_add_5_OUT_31_ALUPort_A_input_31_B_input_31_add_5_OUT_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_28_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_28_0
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_31_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y79",
      INIT => X"0033CCFFFFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => IDecodePort_Mmux_read_data1_424,
      ADR1 => ALUSrc,
      ADR3 => IDecodePort_Mmux_read_data2_424_0,
      ADR4 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_31_Q_1004
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X62Y79"
    )
    port map (
      CI => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_Q_9271,
      CYINIT => '0',
      CO(3) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_2_Q,
      DI(1) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_1_Q,
      DI(0) => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_0_Q,
      O(3) => ALUPort_A_input_31_B_input_31_add_5_OUT_31_Q,
      O(2) => ALUPort_A_input_31_B_input_31_add_5_OUT_30_Q,
      O(1) => ALUPort_A_input_31_B_input_31_add_5_OUT_29_Q,
      O(0) => ALUPort_A_input_31_B_input_31_add_5_OUT_28_Q,
      S(3) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_31_Q_1004,
      S(2) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_30_Q_1015,
      S(1) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_29_Q_1021,
      S(0) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_28_Q_1027
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y79",
      INIT => X"11EE11EEDD22DD22"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => IDecodePort_Mmux_read_data1_423,
      ADR1 => ALUSrc,
      ADR0 => IDecodePort_Mmux_read_data2_423,
      ADR5 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_30_Q_1015
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_29_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y79",
      INIT => X"33CC33CC55AA55AA"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => IFetchPort_Mram_Instruction10,
      ADR5 => ALUSrc,
      ADR3 => IDecodePort_Mmux_read_data1_421,
      ADR0 => IDecodePort_Mmux_read_data2_421,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_29_Q_1021
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_28_Q : X_LUT6
    generic map(
      LOC => "SLICE_X62Y79",
      INIT => X"33CC33CC00FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => IFetchPort_Mram_Instruction10,
      ADR5 => ALUSrc,
      ADR3 => IDecodePort_Mmux_read_data1_420,
      ADR4 => IDecodePort_Mmux_read_data2_420,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_28_Q_1027
    );
  ControlUnitPort_Madd_PCIncby1_cy_3_ControlUnitPort_Madd_PCIncby1_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_PCIncby1(3),
      O => ControlUnitPort_PCIncby1_3_0
    );
  ControlUnitPort_Madd_PCIncby1_cy_3_ControlUnitPort_Madd_PCIncby1_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_PCIncby1(2),
      O => ControlUnitPort_PCIncby1_2_0
    );
  ControlUnitPort_Madd_PCIncby1_cy_3_ControlUnitPort_Madd_PCIncby1_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_PCIncby1(1),
      O => ControlUnitPort_PCIncby1_1_0
    );
  ControlUnitPort_Madd_PCIncby1_cy_3_ControlUnitPort_Madd_PCIncby1_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_PCIncby1(0),
      O => ControlUnitPort_PCIncby1_0_0
    );
  ControlUnitPort_NextPCSignal_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X60Y62",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR5 => '1',
      O => ControlUnitPort_NextPCSignal_3_rt_1032
    );
  DMemoryPort_mux10_10_96_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X60Y62",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_96_D5LUT_O_UNCONNECTED
    );
  ProtoComp201_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X60Y62"
    )
    port map (
      O => NLW_ProtoComp201_CYINITGND_O_UNCONNECTED
    );
  ControlUnitPort_Madd_PCIncby1_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X60Y62"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ControlUnitPort_Madd_PCIncby1_cy(3),
      CO(2) => NLW_ControlUnitPort_Madd_PCIncby1_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ControlUnitPort_Madd_PCIncby1_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Madd_PCIncby1_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => ControlUnitPort_PCIncby1(3),
      O(2) => ControlUnitPort_PCIncby1(2),
      O(1) => ControlUnitPort_PCIncby1(1),
      O(0) => ControlUnitPort_PCIncby1(0),
      S(3) => ControlUnitPort_NextPCSignal_3_rt_1032,
      S(2) => ControlUnitPort_NextPCSignal_2_rt_1041,
      S(1) => ControlUnitPort_NextPCSignal_1_rt_1044,
      S(0) => ControlUnitPort_Madd_PCIncby1_lut(0)
    );
  ControlUnitPort_NextPCSignal_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X60Y62",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR5 => '1',
      O => ControlUnitPort_NextPCSignal_2_rt_1041
    );
  DMemoryPort_mux10_10_97_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X60Y62",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_97_C5LUT_O_UNCONNECTED
    );
  ControlUnitPort_NextPCSignal_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X60Y62",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR5 => '1',
      O => ControlUnitPort_NextPCSignal_1_rt_1044
    );
  DMemoryPort_mux10_10_98_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X60Y62",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_98_B5LUT_O_UNCONNECTED
    );
  ControlUnitPort_Madd_PCIncby1_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y62",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => ControlUnitPort_NextPCSignal(0),
      ADR5 => '1',
      O => ControlUnitPort_Madd_PCIncby1_lut(0)
    );
  CONV1_Mram_Y7_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X60Y62",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_CONV1_Mram_Y7_2_A5LUT_O_UNCONNECTED
    );
  ControlUnitPort_PCIncby1_4_ControlUnitPort_PCIncby1_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_PCIncby1(4),
      O => ControlUnitPort_PCIncby1_4_0
    );
  ControlUnitPort_Madd_PCIncby1_xor_4_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X60Y63"
    )
    port map (
      CI => ControlUnitPort_Madd_PCIncby1_cy(3),
      CYINIT => '0',
      CO(3) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_CO_3_UNCONNECTED,
      CO(2) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_CO_2_UNCONNECTED,
      CO(1) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_CO_0_UNCONNECTED,
      DI(3) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_DI_3_UNCONNECTED,
      DI(2) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_DI_2_UNCONNECTED,
      DI(1) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_DI_1_UNCONNECTED,
      DI(0) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_DI_0_UNCONNECTED,
      O(3) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_O_3_UNCONNECTED,
      O(2) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_O_2_UNCONNECTED,
      O(1) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_O_1_UNCONNECTED,
      O(0) => ControlUnitPort_PCIncby1(4),
      S(3) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_S_3_UNCONNECTED,
      S(2) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_S_2_UNCONNECTED,
      S(1) => NLW_ControlUnitPort_Madd_PCIncby1_xor_4_S_1_UNCONNECTED,
      S(0) => ControlUnitPort_NextPCSignal_4_rt_1056
    );
  ControlUnitPort_NextPCSignal_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X60Y63",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => ControlUnitPort_NextPCSignal(4),
      O => ControlUnitPort_NextPCSignal_4_rt_1056
    );
  ControlUnitPort_Madd_n0111_Madd_cy_3_ControlUnitPort_Madd_n0111_Madd_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_n0111(3),
      O => ControlUnitPort_n0111_3_0
    );
  ControlUnitPort_Madd_n0111_Madd_cy_3_ControlUnitPort_Madd_n0111_Madd_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_n0111(2),
      O => ControlUnitPort_n0111_2_0
    );
  ControlUnitPort_Madd_n0111_Madd_cy_3_ControlUnitPort_Madd_n0111_Madd_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_n0111(1),
      O => ControlUnitPort_n0111_1_0
    );
  ControlUnitPort_Madd_n0111_Madd_cy_3_ControlUnitPort_Madd_n0111_Madd_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_n0111(0),
      O => ControlUnitPort_n0111_0_0
    );
  ControlUnitPort_Madd_n0111_Madd_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X60Y66",
      INIT => X"C6CCC6C9C9C9969C"
    )
    port map (
      ADR1 => ControlUnitPort_PCIncby1_3_0,
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      O => ControlUnitPort_Madd_n0111_Madd_lut(3)
    );
  ProtoComp203_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X60Y66"
    )
    port map (
      O => NLW_ProtoComp203_CYINITGND_O_UNCONNECTED
    );
  ControlUnitPort_Madd_n0111_Madd_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X60Y66"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ControlUnitPort_Madd_n0111_Madd_cy(3),
      CO(2) => NLW_ControlUnitPort_Madd_n0111_Madd_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ControlUnitPort_Madd_n0111_Madd_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Madd_n0111_Madd_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_0_Q,
      O(3) => ControlUnitPort_n0111(3),
      O(2) => ControlUnitPort_n0111(2),
      O(1) => ControlUnitPort_n0111(1),
      O(0) => ControlUnitPort_n0111(0),
      S(3) => ControlUnitPort_Madd_n0111_Madd_lut(3),
      S(2) => ControlUnitPort_Madd_n0111_Madd_lut(2),
      S(1) => ControlUnitPort_Madd_n0111_Madd_lut(1),
      S(0) => ControlUnitPort_Madd_n0111_Madd_lut(0)
    );
  ControlUnitPort_Madd_n0111_Madd_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X60Y66",
      INIT => X"9C9CCCC9C6CC9C9C"
    )
    port map (
      ADR1 => ControlUnitPort_PCIncby1_2_0,
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      O => ControlUnitPort_Madd_n0111_Madd_lut(2)
    );
  ControlUnitPort_Madd_n0111_Madd_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X60Y66",
      INIT => X"C3C9C993CCC9C393"
    )
    port map (
      ADR1 => ControlUnitPort_PCIncby1_1_0,
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(3),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(2),
      O => ControlUnitPort_Madd_n0111_Madd_lut(1)
    );
  ControlUnitPort_Madd_n0111_Madd_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X60Y66",
      INIT => X"F0C3C3F0F0D2F0F0"
    )
    port map (
      ADR2 => ControlUnitPort_PCIncby1_0_0,
      ADR1 => ControlUnitPort_NextPCSignal(4),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      O => ControlUnitPort_Madd_n0111_Madd_lut(0)
    );
  LED_12_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y68"
    )
    port map (
      I => NlwBufferSignal_LED_12_OBUF_I,
      O => LED(12)
    );
  LED_11_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y69"
    )
    port map (
      I => NlwBufferSignal_LED_11_OBUF_I,
      O => LED(11)
    );
  LED_14_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y59"
    )
    port map (
      I => NlwBufferSignal_LED_14_OBUF_I,
      O => LED(14)
    );
  LED_13_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y55"
    )
    port map (
      I => NlwBufferSignal_LED_13_OBUF_I,
      O => LED(13)
    );
  LED_10_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y56"
    )
    port map (
      I => NlwBufferSignal_LED_10_OBUF_I,
      O => LED(10)
    );
  LED_15_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y57"
    )
    port map (
      I => NlwBufferSignal_LED_15_OBUF_I,
      O => LED(15)
    );
  BTN_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y82",
      PATHPULSE => 50 ps
    )
    port map (
      O => BTN_0_IBUF_9051,
      I => BTN(0)
    );
  BTN_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y81",
      PATHPULSE => 50 ps
    )
    port map (
      O => BTN_1_IBUF_9150,
      I => BTN(1)
    );
  BTN_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y76",
      PATHPULSE => 50 ps
    )
    port map (
      O => BTN_2_IBUF_9148,
      I => BTN(2)
    );
  BTN_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y79",
      PATHPULSE => 50 ps
    )
    port map (
      O => BTN_3_IBUF_9050,
      I => BTN(3)
    );
  BTN_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y91",
      PATHPULSE => 50 ps
    )
    port map (
      O => BTN_4_IBUF_8994,
      I => BTN(4)
    );
  SSEG_CA_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y92"
    )
    port map (
      I => NlwBufferSignal_SSEG_CA_6_OBUF_I,
      O => SSEG_CA(6)
    );
  SSEG_CA_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y62"
    )
    port map (
      I => NlwBufferSignal_SSEG_CA_5_OBUF_I,
      O => SSEG_CA(5)
    );
  SSEG_CA_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y111"
    )
    port map (
      I => '1',
      O => SSEG_CA(7)
    );
  SSEG_CA_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y51"
    )
    port map (
      I => NlwBufferSignal_SSEG_CA_0_OBUF_I,
      O => SSEG_CA(0)
    );
  SSEG_CA_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y100"
    )
    port map (
      I => NlwBufferSignal_SSEG_CA_2_OBUF_I,
      O => SSEG_CA(2)
    );
  SSEG_CA_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y50"
    )
    port map (
      I => NlwBufferSignal_SSEG_CA_1_OBUF_I,
      O => SSEG_CA(1)
    );
  SSEG_CA_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y74"
    )
    port map (
      I => NlwBufferSignal_SSEG_CA_4_OBUF_I,
      O => SSEG_CA(4)
    );
  SSEG_CA_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y116"
    )
    port map (
      I => NlwBufferSignal_SSEG_CA_3_OBUF_I,
      O => SSEG_CA(3)
    );
  SW_10_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y70",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_10_OBUF_9280,
      I => SW(10)
    );
  SW_11_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y54",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_11_OBUF_9277,
      I => SW(11)
    );
  SW_12_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y102",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_12_OBUF_9276,
      I => SW(12)
    );
  SW_13_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y60",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_13_OBUF_9279,
      I => SW(13)
    );
  SW_14_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y61",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_14_OBUF_9278,
      I => SW(14)
    );
  SW_15_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y58",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_15_OBUF_9149,
      I => SW(15)
    );
  SW_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y101",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_0_OBUF_8361,
      I => SW(0)
    );
  SW_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y93",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_1_OBUF_8285,
      I => SW(1)
    );
  SW_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y87",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_2_OBUF_8362,
      I => SW(2)
    );
  SW_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y73",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_3_OBUF_8283,
      I => SW(3)
    );
  SW_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y75",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_4_OBUF_8368,
      I => SW(4)
    );
  SW_5_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y85",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_5_OBUF_8367,
      I => SW(5)
    );
  SW_6_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y65",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_6_OBUF_8366,
      I => SW(6)
    );
  SW_7_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y89",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_7_OBUF_9284,
      I => SW(7)
    );
  ProtoComp207_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X1Y51"
    )
    port map (
      O => ProtoComp207_INTERMDISABLE_GND_0
    );
  SW_8_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y51"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp207_INTERMDISABLE_GND_0,
      O => LED_8_OBUF_9285,
      I => SW(8),
      TPWRGT => '1'
    );
  ProtoComp207_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X1Y50"
    )
    port map (
      O => SW_9_ProtoComp207_INTERMDISABLE_GND_0
    );
  SW_9_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y50"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => SW_9_ProtoComp207_INTERMDISABLE_GND_0,
      O => LED_9_OBUF_9286,
      I => SW(9),
      TPWRGT => '1'
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IOB_X1Y126",
      PATHPULSE => 50 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_9287,
      I => CLK
    );
  SSEG_AN_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y104"
    )
    port map (
      I => NlwBufferSignal_SSEG_AN_6_OBUF_I,
      O => SSEG_AN(6)
    );
  SSEG_AN_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y72"
    )
    port map (
      I => NlwBufferSignal_SSEG_AN_5_OBUF_I,
      O => SSEG_AN(5)
    );
  SSEG_AN_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y53"
    )
    port map (
      I => NlwBufferSignal_SSEG_AN_7_OBUF_I,
      O => SSEG_AN(7)
    );
  SSEG_AN_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y104"
    )
    port map (
      I => NlwBufferSignal_SSEG_AN_0_OBUF_I,
      O => SSEG_AN(0)
    );
  SSEG_AN_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y52"
    )
    port map (
      I => NlwBufferSignal_SSEG_AN_2_OBUF_I,
      O => SSEG_AN(2)
    );
  LED_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y114"
    )
    port map (
      I => NlwBufferSignal_LED_0_OBUF_I,
      O => LED(0)
    );
  SSEG_AN_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y103"
    )
    port map (
      I => NlwBufferSignal_SSEG_AN_1_OBUF_I,
      O => SSEG_AN(1)
    );
  LED_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y102"
    )
    port map (
      I => NlwBufferSignal_LED_1_OBUF_I,
      O => LED(1)
    );
  SSEG_AN_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y83"
    )
    port map (
      I => NlwBufferSignal_SSEG_AN_4_OBUF_I,
      O => SSEG_AN(4)
    );
  LED_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y115"
    )
    port map (
      I => NlwBufferSignal_LED_2_OBUF_I,
      O => LED(2)
    );
  SSEG_AN_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y112"
    )
    port map (
      I => NlwBufferSignal_SSEG_AN_3_OBUF_I,
      O => SSEG_AN(3)
    );
  LED_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y84"
    )
    port map (
      I => NlwBufferSignal_LED_3_OBUF_I,
      O => LED(3)
    );
  LED_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y86"
    )
    port map (
      I => NlwBufferSignal_LED_4_OBUF_I,
      O => LED(4)
    );
  LED_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y63"
    )
    port map (
      I => NlwBufferSignal_LED_5_OBUF_I,
      O => LED(5)
    );
  LED_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y66"
    )
    port map (
      I => NlwBufferSignal_LED_6_OBUF_I,
      O => LED(6)
    );
  LED_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y64"
    )
    port map (
      I => NlwBufferSignal_LED_7_OBUF_I,
      O => LED(7)
    );
  LED_8_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y67"
    )
    port map (
      I => NlwBufferSignal_LED_8_OBUF_I,
      O => LED(8)
    );
  LED_9_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y71"
    )
    port map (
      I => NlwBufferSignal_LED_9_OBUF_I,
      O => LED(9)
    );
  CLK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y31",
      PATHPULSE => 50 ps
    )
    port map (
      I => NlwBufferSignal_CLK_BUFGP_BUFG_IN,
      O => CLK_BUFGP
    );
  BTN_2_BTN_1_OR_3_o_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y0",
      PATHPULSE => 50 ps
    )
    port map (
      I => NlwBufferSignal_BTN_2_BTN_1_OR_3_o_BUFG_IN,
      O => BTN_2_BTN_1_OR_3_o_BUFG_9144
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_28_SW_4_reg_file_31_31_wide_mux_5_OUT_28_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_28_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_28_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_28_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X56Y85"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_28_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_28_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_28_41 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y85",
      INIT => X"0000000050004040"
    )
    port map (
      ADR5 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR0 => LED_3_OBUF_8283,
      ADR4 => LED_0_OBUF_8361,
      ADR1 => IDecodePort_Reg_array_4(28),
      ADR3 => IDecodePort_Reg_array_5_28_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_28_4
    );
  DMemoryPort_mux10_10_66_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X56Y85",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_66_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_18_SW_4_reg_file_31_31_wide_mux_5_OUT_18_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_18_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_18_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_18_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X58Y83"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_18_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_18_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_18_41 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y83",
      INIT => X"0000000044004040"
    )
    port map (
      ADR5 => LED_1_OBUF_8285,
      ADR1 => LED_2_OBUF_8362,
      ADR0 => LED_3_OBUF_8283,
      ADR4 => LED_0_OBUF_8361,
      ADR2 => IDecodePort_Reg_array_4(18),
      ADR3 => IDecodePort_Reg_array_5_18_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_18_4
    );
  DMemoryPort_mux10_10_73_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X58Y83",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_73_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_7_SW_4_reg_file_31_31_wide_mux_5_OUT_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_7_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_7_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_7_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y70"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_7_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_7_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_7_41 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => X"0000000000500000"
    )
    port map (
      ADR1 => '1',
      ADR5 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR3 => LED_0_OBUF_8361,
      ADR4 => IDecodePort_Reg_array_4(7),
      ADR0 => LED_3_OBUF_8283,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_7_4
    );
  DMemoryPort_mux10_10_86_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_86_C6LUT_O_UNCONNECTED
    );
  SW_6_datamemory_127_31_wide_mux_3_OUT_31_SW_6_datamemory_127_31_wide_mux_3_OUT_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_31_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_31_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X50Y86"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_31_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_41 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y86",
      INIT => X"0505000005050000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_82_0,
      ADR2 => LED_5_OBUF_8367,
      ADR0 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_4
    );
  DMemoryPort_mux10_10_30_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X50Y86",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_30_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_26_SW_4_reg_file_31_31_wide_mux_5_OUT_26_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_26_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_26_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_26_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X57Y81"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_26_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_26_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_26_41 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y81",
      INIT => X"0000000022200200"
    )
    port map (
      ADR1 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR5 => LED_3_OBUF_8283,
      ADR2 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_4(26),
      ADR4 => IDecodePort_Reg_array_5_26_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_26_4
    );
  DMemoryPort_mux10_10_67_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X57Y81",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_67_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_16_SW_4_reg_file_31_31_wide_mux_5_OUT_16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_16_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_16_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_16_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X56Y77"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_16_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_16_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_16_41 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y77",
      INIT => X"000000AC00000000"
    )
    port map (
      ADR3 => LED_1_OBUF_8285,
      ADR5 => LED_2_OBUF_8362,
      ADR4 => LED_3_OBUF_8283,
      ADR2 => LED_0_OBUF_8361,
      ADR1 => IDecodePort_Reg_array_4(16),
      ADR0 => IDecodePort_Reg_array_5_16_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_16_4
    );
  DMemoryPort_mux10_10_77_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X56Y77",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_77_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_5_SW_4_reg_file_31_31_wide_mux_5_OUT_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_5_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_5_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_5_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y70"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_5_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_5_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_5_41 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y70",
      INIT => X"0003000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => LED_1_OBUF_8285,
      ADR4 => LED_2_OBUF_8362,
      ADR3 => LED_0_OBUF_8361,
      ADR5 => IDecodePort_Reg_array_4(5),
      ADR2 => LED_3_OBUF_8283,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_5_4
    );
  DMemoryPort_mux10_10_88_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X33Y70",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_88_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_24_SW_4_reg_file_31_31_wide_mux_5_OUT_24_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_24_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_24_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_24_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X54Y81"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_24_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_24_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_24_41 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y81",
      INIT => X"000000000000E020"
    )
    port map (
      ADR5 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR4 => LED_3_OBUF_8283,
      ADR1 => LED_0_OBUF_8361,
      ADR0 => IDecodePort_Reg_array_4(24),
      ADR3 => IDecodePort_Reg_array_5_24_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_24_4
    );
  DMemoryPort_mux10_10_69_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X54Y81",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_69_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_14_SW_4_reg_file_31_31_wide_mux_5_OUT_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_14_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_14_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_14_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X52Y74"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_14_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_14_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_14_41 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y74",
      INIT => X"0504000001000000"
    )
    port map (
      ADR2 => LED_1_OBUF_8285,
      ADR4 => LED_2_OBUF_8362,
      ADR0 => LED_3_OBUF_8283,
      ADR1 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_4(14),
      ADR5 => IDecodePort_Reg_array_5_14_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_14_4
    );
  DMemoryPort_mux10_10_79_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X52Y74",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_79_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_0_SW_4_reg_file_31_31_wide_mux_5_OUT_0_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_0_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_0_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_0_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y80"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_0_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_0_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_0_41 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y80",
      INIT => X"0100000001000000"
    )
    port map (
      ADR5 => '1',
      ADR2 => LED_1_OBUF_8285,
      ADR4 => LED_2_OBUF_8362,
      ADR0 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_4(0),
      ADR1 => LED_3_OBUF_8283,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_0_4
    );
  DMemoryPort_mux10_10_91_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X32Y80",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_91_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_22_SW_4_reg_file_31_31_wide_mux_5_OUT_22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_22_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_22_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_22_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X56Y82"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_22_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_22_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_22_41 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y82",
      INIT => X"0000000000008A80"
    )
    port map (
      ADR5 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR4 => LED_3_OBUF_8283,
      ADR2 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_4(22),
      ADR1 => IDecodePort_Reg_array_5_22_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_22_4
    );
  DMemoryPort_mux10_10_71_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X56Y82",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_71_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_12_SW_4_reg_file_31_31_wide_mux_5_OUT_12_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_12_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_12_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_12_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y78"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_12_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_12_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_12_41 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y78",
      INIT => X"0000000000003000"
    )
    port map (
      ADR0 => '1',
      ADR1 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR5 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_4(12),
      ADR4 => LED_3_OBUF_8283,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_12_4
    );
  DMemoryPort_mux10_10_81_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X35Y78",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_81_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_9_SW_4_reg_file_31_31_wide_mux_5_OUT_9_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_9_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_9_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_9_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y71"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_9_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_9_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_9_41 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y71",
      INIT => X"0000000002020000"
    )
    port map (
      ADR3 => '1',
      ADR5 => LED_1_OBUF_8285,
      ADR4 => LED_2_OBUF_8362,
      ADR1 => LED_0_OBUF_8361,
      ADR0 => IDecodePort_Reg_array_4(9),
      ADR2 => LED_3_OBUF_8283,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_9_4
    );
  DMemoryPort_mux10_10_82_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X35Y71",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_82_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_29_SW_4_reg_file_31_31_wide_mux_5_OUT_29_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_29_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_29_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_29_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X57Y84"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_29_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_29_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_29_41 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y84",
      INIT => X"000000000C0A0000"
    )
    port map (
      ADR5 => LED_1_OBUF_8285,
      ADR4 => LED_2_OBUF_8362,
      ADR2 => LED_3_OBUF_8283,
      ADR3 => LED_0_OBUF_8361,
      ADR0 => IDecodePort_Reg_array_4(29),
      ADR1 => IDecodePort_Reg_array_5_29_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_29_4
    );
  DMemoryPort_mux10_10_65_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X57Y84",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_65_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_19_SW_4_reg_file_31_31_wide_mux_5_OUT_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_19_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_19_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_19_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X54Y83"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_19_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_19_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_19_41 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y83",
      INIT => X"0050004000100000"
    )
    port map (
      ADR3 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR0 => LED_3_OBUF_8283,
      ADR1 => LED_0_OBUF_8361,
      ADR4 => IDecodePort_Reg_array_4(19),
      ADR5 => IDecodePort_Reg_array_5_19_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_19_4
    );
  DMemoryPort_mux10_10_75_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X54Y83",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_75_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_30_SW_4_reg_file_31_31_wide_mux_5_OUT_30_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_30_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_30_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_30_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X59Y82"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_30_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_30_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_30_41 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y82",
      INIT => X"00000000008800A0"
    )
    port map (
      ADR3 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR5 => LED_3_OBUF_8283,
      ADR4 => LED_0_OBUF_8361,
      ADR2 => IDecodePort_Reg_array_4(30),
      ADR1 => IDecodePort_Reg_array_5_30_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_30_4
    );
  DMemoryPort_mux10_10_63_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X59Y82",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_63_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_20_SW_4_reg_file_31_31_wide_mux_5_OUT_20_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_20_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_20_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_20_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X57Y83"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_20_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_20_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_20_41 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y83",
      INIT => X"0000000000CA0000"
    )
    port map (
      ADR3 => LED_1_OBUF_8285,
      ADR4 => LED_2_OBUF_8362,
      ADR5 => LED_3_OBUF_8283,
      ADR2 => LED_0_OBUF_8361,
      ADR0 => IDecodePort_Reg_array_4(20),
      ADR1 => IDecodePort_Reg_array_5_20_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_20_4
    );
  DMemoryPort_mux10_10_74_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X57Y83",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_74_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_10_SW_4_reg_file_31_31_wide_mux_5_OUT_10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_10_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_10_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_10_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y69"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_10_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_10_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_10_41 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y69",
      INIT => X"0000000000300000"
    )
    port map (
      ADR0 => '1',
      ADR5 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR1 => LED_0_OBUF_8361,
      ADR4 => IDecodePort_Reg_array_4(10),
      ADR3 => LED_3_OBUF_8283,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_10_4
    );
  DMemoryPort_mux10_10_84_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X33Y69",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_84_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_4_SW_4_reg_file_31_31_wide_mux_5_OUT_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_4_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_4_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_4_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X41Y67"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_4_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_4_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_4_41 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y67",
      INIT => X"0000000000003000"
    )
    port map (
      ADR0 => '1',
      ADR1 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR5 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_4(4),
      ADR4 => LED_3_OBUF_8283,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_4_4
    );
  DMemoryPort_mux10_10_89_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X41Y67",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_89_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_27_SW_4_reg_file_31_31_wide_mux_5_OUT_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_27_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_27_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_27_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X56Y81"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_27_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_27_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_27_41 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y81",
      INIT => X"0000000022200200"
    )
    port map (
      ADR1 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR5 => LED_3_OBUF_8283,
      ADR2 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_4(27),
      ADR4 => IDecodePort_Reg_array_5_27_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_27_4
    );
  DMemoryPort_mux10_10_64_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X56Y81",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_64_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_17_SW_4_reg_file_31_31_wide_mux_5_OUT_17_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_17_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_17_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_17_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X54Y79"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_17_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_17_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_17_41 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y79",
      INIT => X"0000302000000020"
    )
    port map (
      ADR1 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR4 => LED_3_OBUF_8283,
      ADR3 => LED_0_OBUF_8361,
      ADR0 => IDecodePort_Reg_array_4(17),
      ADR5 => IDecodePort_Reg_array_5_17_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_17_4
    );
  DMemoryPort_mux10_10_76_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X54Y79",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_76_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_2_SW_4_reg_file_31_31_wide_mux_5_OUT_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_2_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_2_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_2_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y74"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_2_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_2_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_2_41 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y74",
      INIT => X"0000000000004400"
    )
    port map (
      ADR2 => '1',
      ADR0 => LED_1_OBUF_8285,
      ADR1 => LED_2_OBUF_8362,
      ADR5 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_4(2),
      ADR4 => LED_3_OBUF_8283,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_2_4
    );
  DMemoryPort_mux10_10_92_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X44Y74",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_92_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_25_SW_4_reg_file_31_31_wide_mux_5_OUT_25_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_25_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_25_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_25_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X57Y82"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_25_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_25_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_25_41 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y82",
      INIT => X"0200020202000000"
    )
    port map (
      ADR2 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR1 => LED_3_OBUF_8283,
      ADR4 => LED_0_OBUF_8361,
      ADR5 => IDecodePort_Reg_array_4(25),
      ADR3 => IDecodePort_Reg_array_5_25_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_25_4
    );
  DMemoryPort_mux10_10_68_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X57Y82",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_68_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_15_SW_4_reg_file_31_31_wide_mux_5_OUT_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_15_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_15_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_15_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X54Y77"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_15_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_15_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_15_41 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y77",
      INIT => X"0000000000E00020"
    )
    port map (
      ADR5 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR3 => LED_3_OBUF_8283,
      ADR1 => LED_0_OBUF_8361,
      ADR0 => IDecodePort_Reg_array_4(15),
      ADR4 => IDecodePort_Reg_array_5_15_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_15_4
    );
  DMemoryPort_mux10_10_78_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X54Y77",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_78_C6LUT_O_UNCONNECTED
    );
  SW_6_datamemory_127_31_wide_mux_3_OUT_3_SW_6_datamemory_127_31_wide_mux_3_OUT_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_3_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_3_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y75"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_3_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_41 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y75",
      INIT => X"1111000011110000"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_0,
      ADR0 => LED_5_OBUF_8367,
      ADR1 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_4
    );
  DMemoryPort_mux10_10_58_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X34Y75",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_58_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_8_SW_4_reg_file_31_31_wide_mux_5_OUT_8_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_8_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_8_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_8_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y69"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_8_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_8_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_8_41 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y69",
      INIT => X"0003000000000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => LED_1_OBUF_8285,
      ADR4 => LED_2_OBUF_8362,
      ADR3 => LED_0_OBUF_8361,
      ADR5 => IDecodePort_Reg_array_4(8),
      ADR1 => LED_3_OBUF_8283,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_8_4
    );
  DMemoryPort_mux10_10_85_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X35Y69",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_85_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_23_SW_4_reg_file_31_31_wide_mux_5_OUT_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_23_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_23_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_23_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X58Y82"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_23_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_23_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_23_41 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y82",
      INIT => X"0000202000002200"
    )
    port map (
      ADR1 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR4 => LED_3_OBUF_8283,
      ADR5 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_4(23),
      ADR2 => IDecodePort_Reg_array_5_23_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_23_4
    );
  DMemoryPort_mux10_10_70_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X58Y82",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_70_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_13_SW_4_reg_file_31_31_wide_mux_5_OUT_13_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_13_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_13_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_13_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y74"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_13_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_13_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_13_41 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y74",
      INIT => X"0203000002000000"
    )
    port map (
      ADR2 => LED_1_OBUF_8285,
      ADR4 => LED_2_OBUF_8362,
      ADR1 => LED_3_OBUF_8283,
      ADR3 => LED_0_OBUF_8361,
      ADR5 => IDecodePort_Reg_array_4(13),
      ADR0 => IDecodePort_Reg_array_5_13_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_13_4
    );
  DMemoryPort_mux10_10_80_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X53Y74",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_80_C6LUT_O_UNCONNECTED
    );
  SW_6_datamemory_127_31_wide_mux_3_OUT_1_SW_6_datamemory_127_31_wide_mux_3_OUT_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_1_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_1_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X36Y79"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_1_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_41 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y79",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_82_0,
      ADR5 => LED_5_OBUF_8367,
      ADR3 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_4
    );
  DMemoryPort_mux10_10_60_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X36Y79",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_60_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_31_SW_4_reg_file_31_31_wide_mux_5_OUT_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_31_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_31_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_31_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X56Y83"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_31_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_31_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_31_41 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y83",
      INIT => X"1110000001000000"
    )
    port map (
      ADR1 => LED_1_OBUF_8285,
      ADR4 => LED_2_OBUF_8362,
      ADR0 => LED_3_OBUF_8283,
      ADR2 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_4_31_0,
      ADR5 => IDecodePort_Reg_array_5_31_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_31_4
    );
  DMemoryPort_mux10_10_62_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X56Y83",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_62_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_21_SW_4_reg_file_31_31_wide_mux_5_OUT_21_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_21_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_21_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_21_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X56Y84"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_21_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_21_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_21_41 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y84",
      INIT => X"000000E000000020"
    )
    port map (
      ADR3 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR4 => LED_3_OBUF_8283,
      ADR1 => LED_0_OBUF_8361,
      ADR0 => IDecodePort_Reg_array_4(21),
      ADR5 => IDecodePort_Reg_array_5_21_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_21_4
    );
  DMemoryPort_mux10_10_72_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X56Y84",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_72_C6LUT_O_UNCONNECTED
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_11_SW_4_reg_file_31_31_wide_mux_5_OUT_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_11_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_11_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_11_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X50Y70"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_11_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_11_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_11_41 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y70",
      INIT => X"0202000003000000"
    )
    port map (
      ADR1 => LED_1_OBUF_8285,
      ADR4 => LED_2_OBUF_8362,
      ADR2 => LED_3_OBUF_8283,
      ADR5 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_4(11),
      ADR0 => IDecodePort_Reg_array_5_11_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_11_4
    );
  DMemoryPort_mux10_10_83_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X50Y70",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_83_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_18_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_18_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X46Y86"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_18_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_41 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y86",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_82_9379,
      ADR5 => LED_5_OBUF_8367,
      ADR3 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_4
    );
  DMemoryPort_mux10_10_43_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X46Y86",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_43_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_82 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y86",
      INIT => X"00000C5500000C55"
    )
    port map (
      ADR5 => '1',
      ADR4 => LED_0_OBUF_8361,
      ADR2 => LED_1_OBUF_8285,
      ADR3 => LED_2_OBUF_8362,
      ADR1 => N562_0,
      ADR0 => N496,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_82_9379
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_2_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_2_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X46Y78"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_2_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_41 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y78",
      INIT => X"00000F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82_9404,
      ADR4 => LED_5_OBUF_8367,
      ADR2 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_4
    );
  DMemoryPort_mux10_10_59_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X46Y78",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_59_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y78",
      INIT => X"0011001100B100B1"
    )
    port map (
      ADR4 => '1',
      ADR3 => LED_0_OBUF_8361,
      ADR5 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR2 => N592_0,
      ADR1 => N528,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82_9404
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_29_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_29_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X52Y86"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_29_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_41 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y86",
      INIT => X"0000333300000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_82_9416,
      ADR1 => LED_5_OBUF_8367,
      ADR4 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_4
    );
  DMemoryPort_mux10_10_33_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X52Y86",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_33_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_82 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y86",
      INIT => X"000000000F330033"
    )
    port map (
      ADR0 => '1',
      ADR5 => LED_0_OBUF_8361,
      ADR2 => LED_1_OBUF_8285,
      ADR3 => LED_2_OBUF_8362,
      ADR4 => N542_0,
      ADR1 => N476,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_82_9416
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_30_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_30_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X54Y86"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_30_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_41 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y86",
      INIT => X"0033003300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82_9417,
      ADR3 => LED_5_OBUF_8367,
      ADR1 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_4
    );
  DMemoryPort_mux10_10_31_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X54Y86",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_31_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y86",
      INIT => X"0055000011111111"
    )
    port map (
      ADR2 => '1',
      ADR0 => LED_0_OBUF_8361,
      ADR3 => LED_1_OBUF_8285,
      ADR5 => LED_2_OBUF_8362,
      ADR4 => N538,
      ADR1 => N472,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82_9417
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_9_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_9_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X30Y65"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_9_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_41 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => X"1111111100000000"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_9454,
      ADR0 => LED_5_OBUF_8367,
      ADR1 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_4
    );
  DMemoryPort_mux10_10_52_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_52_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y65",
      INIT => X"0000000000A055F5"
    )
    port map (
      ADR1 => '1',
      ADR5 => LED_0_OBUF_8361,
      ADR3 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR2 => N580,
      ADR4 => N514,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_9454
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_22_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_22_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X50Y88"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_22_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_41 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y88",
      INIT => X"0000555500000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82_9455,
      ADR4 => LED_5_OBUF_8367,
      ADR0 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_4
    );
  DMemoryPort_mux10_10_37_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X50Y88",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_37_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y88",
      INIT => X"00050C0500050C05"
    )
    port map (
      ADR5 => '1',
      ADR2 => LED_0_OBUF_8361,
      ADR4 => LED_1_OBUF_8285,
      ADR3 => LED_2_OBUF_8362,
      ADR1 => N550_0,
      ADR0 => N484,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82_9455
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_24_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_24_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X50Y84"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_24_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_41 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y84",
      INIT => X"000000FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_9465,
      ADR4 => LED_5_OBUF_8367,
      ADR3 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_4
    );
  DMemoryPort_mux10_10_38_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X50Y84",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_38_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y84",
      INIT => X"0151010101510101"
    )
    port map (
      ADR5 => '1',
      ADR0 => LED_0_OBUF_8361,
      ADR3 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR4 => N552_0,
      ADR1 => N486,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_9465
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_91_Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_91_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_1_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_1_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X56Y70"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_1_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_41 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y70",
      INIT => X"3333330000003300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => LED_3_OBUF_8283,
      ADR4 => LED_2_OBUF_8362,
      ADR3 => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_82_9433,
      ADR5 => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_91,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_4
    );
  DMemoryPort_mux10_10_93_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X56Y70",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_93_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_911 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y70",
      INIT => X"00000000CCAACCAA"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => LED_1_OBUF_8285,
      ADR3 => LED_0_OBUF_8361,
      ADR0 => IDecodePort_Reg_array_4(1),
      ADR1 => IDecodePort_Reg_array_5_1_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_91
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_25_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_25_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X52Y85"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_25_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_41 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => X"0033003300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_82_9471,
      ADR3 => LED_5_OBUF_8367,
      ADR1 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_4
    );
  DMemoryPort_mux10_10_36_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_36_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_82 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y85",
      INIT => X"0044004400005555"
    )
    port map (
      ADR2 => '1',
      ADR0 => LED_0_OBUF_8361,
      ADR3 => LED_1_OBUF_8285,
      ADR5 => LED_2_OBUF_8362,
      ADR1 => N548_0,
      ADR4 => N482,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_82_9471
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_19_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_19_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X54Y87"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_19_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_41 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y87",
      INIT => X"0303030300000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82_9472,
      ADR1 => LED_5_OBUF_8367,
      ADR2 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_4
    );
  DMemoryPort_mux10_10_42_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X54Y87",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_42_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y87",
      INIT => X"000000000055F055"
    )
    port map (
      ADR1 => '1',
      ADR5 => LED_0_OBUF_8361,
      ADR4 => LED_1_OBUF_8285,
      ADR3 => LED_2_OBUF_8362,
      ADR2 => N560_0,
      ADR0 => N494,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82_9472
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_12_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_12_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X38Y71"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_12_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_41 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y71",
      INIT => X"0303030300000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_9478,
      ADR1 => LED_5_OBUF_8367,
      ADR2 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_4
    );
  DMemoryPort_mux10_10_49_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X38Y71",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_49_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y71",
      INIT => X"00000000005588DD"
    )
    port map (
      ADR2 => '1',
      ADR5 => LED_0_OBUF_8361,
      ADR4 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR1 => N574,
      ADR3 => N508,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_9478
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_27_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_27_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y85"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_27_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_41 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y85",
      INIT => X"1111111100000000"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_9479,
      ADR0 => LED_5_OBUF_8367,
      ADR1 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_4
    );
  DMemoryPort_mux10_10_32_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X55Y85",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_32_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y85",
      INIT => X"0044004405050505"
    )
    port map (
      ADR4 => '1',
      ADR0 => LED_0_OBUF_8361,
      ADR3 => LED_1_OBUF_8285,
      ADR5 => LED_2_OBUF_8362,
      ADR1 => N540_0,
      ADR2 => N474,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_9479
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_8_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_8_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X36Y66"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_8_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_41 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y66",
      INIT => X"1111111100000000"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_9480,
      ADR1 => LED_5_OBUF_8367,
      ADR0 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_4
    );
  DMemoryPort_mux10_10_53_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X36Y66",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_53_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y66",
      INIT => X"0000000000C00FCF"
    )
    port map (
      ADR0 => '1',
      ADR5 => LED_0_OBUF_8361,
      ADR3 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR1 => N582_0,
      ADR4 => N516,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_9480
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_20_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_20_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X56Y87"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_20_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_41 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y87",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82_9482,
      ADR3 => LED_5_OBUF_8367,
      ADR5 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_4
    );
  DMemoryPort_mux10_10_41_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X56Y87",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_41_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y87",
      INIT => X"0415001104150011"
    )
    port map (
      ADR5 => '1',
      ADR0 => LED_0_OBUF_8361,
      ADR2 => LED_1_OBUF_8285,
      ADR1 => LED_2_OBUF_8362,
      ADR4 => N558_0,
      ADR3 => N492,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82_9482
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_14_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_14_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X38Y74"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_14_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_41 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y74",
      INIT => X"000000FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82_9483,
      ADR3 => LED_5_OBUF_8367,
      ADR4 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_4
    );
  DMemoryPort_mux10_10_48_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X38Y74",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_48_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y74",
      INIT => X"00050A0F00050005"
    )
    port map (
      ADR1 => '1',
      ADR2 => LED_0_OBUF_8361,
      ADR4 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR5 => N572_0,
      ADR3 => N506,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82_9483
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_6_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_6_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X32Y63"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_6_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_41 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y63",
      INIT => X"00000F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_9484,
      ADR2 => LED_5_OBUF_8367,
      ADR4 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_4
    );
  DMemoryPort_mux10_10_56_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X32Y63",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_56_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y63",
      INIT => X"0000000020202F2F"
    )
    port map (
      ADR3 => '1',
      ADR5 => LED_0_OBUF_8361,
      ADR1 => LED_1_OBUF_8285,
      ADR2 => LED_2_OBUF_8362,
      ADR0 => N588_0,
      ADR4 => N522,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_9484
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_15_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_15_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y80"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_4,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_15_Q,
      SEL => LED_6_OBUF_8366
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_41 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"0303030300000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_82_9485,
      ADR1 => LED_5_OBUF_8367,
      ADR2 => LED_4_OBUF_8368,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_4
    );
  DMemoryPort_mux10_10_47_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_47_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_82 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y80",
      INIT => X"001B0011001B0011"
    )
    port map (
      ADR5 => '1',
      ADR3 => LED_0_OBUF_8361,
      ADR2 => LED_1_OBUF_8285,
      ADR0 => LED_2_OBUF_8362,
      ADR4 => N570_0,
      ADR1 => N504,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_82_9485
    );
  SSEG_AN_4_OBUF_SSEG_AN_4_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_5_OBUF_1737,
      O => SSEG_AN_5_OBUF_0
    );
  Mram_SSEG_AN41 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y81",
      INIT => X"FFFFFFBBFFFFFFBB"
    )
    port map (
      ADR2 => '1',
      ADR4 => Val(3),
      ADR3 => Val(1),
      ADR1 => Val(2),
      ADR0 => Val(0),
      ADR5 => '1',
      O => SSEG_AN_4_OBUF_9168
    );
  Mram_SSEG_AN51 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y81",
      INIT => X"FFFFDDFF"
    )
    port map (
      ADR2 => '1',
      ADR4 => Val(3),
      ADR3 => Val(1),
      ADR1 => Val(2),
      ADR0 => Val(0),
      O => SSEG_AN_5_OBUF_1737
    );
  SSEG_AN_2_OBUF_SSEG_AN_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_3_OBUF_1744,
      O => SSEG_AN_3_OBUF_0
    );
  Mram_SSEG_AN21 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => X"FFFFF3FFFFFFF3FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => Val(3),
      ADR2 => Val(0),
      ADR3 => Val(1),
      ADR1 => Val(2),
      ADR5 => '1',
      O => SSEG_AN_2_OBUF_9191
    );
  Mram_SSEG_AN31 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => X"FFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => Val(3),
      ADR2 => Val(0),
      ADR3 => Val(1),
      ADR1 => Val(2),
      O => SSEG_AN_3_OBUF_1744
    );
  Mcount_Val_val1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y91",
      INIT => X"FFFF1000FFFF0000"
    )
    port map (
      ADR5 => Cntr_26_GND_8_o_equal_8_o,
      ADR2 => Val(3),
      ADR1 => Val(2),
      ADR0 => Val(1),
      ADR3 => Val(0),
      ADR4 => BTN_4_IBUF_8994,
      O => Mcount_Val_val
    );
  Cntr_26_GND_8_o_equal_8_o_26_6 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y91",
      INIT => X"A000000000000000"
    )
    port map (
      ADR1 => '1',
      ADR2 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_1_8972,
      ADR5 => Cntr_26_GND_8_o_equal_8_o_26_2_8979,
      ADR0 => Cntr_26_GND_8_o_equal_8_o_26_3_8986,
      ADR3 => Cntr_26_GND_8_o_equal_8_o_26_4_8995,
      O => Cntr_26_GND_8_o_equal_8_o
    );
  Cntr_26_GND_8_o_equal_8_o_26_2 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y87",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => Cntr(1),
      ADR4 => Cntr(0),
      ADR2 => Cntr(2),
      ADR0 => Cntr(3),
      ADR1 => Cntr(4),
      ADR5 => Cntr(5),
      O => Cntr_26_GND_8_o_equal_8_o_26_1_8972
    );
  Cntr_26_GND_8_o_equal_8_o_26_3 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y90",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => Cntr(9),
      ADR2 => Cntr(7),
      ADR4 => Cntr(12),
      ADR3 => Cntr(13),
      ADR5 => Cntr(14),
      ADR0 => Cntr(15),
      O => Cntr_26_GND_8_o_equal_8_o_26_2_8979
    );
  Cntr_26_GND_8_o_equal_8_o_26_1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y90",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => Cntr(8),
      ADR5 => Cntr(6),
      ADR0 => Cntr(11),
      ADR3 => Cntr(10),
      ADR1 => Cntr(17),
      ADR2 => Cntr(16),
      O => Cntr_26_GND_8_o_equal_8_o_26_Q
    );
  Cntr_26_GND_8_o_equal_8_o_26_4 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y91",
      INIT => X"0000000000000001"
    )
    port map (
      ADR4 => Cntr(19),
      ADR3 => Cntr(18),
      ADR0 => Cntr(20),
      ADR5 => Cntr(21),
      ADR1 => Cntr(22),
      ADR2 => Cntr(23),
      O => Cntr_26_GND_8_o_equal_8_o_26_3_8986
    );
  Cntr_26_GND_8_o_equal_8_o_26_5 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y91",
      INIT => X"0000005500000055"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Cntr(25),
      ADR4 => Cntr(24),
      ADR0 => Cntr(26),
      O => Cntr_26_GND_8_o_equal_8_o_26_4_8995
    );
  Cntr_26_BTN_4_OR_92_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y91",
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      ADR5 => BTN_4_IBUF_8994,
      ADR2 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_1_8972,
      ADR1 => Cntr_26_GND_8_o_equal_8_o_26_2_8979,
      ADR0 => Cntr_26_GND_8_o_equal_8_o_26_3_8986,
      ADR3 => Cntr_26_GND_8_o_equal_8_o_26_4_8995,
      O => Cntr_26_BTN_4_OR_92_o
    );
  Val_3_Val_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Val_2_pack_6,
      O => Val(2)
    );
  Val_3 : X_SFF
    generic map(
      LOC => "SLICE_X9Y90",
      INIT => '0'
    )
    port map (
      CE => Cntr_26_GND_8_o_equal_8_o,
      CLK => NlwBufferSignal_Val_3_CLK,
      I => Result_3_1,
      O => Val(3),
      SRST => Mcount_Val_val,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mram_SSEG_AN111 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y90",
      INIT => X"CFFFFFFFCFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => Val(1),
      ADR3 => Val(0),
      ADR1 => Val(3),
      ADR4 => Val(2),
      ADR5 => '1',
      O => SSEG_AN_1_OBUF_9174
    );
  Mcount_Val_xor_3_11 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y90",
      INIT => X"3CCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => Val(1),
      ADR3 => Val(0),
      ADR1 => Val(3),
      ADR4 => Val(2),
      O => Result_3_1
    );
  Val_1 : X_SFF
    generic map(
      LOC => "SLICE_X9Y90",
      INIT => '0'
    )
    port map (
      CE => Cntr_26_GND_8_o_equal_8_o,
      CLK => NlwBufferSignal_Val_1_CLK,
      I => Result_1_1,
      O => Val(1),
      SRST => Mcount_Val_val,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_Val_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y90",
      INIT => X"3C3C3C3C3C3C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => Val(1),
      ADR2 => Val(0),
      ADR5 => '1',
      O => Result_1_1
    );
  Mcount_Val_xor_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y90",
      INIT => X"6A6A6A6A"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => Val(2),
      ADR1 => Val(1),
      ADR2 => Val(0),
      O => Result_2_1
    );
  Val_2 : X_SFF
    generic map(
      LOC => "SLICE_X9Y90",
      INIT => '0'
    )
    port map (
      CE => Cntr_26_GND_8_o_equal_8_o,
      CLK => NlwBufferSignal_Val_2_CLK,
      I => Result_2_1,
      O => Val_2_pack_6,
      SRST => Mcount_Val_val,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Val_0 : X_SFF
    generic map(
      LOC => "SLICE_X9Y90",
      INIT => '0'
    )
    port map (
      CE => Cntr_26_GND_8_o_equal_8_o,
      CLK => NlwBufferSignal_Val_0_CLK,
      I => Result_0_1,
      O => Val(0),
      SRST => Mcount_Val_val,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_Val_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y90",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Val(0),
      ADR4 => '1',
      ADR5 => '1',
      O => Result_0_1
    );
  Mmux_SSEG_CA421 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y83",
      INIT => X"0033000000000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => hexval_2_9102,
      ADR3 => hexval_0_9103,
      ADR1 => SSEG_AN_0_OBUF_9101,
      ADR4 => hexval_3_9104,
      O => Mmux_SSEG_CA421_9460
    );
  Mmux_SSEG_CA21_Mmux_SSEG_CA21_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA61_1836,
      O => Mmux_SSEG_CA61_0
    );
  Mmux_SSEG_CA22 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y84",
      INIT => X"0020001400200014"
    )
    port map (
      ADR3 => SSEG_AN_0_OBUF_9101,
      ADR1 => hexval_2_9102,
      ADR2 => hexval_0_9103,
      ADR0 => hexval_3_9104,
      ADR4 => hexval_1_9105,
      ADR5 => '1',
      O => Mmux_SSEG_CA21_9492
    );
  Mmux_SSEG_CA62 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y84",
      INIT => X"00890000"
    )
    port map (
      ADR3 => SSEG_AN_0_OBUF_9101,
      ADR1 => hexval_2_9102,
      ADR2 => hexval_0_9103,
      ADR0 => hexval_3_9104,
      ADR4 => hexval_1_9105,
      O => Mmux_SSEG_CA61_1836
    );
  Mmux_SSEG_CA29 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y84",
      INIT => X"FFFDFFFDFFFDFFFC"
    )
    port map (
      ADR0 => Val(3),
      ADR5 => Mmux_SSEG_CA27_9098,
      ADR4 => Mmux_SSEG_CA812,
      ADR2 => Mmux_SSEG_CA121,
      ADR1 => Mmux_SSEG_CA2,
      ADR3 => Mmux_SSEG_CA21_9492,
      O => SSEG_CA_0_OBUF_9097
    );
  Mmux_SSEG_CA43 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y85",
      INIT => X"FBF0F8F0F6F0F0F0"
    )
    port map (
      ADR3 => Mmux_SSEG_CA41_0,
      ADR4 => hexval_30_9114,
      ADR1 => hexval_28_9111,
      ADR0 => hexval_31_9112,
      ADR5 => hexval_29_9113,
      ADR2 => Mmux_SSEG_CA4,
      O => Mmux_SSEG_CA43_9493
    );
  Mmux_SSEG_CA410 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y85",
      INIT => X"FFF5FFF5FFF5FFF4"
    )
    port map (
      ADR0 => Val(3),
      ADR5 => Mmux_SSEG_CA49_9156,
      ADR4 => Mmux_SSEG_CA46_9489,
      ADR1 => Mmux_SSEG_CA48_9186,
      ADR2 => Mmux_SSEG_CA42,
      ADR3 => Mmux_SSEG_CA43_9493,
      O => SSEG_CA_1_OBUF_9282
    );
  SSEG_AN_0_OBUF_SSEG_AN_0_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA41_1866,
      O => Mmux_SSEG_CA41_0
    );
  SSEG_AN_0_OBUF_SSEG_AN_0_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA88_1861,
      O => Mmux_SSEG_CA88_0
    );
  Mram_SSEG_AN12 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y86",
      INIT => X"FFFDFFFDFFFDFFFD"
    )
    port map (
      ADR4 => '1',
      ADR3 => Val(2),
      ADR1 => Val(1),
      ADR0 => Val(3),
      ADR2 => Val(0),
      ADR5 => '1',
      O => SSEG_AN_0_OBUF_9101
    );
  Mmux_SSEG_CA411 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y86",
      INIT => X"AAB9AAB9"
    )
    port map (
      ADR4 => '1',
      ADR3 => Val(2),
      ADR1 => Val(1),
      ADR0 => Val(3),
      ADR2 => Val(0),
      O => Mmux_SSEG_CA41_1866
    );
  Mmux_SSEG_CA41 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y86",
      INIT => X"00E0004800E00048"
    )
    port map (
      ADR3 => SSEG_AN_0_OBUF_9101,
      ADR0 => hexval_0_9103,
      ADR2 => hexval_1_9105,
      ADR4 => hexval_3_9104,
      ADR1 => hexval_2_9102,
      ADR5 => '1',
      O => Mmux_SSEG_CA4
    );
  Mmux_SSEG_CA89 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y86",
      INIT => X"00900086"
    )
    port map (
      ADR3 => SSEG_AN_0_OBUF_9101,
      ADR0 => hexval_0_9103,
      ADR2 => hexval_1_9105,
      ADR4 => hexval_3_9104,
      ADR1 => hexval_2_9102,
      O => Mmux_SSEG_CA88_1861
    );
  Mmux_SSEG_CA8122 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y87",
      INIT => X"FFFFFFFF00060000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA16,
      ADR2 => hexval_11_8906,
      ADR3 => hexval_9_8907,
      ADR0 => hexval_10_8908,
      ADR1 => hexval_8_8909,
      ADR5 => Mmux_SSEG_CA8121_8910,
      O => Mmux_SSEG_CA8122_9494
    );
  Mmux_SSEG_CA8126 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y87",
      INIT => X"FFFFFFFFFFCCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => Mmux_SSEG_CA8124_8903,
      ADR5 => Mmux_SSEG_CA8125_0,
      ADR3 => Mmux_SSEG_CA8122_9494,
      O => Mmux_SSEG_CA812
    );
  clr : X_LATCHE
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_clr_CLK,
      I => clr_D_1883,
      O => clr_9052,
      RST => GND,
      SET => GND
    );
  clr_G : X_LUT6
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => X"FFFFF0F0FFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => BTN_3_IBUF_9050,
      ADR2 => BTN_0_IBUF_9051,
      ADR5 => '1',
      O => clr_G_9495
    );
  clr_D : X_LUT5
    generic map(
      LOC => "SLICE_X15Y76",
      INIT => X"0000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => BTN_3_IBUF_9050,
      ADR2 => BTN_0_IBUF_9051,
      O => clr_D_1883
    );
  Mmux_SSEG_CA1211_Mmux_SSEG_CA1211_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA122_1889,
      O => Mmux_SSEG_CA122_0
    );
  Mmux_SSEG_CA1212 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y83",
      INIT => X"1000000010000000"
    )
    port map (
      ADR2 => hexval_3_9104,
      ADR4 => hexval_0_9103,
      ADR1 => hexval_1_9105,
      ADR0 => SSEG_AN_0_OBUF_9101,
      ADR3 => hexval_2_9102,
      ADR5 => '1',
      O => Mmux_SSEG_CA1211_9223
    );
  Mmux_SSEG_CA123 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y83",
      INIT => X"04050004"
    )
    port map (
      ADR2 => hexval_3_9104,
      ADR4 => hexval_0_9103,
      ADR1 => hexval_1_9105,
      ADR0 => SSEG_AN_0_OBUF_9101,
      ADR3 => hexval_2_9102,
      O => Mmux_SSEG_CA122_1889
    );
  Mmux_SSEG_CA1211 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y84",
      INIT => X"FFFFFFAFFFFFFFAA"
    )
    port map (
      ADR1 => '1',
      ADR5 => Mmux_SSEG_CA129_9477,
      ADR2 => Val(3),
      ADR3 => Mmux_SSEG_CA122_0,
      ADR4 => Mmux_SSEG_CA121,
      ADR0 => Mmux_SSEG_CA12_0,
      O => SSEG_CA_5_OBUF_9281
    );
  Mmux_SSEG_CA1219 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y84",
      INIT => X"FF55FF55FF55FF50"
    )
    port map (
      ADR1 => '1',
      ADR0 => Val(3),
      ADR5 => Mmux_SSEG_CA1217_9488,
      ADR2 => Mmux_SSEG_CA1213_9487,
      ADR4 => Mmux_SSEG_CA1215_9184,
      ADR3 => Mmux_SSEG_CA1211_9223,
      O => Mmux_SSEG_CA121
    );
  Mmux_SSEG_CA2_Mmux_SSEG_CA2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA6_pack_1,
      O => Mmux_SSEG_CA6
    );
  Mmux_SSEG_CA21 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y85",
      INIT => X"6000102060001020"
    )
    port map (
      ADR2 => Mmux_SSEG_CA41_0,
      ADR3 => hexval_28_9111,
      ADR4 => hexval_31_9112,
      ADR1 => hexval_29_9113,
      ADR0 => hexval_30_9114,
      ADR5 => '1',
      O => Mmux_SSEG_CA2
    );
  Mmux_SSEG_CA61 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y85",
      INIT => X"80A00040"
    )
    port map (
      ADR2 => Mmux_SSEG_CA41_0,
      ADR3 => hexval_28_9111,
      ADR4 => hexval_31_9112,
      ADR1 => hexval_29_9113,
      ADR0 => hexval_30_9114,
      O => Mmux_SSEG_CA6_pack_1
    );
  Mmux_SSEG_CA610 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y85",
      INIT => X"FFFFEEEEFFFFFEFE"
    )
    port map (
      ADR3 => '1',
      ADR2 => Mmux_SSEG_CA68_9108,
      ADR5 => Val(3),
      ADR1 => Mmux_SSEG_CA61_0,
      ADR4 => Mmux_SSEG_CA42,
      ADR0 => Mmux_SSEG_CA6,
      O => SSEG_CA_2_OBUF_9107
    );
  Mmux_SSEG_CA15_Mmux_SSEG_CA15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA19,
      O => Mmux_SSEG_CA19_0
    );
  Mmux_SSEG_CA15_Mmux_SSEG_CA15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA22_1943,
      O => Mmux_SSEG_CA22_0
    );
  Mmux_SSEG_CA15_Mmux_SSEG_CA15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA87_1942,
      O => Mmux_SSEG_CA87_0
    );
  Mmux_SSEG_CA15_Mmux_SSEG_CA15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA12,
      O => Mmux_SSEG_CA12_0
    );
  Mmux_SSEG_CA151 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y86",
      INIT => X"A0A00000A0A00000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => Val(0),
      ADR2 => Val(1),
      ADR4 => Val(2),
      ADR5 => '1',
      O => Mmux_SSEG_CA15
    );
  Mmux_SSEG_CA191 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y86",
      INIT => X"00005050"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => Val(0),
      ADR2 => Val(1),
      ADR4 => Val(2),
      O => Mmux_SSEG_CA19
    );
  Mmux_SSEG_CA8121 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y86",
      INIT => X"0102000001020000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA15,
      ADR2 => hexval_5_9059,
      ADR1 => hexval_7_9060,
      ADR0 => hexval_4_9061,
      ADR3 => hexval_6_9062,
      ADR5 => '1',
      O => Mmux_SSEG_CA8121_8910
    );
  Mmux_SSEG_CA23 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y86",
      INIT => X"00800000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA15,
      ADR2 => hexval_5_9059,
      ADR1 => hexval_7_9060,
      ADR0 => hexval_4_9061,
      ADR3 => hexval_6_9062,
      O => Mmux_SSEG_CA22_1943
    );
  Mmux_SSEG_CA147 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y86",
      INIT => X"1803000018030000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA41_0,
      ADR3 => hexval_30_9114,
      ADR2 => hexval_31_9112,
      ADR0 => hexval_28_9111,
      ADR1 => hexval_29_9113,
      ADR5 => '1',
      O => Mmux_SSEG_CA146_9182
    );
  Mmux_SSEG_CA88 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y86",
      INIT => X"89420000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA41_0,
      ADR3 => hexval_30_9114,
      ADR2 => hexval_31_9112,
      ADR0 => hexval_28_9111,
      ADR1 => hexval_29_9113,
      O => Mmux_SSEG_CA87_1942
    );
  Mmux_SSEG_CA107 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y86",
      INIT => X"0B2A00000B2A0000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA41_0,
      ADR0 => hexval_28_9111,
      ADR3 => hexval_30_9114,
      ADR1 => hexval_29_9113,
      ADR2 => hexval_31_9112,
      ADR5 => '1',
      O => Mmux_SSEG_CA106_9210
    );
  Mmux_SSEG_CA122 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y86",
      INIT => X"280E0000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA41_0,
      ADR0 => hexval_28_9111,
      ADR3 => hexval_30_9114,
      ADR1 => hexval_29_9113,
      ADR2 => hexval_31_9112,
      O => Mmux_SSEG_CA12
    );
  Mmux_SSEG_CA147_Mmux_SSEG_CA147_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA107_pack_2,
      O => Mmux_SSEG_CA107_9497
    );
  Mmux_SSEG_CA148 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y87",
      INIT => X"0041000900410009"
    )
    port map (
      ADR3 => SSEG_AN_0_OBUF_9101,
      ADR1 => hexval_2_9102,
      ADR0 => hexval_3_9104,
      ADR4 => hexval_0_9103,
      ADR2 => hexval_1_9105,
      ADR5 => '1',
      O => Mmux_SSEG_CA147_9498
    );
  Mmux_SSEG_CA108 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y87",
      INIT => X"00570004"
    )
    port map (
      ADR3 => SSEG_AN_0_OBUF_9101,
      ADR1 => hexval_2_9102,
      ADR0 => hexval_3_9104,
      ADR4 => hexval_0_9103,
      ADR2 => hexval_1_9105,
      O => Mmux_SSEG_CA107_pack_2
    );
  Mmux_SSEG_CA149 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y87",
      INIT => X"FFFFFFFFFFFF3332"
    )
    port map (
      ADR1 => Val(3),
      ADR3 => Mmux_SSEG_CA145_9066,
      ADR2 => Mmux_SSEG_CA141_9116,
      ADR0 => Mmux_SSEG_CA143_9222,
      ADR5 => Mmux_SSEG_CA146_9182,
      ADR4 => Mmux_SSEG_CA147_9498,
      O => SSEG_CA_6_OBUF_9221
    );
  Mmux_SSEG_CA109 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y87",
      INIT => X"FFF0FFF0FFFFFFFE"
    )
    port map (
      ADR5 => Val(3),
      ADR1 => Mmux_SSEG_CA105_9065,
      ADR0 => Mmux_SSEG_CA101_9115,
      ADR4 => Mmux_SSEG_CA103_9142,
      ADR2 => Mmux_SSEG_CA106_9210,
      ADR3 => Mmux_SSEG_CA107_9497,
      O => SSEG_CA_4_OBUF_9220
    );
  Mmux_SSEG_CA87 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y88",
      INIT => X"00FF00FF00FF00FE"
    )
    port map (
      ADR3 => Val(3),
      ADR5 => Mmux_SSEG_CA81_9225,
      ADR1 => Mmux_SSEG_CA82_9123,
      ADR2 => Mmux_SSEG_CA84_9125,
      ADR4 => Mmux_SSEG_CA85_9188,
      ADR0 => Mmux_SSEG_CA812,
      O => Mmux_SSEG_CA86_9499
    );
  Mmux_SSEG_CA810 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y88",
      INIT => X"FFFFFFF0FFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR2 => Mmux_SSEG_CA87_0,
      ADR3 => Mmux_SSEG_CA88_0,
      ADR4 => Mmux_SSEG_CA86_9499,
      O => SSEG_CA_3_OBUF_9283
    );
  Mmux_SSEG_CA127_Mmux_SSEG_CA127_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA62_1990,
      O => Mmux_SSEG_CA62_0
    );
  Mmux_SSEG_CA128 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y84",
      INIT => X"080800000A0A0808"
    )
    port map (
      ADR3 => '1',
      ADR0 => Mmux_SSEG_CA16,
      ADR2 => hexval_11_8906,
      ADR4 => hexval_8_8909,
      ADR1 => hexval_9_8907,
      ADR5 => hexval_10_8908,
      O => Mmux_SSEG_CA127_9476
    );
  Mmux_SSEG_CA49 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y84",
      INIT => X"8280880082808800"
    )
    port map (
      ADR0 => Mmux_SSEG_CA16,
      ADR4 => hexval_8_8909,
      ADR1 => hexval_9_8907,
      ADR2 => hexval_11_8906,
      ADR3 => hexval_10_8908,
      ADR5 => '1',
      O => Mmux_SSEG_CA49_9156
    );
  Mmux_SSEG_CA63 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y84",
      INIT => X"80008008"
    )
    port map (
      ADR0 => Mmux_SSEG_CA16,
      ADR4 => hexval_8_8909,
      ADR1 => hexval_9_8907,
      ADR2 => hexval_11_8906,
      ADR3 => hexval_10_8908,
      O => Mmux_SSEG_CA62_1990
    );
  Mmux_SSEG_CA422_Mmux_SSEG_CA422_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA8_pack_5,
      O => Mmux_SSEG_CA8
    );
  Mmux_SSEG_CA422 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y85",
      INIT => X"0000000000400000"
    )
    port map (
      ADR1 => Val(1),
      ADR0 => Val(2),
      ADR5 => Val(0),
      ADR2 => hexval_27_9118,
      ADR3 => hexval_24_9119,
      ADR4 => hexval_26_9117,
      O => Mmux_SSEG_CA422_9501
    );
  Mmux_SSEG_CA424 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y85",
      INIT => X"FFFFFFFFFFFF0080"
    )
    port map (
      ADR3 => hexval_8_8909,
      ADR1 => hexval_10_8908,
      ADR0 => hexval_11_8906,
      ADR2 => Mmux_SSEG_CA16,
      ADR4 => Mmux_SSEG_CA423_9462,
      ADR5 => Mmux_SSEG_CA422_9501,
      O => Mmux_SSEG_CA424_9461
    );
  Mmux_SSEG_CA2121 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y85",
      INIT => X"CC000000CC000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => hexval_11_8906,
      ADR3 => hexval_9_8907,
      ADR1 => hexval_8_8909,
      ADR5 => '1',
      O => Mmux_SSEG_CA212
    );
  Mmux_SSEG_CA81 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y85",
      INIT => X"82008000"
    )
    port map (
      ADR0 => Mmux_SSEG_CA16,
      ADR2 => hexval_10_8908,
      ADR4 => hexval_11_8906,
      ADR3 => hexval_9_8907,
      ADR1 => hexval_8_8909,
      O => Mmux_SSEG_CA8_pack_5
    );
  Mmux_SSEG_CA82 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y85",
      INIT => X"EAAAEAAAAAEAAAAA"
    )
    port map (
      ADR2 => hexval_5_9059,
      ADR1 => Mmux_SSEG_CA15,
      ADR3 => hexval_4_9061,
      ADR5 => hexval_6_9062,
      ADR4 => hexval_7_9060,
      ADR0 => Mmux_SSEG_CA8,
      O => Mmux_SSEG_CA81_9225
    );
  Mmux_SSEG_CA27 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y86",
      INIT => X"BAAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => Mmux_SSEG_CA25_9218,
      ADR3 => hexval_13_9084,
      ADR4 => hexval_12_9083,
      ADR1 => hexval_14_9082,
      ADR5 => hexval_15_9085,
      ADR2 => Mmux_SSEG_CA18,
      O => Mmux_SSEG_CA26_9503
    );
  Mmux_SSEG_CA28 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y86",
      INIT => X"FFFFFFFFFCFEFCFC"
    )
    port map (
      ADR1 => Mmux_SSEG_CA24_0,
      ADR2 => Mmux_SSEG_CA23_9490,
      ADR3 => hexval_10_8908,
      ADR4 => Mmux_SSEG_CA16,
      ADR0 => Mmux_SSEG_CA212,
      ADR5 => Mmux_SSEG_CA26_9503,
      O => Mmux_SSEG_CA27_9098
    );
  Mmux_SSEG_CA45 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y86",
      INIT => X"EEAAEAEAAAEAAAAA"
    )
    port map (
      ADR1 => Mmux_SSEG_CA15,
      ADR4 => hexval_4_9061,
      ADR5 => hexval_5_9059,
      ADR3 => hexval_7_9060,
      ADR2 => hexval_6_9062,
      ADR0 => Mmux_SSEG_CA44_0,
      O => Mmux_SSEG_CA45_9502
    );
  Mmux_SSEG_CA46 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y86",
      INIT => X"EBEAEEAAAAAAAAAA"
    )
    port map (
      ADR5 => Mmux_SSEG_CA110,
      ADR4 => hexval_16_8511,
      ADR1 => hexval_17_8514,
      ADR2 => hexval_19_8513,
      ADR3 => hexval_18_8512,
      ADR0 => Mmux_SSEG_CA45_9502,
      O => Mmux_SSEG_CA46_9489
    );
  Mmux_SSEG_CA144_Mmux_SSEG_CA144_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA104_pack_6,
      O => Mmux_SSEG_CA104_9504
    );
  Mmux_SSEG_CA145 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y87",
      INIT => X"0400830004008300"
    )
    port map (
      ADR3 => Mmux_SSEG_CA15,
      ADR1 => hexval_6_9062,
      ADR4 => hexval_7_9060,
      ADR0 => hexval_4_9061,
      ADR2 => hexval_5_9059,
      ADR5 => '1',
      O => Mmux_SSEG_CA144_9505
    );
  Mmux_SSEG_CA105 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y87",
      INIT => X"0200AE00"
    )
    port map (
      ADR3 => Mmux_SSEG_CA15,
      ADR1 => hexval_6_9062,
      ADR4 => hexval_7_9060,
      ADR0 => hexval_4_9061,
      ADR2 => hexval_5_9059,
      O => Mmux_SSEG_CA104_pack_6
    );
  Mmux_SSEG_CA146 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y87",
      INIT => X"CCDCCCCCECCFCCCC"
    )
    port map (
      ADR4 => Mmux_SSEG_CA110,
      ADR2 => hexval_18_8512,
      ADR5 => hexval_19_8513,
      ADR0 => hexval_16_8511,
      ADR3 => hexval_17_8514,
      ADR1 => Mmux_SSEG_CA144_9505,
      O => Mmux_SSEG_CA145_9066
    );
  Mmux_SSEG_CA106 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y87",
      INIT => X"FF00FF40FFC0FFE0"
    )
    port map (
      ADR2 => Mmux_SSEG_CA110,
      ADR1 => hexval_16_8511,
      ADR0 => hexval_18_8512,
      ADR4 => hexval_17_8514,
      ADR5 => hexval_19_8513,
      ADR3 => Mmux_SSEG_CA104_9504,
      O => Mmux_SSEG_CA105_9065
    );
  Mmux_SSEG_CA127 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y87",
      INIT => X"3000330000003000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Mmux_SSEG_CA17,
      ADR1 => hexval_23_9130,
      ADR5 => hexval_20_9128,
      ADR2 => hexval_21_9126,
      ADR4 => hexval_22_9129,
      O => Mmux_SSEG_CA126_9475
    );
  Mmux_SSEG_CA16_Mmux_SSEG_CA16_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA17_pack_5,
      O => Mmux_SSEG_CA17
    );
  Mmux_SSEG_CA16_Mmux_SSEG_CA16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA44_2092,
      O => Mmux_SSEG_CA44_0
    );
  Mmux_SSEG_CA161 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y88",
      INIT => X"2222000022220000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Val(2),
      ADR4 => Val(1),
      ADR1 => Val(0),
      ADR5 => '1',
      O => Mmux_SSEG_CA16
    );
  Mmux_SSEG_CA171 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y88",
      INIT => X"44440000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Val(2),
      ADR4 => Val(1),
      ADR1 => Val(0),
      O => Mmux_SSEG_CA17_pack_5
    );
  Mmux_SSEG_CA143 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y88",
      INIT => X"0491000004910000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA17,
      ADR1 => hexval_22_9129,
      ADR3 => hexval_23_9130,
      ADR2 => hexval_20_9128,
      ADR0 => hexval_21_9126,
      ADR5 => '1',
      O => Mmux_SSEG_CA142_9151
    );
  Mmux_SSEG_CA44 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y88",
      INIT => X"A8480000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA17,
      ADR1 => hexval_22_9129,
      ADR3 => hexval_23_9130,
      ADR2 => hexval_20_9128,
      ADR0 => hexval_21_9126,
      O => Mmux_SSEG_CA44_2092
    );
  CONV4_Mram_Y221 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y88",
      INIT => X"0000444400004444"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => hexval_17_8514,
      ADR0 => hexval_19_8513,
      ADR4 => hexval_18_8512,
      O => CONV4_Mram_Y22
    );
  Mmux_SSEG_CA65 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y88",
      INIT => X"80800000F080F000"
    )
    port map (
      ADR2 => Mmux_SSEG_CA110,
      ADR3 => CONV4_Mram_Y22,
      ADR5 => hexval_16_8511,
      ADR4 => hexval_18_8512,
      ADR0 => hexval_19_8513,
      ADR1 => hexval_17_8514,
      O => Mmux_SSEG_CA64_8508
    );
  Mmux_SSEG_CA1216_Mmux_SSEG_CA1216_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA123_2121,
      O => Mmux_SSEG_CA123_0
    );
  Mmux_SSEG_CA1216_Mmux_SSEG_CA1216_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA63_2114,
      O => Mmux_SSEG_CA63_0
    );
  Mmux_SSEG_CA1217 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y89",
      INIT => X"0800000008000000"
    )
    port map (
      ADR3 => hexval_14_9082,
      ADR0 => hexval_12_9083,
      ADR2 => hexval_13_9084,
      ADR4 => hexval_15_9085,
      ADR1 => Mmux_SSEG_CA18,
      ADR5 => '1',
      O => Mmux_SSEG_CA1216_9081
    );
  Mmux_SSEG_CA124 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y89",
      INIT => X"000080C8"
    )
    port map (
      ADR3 => hexval_14_9082,
      ADR0 => hexval_12_9083,
      ADR2 => hexval_13_9084,
      ADR4 => hexval_15_9085,
      ADR1 => Mmux_SSEG_CA18,
      O => Mmux_SSEG_CA123_2121
    );
  Mmux_SSEG_CA26 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y89",
      INIT => X"0800000008000000"
    )
    port map (
      ADR0 => hexval_21_9126,
      ADR4 => hexval_20_9128,
      ADR2 => hexval_22_9129,
      ADR3 => hexval_23_9130,
      ADR1 => Mmux_SSEG_CA17,
      ADR5 => '1',
      O => Mmux_SSEG_CA25_9218
    );
  Mmux_SSEG_CA64 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y89",
      INIT => X"80008008"
    )
    port map (
      ADR0 => hexval_21_9126,
      ADR4 => hexval_20_9128,
      ADR2 => hexval_22_9129,
      ADR3 => hexval_23_9130,
      ADR1 => Mmux_SSEG_CA17,
      O => Mmux_SSEG_CA63_2114
    );
  start : X_LATCHE
    generic map(
      LOC => "SLICE_X29Y74",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => '0',
      I => '0',
      O => start_9209,
      SET => BTN_3_IBUF_9050,
      RST => GND
    );
  Mmux_SSEG_CA66 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y84",
      INIT => X"8888004400000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => Mmux_SSEG_CA15,
      ADR3 => hexval_4_9061,
      ADR0 => hexval_6_9062,
      ADR4 => hexval_7_9060,
      ADR5 => hexval_5_9059,
      O => Mmux_SSEG_CA65_9491
    );
  Mmux_SSEG_CA144 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y84",
      INIT => X"FFFFFFFF00088022"
    )
    port map (
      ADR0 => Mmux_SSEG_CA16,
      ADR1 => hexval_10_8908,
      ADR4 => hexval_11_8906,
      ADR2 => hexval_8_8909,
      ADR3 => hexval_9_8907,
      ADR5 => Mmux_SSEG_CA142_9151,
      O => Mmux_SSEG_CA143_9222
    );
  Mmux_SSEG_CA1212_Mmux_SSEG_CA1212_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA124_2167,
      O => Mmux_SSEG_CA124_0
    );
  Mmux_SSEG_CA1213 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y85",
      INIT => X"4000000040000000"
    )
    port map (
      ADR1 => hexval_6_9062,
      ADR2 => hexval_4_9061,
      ADR0 => hexval_5_9059,
      ADR4 => hexval_7_9060,
      ADR3 => Mmux_SSEG_CA15,
      ADR5 => '1',
      O => Mmux_SSEG_CA1212_9170
    );
  Mmux_SSEG_CA125 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y85",
      INIT => X"0000B200"
    )
    port map (
      ADR1 => hexval_6_9062,
      ADR2 => hexval_4_9061,
      ADR0 => hexval_5_9059,
      ADR4 => hexval_7_9060,
      ADR3 => Mmux_SSEG_CA15,
      O => Mmux_SSEG_CA124_2167
    );
  Mmux_SSEG_CA1218 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y85",
      INIT => X"CCECCCCCCCCCCCCC"
    )
    port map (
      ADR1 => Mmux_SSEG_CA1216_9081,
      ADR4 => hexval_11_8906,
      ADR0 => hexval_10_8908,
      ADR3 => hexval_9_8907,
      ADR5 => hexval_8_8909,
      ADR2 => Mmux_SSEG_CA16,
      O => Mmux_SSEG_CA1217_9488
    );
  Mmux_SSEG_CA427 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y85",
      INIT => X"8D88888888888888"
    )
    port map (
      ADR0 => Val(1),
      ADR2 => hexval_12_9083,
      ADR4 => Val(2),
      ADR3 => hexval_14_9082,
      ADR5 => hexval_15_9085,
      ADR1 => Mmux_SSEG_CA426_9463,
      O => Mmux_SSEG_CA427_9506
    );
  Mmux_SSEG_CA428 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y85",
      INIT => X"FFFF5550FFFF5050"
    )
    port map (
      ADR1 => '1',
      ADR0 => Val(3),
      ADR3 => Mmux_SSEG_CA427_9506,
      ADR5 => Val(0),
      ADR2 => Mmux_SSEG_CA424_9461,
      ADR4 => Mmux_SSEG_CA421_9460,
      O => Mmux_SSEG_CA42
    );
  Mmux_SSEG_CA129 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y86",
      INIT => X"F400F500F000F000"
    )
    port map (
      ADR3 => Mmux_SSEG_CA19_0,
      ADR0 => hexval_27_9118,
      ADR5 => hexval_24_9119,
      ADR1 => hexval_25_9120,
      ADR4 => hexval_26_9117,
      ADR2 => CONV2_Mram_Y22,
      O => Mmux_SSEG_CA128_9508
    );
  Mmux_SSEG_CA1210 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y86",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR2 => Mmux_SSEG_CA123_0,
      ADR5 => Mmux_SSEG_CA124_0,
      ADR1 => Mmux_SSEG_CA125_9474,
      ADR3 => Mmux_SSEG_CA126_9475,
      ADR0 => Mmux_SSEG_CA127_9476,
      ADR4 => Mmux_SSEG_CA128_9508,
      O => Mmux_SSEG_CA129_9477
    );
  Mmux_SSEG_CA68 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y86",
      INIT => X"88F800F000000000"
    )
    port map (
      ADR5 => Mmux_SSEG_CA19_0,
      ADR2 => CONV2_Mram_Y22,
      ADR3 => hexval_24_9119,
      ADR0 => hexval_26_9117,
      ADR4 => hexval_27_9118,
      ADR1 => hexval_25_9120,
      O => Mmux_SSEG_CA67_9507
    );
  Mmux_SSEG_CA69 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y86",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR5 => Mmux_SSEG_CA62_0,
      ADR0 => Mmux_SSEG_CA63_0,
      ADR2 => Mmux_SSEG_CA64_8508,
      ADR1 => Mmux_SSEG_CA65_9491,
      ADR4 => Mmux_SSEG_CA66_9185,
      ADR3 => Mmux_SSEG_CA67_9507,
      O => Mmux_SSEG_CA68_9108
    );
  CONV2_Mram_Y22_CONV2_Mram_Y22_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA47_pack_2,
      O => Mmux_SSEG_CA47_9510
    );
  CONV2_Mram_Y221 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y87",
      INIT => X"0000222200002222"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => hexval_25_9120,
      ADR4 => hexval_27_9118,
      ADR1 => hexval_26_9117,
      ADR5 => '1',
      O => CONV2_Mram_Y22
    );
  Mmux_SSEG_CA47 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y87",
      INIT => X"A8004800"
    )
    port map (
      ADR3 => Mmux_SSEG_CA19_0,
      ADR2 => hexval_24_9119,
      ADR0 => hexval_25_9120,
      ADR4 => hexval_27_9118,
      ADR1 => hexval_26_9117,
      O => Mmux_SSEG_CA47_pack_2
    );
  Mmux_SSEG_CA48 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y87",
      INIT => X"FFFFFFFFA400C000"
    )
    port map (
      ADR3 => Mmux_SSEG_CA18,
      ADR4 => hexval_12_9083,
      ADR2 => hexval_13_9084,
      ADR0 => hexval_15_9085,
      ADR1 => hexval_14_9082,
      ADR5 => Mmux_SSEG_CA47_9510,
      O => Mmux_SSEG_CA48_9186
    );
  Mmux_SSEG_CA425 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y87",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => hexval_22_9129,
      ADR4 => hexval_23_9130,
      O => Mmux_SSEG_CA425_9509
    );
  Mmux_SSEG_CA426 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y87",
      INIT => X"0000C0000A0ACA0A"
    )
    port map (
      ADR2 => Val(2),
      ADR5 => hexval_20_9128,
      ADR0 => Mmux_SSEG_CA425_9509,
      ADR4 => hexval_4_9061,
      ADR3 => hexval_7_9060,
      ADR1 => hexval_6_9062,
      O => Mmux_SSEG_CA426_9463
    );
  Mmux_SSEG_CA125_Mmux_SSEG_CA125_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA10_pack_6,
      O => Mmux_SSEG_CA10
    );
  Mmux_SSEG_CA126 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y88",
      INIT => X"F000F800F000FC00"
    )
    port map (
      ADR3 => Mmux_SSEG_CA110,
      ADR4 => hexval_19_8513,
      ADR1 => hexval_16_8511,
      ADR0 => hexval_17_8514,
      ADR5 => hexval_18_8512,
      ADR2 => CONV4_Mram_Y22,
      O => Mmux_SSEG_CA125_9474
    );
  Mmux_SSEG_CA141 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y88",
      INIT => X"2000082220000822"
    )
    port map (
      ADR0 => Mmux_SSEG_CA19_0,
      ADR3 => hexval_26_9117,
      ADR1 => hexval_27_9118,
      ADR2 => hexval_24_9119,
      ADR4 => hexval_25_9120,
      ADR5 => '1',
      O => Mmux_SSEG_CA14
    );
  Mmux_SSEG_CA101 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y88",
      INIT => X"202022A0"
    )
    port map (
      ADR0 => Mmux_SSEG_CA19_0,
      ADR3 => hexval_26_9117,
      ADR1 => hexval_27_9118,
      ADR2 => hexval_24_9119,
      ADR4 => hexval_25_9120,
      O => Mmux_SSEG_CA10_pack_6
    );
  Mmux_SSEG_CA142 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y88",
      INIT => X"FFFFFFFF24000300"
    )
    port map (
      ADR3 => Mmux_SSEG_CA18,
      ADR4 => hexval_14_9082,
      ADR1 => hexval_15_9085,
      ADR0 => hexval_12_9083,
      ADR2 => hexval_13_9084,
      ADR5 => Mmux_SSEG_CA14,
      O => Mmux_SSEG_CA141_9116
    );
  Mmux_SSEG_CA102 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y88",
      INIT => X"FFFF232AFFFF0000"
    )
    port map (
      ADR5 => Mmux_SSEG_CA18,
      ADR0 => hexval_12_9083,
      ADR3 => hexval_14_9082,
      ADR2 => hexval_13_9084,
      ADR1 => hexval_15_9085,
      ADR4 => Mmux_SSEG_CA10,
      O => Mmux_SSEG_CA101_9115
    );
  Mmux_SSEG_CA83_Mmux_SSEG_CA83_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA8125_2278,
      O => Mmux_SSEG_CA8125_0
    );
  Mmux_SSEG_CA83_Mmux_SSEG_CA83_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA8123_pack_6,
      O => Mmux_SSEG_CA8123_9513
    );
  Mmux_SSEG_CA84 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y89",
      INIT => X"8080200080802000"
    )
    port map (
      ADR2 => hexval_25_9120,
      ADR0 => Mmux_SSEG_CA19_0,
      ADR4 => hexval_24_9119,
      ADR1 => hexval_26_9117,
      ADR3 => hexval_27_9118,
      ADR5 => '1',
      O => Mmux_SSEG_CA83_9514
    );
  Mmux_SSEG_CA8125 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y89",
      INIT => X"00020008"
    )
    port map (
      ADR2 => hexval_25_9120,
      ADR0 => Mmux_SSEG_CA19_0,
      ADR4 => hexval_24_9119,
      ADR1 => hexval_26_9117,
      ADR3 => hexval_27_9118,
      O => Mmux_SSEG_CA8125_2278
    );
  Mmux_SSEG_CA85 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y89",
      INIT => X"FCCCCCECCCCCCCCC"
    )
    port map (
      ADR2 => hexval_21_9126,
      ADR5 => Mmux_SSEG_CA17,
      ADR3 => hexval_20_9128,
      ADR4 => hexval_22_9129,
      ADR0 => hexval_23_9130,
      ADR1 => Mmux_SSEG_CA83_9514,
      O => Mmux_SSEG_CA84_9125
    );
  Mmux_SSEG_CA86 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y89",
      INIT => X"9800000098000000"
    )
    port map (
      ADR4 => hexval_13_9084,
      ADR3 => Mmux_SSEG_CA18,
      ADR0 => hexval_12_9083,
      ADR1 => hexval_14_9082,
      ADR2 => hexval_15_9085,
      ADR5 => '1',
      O => Mmux_SSEG_CA85_9188
    );
  Mmux_SSEG_CA8123 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y89",
      INIT => X"00000600"
    )
    port map (
      ADR4 => hexval_13_9084,
      ADR3 => Mmux_SSEG_CA18,
      ADR0 => hexval_12_9083,
      ADR1 => hexval_14_9082,
      ADR2 => hexval_15_9085,
      O => Mmux_SSEG_CA8123_pack_6
    );
  Mmux_SSEG_CA8124 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y89",
      INIT => X"FF00FF04FF04FF00"
    )
    port map (
      ADR1 => Mmux_SSEG_CA17,
      ADR0 => hexval_21_9126,
      ADR2 => hexval_23_9130,
      ADR5 => hexval_20_9128,
      ADR4 => hexval_22_9129,
      ADR3 => Mmux_SSEG_CA8123_9513,
      O => Mmux_SSEG_CA8124_8903
    );
  Mmux_SSEG_CA24 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y86",
      INIT => X"FF20FF00FF00FF00"
    )
    port map (
      ADR3 => Mmux_SSEG_CA22_0,
      ADR4 => hexval_25_9120,
      ADR2 => hexval_24_9119,
      ADR1 => hexval_26_9117,
      ADR0 => hexval_27_9118,
      ADR5 => Mmux_SSEG_CA19_0,
      O => Mmux_SSEG_CA23_9490
    );
  Mmux_SSEG_CA1214 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y86",
      INIT => X"FFFF0080FFFF0000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA1212_9170,
      ADR1 => hexval_26_9117,
      ADR2 => hexval_24_9119,
      ADR3 => hexval_25_9120,
      ADR0 => hexval_27_9118,
      ADR5 => Mmux_SSEG_CA19_0,
      O => Mmux_SSEG_CA1213_9487
    );
  Mmux_SSEG_CA82_Mmux_SSEG_CA82_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA24_2301,
      O => Mmux_SSEG_CA24_0
    );
  Mmux_SSEG_CA83 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y88",
      INIT => X"A1420000A1420000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA110,
      ADR2 => hexval_17_8514,
      ADR0 => hexval_16_8511,
      ADR3 => hexval_18_8512,
      ADR1 => hexval_19_8513,
      ADR5 => '1',
      O => Mmux_SSEG_CA82_9123
    );
  Mmux_SSEG_CA25 : X_LUT5
    generic map(
      LOC => "SLICE_X31Y88",
      INIT => X"01820000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA110,
      ADR2 => hexval_17_8514,
      ADR0 => hexval_16_8511,
      ADR3 => hexval_18_8512,
      ADR1 => hexval_19_8513,
      O => Mmux_SSEG_CA24_2301
    );
  hexval_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_7_CLK,
      I => hexval_31_SW_4_MUX_269_o,
      O => hexval_7_9060,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_269_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"DD888888DD888888"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR0 => BTN_2_IBUF_9148,
      ADR3 => BTN_1_IBUF_9150,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_7_0,
      ADR1 => SW_4_reg_file_31_31_wide_mux_5_OUT_7_0,
      O => hexval_31_SW_4_MUX_269_o
    );
  hexval_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_6_CLK,
      I => hexval_31_SW_4_MUX_272_o,
      O => hexval_6_9062,
      RST => GND,
      SET => GND
    );
  BTN_2_BTN_1_OR_3_o_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"FFEEFFEEFFEEFFEE"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => BTN_2_IBUF_9148,
      ADR1 => LED_15_OBUF_9149,
      ADR3 => BTN_1_IBUF_9150,
      ADR5 => '1',
      O => BTN_2_BTN_1_OR_3_o
    );
  Mmux_hexval_31_SW_4_MUX_272_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"FAAA5000"
    )
    port map (
      ADR2 => SW_6_datamemory_127_31_wide_mux_3_OUT_6_0,
      ADR4 => SW_4_reg_file_31_31_wide_mux_5_OUT_6_0,
      ADR0 => BTN_2_IBUF_9148,
      ADR1 => '1',
      ADR3 => BTN_1_IBUF_9150,
      O => hexval_31_SW_4_MUX_272_o
    );
  hexval_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_5_CLK,
      I => hexval_31_SW_4_MUX_275_o,
      O => hexval_5_9059,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_275_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"CCCCAA00CCCCAA00"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => BTN_2_IBUF_9148,
      ADR3 => BTN_1_IBUF_9150,
      ADR0 => SW_6_datamemory_127_31_wide_mux_3_OUT_5_0,
      ADR1 => SW_4_reg_file_31_31_wide_mux_5_OUT_5_0,
      O => hexval_31_SW_4_MUX_275_o
    );
  hexval_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_4_CLK,
      I => hexval_31_SW_4_MUX_278_o,
      O => hexval_4_9061,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_278_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"FF0FF000FA0AFA0A"
    )
    port map (
      ADR1 => '1',
      ADR2 => BTN_2_IBUF_9148,
      ADR5 => BTN_1_IBUF_9150,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_4_0,
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR3 => SW_4_reg_file_31_31_wide_mux_5_OUT_4_0,
      O => hexval_31_SW_4_MUX_278_o
    );
  Mmux_SSEG_CA423_Mmux_SSEG_CA423_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA110_pack_7,
      O => Mmux_SSEG_CA110
    );
  Mmux_SSEG_CA423 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y86",
      INIT => X"0000000000080000"
    )
    port map (
      ADR1 => hexval_18_8512,
      ADR2 => hexval_16_8511,
      ADR5 => Val(1),
      ADR0 => Val(2),
      ADR3 => Val(0),
      ADR4 => hexval_19_8513,
      O => Mmux_SSEG_CA423_9462
    );
  Mmux_SSEG_CA181 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y86",
      INIT => X"0000AA000000AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => Val(2),
      ADR3 => Val(0),
      ADR4 => Val(1),
      ADR5 => '1',
      O => Mmux_SSEG_CA18
    );
  Mmux_SSEG_CA1101 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y86",
      INIT => X"000000AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => Val(2),
      ADR3 => Val(0),
      ADR4 => Val(1),
      O => Mmux_SSEG_CA110_pack_7
    );
  Mmux_SSEG_CA67 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y86",
      INIT => X"8888000000000808"
    )
    port map (
      ADR3 => '1',
      ADR1 => Mmux_SSEG_CA18,
      ADR2 => hexval_12_9083,
      ADR5 => hexval_14_9082,
      ADR4 => hexval_15_9085,
      ADR0 => hexval_13_9084,
      O => Mmux_SSEG_CA66_9185
    );
  Mmux_SSEG_CA1216 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y86",
      INIT => X"FF00FF00FF80FF00"
    )
    port map (
      ADR3 => Mmux_SSEG_CA1214_0,
      ADR1 => hexval_18_8512,
      ADR2 => hexval_16_8511,
      ADR5 => hexval_17_8514,
      ADR0 => hexval_19_8513,
      ADR4 => Mmux_SSEG_CA110,
      O => Mmux_SSEG_CA1215_9184
    );
  Mmux_SSEG_CA102_Mmux_SSEG_CA102_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA1214_2371,
      O => Mmux_SSEG_CA1214_0
    );
  Mmux_SSEG_CA103 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y87",
      INIT => X"008A0888008A0888"
    )
    port map (
      ADR0 => Mmux_SSEG_CA17,
      ADR1 => hexval_20_9128,
      ADR4 => hexval_22_9129,
      ADR2 => hexval_21_9126,
      ADR3 => hexval_23_9130,
      ADR5 => '1',
      O => Mmux_SSEG_CA102_9515
    );
  Mmux_SSEG_CA1215 : X_LUT5
    generic map(
      LOC => "SLICE_X30Y87",
      INIT => X"08000000"
    )
    port map (
      ADR0 => Mmux_SSEG_CA17,
      ADR1 => hexval_20_9128,
      ADR4 => hexval_22_9129,
      ADR2 => hexval_21_9126,
      ADR3 => hexval_23_9130,
      O => Mmux_SSEG_CA1214_2371
    );
  Mmux_SSEG_CA104 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y87",
      INIT => X"FF50FF10FF70FF00"
    )
    port map (
      ADR2 => Mmux_SSEG_CA16,
      ADR4 => hexval_8_8909,
      ADR5 => hexval_10_8908,
      ADR1 => hexval_9_8907,
      ADR0 => hexval_11_8906,
      ADR3 => Mmux_SSEG_CA102_9515,
      O => Mmux_SSEG_CA103_9142
    );
  hexval_11 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y71",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_11_CLK,
      I => hexval_31_SW_4_MUX_257_o,
      O => hexval_11_8906,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_257_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y71",
      INIT => X"FA50AA00FA50AA00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => BTN_2_IBUF_9148,
      ADR4 => BTN_1_IBUF_9150,
      ADR2 => SW_6_datamemory_127_31_wide_mux_3_OUT_11_0,
      ADR3 => SW_4_reg_file_31_31_wide_mux_5_OUT_11_0,
      O => hexval_31_SW_4_MUX_257_o
    );
  hexval_10 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y71",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_10_CLK,
      I => hexval_31_SW_4_MUX_260_o,
      O => hexval_10_8908,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_260_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y71",
      INIT => X"EAEA4040EAEA4040"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => BTN_2_IBUF_9148,
      ADR2 => BTN_1_IBUF_9150,
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_10_0,
      ADR4 => SW_4_reg_file_31_31_wide_mux_5_OUT_10_0,
      O => hexval_31_SW_4_MUX_260_o
    );
  hexval_9 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y71",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_9_CLK,
      I => hexval_31_SW_4_MUX_263_o,
      O => hexval_9_8907,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_263_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y71",
      INIT => X"F0F08888F0F08888"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => BTN_2_IBUF_9148,
      ADR0 => BTN_1_IBUF_9150,
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_9_0,
      ADR2 => SW_4_reg_file_31_31_wide_mux_5_OUT_9_0,
      O => hexval_31_SW_4_MUX_263_o
    );
  hexval_8 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y71",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_8_CLK,
      I => hexval_31_SW_4_MUX_266_o,
      O => hexval_8_8909,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_266_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y71",
      INIT => X"F0F08888F0F08888"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => BTN_2_IBUF_9148,
      ADR0 => BTN_1_IBUF_9150,
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_8_0,
      ADR2 => SW_4_reg_file_31_31_wide_mux_5_OUT_8_0,
      O => hexval_31_SW_4_MUX_266_o
    );
  hexval_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y80",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_3_CLK,
      I => hexval_31_SW_4_MUX_281_o,
      O => hexval_3_9104,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_281_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y80",
      INIT => X"F5F5E4E4B1B1A0A0"
    )
    port map (
      ADR3 => '1',
      ADR0 => BTN_2_IBUF_9148,
      ADR1 => BTN_1_IBUF_9150,
      ADR5 => SW_6_datamemory_127_31_wide_mux_3_OUT_3_0,
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR2 => SW_4_reg_file_31_31_wide_mux_5_OUT_3_0,
      O => hexval_31_SW_4_MUX_281_o
    );
  hexval_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y80",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_2_CLK,
      I => hexval_31_SW_4_MUX_284_o,
      O => hexval_2_9102,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_284_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y80",
      INIT => X"FAFA5050EEEE4444"
    )
    port map (
      ADR3 => '1',
      ADR0 => BTN_2_IBUF_9148,
      ADR5 => BTN_1_IBUF_9150,
      ADR2 => SW_6_datamemory_127_31_wide_mux_3_OUT_2_0,
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR4 => SW_4_reg_file_31_31_wide_mux_5_OUT_2_0,
      O => hexval_31_SW_4_MUX_284_o
    );
  hexval_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y80",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_1_CLK,
      I => hexval_31_SW_4_MUX_287_o,
      O => hexval_1_9105,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_287_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y80",
      INIT => X"AAAACFC0AAAACFC0"
    )
    port map (
      ADR5 => '1',
      ADR4 => BTN_2_IBUF_9148,
      ADR2 => BTN_1_IBUF_9150,
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_1_0,
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR0 => SW_4_reg_file_31_31_wide_mux_5_OUT_1_0,
      O => hexval_31_SW_4_MUX_287_o
    );
  hexval_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y80",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_0_CLK,
      I => hexval_31_SW_4_MUX_290_o,
      O => hexval_0_9103,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_290_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y80",
      INIT => X"FFFFCACA0000CACA"
    )
    port map (
      ADR3 => '1',
      ADR4 => BTN_2_IBUF_9148,
      ADR2 => BTN_1_IBUF_9150,
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_0_0,
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR5 => SW_4_reg_file_31_31_wide_mux_5_OUT_0_0,
      O => hexval_31_SW_4_MUX_290_o
    );
  SSEG_AN_6_OBUF_SSEG_AN_6_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_7_OBUF_2429,
      O => SSEG_AN_7_OBUF_0
    );
  Mram_SSEG_AN61 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y81",
      INIT => X"FFFFEEFFFFFFEEFF"
    )
    port map (
      ADR2 => '1',
      ADR4 => Val(3),
      ADR0 => Val(2),
      ADR3 => Val(1),
      ADR1 => Val(0),
      ADR5 => '1',
      O => SSEG_AN_6_OBUF_9132
    );
  Mram_SSEG_AN71 : X_LUT5
    generic map(
      LOC => "SLICE_X37Y81",
      INIT => X"FFFFFFBB"
    )
    port map (
      ADR2 => '1',
      ADR4 => Val(3),
      ADR0 => Val(2),
      ADR3 => Val(1),
      ADR1 => Val(0),
      O => SSEG_AN_7_OBUF_2429
    );
  hexval_15 : X_LATCHE
    generic map(
      LOC => "SLICE_X38Y78",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_15_CLK,
      I => hexval_31_SW_4_MUX_245_o,
      O => hexval_15_9085,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_245_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y78",
      INIT => X"AAAACC00AAAACC00"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => BTN_2_IBUF_9148,
      ADR1 => BTN_1_IBUF_9150,
      ADR3 => SW_6_datamemory_127_31_wide_mux_3_OUT_15_0,
      ADR0 => SW_4_reg_file_31_31_wide_mux_5_OUT_15_0,
      O => hexval_31_SW_4_MUX_245_o
    );
  hexval_14 : X_LATCHE
    generic map(
      LOC => "SLICE_X38Y78",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_14_CLK,
      I => hexval_31_SW_4_MUX_248_o,
      O => hexval_14_9082,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_248_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y78",
      INIT => X"AAAAC0C0AAAAC0C0"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => BTN_2_IBUF_9148,
      ADR1 => BTN_1_IBUF_9150,
      ADR2 => SW_6_datamemory_127_31_wide_mux_3_OUT_14_0,
      ADR0 => SW_4_reg_file_31_31_wide_mux_5_OUT_14_0,
      O => hexval_31_SW_4_MUX_248_o
    );
  hexval_13 : X_LATCHE
    generic map(
      LOC => "SLICE_X38Y78",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_13_CLK,
      I => hexval_31_SW_4_MUX_251_o,
      O => hexval_13_9084,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_251_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y78",
      INIT => X"FA50AA00FA50AA00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => BTN_2_IBUF_9148,
      ADR2 => BTN_1_IBUF_9150,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_13_0,
      ADR3 => SW_4_reg_file_31_31_wide_mux_5_OUT_13_0,
      O => hexval_31_SW_4_MUX_251_o
    );
  hexval_12 : X_LATCHE
    generic map(
      LOC => "SLICE_X38Y78",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_12_CLK,
      I => hexval_31_SW_4_MUX_254_o,
      O => hexval_12_9083,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_254_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y78",
      INIT => X"D8D88888D8D88888"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => BTN_2_IBUF_9148,
      ADR2 => BTN_1_IBUF_9150,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_12_0,
      ADR1 => SW_4_reg_file_31_31_wide_mux_5_OUT_12_0,
      O => hexval_31_SW_4_MUX_254_o
    );
  hexval_23 : X_LATCHE
    generic map(
      LOC => "SLICE_X40Y87",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_23_CLK,
      I => hexval_31_SW_4_MUX_221_o,
      O => hexval_23_9130,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_221_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y87",
      INIT => X"CACAC0C0CACAC0C0"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => BTN_2_IBUF_9148,
      ADR0 => BTN_1_IBUF_9150,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_23_0,
      ADR1 => SW_4_reg_file_31_31_wide_mux_5_OUT_23_0,
      O => hexval_31_SW_4_MUX_221_o
    );
  hexval_22 : X_LATCHE
    generic map(
      LOC => "SLICE_X40Y87",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_22_CLK,
      I => hexval_31_SW_4_MUX_224_o,
      O => hexval_22_9129,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_224_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y87",
      INIT => X"EE22CC00EE22CC00"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => BTN_2_IBUF_9148,
      ADR0 => BTN_1_IBUF_9150,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_22_0,
      ADR3 => SW_4_reg_file_31_31_wide_mux_5_OUT_22_0,
      O => hexval_31_SW_4_MUX_224_o
    );
  hexval_21 : X_LATCHE
    generic map(
      LOC => "SLICE_X40Y87",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_21_CLK,
      I => hexval_31_SW_4_MUX_227_o,
      O => hexval_21_9126,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_227_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y87",
      INIT => X"D8D8D8D888888888"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => BTN_2_IBUF_9148,
      ADR2 => BTN_1_IBUF_9150,
      ADR5 => SW_6_datamemory_127_31_wide_mux_3_OUT_21_0,
      ADR1 => SW_4_reg_file_31_31_wide_mux_5_OUT_21_0,
      O => hexval_31_SW_4_MUX_227_o
    );
  hexval_20 : X_LATCHE
    generic map(
      LOC => "SLICE_X40Y87",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_20_CLK,
      I => hexval_31_SW_4_MUX_230_o,
      O => hexval_20_9128,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_230_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y87",
      INIT => X"E4E4A0A0E4E4A0A0"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => BTN_2_IBUF_9148,
      ADR4 => BTN_1_IBUF_9150,
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_20_0,
      ADR2 => SW_4_reg_file_31_31_wide_mux_5_OUT_20_0,
      O => hexval_31_SW_4_MUX_230_o
    );
  N584_N584_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N588,
      O => N588_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y63",
      INIT => X"CFC0CFC0CFC0CFC0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_4(7),
      ADR1 => DMemoryPort_DMem_12(7),
      ADR5 => '1',
      O => N584
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X42Y63",
      INIT => X"FAFA0A0A"
    )
    port map (
      ADR0 => DMemoryPort_DMem_4(6),
      ADR4 => DMemoryPort_DMem_12(6),
      ADR2 => LED_3_OBUF_8283,
      ADR3 => '1',
      ADR1 => '1',
      O => N588
    );
  DMemoryPort_mux29_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y62",
      INIT => X"CDFFFDFFCDFFFDFF"
    )
    port map (
      ADR5 => '1',
      ADR3 => DMemoryPort_DMem_4(7),
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N45
    );
  DMemoryPort_DMem_12_10 : X_FF
    generic map(
      LOC => "SLICE_X44Y63",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_10_CLK,
      I => DMemoryPort_DMem_12_10_dpot_2531,
      O => DMemoryPort_DMem_12(10),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X44Y63",
      INIT => X"0000F0F00088F0F0"
    )
    port map (
      ADR1 => IDecodePort_Reg_array_4(10),
      ADR3 => IDecodePort_write_register_address(0),
      ADR5 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_12(10),
      ADR0 => IFetchPort_Mram_Instruction18,
      ADR4 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_10_dpot_2531
    );
  DMemoryPort_DMem_12_9 : X_FF
    generic map(
      LOC => "SLICE_X44Y63",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_9_CLK,
      I => DMemoryPort_DMem_12_9_dpot_2521,
      O => DMemoryPort_DMem_12(9),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X44Y63",
      INIT => X"0000CCCC00A0CCCC"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(9),
      ADR5 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_12(9),
      ADR0 => IFetchPort_Mram_Instruction18,
      ADR4 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_9_dpot_2521
    );
  DMemoryPort_DMem_12_8 : X_FF
    generic map(
      LOC => "SLICE_X44Y63",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_8_CLK,
      I => DMemoryPort_DMem_12_8_dpot_2513,
      O => DMemoryPort_DMem_12(8),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X44Y63",
      INIT => X"4444444444E44444"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(8),
      ADR3 => IDecodePort_write_register_address(0),
      ADR5 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_12(8),
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR0 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_8_dpot_2513
    );
  DMemoryPort_DMem_12_7 : X_FF
    generic map(
      LOC => "SLICE_X44Y63",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_7_CLK,
      I => DMemoryPort_DMem_12_7_dpot_2505,
      O => DMemoryPort_DMem_12(7),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X44Y63",
      INIT => X"505050D850505050"
    )
    port map (
      ADR5 => IDecodePort_Reg_array_4(7),
      ADR4 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_12(7),
      ADR1 => IFetchPort_Mram_Instruction18,
      ADR0 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_7_dpot_2505
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y64",
      INIT => X"03FF03FFF3FFF3FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => DMemoryPort_DMem_2(8),
      ADR2 => LED_3_OBUF_8283,
      ADR5 => DMemoryPort_DMem_10(8),
      ADR3 => LED_1_OBUF_8285,
      O => N516
    );
  DMemoryPort_DMem_10_11 : X_FF
    generic map(
      LOC => "SLICE_X44Y65",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_11_CLK,
      I => DMemoryPort_DMem_10_11_dpot_2541,
      O => DMemoryPort_DMem_10(11),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X44Y65",
      INIT => X"FFFF0000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_10(11),
      ADR4 => IDecodePort_Mmux_read_data2_42,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_11_dpot_2541
    );
  DMemoryPort_DMem_10_10 : X_FF
    generic map(
      LOC => "SLICE_X44Y65",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_10_CLK,
      I => DMemoryPort_DMem_10_10_dpot_2562,
      O => DMemoryPort_DMem_10(10),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X44Y65",
      INIT => X"00500000CCCCCCCC"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(10),
      ADR0 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_10(10),
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_10_dpot_2562
    );
  DMemoryPort_DMem_10_9 : X_FF
    generic map(
      LOC => "SLICE_X44Y65",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_9_CLK,
      I => DMemoryPort_DMem_10_9_dpot_2560,
      O => DMemoryPort_DMem_10(9),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X44Y65",
      INIT => X"000A0000CCCCCCCC"
    )
    port map (
      ADR0 => IDecodePort_Reg_array_4(9),
      ADR2 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_10(9),
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_9_dpot_2560
    );
  DMemoryPort_DMem_10_8 : X_FF
    generic map(
      LOC => "SLICE_X44Y65",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_8_CLK,
      I => DMemoryPort_DMem_10_8_dpot_2553,
      O => DMemoryPort_DMem_10(8),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X44Y65",
      INIT => X"00AA00AA00AAC0AA"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(8),
      ADR4 => IDecodePort_write_register_address(0),
      ADR5 => IFetchPort_Mram_Instruction17,
      ADR0 => DMemoryPort_DMem_10(8),
      ADR1 => IFetchPort_Mram_Instruction18,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_8_dpot_2553
    );
  DMemoryPort_mux1_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y68",
      INIT => X"FFFF22FFFFFF77FF"
    )
    port map (
      ADR2 => '1',
      ADR3 => DMemoryPort_DMem_12(10),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N187
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y70",
      INIT => X"5F5F5F5F0F0FFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => DMemoryPort_DMem_2(11),
      ADR5 => LED_3_OBUF_8283,
      ADR0 => DMemoryPort_DMem_10(11),
      ADR2 => LED_1_OBUF_8285,
      O => N510
    );
  DMemoryPort_DMem_4_10 : X_FF
    generic map(
      LOC => "SLICE_X45Y63",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_10_CLK,
      I => DMemoryPort_DMem_4_10_dpot_2612,
      O => DMemoryPort_DMem_4(10),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X45Y63",
      INIT => X"0000F0F02200F0F0"
    )
    port map (
      ADR3 => IDecodePort_Reg_array_4(10),
      ADR1 => IDecodePort_write_register_address(0),
      ADR5 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_4(10),
      ADR0 => IFetchPort_Mram_Instruction18,
      ADR4 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_10_dpot_2612
    );
  DMemoryPort_DMem_4_9 : X_FF
    generic map(
      LOC => "SLICE_X45Y63",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_9_CLK,
      I => DMemoryPort_DMem_4_9_dpot_2602,
      O => DMemoryPort_DMem_4(9),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X45Y63",
      INIT => X"0000CCCC00A0CCCC"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(9),
      ADR3 => IDecodePort_write_register_address(0),
      ADR5 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_4(9),
      ADR0 => IFetchPort_Mram_Instruction18,
      ADR4 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_9_dpot_2602
    );
  DMemoryPort_DMem_4_8 : X_FF
    generic map(
      LOC => "SLICE_X45Y63",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_8_CLK,
      I => DMemoryPort_DMem_4_8_dpot_2594,
      O => DMemoryPort_DMem_4(8),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X45Y63",
      INIT => X"0C0C0C0C0CAC0C0C"
    )
    port map (
      ADR0 => IDecodePort_Reg_array_4(8),
      ADR5 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_4(8),
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR2 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_8_dpot_2594
    );
  DMemoryPort_DMem_4_7 : X_FF
    generic map(
      LOC => "SLICE_X45Y63",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_7_CLK,
      I => DMemoryPort_DMem_4_7_dpot_2586,
      O => DMemoryPort_DMem_4(7),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X45Y63",
      INIT => X"0A0A0A0A0ACA0A0A"
    )
    port map (
      ADR1 => IDecodePort_Reg_array_4(7),
      ADR5 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR0 => DMemoryPort_DMem_4(7),
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR2 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_7_dpot_2586
    );
  N580_N580_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N582,
      O => N582_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y64",
      INIT => X"FA0AFA0AFA0AFA0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => LED_3_OBUF_8283,
      ADR0 => DMemoryPort_DMem_4(9),
      ADR3 => DMemoryPort_DMem_12(9),
      ADR5 => '1',
      O => N580
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X45Y64",
      INIT => X"FCFC0C0C"
    )
    port map (
      ADR1 => DMemoryPort_DMem_4(8),
      ADR4 => DMemoryPort_DMem_12(8),
      ADR2 => LED_3_OBUF_8283,
      ADR3 => '1',
      ADR0 => '1',
      O => N582
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y64",
      INIT => X"55FF33FF55FF33FF"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_2(9),
      ADR4 => LED_3_OBUF_8283,
      ADR0 => DMemoryPort_DMem_10(9),
      ADR3 => LED_1_OBUF_8285,
      O => N514
    );
  DMemoryPort_mux1_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y68",
      INIT => X"FFFF0F3FFFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR2 => DMemoryPort_DMem_4(10),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR3 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N185
    );
  N574_N574_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_6_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_6_0
    );
  N574_N574_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N578,
      O => N578_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_6_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y70"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_6_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_6_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_6_41 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y70",
      INIT => X"0000000011000000"
    )
    port map (
      ADR2 => '1',
      ADR0 => LED_1_OBUF_8285,
      ADR3 => LED_2_OBUF_8362,
      ADR1 => LED_0_OBUF_8361,
      ADR4 => IDecodePort_Reg_array_4(6),
      ADR5 => LED_3_OBUF_8283,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_6_4
    );
  DMemoryPort_mux10_10_87_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X45Y70",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_87_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y70",
      INIT => X"CCF0CCF0CCF0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => LED_3_OBUF_8283,
      ADR2 => DMemoryPort_DMem_4(12),
      ADR1 => DMemoryPort_DMem_12(12),
      ADR5 => '1',
      O => N574
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X45Y70",
      INIT => X"FFAA00AA"
    )
    port map (
      ADR0 => DMemoryPort_DMem_4(10),
      ADR4 => DMemoryPort_DMem_12(10),
      ADR3 => LED_3_OBUF_8283,
      ADR2 => '1',
      ADR1 => '1',
      O => N578
    );
  DMemoryPort_DMem_10_7 : X_FF
    generic map(
      LOC => "SLICE_X47Y61",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_7_CLK,
      I => DMemoryPort_DMem_10_7_dpot_2651,
      O => DMemoryPort_DMem_10(7),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X47Y61",
      INIT => X"505050D850505050"
    )
    port map (
      ADR1 => IDecodePort_Reg_array_4(7),
      ADR4 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_10(7),
      ADR5 => IFetchPort_Mram_Instruction18,
      ADR0 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_7_dpot_2651
    );
  DMemoryPort_DMem_10_6 : X_FF
    generic map(
      LOC => "SLICE_X47Y61",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_6_CLK,
      I => DMemoryPort_DMem_10_6_dpot_2661,
      O => DMemoryPort_DMem_10(6),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X47Y61",
      INIT => X"444444E444444444"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(6),
      ADR4 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_10(6),
      ADR5 => IFetchPort_Mram_Instruction18,
      ADR0 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_6_dpot_2661
    );
  DMemoryPort_DMem_10_5 : X_FF
    generic map(
      LOC => "SLICE_X47Y61",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_5_CLK,
      I => DMemoryPort_DMem_10_5_dpot_2669,
      O => DMemoryPort_DMem_10(5),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X47Y61",
      INIT => X"00CC50CC00CC00CC"
    )
    port map (
      ADR5 => IDecodePort_Reg_array_4(5),
      ADR4 => IDecodePort_write_register_address(0),
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_10(5),
      ADR2 => IFetchPort_Mram_Instruction18,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_5_dpot_2669
    );
  DMemoryPort_DMem_10_4 : X_FF
    generic map(
      LOC => "SLICE_X47Y61",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_4_CLK,
      I => DMemoryPort_DMem_10_4_dpot_2677,
      O => DMemoryPort_DMem_10(4),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X47Y61",
      INIT => X"CCCCF0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_10(4),
      ADR1 => IDecodePort_Mmux_read_data2_426,
      ADR4 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_4_dpot_2677
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y62",
      INIT => X"73737F7F73737F7F"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => DMemoryPort_DMem_2(7),
      ADR2 => LED_3_OBUF_8283,
      ADR0 => DMemoryPort_DMem_10(7),
      ADR1 => LED_1_OBUF_8285,
      O => N518
    );
  DMemoryPort_mux30_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y63",
      INIT => X"F7F5F7FFF7F5F7FF"
    )
    port map (
      ADR5 => '1',
      ADR0 => DMemoryPort_DMem_12(8),
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR3 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => ALUResult(0),
      O => N42
    );
  DMemoryPort_mux31_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y63",
      INIT => X"FAFFFAF0FFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR3 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_2(9),
      ADR2 => ALUResult(0),
      O => N36
    );
  DMemoryPort_mux31_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y64",
      INIT => X"FFFBFFFBBFBBBFBB"
    )
    port map (
      ADR4 => '1',
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => DMemoryPort_DMem_10(9),
      ADR0 => ALUResult(0),
      O => N38
    );
  DMemoryPort_mux1_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y64",
      INIT => X"FEFEAEAEFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_10(10),
      ADR0 => ALUResult(0),
      O => N188
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y65",
      INIT => X"33FF55FF33FF55FF"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR0 => DMemoryPort_DMem_2(10),
      ADR4 => LED_3_OBUF_8283,
      ADR1 => DMemoryPort_DMem_10(10),
      ADR3 => LED_1_OBUF_8285,
      O => N512
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y61",
      INIT => X"1F1F1F1FBFBFBFBF"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => DMemoryPort_DMem_2(5),
      ADR0 => LED_3_OBUF_8283,
      ADR5 => DMemoryPort_DMem_10(5),
      ADR2 => LED_1_OBUF_8285,
      O => N524
    );
  DMemoryPort_DMem_2_10 : X_FF
    generic map(
      LOC => "SLICE_X46Y62",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_10_CLK,
      I => DMemoryPort_DMem_2_10_dpot_2752,
      O => DMemoryPort_DMem_2(10),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X46Y62",
      INIT => X"00F000F022F000F0"
    )
    port map (
      ADR4 => IDecodePort_Reg_array_4(10),
      ADR1 => IDecodePort_write_register_address(0),
      ADR5 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_2(10),
      ADR0 => IFetchPort_Mram_Instruction18,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_10_dpot_2752
    );
  DMemoryPort_DMem_2_9 : X_FF
    generic map(
      LOC => "SLICE_X46Y62",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_9_CLK,
      I => DMemoryPort_DMem_2_9_dpot_2742,
      O => DMemoryPort_DMem_2(9),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X46Y62",
      INIT => X"00CC00CC0ACC00CC"
    )
    port map (
      ADR0 => IDecodePort_Reg_array_4(9),
      ADR2 => IDecodePort_write_register_address(0),
      ADR5 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_2(9),
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_9_dpot_2742
    );
  DMemoryPort_DMem_2_8 : X_FF
    generic map(
      LOC => "SLICE_X46Y62",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_8_CLK,
      I => DMemoryPort_DMem_2_8_dpot_2734,
      O => DMemoryPort_DMem_2(8),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X46Y62",
      INIT => X"000A0000CCCCCCCC"
    )
    port map (
      ADR4 => IDecodePort_Reg_array_4(8),
      ADR2 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_2(8),
      ADR0 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_8_dpot_2734
    );
  DMemoryPort_DMem_2_7 : X_FF
    generic map(
      LOC => "SLICE_X46Y62",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_7_CLK,
      I => DMemoryPort_DMem_2_7_dpot_2726,
      O => DMemoryPort_DMem_2(7),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X46Y62",
      INIT => X"00000088F0F0F0F0"
    )
    port map (
      ADR0 => IDecodePort_Reg_array_4(7),
      ADR4 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_2(7),
      ADR1 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_7_dpot_2726
    );
  DMemoryPort_mux30_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y63",
      INIT => X"FCFCEEEEFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_2(8),
      ADR1 => ALUResult(0),
      O => N41
    );
  DMemoryPort_mux31_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y63",
      INIT => X"FFFFFFFF0FAF5FFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => DMemoryPort_DMem_12(9),
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => ALUResult(0),
      O => N37
    );
  DMemoryPort_mux30_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y63",
      INIT => X"FFFF1F1FFFFFBFBF"
    )
    port map (
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_4(8),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N40
    );
  DMemoryPort_mux30_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y64",
      INIT => X"FDFDFFFFFDFDDDDD"
    )
    port map (
      ADR3 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => DMemoryPort_DMem_10(8),
      ADR1 => ALUResult(0),
      O => N43
    );
  DMemoryPort_mux1_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y65",
      INIT => X"FFFFFFFFE2FFE2FF"
    )
    port map (
      ADR4 => '1',
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_2(10),
      ADR5 => ALUResult(0),
      O => N186
    );
  hexval_19 : X_LATCHE
    generic map(
      LOC => "SLICE_X46Y87",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_19_CLK,
      I => hexval_31_SW_4_MUX_233_o,
      O => hexval_19_8513,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_233_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y87",
      INIT => X"AAFFAA00AA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => BTN_2_IBUF_9148,
      ADR5 => BTN_1_IBUF_9150,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_19_0,
      ADR0 => SW_4_reg_file_31_31_wide_mux_5_OUT_19_0,
      O => hexval_31_SW_4_MUX_233_o
    );
  hexval_18 : X_LATCHE
    generic map(
      LOC => "SLICE_X46Y87",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_18_CLK,
      I => hexval_31_SW_4_MUX_236_o,
      O => hexval_18_8512,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_236_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y87",
      INIT => X"CCAACCAACC00CC00"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => BTN_2_IBUF_9148,
      ADR5 => BTN_1_IBUF_9150,
      ADR0 => SW_6_datamemory_127_31_wide_mux_3_OUT_18_0,
      ADR1 => SW_4_reg_file_31_31_wide_mux_5_OUT_18_0,
      O => hexval_31_SW_4_MUX_236_o
    );
  hexval_17 : X_LATCHE
    generic map(
      LOC => "SLICE_X46Y87",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_17_CLK,
      I => hexval_31_SW_4_MUX_239_o,
      O => hexval_17_8514,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_239_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y87",
      INIT => X"CCFFCC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => BTN_2_IBUF_9148,
      ADR5 => BTN_1_IBUF_9150,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_17_0,
      ADR1 => SW_4_reg_file_31_31_wide_mux_5_OUT_17_0,
      O => hexval_31_SW_4_MUX_239_o
    );
  hexval_16 : X_LATCHE
    generic map(
      LOC => "SLICE_X46Y87",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_16_CLK,
      I => hexval_31_SW_4_MUX_242_o,
      O => hexval_16_8511,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_242_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y87",
      INIT => X"FFFF0000F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => BTN_2_IBUF_9148,
      ADR3 => BTN_1_IBUF_9150,
      ADR2 => SW_6_datamemory_127_31_wide_mux_3_OUT_16_0,
      ADR4 => SW_4_reg_file_31_31_wide_mux_5_OUT_16_0,
      O => hexval_31_SW_4_MUX_242_o
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y61",
      INIT => X"33FF33FF00FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => DMemoryPort_DMem_2(6),
      ADR5 => LED_3_OBUF_8283,
      ADR1 => DMemoryPort_DMem_10(6),
      ADR3 => LED_1_OBUF_8285,
      O => N522
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y62",
      INIT => X"0F33FFFF0F33FFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => DMemoryPort_DMem_2(4),
      ADR3 => LED_3_OBUF_8283,
      ADR2 => DMemoryPort_DMem_10(4),
      ADR4 => LED_1_OBUF_8285,
      O => N520
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y72",
      INIT => X"22772277FFFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => DMemoryPort_DMem_2(12),
      ADR0 => LED_3_OBUF_8283,
      ADR1 => DMemoryPort_DMem_10(12),
      ADR5 => LED_1_OBUF_8285,
      O => N508
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y74",
      INIT => X"11FF11FFDDFFDDFF"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => DMemoryPort_DMem_2(14),
      ADR1 => LED_3_OBUF_8283,
      ADR5 => DMemoryPort_DMem_10(14),
      ADR3 => LED_1_OBUF_8285,
      O => N506
    );
  hexval_31 : X_LATCHE
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_31_CLK,
      I => hexval_31_SW_4_MUX_197_o,
      O => hexval_31_9112,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_197_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => X"CCFFCC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => BTN_2_IBUF_9148,
      ADR5 => BTN_1_IBUF_9150,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_31_0,
      ADR1 => SW_4_reg_file_31_31_wide_mux_5_OUT_31_0,
      O => hexval_31_SW_4_MUX_197_o
    );
  hexval_30 : X_LATCHE
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_30_CLK,
      I => hexval_31_SW_4_MUX_200_o,
      O => hexval_30_9114,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_200_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => X"FFCC00CCFF000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => BTN_2_IBUF_9148,
      ADR5 => BTN_1_IBUF_9150,
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_30_0,
      ADR4 => SW_4_reg_file_31_31_wide_mux_5_OUT_30_0,
      O => hexval_31_SW_4_MUX_200_o
    );
  hexval_29 : X_LATCHE
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_29_CLK,
      I => hexval_31_SW_4_MUX_203_o,
      O => hexval_29_9113,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_203_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => X"AAAAAAAACCCC0000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => BTN_2_IBUF_9148,
      ADR1 => BTN_1_IBUF_9150,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_29_0,
      ADR0 => SW_4_reg_file_31_31_wide_mux_5_OUT_29_0,
      O => hexval_31_SW_4_MUX_203_o
    );
  hexval_28 : X_LATCHE
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_28_CLK,
      I => hexval_31_SW_4_MUX_206_o,
      O => hexval_28_9111,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_206_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y86",
      INIT => X"F0F0F0F0CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => BTN_2_IBUF_9148,
      ADR3 => BTN_1_IBUF_9150,
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_28_0,
      ADR2 => SW_4_reg_file_31_31_wide_mux_5_OUT_28_0,
      O => hexval_31_SW_4_MUX_206_o
    );
  DMemoryPort_mux29_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y61",
      INIT => X"FFBFFFBFFBBBFBBB"
    )
    port map (
      ADR4 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => DMemoryPort_DMem_10(7),
      ADR0 => ALUResult(0),
      O => N48
    );
  DMemoryPort_mux28_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y61",
      INIT => X"FFFFBFB3FFFFBFB3"
    )
    port map (
      ADR5 => '1',
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => DMemoryPort_DMem_10(6),
      ADR4 => ALUResult(0),
      O => N53
    );
  DMemoryPort_mux29_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y62",
      INIT => X"FFFFEEFFCCFFEEFF"
    )
    port map (
      ADR2 => '1',
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_2(7),
      ADR1 => ALUResult(0),
      O => N46
    );
  DMemoryPort_mux29_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y63",
      INIT => X"F5FDF5FDF7FFF7FF"
    )
    port map (
      ADR4 => '1',
      ADR0 => DMemoryPort_DMem_12(7),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => ALUResult(0),
      O => N47
    );
  DMemoryPort_mux31_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y63",
      INIT => X"F5F5F3F3FFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR5 => DMemoryPort_DMem_4(9),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => ALUResult(0),
      O => N35
    );
  DMemoryPort_mux2_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y71",
      INIT => X"FFFFFFFFF7F7D5D5"
    )
    port map (
      ADR3 => '1',
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => DMemoryPort_DMem_2(11),
      ADR5 => ALUResult(0),
      O => N176
    );
  DMemoryPort_DMem_2_14 : X_FF
    generic map(
      LOC => "SLICE_X49Y72",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_14_CLK,
      I => DMemoryPort_DMem_2_14_dpot_2891,
      O => DMemoryPort_DMem_2(14),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X49Y72",
      INIT => X"FA50FA50FA50FA50"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => DMemoryPort_DMem_2(14),
      ADR3 => IDecodePort_Mmux_read_data2_45,
      ADR0 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_14_dpot_2891
    );
  DMemoryPort_DMem_2_13 : X_FF
    generic map(
      LOC => "SLICE_X49Y72",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_13_CLK,
      I => DMemoryPort_DMem_2_13_dpot_2898,
      O => DMemoryPort_DMem_2(13),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X49Y72",
      INIT => X"EE44EE44EE44EE44"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_2(13),
      ADR3 => IDecodePort_Mmux_read_data2_44,
      ADR0 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_13_dpot_2898
    );
  DMemoryPort_DMem_2_12 : X_FF
    generic map(
      LOC => "SLICE_X49Y72",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_12_CLK,
      I => DMemoryPort_DMem_2_12_dpot_2903,
      O => DMemoryPort_DMem_2(12),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X49Y72",
      INIT => X"0050CCCC0000CCCC"
    )
    port map (
      ADR5 => IDecodePort_Reg_array_4(12),
      ADR3 => IDecodePort_write_register_address(0),
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_2(12),
      ADR2 => IFetchPort_Mram_Instruction18,
      ADR4 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_12_dpot_2903
    );
  DMemoryPort_DMem_2_11 : X_FF
    generic map(
      LOC => "SLICE_X49Y72",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_11_CLK,
      I => DMemoryPort_DMem_2_11_dpot_2911,
      O => DMemoryPort_DMem_2(11),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X49Y72",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_2(11),
      ADR0 => IDecodePort_Mmux_read_data2_42,
      ADR4 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_11_dpot_2911
    );
  DMemoryPort_mux4_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y73",
      INIT => X"FFFFAFFFFFFFA0FF"
    )
    port map (
      ADR1 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_2(13),
      ADR4 => ALUResult(0),
      O => N166
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y74",
      INIT => X"00FFFFFF33FF33FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_2(13),
      ADR5 => LED_3_OBUF_8283,
      ADR4 => DMemoryPort_DMem_10(13),
      ADR3 => LED_1_OBUF_8285,
      O => N502
    );
  DMemoryPort_DMem_2_6 : X_FF
    generic map(
      LOC => "SLICE_X51Y61",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_6_CLK,
      I => DMemoryPort_DMem_2_6_dpot_2927,
      O => DMemoryPort_DMem_2(6),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y61",
      INIT => X"00440000F0F0F0F0"
    )
    port map (
      ADR1 => IDecodePort_Reg_array_4(6),
      ADR0 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_2(6),
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_6_dpot_2927
    );
  DMemoryPort_DMem_2_5 : X_FF
    generic map(
      LOC => "SLICE_X51Y61",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_5_CLK,
      I => DMemoryPort_DMem_2_5_dpot_2937,
      O => DMemoryPort_DMem_2(5),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y61",
      INIT => X"00500000CCCCCCCC"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(5),
      ADR0 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_2(5),
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_5_dpot_2937
    );
  DMemoryPort_DMem_2_4 : X_FF
    generic map(
      LOC => "SLICE_X51Y61",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_4_CLK,
      I => DMemoryPort_DMem_2_4_dpot_2945,
      O => DMemoryPort_DMem_2(4),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y61",
      INIT => X"FFCCFFCC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_2(4),
      ADR5 => IDecodePort_Mmux_read_data2_426,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_4_dpot_2945
    );
  DMemoryPort_DMem_2_3 : X_FF
    generic map(
      LOC => "SLICE_X51Y61",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_3_CLK,
      I => DMemoryPort_DMem_2_3_dpot_2950,
      O => DMemoryPort_DMem_2(3),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y61",
      INIT => X"B8B8B8B8B8B8B8B8"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_2(3),
      ADR0 => IDecodePort_Mmux_read_data2_425,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_3_dpot_2950
    );
  DMemoryPort_mux28_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y63",
      INIT => X"FFFFFFFF0F5FAFFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => DMemoryPort_DMem_4(6),
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => ALUResult(0),
      O => N50
    );
  DMemoryPort_mux28_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y63",
      INIT => X"FF3FFF5FFF3FFF5F"
    )
    port map (
      ADR5 => '1',
      ADR2 => DMemoryPort_DMem_12(6),
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N52
    );
  ALUPort_Mmux_B_input210 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y63",
      INIT => X"0000000000400000"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(10),
      ADR5 => ControlUnitPort_NextPCSignal(4),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR4 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      O => ALUPort_B_input(10)
    );
  DMemoryPort_mux31_82 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => X"028A139B46CE57DF"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR0 => ALUResult_1_0,
      ADR5 => N37,
      ADR3 => N38,
      ADR4 => N35,
      ADR2 => N36,
      O => DMemoryPort_mux31_82_9517
    );
  IDecodePort_Reg_array_4_9 : X_FF
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_9_CLK,
      I => Write_data(9),
      O => IDecodePort_Reg_array_4(9),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data326 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => X"00FF0000E2E2E2E2"
    )
    port map (
      ADR1 => ALUop(2),
      ADR5 => DMemRead,
      ADR0 => Mmux_Write_data32_8684,
      ADR2 => Mmux_Write_data324_8805,
      ADR3 => N206,
      ADR4 => DMemoryPort_mux31_82_9517,
      O => Write_data(9)
    );
  DMemoryPort_mux30_82 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => X"110CDD0C113FDD3F"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR3 => ALUResult_1_0,
      ADR2 => N42,
      ADR4 => N43,
      ADR5 => N40,
      ADR0 => N41,
      O => DMemoryPort_mux30_82_9516
    );
  IDecodePort_Reg_array_4_8 : X_FF
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_8_CLK,
      I => Write_data(8),
      O => IDecodePort_Reg_array_4(8),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data316 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => X"5500F0F05500FCFC"
    )
    port map (
      ADR4 => DMemRead,
      ADR1 => Mmux_Write_data314_8476,
      ADR5 => ALUop(2),
      ADR2 => Mmux_Write_data313_8477,
      ADR0 => N206,
      ADR3 => DMemoryPort_mux30_82_9516,
      O => Write_data(8)
    );
  DMemoryPort_DMem_4_6_DMemoryPort_DMem_4_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N586,
      O => N586_0
    );
  DMemoryPort_DMem_4_6 : X_FF
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_6_CLK,
      I => DMemoryPort_DMem_4_6_dpot_3006,
      O => DMemoryPort_DMem_4(6),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => X"505050D850505050"
    )
    port map (
      ADR1 => IDecodePort_Reg_array_4(6),
      ADR4 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_4(6),
      ADR5 => IFetchPort_Mram_Instruction18,
      ADR0 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_6_dpot_3006
    );
  DMemoryPort_DMem_4_5 : X_FF
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_5_CLK,
      I => DMemoryPort_DMem_4_5_dpot_3016,
      O => DMemoryPort_DMem_4(5),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => X"444444E444444444"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(5),
      ADR4 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_4(5),
      ADR5 => IFetchPort_Mram_Instruction18,
      ADR0 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_5_dpot_3016
    );
  DMemoryPort_DMem_4_4 : X_FF
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_4_CLK,
      I => DMemoryPort_DMem_4_4_dpot_3024,
      O => DMemoryPort_DMem_4(4),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => X"AAAACCCCAAAACCCC"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_426,
      ADR1 => DMemoryPort_DMem_4(4),
      ADR4 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_4_dpot_3024
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => X"FC0CFC0C"
    )
    port map (
      ADR2 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_12(4),
      ADR0 => '1',
      ADR1 => DMemoryPort_DMem_4(4),
      ADR4 => '1',
      O => N586
    );
  DMemoryPort_DMem_4_3 : X_FF
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_3_CLK,
      I => DMemoryPort_DMem_4_3_dpot_3032,
      O => DMemoryPort_DMem_4(3),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => X"F0F0AAAAF0F0AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR0 => DMemoryPort_DMem_4(3),
      ADR2 => IDecodePort_Mmux_read_data2_425,
      ADR4 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_3_dpot_3032
    );
  N590_N590_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N594,
      O => N594_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y70",
      INIT => X"DD88DD88DD88DD88"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_4(5),
      ADR1 => DMemoryPort_DMem_12(5),
      ADR5 => '1',
      O => N590
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X51Y70",
      INIT => X"F5F5A0A0"
    )
    port map (
      ADR4 => DMemoryPort_DMem_4(0),
      ADR2 => DMemoryPort_DMem_12(0),
      ADR0 => LED_3_OBUF_8283,
      ADR3 => '1',
      ADR1 => '1',
      O => N594
    );
  DMemoryPort_DMem_12_14 : X_FF
    generic map(
      LOC => "SLICE_X51Y73",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_14_CLK,
      I => DMemoryPort_DMem_12_14_dpot_3046,
      O => DMemoryPort_DMem_12(14),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y73",
      INIT => X"FFFFF0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_12(14),
      ADR5 => IDecodePort_Mmux_read_data2_45,
      ADR4 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_14_dpot_3046
    );
  DMemoryPort_DMem_12_13 : X_FF
    generic map(
      LOC => "SLICE_X51Y73",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_13_CLK,
      I => DMemoryPort_DMem_12_13_dpot_3053,
      O => DMemoryPort_DMem_12(13),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y73",
      INIT => X"FCFC0C0CFCFC0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR1 => DMemoryPort_DMem_12(13),
      ADR4 => IDecodePort_Mmux_read_data2_44,
      ADR2 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_13_dpot_3053
    );
  DMemoryPort_DMem_12_12 : X_FF
    generic map(
      LOC => "SLICE_X51Y73",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_12_CLK,
      I => DMemoryPort_DMem_12_12_dpot_3058,
      O => DMemoryPort_DMem_12(12),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y73",
      INIT => X"0C0C5C0C0C0C0C0C"
    )
    port map (
      ADR5 => IDecodePort_Reg_array_4(12),
      ADR4 => IDecodePort_write_register_address(0),
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_12(12),
      ADR3 => IFetchPort_Mram_Instruction18,
      ADR2 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_12_dpot_3058
    );
  DMemoryPort_DMem_12_11 : X_FF
    generic map(
      LOC => "SLICE_X51Y73",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_11_CLK,
      I => DMemoryPort_DMem_12_11_dpot_3066,
      O => DMemoryPort_DMem_12(11),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X51Y73",
      INIT => X"AFA0AFA0AFA0AFA0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => DMemoryPort_DMem_12(11),
      ADR0 => IDecodePort_Mmux_read_data2_42,
      ADR2 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_11_dpot_3066
    );
  DMemoryPort_mux5_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y74",
      INIT => X"FFFFFFFF0F3FCFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => DMemoryPort_DMem_4(14),
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => ALUResult(0),
      O => N160
    );
  DMemoryPort_mux5_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y74",
      INIT => X"FFFFAFFFFFFFA0FF"
    )
    port map (
      ADR1 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_2(14),
      ADR4 => ALUResult(0),
      O => N161
    );
  hexval_27 : X_LATCHE
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_27_CLK,
      I => hexval_31_SW_4_MUX_209_o,
      O => hexval_27_9118,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_209_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => X"FFFF0000AA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => BTN_2_IBUF_9148,
      ADR3 => BTN_1_IBUF_9150,
      ADR0 => SW_6_datamemory_127_31_wide_mux_3_OUT_27_0,
      ADR4 => SW_4_reg_file_31_31_wide_mux_5_OUT_27_0,
      O => hexval_31_SW_4_MUX_209_o
    );
  hexval_26 : X_LATCHE
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_26_CLK,
      I => hexval_31_SW_4_MUX_212_o,
      O => hexval_26_9117,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_212_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => X"CCCCCCCCAA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => BTN_2_IBUF_9148,
      ADR3 => BTN_1_IBUF_9150,
      ADR0 => SW_6_datamemory_127_31_wide_mux_3_OUT_26_0,
      ADR1 => SW_4_reg_file_31_31_wide_mux_5_OUT_26_0,
      O => hexval_31_SW_4_MUX_212_o
    );
  hexval_25 : X_LATCHE
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_25_CLK,
      I => hexval_31_SW_4_MUX_215_o,
      O => hexval_25_9120,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_215_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => X"F0F0AA00F0F0AA00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => BTN_2_IBUF_9148,
      ADR0 => BTN_1_IBUF_9150,
      ADR3 => SW_6_datamemory_127_31_wide_mux_3_OUT_25_0,
      ADR2 => SW_4_reg_file_31_31_wide_mux_5_OUT_25_0,
      O => hexval_31_SW_4_MUX_215_o
    );
  hexval_24 : X_LATCHE
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_24_CLK,
      I => hexval_31_SW_4_MUX_218_o,
      O => hexval_24_9119,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_218_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y86",
      INIT => X"E2E2C0C0E2E2C0C0"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => BTN_2_IBUF_9148,
      ADR0 => BTN_1_IBUF_9150,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_24_0,
      ADR2 => SW_4_reg_file_31_31_wide_mux_5_OUT_24_0,
      O => hexval_31_SW_4_MUX_218_o
    );
  DMemoryPort_mux28_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y61",
      INIT => X"FFFFFF33FFFFBBBB"
    )
    port map (
      ADR2 => '1',
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR5 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => DMemoryPort_DMem_2(6),
      ADR4 => ALUResult(0),
      O => N51
    );
  DMemoryPort_mux29_82 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y63",
      INIT => X"0C110CDD3F113FDD"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR3 => ALUResult_1_0,
      ADR4 => N47,
      ADR2 => N48,
      ADR0 => N45,
      ADR5 => N46,
      O => DMemoryPort_mux29_82_9519
    );
  IDecodePort_Reg_array_4_7 : X_FF
    generic map(
      LOC => "SLICE_X50Y63",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_7_CLK,
      I => Write_data(7),
      O => IDecodePort_Reg_array_4(7),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data305 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y63",
      INIT => X"00FF0000D8D8D8D8"
    )
    port map (
      ADR0 => ALUop(2),
      ADR5 => DMemRead,
      ADR2 => Mmux_Write_data30,
      ADR1 => Mmux_Write_data303_9428,
      ADR3 => N206,
      ADR4 => DMemoryPort_mux29_82_9519,
      O => Write_data(7)
    );
  DMemoryPort_mux28_82 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y63",
      INIT => X"0A225F220A775F77"
    )
    port map (
      ADR0 => ALUResult(3),
      ADR3 => ALUResult_1_0,
      ADR1 => N52,
      ADR2 => N53,
      ADR5 => N50,
      ADR4 => N51,
      O => DMemoryPort_mux28_82_9518
    );
  IDecodePort_Reg_array_4_6 : X_FF
    generic map(
      LOC => "SLICE_X50Y63",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_6_CLK,
      I => Write_data(6),
      O => IDecodePort_Reg_array_4(6),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data291 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y63",
      INIT => X"4444444444446444"
    )
    port map (
      ADR0 => DMemRead,
      ADR5 => ALUPort_Mmux_ALU_output273_8515,
      ADR4 => ALUResult_5_0,
      ADR2 => N192,
      ADR1 => ALUResult(6),
      ADR3 => DMemoryPort_mux28_82_9518,
      O => Write_data(6)
    );
  DMemoryPort_DMem_12_6 : X_FF
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_6_CLK,
      I => DMemoryPort_DMem_12_6_dpot_3146,
      O => DMemoryPort_DMem_12(6),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"00000088F0F0F0F0"
    )
    port map (
      ADR0 => IDecodePort_Reg_array_4(6),
      ADR3 => IDecodePort_write_register_address(0),
      ADR4 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_12(6),
      ADR1 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_6_dpot_3146
    );
  DMemoryPort_DMem_12_5 : X_FF
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_5_CLK,
      I => DMemoryPort_DMem_12_5_dpot_3156,
      O => DMemoryPort_DMem_12(5),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"000000A0CCCCCCCC"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(5),
      ADR3 => IDecodePort_write_register_address(0),
      ADR4 => IFetchPort_Mram_Instruction17,
      ADR1 => DMemoryPort_DMem_12(5),
      ADR0 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_5_dpot_3156
    );
  DMemoryPort_DMem_12_4 : X_FF
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_4_CLK,
      I => DMemoryPort_DMem_12_4_dpot_3164,
      O => DMemoryPort_DMem_12(4),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"AACCAACCAACCAACC"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_12(4),
      ADR0 => IDecodePort_Mmux_read_data2_426,
      ADR3 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_4_dpot_3164
    );
  DMemoryPort_DMem_12_3 : X_FF
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_3_CLK,
      I => DMemoryPort_DMem_12_3_dpot_3169,
      O => DMemoryPort_DMem_12(3),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"AAAAAAAAF0F0F0F0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_12(3),
      ADR0 => IDecodePort_Mmux_read_data2_425,
      ADR5 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_3_dpot_3169
    );
  DMemoryPort_mux3_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y71",
      INIT => X"FFFF44FFFFFF77FF"
    )
    port map (
      ADR2 => '1',
      ADR3 => DMemoryPort_DMem_12(12),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N172
    );
  DMemoryPort_DMem_4_14_DMemoryPort_DMem_4_14_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N572,
      O => N572_0
    );
  DMemoryPort_DMem_4_14_DMemoryPort_DMem_4_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N568,
      O => N568_0
    );
  DMemoryPort_DMem_4_14_DMemoryPort_DMem_4_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N576,
      O => N576_0
    );
  DMemoryPort_DMem_4_14 : X_FF
    generic map(
      LOC => "SLICE_X50Y73",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_14_CLK,
      I => DMemoryPort_DMem_4_14_dpot_3180,
      O => DMemoryPort_DMem_4(14),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X50Y73",
      INIT => X"FF00F0F0FF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => IDecodePort_Mmux_read_data2_45,
      ADR2 => DMemoryPort_DMem_4(14),
      ADR4 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_14_dpot_3180
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y73",
      INIT => X"D8D8D8D8"
    )
    port map (
      ADR0 => LED_3_OBUF_8283,
      ADR1 => DMemoryPort_DMem_12(14),
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_4(14),
      ADR4 => '1',
      O => N572
    );
  DMemoryPort_DMem_4_13 : X_FF
    generic map(
      LOC => "SLICE_X50Y73",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_13_CLK,
      I => DMemoryPort_DMem_4_13_dpot_3187,
      O => DMemoryPort_DMem_4(13),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X50Y73",
      INIT => X"F0F0CCCCF0F0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_44,
      ADR1 => DMemoryPort_DMem_4(13),
      ADR4 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_13_dpot_3187
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y73",
      INIT => X"EE44EE44"
    )
    port map (
      ADR0 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_12(13),
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_4(13),
      ADR4 => '1',
      O => N568
    );
  DMemoryPort_DMem_4_12 : X_FF
    generic map(
      LOC => "SLICE_X50Y73",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_12_CLK,
      I => DMemoryPort_DMem_4_12_dpot_3197,
      O => DMemoryPort_DMem_4(12),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X50Y73",
      INIT => X"3733040033330000"
    )
    port map (
      ADR3 => IDecodePort_Reg_array_4(12),
      ADR2 => IDecodePort_write_register_address(0),
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR4 => DMemoryPort_DMem_4(12),
      ADR5 => IFetchPort_Mram_Instruction18,
      ADR1 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_12_dpot_3197
    );
  DMemoryPort_DMem_4_11 : X_FF
    generic map(
      LOC => "SLICE_X50Y73",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_11_CLK,
      I => DMemoryPort_DMem_4_11_dpot_3205,
      O => DMemoryPort_DMem_4(11),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X50Y73",
      INIT => X"B8B8B8B8B8B8B8B8"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_42,
      ADR2 => DMemoryPort_DMem_4(11),
      ADR1 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_11_dpot_3205
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X50Y73",
      INIT => X"FFF000F0"
    )
    port map (
      ADR3 => LED_3_OBUF_8283,
      ADR4 => DMemoryPort_DMem_12(11),
      ADR1 => '1',
      ADR2 => DMemoryPort_DMem_4(11),
      ADR0 => '1',
      O => N576
    );
  DMemoryPort_mux5_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y74",
      INIT => X"DDFFCCFFDDFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR3 => DMemoryPort_DMem_12(14),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N162
    );
  DMemoryPort_mux26_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y61",
      INIT => X"FFFBF3FBFFFBF3FB"
    )
    port map (
      ADR5 => '1',
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR3 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => DMemoryPort_DMem_2(4),
      ADR2 => ALUResult(0),
      O => N61
    );
  DMemoryPort_mux26_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y63",
      INIT => X"FFFFFFFF0FFF5F5F"
    )
    port map (
      ADR1 => '1',
      ADR2 => DMemoryPort_DMem_12(4),
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => ALUResult(0),
      O => N62
    );
  DMemoryPort_mux27_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y64",
      INIT => X"CCFFCFCFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => DMemoryPort_DMem_12(5),
      ADR2 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N57
    );
  DMemoryPort_mux27_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y65",
      INIT => X"AFFFAFFFAAFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR3 => DMemoryPort_DMem_4(5),
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR5 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => ALUResult(0),
      O => N55
    );
  DMemoryPort_mux3_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y73",
      INIT => X"CCFFEEFFDDFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR3 => DMemoryPort_DMem_4(12),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N170
    );
  DMemoryPort_mux27_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y61",
      INIT => X"FFFFAAFFFFFFCCFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR5 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_2(5),
      ADR4 => ALUResult(0),
      O => N56
    );
  DMemoryPort_mux27_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y61",
      INIT => X"FFFFE2FFFFFFE2FF"
    )
    port map (
      ADR5 => '1',
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_10(5),
      ADR4 => ALUResult(0),
      O => N58
    );
  DMemoryPort_mux26_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y62",
      INIT => X"FFFFF0FFFAFFFAFF"
    )
    port map (
      ADR1 => '1',
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR5 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_10(4),
      ADR2 => ALUResult(0),
      O => N63
    );
  ALUPort_Mmux_B_input321 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y68",
      INIT => X"0000000002000000"
    )
    port map (
      ADR3 => IDecodePort_Reg_array_4(9),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(0),
      ADR4 => ControlUnitPort_NextPCSignal(1),
      ADR5 => ControlUnitPort_NextPCSignal(3),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      O => ALUPort_B_input(9)
    );
  DMemoryPort_mux4_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y73",
      INIT => X"FF0AFFFFFF5FFFFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => DMemoryPort_DMem_12(13),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N167
    );
  DMemoryPort_mux3_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y72",
      INIT => X"FBFFEAFFFBFFEAFF"
    )
    port map (
      ADR5 => '1',
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_10(12),
      ADR0 => ALUResult(0),
      O => N173
    );
  DMemoryPort_mux4_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y73",
      INIT => X"FFFF1BFFFFFF1BFF"
    )
    port map (
      ADR5 => '1',
      ADR3 => DMemoryPort_DMem_4(13),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N165
    );
  IDecodePort_Reg_array_5_16 : X_FF
    generic map(
      LOC => "SLICE_X54Y74",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_16_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_5_16_IN,
      O => IDecodePort_Reg_array_5_16_Q,
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux5_82 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y74",
      INIT => X"3500350F35F035FF"
    )
    port map (
      ADR2 => ALUResult(3),
      ADR3 => ALUResult_1_0,
      ADR5 => N162,
      ADR1 => N163,
      ADR4 => N160,
      ADR0 => N161,
      O => DMemoryPort_mux5_82_9521
    );
  IDecodePort_Reg_array_5_14 : X_FF
    generic map(
      LOC => "SLICE_X54Y74",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_14_CLK,
      I => Write_data(14),
      O => IDecodePort_Reg_array_5_14_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data66 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y74",
      INIT => X"33FF333302CE0202"
    )
    port map (
      ADR1 => DMemRead,
      ADR0 => Mmux_Write_data64_8825,
      ADR2 => ALUop(2),
      ADR5 => Mmux_Write_data63_8824,
      ADR3 => N206,
      ADR4 => DMemoryPort_mux5_82_9521,
      O => Write_data(14)
    );
  IDecodePort_Reg_array_5_15 : X_FF
    generic map(
      LOC => "SLICE_X54Y74",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_15_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_5_15_IN,
      O => IDecodePort_Reg_array_5_15_Q,
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux4_82 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y74",
      INIT => X"30503F50305F3F5F"
    )
    port map (
      ADR2 => ALUResult(3),
      ADR3 => ALUResult_1_0,
      ADR0 => N167,
      ADR1 => N168,
      ADR5 => N165,
      ADR4 => N166,
      O => DMemoryPort_mux4_82_9520
    );
  IDecodePort_Reg_array_5_13 : X_FF
    generic map(
      LOC => "SLICE_X54Y74",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_13_CLK,
      I => Write_data(13),
      O => IDecodePort_Reg_array_5_13_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data56 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y74",
      INIT => X"5555FF550404AE04"
    )
    port map (
      ADR0 => DMemRead,
      ADR1 => Mmux_Write_data54_8833,
      ADR2 => ALUop(2),
      ADR5 => Mmux_Write_data53_8829,
      ADR4 => N206,
      ADR3 => DMemoryPort_mux4_82_9520,
      O => Write_data(13)
    );
  DMemoryPort_mux_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y75",
      INIT => X"FEFEF4F4FFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_10(0),
      ADR2 => ALUResult(0),
      O => N183
    );
  DMemoryPort_mux9_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y80",
      INIT => X"CFFFCFCFCFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => DMemoryPort_DMem_4(18),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N140
    );
  DMemoryPort_mux27_82 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y63",
      INIT => X"447744770C0C3F3F"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR5 => ALUResult_1_0,
      ADR2 => N57,
      ADR0 => N58,
      ADR4 => N55,
      ADR3 => N56,
      O => DMemoryPort_mux27_82_9523
    );
  IDecodePort_Reg_array_4_5 : X_FF
    generic map(
      LOC => "SLICE_X55Y63",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_5_CLK,
      I => Write_data(5),
      O => IDecodePort_Reg_array_4(5),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data281 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y63",
      INIT => X"0A0A0A0A0A4A0A0A"
    )
    port map (
      ADR2 => DMemRead,
      ADR3 => ALUPort_Mmux_ALU_output273_8515,
      ADR0 => ALUResult_5_0,
      ADR1 => N192,
      ADR5 => ALUResult(6),
      ADR4 => DMemoryPort_mux27_82_9523,
      O => Write_data(5)
    );
  DMemoryPort_mux26_82 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y63",
      INIT => X"0C440C773F443F77"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR3 => ALUResult_1_0,
      ADR0 => N62,
      ADR2 => N63,
      ADR4 => N60,
      ADR5 => N61,
      O => DMemoryPort_mux26_82_9522
    );
  IDecodePort_Reg_array_4_4 : X_FF
    generic map(
      LOC => "SLICE_X55Y63",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_4_CLK,
      I => Write_data(4),
      O => IDecodePort_Reg_array_4(4),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data271 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y63",
      INIT => X"00001000AFAFAFAF"
    )
    port map (
      ADR5 => DMemRead,
      ADR0 => ALUPort_Mmux_ALU_output273_8515,
      ADR4 => ALUResult_5_0,
      ADR2 => N192,
      ADR1 => ALUResult(6),
      ADR3 => DMemoryPort_mux26_82_9522,
      O => Write_data(4)
    );
  DMemoryPort_mux2_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y68",
      INIT => X"FCFCFAFAFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_10(11),
      ADR2 => ALUResult(0),
      O => N178
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_91_Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_91_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_3_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_3_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X55Y71"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_3_Q,
      SEL => LED_4_OBUF_8368
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_41 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y71",
      INIT => X"00FF00CC000000CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => LED_3_OBUF_8283,
      ADR4 => LED_2_OBUF_8362,
      ADR1 => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_82,
      ADR5 => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_91,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_4
    );
  DMemoryPort_mux10_10_90_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X55Y71",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_DMemoryPort_mux10_10_90_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_911 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y71",
      INIT => X"0E0E0E0E04040404"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => LED_1_OBUF_8285,
      ADR0 => LED_0_OBUF_8361,
      ADR1 => IDecodePort_Reg_array_4(3),
      ADR5 => IDecodePort_Reg_array_5_3_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_91
    );
  DMemoryPort_mux3_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y71",
      INIT => X"FFF7FFD5FFF7FFD5"
    )
    port map (
      ADR5 => '1',
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => DMemoryPort_DMem_2(12),
      ADR3 => ALUResult(0),
      O => N171
    );
  IDecodePort_Reg_array_4_14 : X_FF
    generic map(
      LOC => "SLICE_X55Y73",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_14_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_14_IN,
      O => IDecodePort_Reg_array_4(14),
      RST => GND,
      SET => GND
    );
  IDecodePort_Reg_array_4_13 : X_FF
    generic map(
      LOC => "SLICE_X55Y73",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_13_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_13_IN,
      O => IDecodePort_Reg_array_4(13),
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux3_82 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y73",
      INIT => X"0C0C11DD3F3F11DD"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR4 => ALUResult_1_0,
      ADR3 => N172,
      ADR2 => N173,
      ADR0 => N170,
      ADR5 => N171,
      O => DMemoryPort_mux3_82_9525
    );
  IDecodePort_Reg_array_4_12 : X_FF
    generic map(
      LOC => "SLICE_X55Y73",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_12_CLK,
      I => Write_data(12),
      O => IDecodePort_Reg_array_4(12),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data46 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y73",
      INIT => X"5500CCCC5500FCFC"
    )
    port map (
      ADR4 => DMemRead,
      ADR2 => Mmux_Write_data44_8391,
      ADR5 => ALUop(2),
      ADR1 => Mmux_Write_data43,
      ADR0 => N206,
      ADR3 => DMemoryPort_mux3_82_9525,
      O => Write_data(12)
    );
  DMemoryPort_mux4_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y74",
      INIT => X"FAFFFFFFFAFFF0FF"
    )
    port map (
      ADR1 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_10(13),
      ADR2 => ALUResult(0),
      O => N168
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X55Y75",
      INIT => X"5F5F5F5F5555FFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => DMemoryPort_DMem_2(0),
      ADR5 => LED_3_OBUF_8283,
      ADR2 => DMemoryPort_DMem_10(0),
      ADR0 => LED_1_OBUF_8285,
      O => N532
    );
  IDecodePort_Mmux_read_data1_4261 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y64",
      INIT => X"000000000A00A000"
    )
    port map (
      ADR1 => '1',
      ADR3 => IDecodePort_Reg_array_4(4),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR4 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      O => IDecodePort_Mmux_read_data1_426
    );
  DMemoryPort_mux25_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y68",
      INIT => X"DD3DD333DDFDDFFF"
    )
    port map (
      ADR0 => DMemoryPort_DMem_12(3),
      ADR5 => DMemoryPort_DMem_9(3),
      ADR2 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N32
    );
  DMemoryPort_DMem_9_3 : X_FF
    generic map(
      LOC => "SLICE_X57Y68",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_9_3_CLK,
      I => DMemoryPort_DMem_9_3_dpot_3448,
      O => DMemoryPort_DMem_9(3),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_9_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X57Y68",
      INIT => X"FF00FF02FF00FD00"
    )
    port map (
      ADR5 => N378,
      ADR4 => ALUResult_1_0,
      ADR1 => ALUResult_5_0,
      ADR3 => DMemoryPort_DMem_9(3),
      ADR2 => ALUResult(6),
      ADR0 => ALUResult(0),
      O => DMemoryPort_DMem_9_3_dpot_3448
    );
  DMemoryPort_mux25_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y69",
      INIT => X"FAFAFFAAFFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_2(3),
      ADR0 => ALUResult(0),
      O => N31
    );
  IDecodePort_Mmux_read_data2_4291 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y69",
      INIT => X"0C0600000D040000"
    )
    port map (
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR4 => IDecodePort_Reg_array_4(7),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(3),
      O => IDecodePort_Mmux_read_data2_429
    );
  DMemoryPort_mux25_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y69",
      INIT => X"FFFF27FFFFFF27FF"
    )
    port map (
      ADR5 => '1',
      ADR3 => DMemoryPort_DMem_4(3),
      ADR2 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N30
    );
  DMemoryPort_mux25_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y70",
      INIT => X"F3C0F7D5FFFFF7D5"
    )
    port map (
      ADR0 => DMemoryPort_DMem_10(3),
      ADR5 => DMemoryPort_DMem_11(3),
      ADR1 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N33
    );
  IDecodePort_Mmux_read_data2_4110 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y70",
      INIT => X"5004000055100000"
    )
    port map (
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR4 => IDecodePort_Reg_array_4(10),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR2 => ControlUnitPort_NextPCSignal(1),
      ADR5 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(3),
      O => IDecodePort_Mmux_read_data2_41
    );
  ControlUnitPort_n0247_ControlUnitPort_n0247_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_n0257_inv,
      O => ControlUnitPort_n0257_inv_0
    );
  ControlUnitPort_n02471 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y71",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => start_9209,
      ADR0 => clr_9052,
      ADR5 => '1',
      O => ControlUnitPort_n0247
    );
  ControlUnitPort_n0257_inv6 : X_LUT5
    generic map(
      LOC => "SLICE_X57Y71",
      INIT => X"50504040"
    )
    port map (
      ADR3 => '1',
      ADR4 => ControlUnitPort_n0257_inv5_9208,
      ADR1 => ControlUnitPort_BEQ_BNE_OR_198_o,
      ADR2 => start_9209,
      ADR0 => clr_9052,
      O => ControlUnitPort_n0257_inv
    );
  ALUPort_Mmux_B_input41 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y72",
      INIT => X"0010000000000000"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(12),
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR1 => ControlUnitPort_NextPCSignal(3),
      ADR4 => ControlUnitPort_NextPCSignal(2),
      O => ALUPort_B_input(12)
    );
  DMemoryPort_mux2_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y73",
      INIT => X"AAFFAFFFFAFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR3 => DMemoryPort_DMem_12(11),
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => ALUResult(0),
      O => N177
    );
  DMemoryPort_mux22_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y73",
      INIT => X"FFFFDDF5FFFFDDF5"
    )
    port map (
      ADR5 => '1',
      ADR2 => ALUPort_Mmux_ALU_output23,
      ADR3 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => DMemoryPort_DMem_10(2),
      ADR4 => ALUResult(0),
      O => N78
    );
  IDecodePort_Mmux_read_data2_471 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y75",
      INIT => X"0F0A000A00000000"
    )
    port map (
      ADR1 => '1',
      ADR4 => IDecodePort_Reg_array_5_16_Q,
      ADR0 => IDecodePort_Reg_array_4(16),
      ADR3 => IDecodePort_write_register_address(0),
      ADR2 => IFetchPort_Mram_Instruction17,
      ADR5 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_47
    );
  ALUPort_Mmux_B_input81 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y75",
      INIT => X"FF002400FF000A00"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data2_47,
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      ADR4 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(16)
    );
  IDecodePort_Mmux_read_data2_433 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y78",
      INIT => X"0000F03000001080"
    )
    port map (
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR2 => IDecodePort_Reg_array_4(12),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR1 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      O => IDecodePort_Mmux_read_data2_43
    );
  DMemoryPort_DMem_12_18 : X_FF
    generic map(
      LOC => "SLICE_X57Y79",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_18_CLK,
      I => DMemoryPort_DMem_12_18_dpot_3535,
      O => DMemoryPort_DMem_12(18),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_18_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X57Y79",
      INIT => X"CCCCF0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_12(18),
      ADR1 => IDecodePort_Mmux_read_data2_49,
      ADR4 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_18_dpot_3535
    );
  DMemoryPort_DMem_12_17 : X_FF
    generic map(
      LOC => "SLICE_X57Y79",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_17_CLK,
      I => DMemoryPort_DMem_12_17_dpot_3542,
      O => DMemoryPort_DMem_12(17),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_17_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X57Y79",
      INIT => X"FF00CCCCFF00CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_12(17),
      ADR3 => IDecodePort_Mmux_read_data2_48,
      ADR4 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_17_dpot_3542
    );
  DMemoryPort_DMem_12_16 : X_FF
    generic map(
      LOC => "SLICE_X57Y79",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_16_CLK,
      I => DMemoryPort_DMem_12_16_dpot_3547,
      O => DMemoryPort_DMem_12(16),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_16_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X57Y79",
      INIT => X"EE44EE44EE44EE44"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_12(16),
      ADR3 => IDecodePort_Mmux_read_data2_47,
      ADR0 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_16_dpot_3547
    );
  DMemoryPort_DMem_12_15 : X_FF
    generic map(
      LOC => "SLICE_X57Y79",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_15_CLK,
      I => DMemoryPort_DMem_12_15_dpot_3555,
      O => DMemoryPort_DMem_12(15),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X57Y79",
      INIT => X"FAFA5050FAFA5050"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_12(15),
      ADR4 => IDecodePort_Mmux_read_data2_46,
      ADR0 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_15_dpot_3555
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y85",
      INIT => X"27FF27FF27FF27FF"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => DMemoryPort_DMem_2(18),
      ADR0 => LED_3_OBUF_8283,
      ADR1 => DMemoryPort_DMem_10(18),
      ADR3 => LED_1_OBUF_8285,
      O => N496
    );
  IDecodePort_Mmux_read_data2_4111_SW7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y65",
      INIT => X"999FFF9F999FFF9F"
    )
    port map (
      ADR5 => '1',
      ADR2 => IDecodePort_Reg_array_4(4),
      ADR3 => IDecodePort_Reg_array_5_1_Q,
      ADR4 => IDecodePort_Reg_array_4(6),
      ADR1 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(1),
      O => N422
    );
  IDecodePort_Mmux_read_data2_4111_SW7 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y65",
      INIT => X"0055000000550000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR3 => N422,
      O => N410
    );
  ALUPort_Mmux_B_input311 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y66",
      INIT => X"0000000000002000"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(8),
      ADR1 => ControlUnitPort_NextPCSignal(4),
      ADR5 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      O => ALUPort_B_input(8)
    );
  DMemoryPort_mux2_82 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y68",
      INIT => X"031103DDCF11CFDD"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR3 => ALUResult_1_0,
      ADR4 => N177,
      ADR5 => N178,
      ADR0 => N175,
      ADR2 => N176,
      O => DMemoryPort_mux2_82_9528
    );
  IDecodePort_Reg_array_4_11 : X_FF
    generic map(
      LOC => "SLICE_X56Y68",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_11_CLK,
      I => Write_data(11),
      O => IDecodePort_Reg_array_4(11),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data36 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y68",
      INIT => X"00F011F000F000F0"
    )
    port map (
      ADR3 => DMemRead,
      ADR2 => Mmux_Write_data36_8438,
      ADR1 => ALUResult_5_0,
      ADR4 => ALUResult(4),
      ADR0 => ALUResult(6),
      ADR5 => DMemoryPort_mux2_82_9528,
      O => Write_data(11)
    );
  DMemoryPort_mux1_82 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y68",
      INIT => X"0C113F110CDD3FDD"
    )
    port map (
      ADR3 => ALUResult(3),
      ADR1 => ALUResult_1_0,
      ADR4 => N187,
      ADR2 => N188,
      ADR0 => N185,
      ADR5 => N186,
      O => DMemoryPort_mux1_82_9527
    );
  IDecodePort_Reg_array_4_10 : X_FF
    generic map(
      LOC => "SLICE_X56Y68",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_10_CLK,
      I => Write_data(10),
      O => IDecodePort_Reg_array_4(10),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data26 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y68",
      INIT => X"0F000F00CCCCEEEE"
    )
    port map (
      ADR5 => DMemRead,
      ADR0 => Mmux_Write_data28,
      ADR4 => ALUop(2),
      ADR1 => Mmux_Write_data27,
      ADR2 => N206,
      ADR3 => DMemoryPort_mux1_82_9527,
      O => Write_data(10)
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_3610,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82 : X_MUX2
    generic map(
      LOC => "SLICE_X56Y69"
    )
    port map (
      IA => N604,
      IB => N605,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_3610,
      SEL => LED_1_OBUF_8285
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_F : X_LUT6
    generic map(
      LOC => "SLICE_X56Y69",
      INIT => X"0F0380800C008080"
    )
    port map (
      ADR4 => LED_2_OBUF_8362,
      ADR2 => LED_0_OBUF_8361,
      ADR1 => LED_3_OBUF_8283,
      ADR5 => DMemoryPort_DMem_4(3),
      ADR3 => DMemoryPort_DMem_12(3),
      ADR0 => DMemoryPort_DMem_9(3),
      O => N604
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_G : X_LUT6
    generic map(
      LOC => "SLICE_X56Y69",
      INIT => X"0000FA0C00000A0C"
    )
    port map (
      ADR4 => LED_2_OBUF_8362,
      ADR2 => LED_0_OBUF_8361,
      ADR3 => LED_3_OBUF_8283,
      ADR1 => DMemoryPort_DMem_2(3),
      ADR0 => DMemoryPort_DMem_10(3),
      ADR5 => DMemoryPort_DMem_11(3),
      O => N605
    );
  DMemoryPort_DMem_10_14 : X_FF
    generic map(
      LOC => "SLICE_X56Y72",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_14_CLK,
      I => DMemoryPort_DMem_10_14_dpot_3626,
      O => DMemoryPort_DMem_10(14),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y72",
      INIT => X"FFFF0000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_10(14),
      ADR4 => IDecodePort_Mmux_read_data2_45,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_14_dpot_3626
    );
  DMemoryPort_DMem_10_13 : X_FF
    generic map(
      LOC => "SLICE_X56Y72",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_13_CLK,
      I => DMemoryPort_DMem_10_13_dpot_3638,
      O => DMemoryPort_DMem_10(13),
      RST => GND,
      SET => GND
    );
  ALUPort_Mmux_B_input51 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y72",
      INIT => X"AFAFA0A0AFAFA0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => ALUSrc,
      ADR4 => IDecodePort_Mmux_read_data2_44,
      ADR3 => '1',
      ADR0 => IFetchPort_Mram_Instruction13,
      ADR5 => '1',
      O => ALUPort_B_input(13)
    );
  DMemoryPort_DMem_10_13_dpot : X_LUT5
    generic map(
      LOC => "SLICE_X56Y72",
      INIT => X"FFCC00CC"
    )
    port map (
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      ADR2 => '1',
      ADR4 => IDecodePort_Mmux_read_data2_44,
      ADR1 => DMemoryPort_DMem_10(13),
      ADR0 => '1',
      O => DMemoryPort_DMem_10_13_dpot_3638
    );
  IDecodePort_Mmux_read_data2_441 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y72",
      INIT => X"00000000CCC00C00"
    )
    port map (
      ADR0 => '1',
      ADR4 => IDecodePort_Reg_array_5_13_Q,
      ADR3 => IDecodePort_Reg_array_4(13),
      ADR2 => IDecodePort_write_register_address(0),
      ADR5 => IFetchPort_Mram_Instruction17,
      ADR1 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_44
    );
  DMemoryPort_DMem_10_12 : X_FF
    generic map(
      LOC => "SLICE_X56Y72",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_12_CLK,
      I => DMemoryPort_DMem_10_12_dpot_3652,
      O => DMemoryPort_DMem_10(12),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y72",
      INIT => X"00000088F0F0F0F0"
    )
    port map (
      ADR0 => IDecodePort_Reg_array_4(12),
      ADR4 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_10(12),
      ADR1 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_12_dpot_3652
    );
  IDecodePort_Mmux_read_data2_451 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y73",
      INIT => X"00CF00C000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => IDecodePort_Reg_array_5_14_Q,
      ADR4 => IDecodePort_Reg_array_4(14),
      ADR2 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR5 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_45
    );
  ALUPort_Mmux_B_input61 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y73",
      INIT => X"F1F40000F8F40000"
    )
    port map (
      ADR4 => IDecodePort_Mmux_read_data2_45,
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR1 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(14)
    );
  DMemoryPort_mux2_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y73",
      INIT => X"FF5DFF7FFF5DFF7F"
    )
    port map (
      ADR5 => '1',
      ADR0 => DMemoryPort_DMem_4(11),
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N175
    );
  DMemoryPort_mux5_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y74",
      INIT => X"EFEFEFEFFFFFAFAF"
    )
    port map (
      ADR3 => '1',
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR5 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => DMemoryPort_DMem_10(14),
      ADR0 => ALUResult(0),
      O => N163
    );
  DMemoryPort_DMem_10_3 : X_FF
    generic map(
      LOC => "SLICE_X56Y75",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_3_CLK,
      I => DMemoryPort_DMem_10_3_dpot_3705,
      O => DMemoryPort_DMem_10(3),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y75",
      INIT => X"CCCCCCCCF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_10(3),
      ADR1 => IDecodePort_Mmux_read_data2_425,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_3_dpot_3705
    );
  DMemoryPort_DMem_10_2 : X_FF
    generic map(
      LOC => "SLICE_X56Y75",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_2_CLK,
      I => DMemoryPort_DMem_10_2_dpot_3698,
      O => DMemoryPort_DMem_10(2),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y75",
      INIT => X"FF00FF00CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_10(2),
      ADR3 => IDecodePort_Mmux_read_data2_422,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_2_dpot_3698
    );
  DMemoryPort_DMem_10_1 : X_FF
    generic map(
      LOC => "SLICE_X56Y75",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_1_CLK,
      I => DMemoryPort_DMem_10_1_dpot_3685,
      O => DMemoryPort_DMem_10(1),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y75",
      INIT => X"EE22EE22EE22EE22"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR0 => DMemoryPort_DMem_10(1),
      ADR3 => IDecodePort_Mmux_read_data2_411,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_1_dpot_3685
    );
  DMemoryPort_DMem_10_0 : X_FF
    generic map(
      LOC => "SLICE_X56Y75",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_0_CLK,
      I => DMemoryPort_DMem_10_0_dpot_3681,
      O => DMemoryPort_DMem_10(0),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y75",
      INIT => X"00F022F000F000F0"
    )
    port map (
      ADR0 => IDecodePort_Reg_array_4(0),
      ADR1 => IDecodePort_write_register_address(0),
      ADR4 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_10(0),
      ADR5 => IFetchPort_Mram_Instruction18,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_0_dpot_3681
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y78",
      INIT => X"00FF5555FFFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => DMemoryPort_DMem_2(2),
      ADR4 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_10(2),
      ADR5 => LED_1_OBUF_8285,
      O => N528
    );
  DMemoryPort_mux7_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y79",
      INIT => X"F3FFF0FFF3FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => DMemoryPort_DMem_4(16),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => ALUResult(0),
      O => N150
    );
  DMemoryPort_DMem_4_18_DMemoryPort_DMem_4_18_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N562,
      O => N562_0
    );
  DMemoryPort_DMem_4_18_DMemoryPort_DMem_4_18_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N564,
      O => N564_0
    );
  DMemoryPort_DMem_4_18_DMemoryPort_DMem_4_18_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N566,
      O => N566_0
    );
  DMemoryPort_DMem_4_18_DMemoryPort_DMem_4_18_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N570,
      O => N570_0
    );
  DMemoryPort_DMem_4_18 : X_FF
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_18_CLK,
      I => DMemoryPort_DMem_4_18_dpot_3717,
      O => DMemoryPort_DMem_4(18),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_18_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => X"CCAACCAACCAACCAA"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => IDecodePort_Mmux_read_data2_49,
      ADR0 => DMemoryPort_DMem_4(18),
      ADR3 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_18_dpot_3717
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => X"F0F0AAAA"
    )
    port map (
      ADR4 => LED_3_OBUF_8283,
      ADR2 => DMemoryPort_DMem_12(18),
      ADR3 => '1',
      ADR0 => DMemoryPort_DMem_4(18),
      ADR1 => '1',
      O => N562
    );
  DMemoryPort_DMem_4_17 : X_FF
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_17_CLK,
      I => DMemoryPort_DMem_4_17_dpot_3729,
      O => DMemoryPort_DMem_4(17),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_17_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => X"FFAA00AAFFAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => IDecodePort_Mmux_read_data2_48,
      ADR0 => DMemoryPort_DMem_4(17),
      ADR3 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_17_dpot_3729
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => X"CACACACA"
    )
    port map (
      ADR2 => LED_3_OBUF_8283,
      ADR1 => DMemoryPort_DMem_12(17),
      ADR3 => '1',
      ADR0 => DMemoryPort_DMem_4(17),
      ADR4 => '1',
      O => N564
    );
  DMemoryPort_DMem_4_16 : X_FF
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_16_CLK,
      I => DMemoryPort_DMem_4_16_dpot_3740,
      O => DMemoryPort_DMem_4(16),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_16_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => X"F0CCF0CCF0CCF0CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_47,
      ADR1 => DMemoryPort_DMem_4(16),
      ADR3 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_16_dpot_3740
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => X"EEEE4444"
    )
    port map (
      ADR0 => LED_3_OBUF_8283,
      ADR4 => DMemoryPort_DMem_12(16),
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_4(16),
      ADR3 => '1',
      O => N566
    );
  DMemoryPort_DMem_4_15 : X_FF
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_15_CLK,
      I => DMemoryPort_DMem_4_15_dpot_3741,
      O => DMemoryPort_DMem_4(15),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => X"FFAA00AAFFAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => IDecodePort_Mmux_read_data2_46,
      ADR0 => DMemoryPort_DMem_4(15),
      ADR3 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_15_dpot_3741
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X56Y80",
      INIT => X"E2E2E2E2"
    )
    port map (
      ADR1 => LED_3_OBUF_8283,
      ADR2 => DMemoryPort_DMem_12(15),
      ADR3 => '1',
      ADR0 => DMemoryPort_DMem_4(15),
      ADR4 => '1',
      O => N570
    );
  IDecodePort_Mmux_read_data1_4251_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y65",
      INIT => X"FFF0FFFFFF0FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => IDecodePort_Reg_array_4(3),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      O => N301
    );
  ALUPort_Sh81 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y66",
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => ALUPort_B_input(0),
      ADR1 => ALUPort_B_input(1),
      ADR3 => IDecodePort_Mmux_read_data1_429,
      ADR2 => IDecodePort_Mmux_read_data1_427,
      ADR4 => IDecodePort_Mmux_read_data1_428,
      ADR5 => IDecodePort_Mmux_read_data1_430,
      O => ALUPort_Sh8
    );
  IDecodePort_Mmux_read_data1_4301 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y66",
      INIT => X"005A000000000000"
    )
    port map (
      ADR1 => '1',
      ADR4 => IDecodePort_Reg_array_4(8),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(1),
      ADR5 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      O => IDecodePort_Mmux_read_data1_430
    );
  ALUPort_Mmux_B_input301 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y67",
      INIT => X"0000000000000800"
    )
    port map (
      ADR3 => IDecodePort_Reg_array_4(7),
      ADR5 => ControlUnitPort_NextPCSignal(4),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      O => ALUPort_B_input(7)
    );
  DMemoryPort_n1066_inv11 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y68",
      INIT => X"000000C0000400C4"
    )
    port map (
      ADR2 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output274_8419,
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUPort_Mmux_ALU_output273_8515,
      ADR1 => ALUResult(3),
      O => DMemoryPort_n1066_inv1
    );
  IFetchPort_Mram_Instruction291 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y68",
      INIT => X"FF00FF0AFF00FF0A"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR3 => ControlUnitPort_NextPCSignal(4),
      O => IFetchPort_Mram_Instruction29
    );
  ControlUnitPort_n0257_inv5 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y68",
      INIT => X"7FFFFFFF7FFFFFFF"
    )
    port map (
      ADR5 => '1',
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR2 => IFetchPort_Mram_Instruction27,
      ADR1 => IFetchPort_Mram_Instruction28,
      ADR3 => IFetchPort_Mram_Instruction29,
      O => ControlUnitPort_n0257_inv5_9208
    );
  IDecodePort_Reg_array_2_3_IDecodePort_Reg_array_2_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_Write_data101_3818,
      O => Mmux_Write_data101_0
    );
  IDecodePort_Reg_array_2_3_IDecodePort_Reg_array_2_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IFetchPort_Mram_Instruction27_pack_8,
      O => IFetchPort_Mram_Instruction27
    );
  Mmux_Write_data322 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y69",
      INIT => X"0005000500050005"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => ALUPort_B_input(9),
      ADR3 => IDecodePort_Mmux_read_data1_431,
      ADR0 => ALUop(0),
      ADR5 => '1',
      O => Mmux_Write_data321_9430
    );
  Mmux_Write_data182 : X_LUT5
    generic map(
      LOC => "SLICE_X59Y69",
      INIT => X"22222222"
    )
    port map (
      ADR4 => '1',
      ADR1 => ALUop(1),
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => ALUop(0),
      O => Mmux_Write_data101_3818
    );
  IDecodePort_Reg_array_2_3 : X_FF
    generic map(
      LOC => "SLICE_X59Y69",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0300_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_2_3_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_2_3_IN,
      O => IDecodePort_Reg_array_2_3_Q,
      RST => GND,
      SET => GND
    );
  ControlUnitPort_Mmux_ALU_Op1 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y69",
      INIT => X"F5F5F5F0FFF0F0F0"
    )
    port map (
      ADR1 => '1',
      ADR5 => ControlUnitPort_NextPCSignal(3),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR4 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      O => ALUop(0)
    );
  IDecodePort_Reg_array_2_1 : X_FF
    generic map(
      LOC => "SLICE_X59Y69",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0300_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_2_1_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_2_1_IN,
      O => IDecodePort_Reg_array_2_1_Q,
      RST => GND,
      SET => GND
    );
  IFetchPort_Mram_Instruction261 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y69",
      INIT => X"B5B5E8E5B5B5E8E5"
    )
    port map (
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      ADR5 => '1',
      O => IFetchPort_Mram_Instruction26
    );
  IFetchPort_Mram_Instruction271 : X_LUT5
    generic map(
      LOC => "SLICE_X59Y69",
      INIT => X"ADA8F0F0"
    )
    port map (
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      O => IFetchPort_Mram_Instruction27_pack_8
    );
  ControlUnitPort_LWD_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y69",
      INIT => X"0200000022000000"
    )
    port map (
      ADR4 => IFetchPort_Mram_Instruction28,
      ADR0 => IFetchPort_Mram_Instruction27,
      ADR1 => IFetchPort_Mram_Instruction29,
      ADR3 => IFetchPort_Mram_Instruction26,
      ADR5 => ControlUnitPort_NextPCSignal(2),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      O => DMemRead
    );
  DMemoryPort_DMem_11_3 : X_FF
    generic map(
      LOC => "SLICE_X59Y70",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_11_3_CLK,
      I => DMemoryPort_DMem_11_3_dpot_3832,
      O => DMemoryPort_DMem_11(3),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_11_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X59Y70",
      INIT => X"FFFDFFFF00200000"
    )
    port map (
      ADR2 => N376,
      ADR4 => ALUResult_1_0,
      ADR3 => ALUResult_5_0,
      ADR5 => DMemoryPort_DMem_11(3),
      ADR1 => ALUResult(6),
      ADR0 => ALUResult(0),
      O => DMemoryPort_DMem_11_3_dpot_3832
    );
  DMemoryPort_mux11_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y71",
      INIT => X"FFFFCDEF05AFCDEF"
    )
    port map (
      ADR2 => DMemoryPort_DMem_10(1),
      ADR3 => DMemoryPort_DMem_11(3),
      ADR4 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => ALUResult(0),
      O => N133
    );
  DMemoryPort_mux11_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y72",
      INIT => X"FFFFFFFF50FF5FFF"
    )
    port map (
      ADR1 => '1',
      ADR3 => DMemoryPort_DMem_12(1),
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => ALUResult(0),
      O => N132
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_82_3855,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_82_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_82 : X_MUX2
    generic map(
      LOC => "SLICE_X59Y75"
    )
    port map (
      IA => N606,
      IB => N607,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_82_3855,
      SEL => LED_3_OBUF_8283
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_82_F : X_LUT6
    generic map(
      LOC => "SLICE_X59Y75",
      INIT => X"0000ACAC0F000000"
    )
    port map (
      ADR4 => LED_2_OBUF_8362,
      ADR5 => LED_1_OBUF_8285,
      ADR2 => LED_0_OBUF_8361,
      ADR1 => DMemoryPort_DMem_2(1),
      ADR0 => DMemoryPort_DMem_3(1),
      ADR3 => DMemoryPort_DMem_4(1),
      O => N606
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_82_G : X_LUT6
    generic map(
      LOC => "SLICE_X59Y75",
      INIT => X"000FAC000000AC00"
    )
    port map (
      ADR4 => LED_2_OBUF_8362,
      ADR3 => LED_1_OBUF_8285,
      ADR2 => LED_0_OBUF_8361,
      ADR1 => DMemoryPort_DMem_10(1),
      ADR0 => DMemoryPort_DMem_11(3),
      ADR5 => DMemoryPort_DMem_12(1),
      O => N607
    );
  DMemoryPort_mux6_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y78",
      INIT => X"FFFF0AFFFFFF5FFF"
    )
    port map (
      ADR1 => '1',
      ADR3 => DMemoryPort_DMem_4(15),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N155
    );
  DMemoryPort_mux7_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y78",
      INIT => X"FBF8FFFFFBF8FFFF"
    )
    port map (
      ADR5 => '1',
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => DMemoryPort_DMem_10(16),
      ADR2 => ALUResult(0),
      O => N153
    );
  DMemoryPort_mux7_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y78",
      INIT => X"FFFF5533FFFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR5 => DMemoryPort_DMem_12(16),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR3 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N152
    );
  DMemoryPort_mux7_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y79",
      INIT => X"FFFFF0CCFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR3 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_2(16),
      ADR4 => ALUResult(0),
      O => N151
    );
  DMemoryPort_mux8_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y79",
      INIT => X"FFFF0F3FFFFFCFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => DMemoryPort_DMem_4(17),
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N145
    );
  IDecodePort_Mmux_read_data2_491 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y79",
      INIT => X"0000F0A0000000A0"
    )
    port map (
      ADR1 => '1',
      ADR5 => IDecodePort_Reg_array_5_18_Q,
      ADR0 => IDecodePort_Reg_array_4(18),
      ADR3 => IDecodePort_write_register_address(0),
      ADR4 => IFetchPort_Mram_Instruction17,
      ADR2 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_49
    );
  ALUPort_Mmux_B_input101 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y79",
      INIT => X"FF00FF0020004A00"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data2_49,
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(2),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      ADR5 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(18)
    );
  DMemoryPort_mux8_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y80",
      INIT => X"AEAEBFBFFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR5 => DMemoryPort_DMem_12(17),
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => ALUResult(0),
      O => N147
    );
  DMemoryPort_mux9_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y81",
      INIT => X"FFFFFFFFAFAFCFCF"
    )
    port map (
      ADR3 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => DMemoryPort_DMem_10(18),
      ADR5 => ALUResult(0),
      O => N143
    );
  DMemoryPort_mux14_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y81",
      INIT => X"DFDFCFFFDFDFCFFF"
    )
    port map (
      ADR5 => '1',
      ADR2 => DMemoryPort_DMem_12(22),
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N117
    );
  DMemoryPort_mux16_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y81",
      INIT => X"FFFFCFFFFCFFCCFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_2(24),
      ADR1 => ALUResult(0),
      O => N106
    );
  DMemoryPort_mux16_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y81",
      INIT => X"CCFFFCFFCFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => DMemoryPort_DMem_4(24),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N105
    );
  DMemoryPort_mux10_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y83",
      INIT => X"FF5FFF77FF5FFF77"
    )
    port map (
      ADR5 => '1',
      ADR0 => DMemoryPort_DMem_4(19),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N135
    );
  DMemoryPort_mux12_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y83",
      INIT => X"DDDDCCFFFFFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR5 => DMemoryPort_DMem_4(20),
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N125
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y84",
      INIT => X"0A0A5F5FFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => DMemoryPort_DMem_2(27),
      ADR0 => LED_3_OBUF_8283,
      ADR2 => DMemoryPort_DMem_10(27),
      ADR5 => LED_1_OBUF_8285,
      O => N474
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y85",
      INIT => X"44FF44FF77FF77FF"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => DMemoryPort_DMem_2(17),
      ADR1 => LED_3_OBUF_8283,
      ADR0 => DMemoryPort_DMem_10(17),
      ADR3 => LED_1_OBUF_8285,
      O => N498
    );
  DMemoryPort_DMem_12_22 : X_FF
    generic map(
      LOC => "SLICE_X59Y86",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_22_CLK,
      I => DMemoryPort_DMem_12_22_dpot_3967,
      O => DMemoryPort_DMem_12(22),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_22_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X59Y86",
      INIT => X"CCCCF0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_12(22),
      ADR1 => IDecodePort_Mmux_read_data2_414,
      ADR4 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_22_dpot_3967
    );
  DMemoryPort_DMem_12_21 : X_FF
    generic map(
      LOC => "SLICE_X59Y86",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_21_CLK,
      I => DMemoryPort_DMem_12_21_dpot_3974,
      O => DMemoryPort_DMem_12(21),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_21_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X59Y86",
      INIT => X"FF00CCCCFF00CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_12(21),
      ADR3 => IDecodePort_Mmux_read_data2_413,
      ADR4 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_21_dpot_3974
    );
  DMemoryPort_DMem_12_20 : X_FF
    generic map(
      LOC => "SLICE_X59Y86",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_20_CLK,
      I => DMemoryPort_DMem_12_20_dpot_3979,
      O => DMemoryPort_DMem_12(20),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_20_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X59Y86",
      INIT => X"EE44EE44EE44EE44"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_12(20),
      ADR3 => IDecodePort_Mmux_read_data2_412,
      ADR0 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_20_dpot_3979
    );
  DMemoryPort_DMem_12_19 : X_FF
    generic map(
      LOC => "SLICE_X59Y86",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_19_CLK,
      I => DMemoryPort_DMem_12_19_dpot_3987,
      O => DMemoryPort_DMem_12(19),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_19_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X59Y86",
      INIT => X"FAFA5050FAFA5050"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_12(19),
      ADR4 => IDecodePort_Mmux_read_data2_410,
      ADR0 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_19_dpot_3987
    );
  DMemoryPort_DMem_2_22 : X_FF
    generic map(
      LOC => "SLICE_X59Y87",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_22_CLK,
      I => DMemoryPort_DMem_2_22_dpot_3989,
      O => DMemoryPort_DMem_2(22),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_22_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X59Y87",
      INIT => X"FF00F0F0FF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR2 => DMemoryPort_DMem_2(22),
      ADR3 => IDecodePort_Mmux_read_data2_414,
      ADR4 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_22_dpot_3989
    );
  DMemoryPort_DMem_2_21 : X_FF
    generic map(
      LOC => "SLICE_X59Y87",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_21_CLK,
      I => DMemoryPort_DMem_2_21_dpot_3996,
      O => DMemoryPort_DMem_2(21),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_21_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X59Y87",
      INIT => X"FFFFCCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_2(21),
      ADR5 => IDecodePort_Mmux_read_data2_413,
      ADR4 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_21_dpot_3996
    );
  DMemoryPort_DMem_2_20 : X_FF
    generic map(
      LOC => "SLICE_X59Y87",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_20_CLK,
      I => DMemoryPort_DMem_2_20_dpot_4001,
      O => DMemoryPort_DMem_2(20),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_20_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X59Y87",
      INIT => X"E4E4E4E4E4E4E4E4"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => DMemoryPort_DMem_2(20),
      ADR2 => IDecodePort_Mmux_read_data2_412,
      ADR0 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_20_dpot_4001
    );
  DMemoryPort_DMem_2_19 : X_FF
    generic map(
      LOC => "SLICE_X59Y87",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_19_CLK,
      I => DMemoryPort_DMem_2_19_dpot_4009,
      O => DMemoryPort_DMem_2(19),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_19_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X59Y87",
      INIT => X"D8D8D8D8D8D8D8D8"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_2(19),
      ADR1 => IDecodePort_Mmux_read_data2_410,
      ADR0 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_19_dpot_4009
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X59Y88",
      INIT => X"11FF11FFBBFFBBFF"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_2(22),
      ADR0 => LED_3_OBUF_8283,
      ADR5 => DMemoryPort_DMem_10(22),
      ADR3 => LED_1_OBUF_8285,
      O => N484
    );
  IDecodePort_Mmux_read_data2_4261 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y64",
      INIT => X"000090C0000080E0"
    )
    port map (
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR2 => IDecodePort_Reg_array_4(4),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR0 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(3),
      O => IDecodePort_Mmux_read_data2_426
    );
  Mmux_Write_data23 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y64",
      INIT => X"5555003300000033"
    )
    port map (
      ADR2 => '1',
      ADR4 => ALUop(0),
      ADR3 => ALUPort_B_input(10),
      ADR1 => IDecodePort_Mmux_read_data1_41,
      ADR5 => ALUPort_Sh42_8776,
      ADR0 => ALUPort_B_input(4),
      O => Mmux_Write_data26_8775
    );
  IDecodePort_Mmux_read_data2_4111_SW4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y65",
      INIT => X"F3F0F3FF3F0F3FFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => IDecodePort_Reg_array_4(5),
      ADR3 => IDecodePort_Reg_array_5_1_Q,
      ADR1 => IDecodePort_Reg_array_4(7),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      O => N420
    );
  IDecodePort_Mmux_read_data2_4111_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y65",
      INIT => X"0000000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR5 => N420,
      O => N406
    );
  ALUPort_Mmux_B_input291 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y66",
      INIT => X"0000004000000000"
    )
    port map (
      ADR2 => IDecodePort_Reg_array_4(6),
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      O => ALUPort_B_input(6)
    );
  N414_N414_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N414,
      O => N414_0
    );
  IDecodePort_Mmux_read_data2_4111_SW10 : X_MUX2
    generic map(
      LOC => "SLICE_X58Y67"
    )
    port map (
      IA => N610,
      IB => N611,
      O => N414,
      SEL => ControlUnitPort_NextPCSignal(4)
    );
  IDecodePort_Mmux_read_data2_4111_SW10_F : X_LUT6
    generic map(
      LOC => "SLICE_X58Y67",
      INIT => X"C3F3FFFFC3F3F3FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR5 => IDecodePort_Reg_array_4(1),
      O => N610
    );
  IDecodePort_Mmux_read_data2_4111_SW10_G : X_LUT6
    generic map(
      LOC => "SLICE_X58Y67",
      INIT => X"FFFFFFFFFFCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => IDecodePort_Reg_array_5_1_Q,
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      O => N611
    );
  Mmux_Write_data321 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y68",
      INIT => X"FAA0FAA0EEEE4444"
    )
    port map (
      ADR0 => ALUop(0),
      ADR5 => ALUop(1),
      ADR2 => ALUPort_B_input(9),
      ADR3 => IDecodePort_Mmux_read_data1_431,
      ADR4 => ALUPort_A_input_31_B_input_31_sub_7_OUT_9_0,
      ADR1 => ALUPort_A_input_31_B_input_31_add_5_OUT_9_0,
      O => Mmux_Write_data32_8684
    );
  IDecodePort_Mmux_read_data1_4311 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y68",
      INIT => X"1100220000000000"
    )
    port map (
      ADR2 => '1',
      ADR5 => IDecodePort_Reg_array_4(9),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR4 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      O => IDecodePort_Mmux_read_data1_431
    );
  IDecodePort_Mmux_read_data1_4210 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y68",
      INIT => X"0000AF000000A000"
    )
    port map (
      ADR1 => '1',
      ADR0 => IDecodePort_Reg_array_5_11_Q,
      ADR5 => IDecodePort_Reg_array_4(11),
      ADR3 => IFetchPort_Mram_Instruction23,
      ADR4 => IFetchPort_Mram_Instruction22_8733,
      ADR2 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_42
    );
  ALUPort_Mmux_B_input121_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y68",
      INIT => X"EE22EE22EE22EE22"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => ALUPort_B_input(0),
      ADR0 => IDecodePort_Mmux_read_data1_41,
      ADR3 => IDecodePort_Mmux_read_data1_42,
      O => N266
    );
  IDecodePort_Reg_array_5_11 : X_FF
    generic map(
      LOC => "SLICE_X58Y69",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_11_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_5_11_IN,
      O => IDecodePort_Reg_array_5_11_Q,
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux25_82 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y69",
      INIT => X"01510B5BA1F1ABFB"
    )
    port map (
      ADR2 => ALUResult_1_0,
      ADR0 => ALUResult(3),
      ADR3 => N31,
      ADR1 => N30,
      ADR5 => N33,
      ADR4 => N32,
      O => DMemoryPort_mux25_82_9530
    );
  IDecodePort_Reg_array_5_3 : X_FF
    generic map(
      LOC => "SLICE_X58Y69",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_3_CLK,
      I => Write_data(3),
      O => IDecodePort_Reg_array_5_3_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data261 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y69",
      INIT => X"00AA00AA03AA00AA"
    )
    port map (
      ADR3 => DMemRead,
      ADR2 => ALUResult_5_0,
      ADR0 => ALUResult(3),
      ADR5 => ALUResult(4),
      ADR1 => ALUResult(6),
      ADR4 => DMemoryPort_mux25_82_9530,
      O => Write_data(3)
    );
  IDecodePort_Reg_array_5_1 : X_FF
    generic map(
      LOC => "SLICE_X58Y69",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_1_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_5_1_IN,
      O => IDecodePort_Reg_array_5_1_Q,
      RST => GND,
      SET => GND
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_82 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y69",
      INIT => X"DD88DD88A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR5 => LED_1_OBUF_8285,
      ADR0 => LED_0_OBUF_8361,
      ADR3 => IDecodePort_Reg_array_2_1_Q,
      ADR1 => IDecodePort_Reg_array_3_1_Q,
      ADR2 => IDecodePort_Reg_array_1_1_0,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_82_9433
    );
  DMemoryPort_n1078_inv1_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y69",
      INIT => X"F0F0F0F0F2F0D0F0"
    )
    port map (
      ADR2 => DMemoryPort_DMem_11(3),
      ADR5 => IFetchPort_Mram_Instruction27,
      ADR3 => IFetchPort_Mram_Instruction29,
      ADR0 => ControlUnitPort_ANDI_R_AND_OR_203_o1,
      ADR1 => IFetchPort_Mram_Instruction26,
      ADR4 => IDecodePort_Mmux_read_data2_425,
      O => N376
    );
  Mmux_Write_data102_Mmux_Write_data102_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Reg_array_1(1),
      O => IDecodePort_Reg_array_1_1_0
    );
  Mmux_Write_data103 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y70",
      INIT => X"000E000400000000"
    )
    port map (
      ADR3 => ALUPort_B_input(3),
      ADR5 => ALUPort_Sh2,
      ADR2 => ALUPort_B_input(2),
      ADR0 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data2_426,
      ADR4 => IFetchPort_Mram_Instruction4,
      O => Mmux_Write_data102
    );
  IDecodePort_Reg_array_1_1 : X_FF
    generic map(
      LOC => "SLICE_X58Y70",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0296_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_1_1_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_1_1_IN,
      O => IDecodePort_Reg_array_1(1),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data25 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y71",
      INIT => X"FCC0FCC0BBBB8888"
    )
    port map (
      ADR1 => ALUop(0),
      ADR5 => ALUop(1),
      ADR2 => ALUPort_B_input(10),
      ADR3 => IDecodePort_Mmux_read_data1_41,
      ADR0 => ALUPort_A_input_31_B_input_31_sub_7_OUT_10_0,
      ADR4 => ALUPort_A_input_31_B_input_31_add_5_OUT_10_0,
      O => Mmux_Write_data28
    );
  IDecodePort_Mmux_read_data1_4110 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y71",
      INIT => X"0022220000000000"
    )
    port map (
      ADR2 => '1',
      ADR0 => IDecodePort_Reg_array_4(10),
      ADR3 => ControlUnitPort_NextPCSignal(0),
      ADR4 => ControlUnitPort_NextPCSignal(1),
      ADR5 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      O => IDecodePort_Mmux_read_data1_41
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_821 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y71",
      INIT => X"DDDD000088880000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => LED_1_OBUF_8285,
      ADR0 => LED_0_OBUF_8361,
      ADR1 => IDecodePort_Reg_array_3_3_Q,
      ADR5 => IDecodePort_Reg_array_2_3_Q,
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_82
    );
  IDecodePort_Mmux_read_data1_441 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y72",
      INIT => X"5544004400000000"
    )
    port map (
      ADR2 => '1',
      ADR4 => IDecodePort_Reg_array_5_13_Q,
      ADR1 => IDecodePort_Reg_array_4(13),
      ADR5 => IFetchPort_Mram_Instruction23,
      ADR0 => IFetchPort_Mram_Instruction22_8733,
      ADR3 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_44
    );
  ALUPort_Mmux_B_input121_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y72",
      INIT => X"FF00CCCCFF00CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => ALUPort_B_input(0),
      ADR1 => IDecodePort_Mmux_read_data1_43,
      ADR3 => IDecodePort_Mmux_read_data1_44,
      O => N263
    );
  Mmux_Write_data101 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y73",
      INIT => X"0000010130003101"
    )
    port map (
      ADR0 => IDecodePort_Mmux_read_data1_49,
      ADR5 => ALUPort_B_input(4),
      ADR1 => ALUop(0),
      ADR2 => ALUop(1),
      ADR4 => ALUPort_B_input(18),
      ADR3 => ALUPort_Sh146,
      O => Mmux_Write_data10
    );
  Mmux_Write_data105 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y73",
      INIT => X"F080F080F0C0F080"
    )
    port map (
      ADR2 => ALUop(2),
      ADR1 => Mmux_Write_data101_0,
      ADR0 => Mmux_Write_data102,
      ADR4 => Mmux_Write_data103_9374,
      ADR5 => ALUPort_B_input(4),
      ADR3 => Mmux_Write_data10,
      O => Mmux_Write_data104_8657
    );
  Mmux_Write_data55 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y75",
      INIT => X"FCC0FCC0FAFA0A0A"
    )
    port map (
      ADR2 => ALUop(0),
      ADR5 => ALUop(1),
      ADR3 => ALUPort_B_input(13),
      ADR1 => IDecodePort_Mmux_read_data1_44,
      ADR4 => ALUPort_A_input_31_B_input_31_sub_7_OUT_13_0,
      ADR0 => ALUPort_A_input_31_B_input_31_add_5_OUT_13_0,
      O => Mmux_Write_data54_8833
    );
  IDecodePort_Reg_array_4_18 : X_FF
    generic map(
      LOC => "SLICE_X58Y77",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_18_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_18_IN,
      O => IDecodePort_Reg_array_4(18),
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux7_82 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y77",
      INIT => X"010B515BA1ABF1FB"
    )
    port map (
      ADR0 => ALUResult(3),
      ADR2 => ALUResult_1_0,
      ADR3 => N152,
      ADR5 => N153,
      ADR1 => N150,
      ADR4 => N151,
      O => DMemoryPort_mux7_82_9533
    );
  IDecodePort_Reg_array_4_16 : X_FF
    generic map(
      LOC => "SLICE_X58Y77",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_16_CLK,
      I => Write_data(16),
      O => IDecodePort_Reg_array_4(16),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data87 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y77",
      INIT => X"00F200F2FFF200F2"
    )
    port map (
      ADR3 => DMemRead,
      ADR0 => Mmux_Write_data85_8843,
      ADR1 => ALUop(2),
      ADR2 => Mmux_Write_data84_8838,
      ADR5 => N206,
      ADR4 => DMemoryPort_mux7_82_9533,
      O => Write_data(16)
    );
  IDecodePort_Reg_array_4_17 : X_FF
    generic map(
      LOC => "SLICE_X58Y77",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_17_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_17_IN,
      O => IDecodePort_Reg_array_4(17),
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux6_82 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y77",
      INIT => X"44770C0C44773F3F"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR4 => ALUResult_1_0,
      ADR2 => N157,
      ADR0 => N158,
      ADR5 => N155,
      ADR3 => N156,
      O => DMemoryPort_mux6_82_9532
    );
  IDecodePort_Reg_array_4_15 : X_FF
    generic map(
      LOC => "SLICE_X58Y77",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_15_CLK,
      I => Write_data(15),
      O => IDecodePort_Reg_array_4(15),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data76 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y77",
      INIT => X"2222222222222E22"
    )
    port map (
      ADR1 => DMemRead,
      ADR2 => ALUResult_5_0,
      ADR0 => Mmux_Write_data74_8846,
      ADR4 => ALUResult(4),
      ADR5 => ALUResult(6),
      ADR3 => DMemoryPort_mux6_82_9532,
      O => Write_data(15)
    );
  DMemoryPort_mux6_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y78",
      INIT => X"AEFFAEFFBFFFBFFF"
    )
    port map (
      ADR4 => '1',
      ADR3 => DMemoryPort_DMem_12(15),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => ALUResult(0),
      O => N157
    );
  IDecodePort_Mmux_read_data1_4101 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y78",
      INIT => X"0000FC0000003000"
    )
    port map (
      ADR0 => '1',
      ADR5 => IDecodePort_Reg_array_5_19_Q,
      ADR2 => IDecodePort_Reg_array_4(19),
      ADR3 => IFetchPort_Mram_Instruction23,
      ADR4 => IFetchPort_Mram_Instruction22_8733,
      ADR1 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_410
    );
  ALUPort_Mmux_B_input121_SW14 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y78",
      INIT => X"FF00FF00CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => ALUPort_B_input(0),
      ADR1 => IDecodePort_Mmux_read_data1_49,
      ADR3 => IDecodePort_Mmux_read_data1_410,
      O => N281
    );
  DMemoryPort_mux9_82 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y79",
      INIT => X"031103DDCF11CFDD"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR3 => ALUResult_1_0,
      ADR4 => N142,
      ADR5 => N143,
      ADR0 => N140,
      ADR2 => N141,
      O => DMemoryPort_mux9_82_9535
    );
  IDecodePort_Reg_array_5_18 : X_FF
    generic map(
      LOC => "SLICE_X58Y79",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_18_CLK,
      I => Write_data(18),
      O => IDecodePort_Reg_array_5_18_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data107 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y79",
      INIT => X"55CC00CC55FC00FC"
    )
    port map (
      ADR3 => DMemRead,
      ADR2 => Mmux_Write_data105_8656,
      ADR5 => ALUop(2),
      ADR1 => Mmux_Write_data104_8657,
      ADR0 => N206,
      ADR4 => DMemoryPort_mux9_82_9535,
      O => Write_data(18)
    );
  DMemoryPort_mux8_82 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y79",
      INIT => X"0303F3F3505F505F"
    )
    port map (
      ADR5 => ALUResult(3),
      ADR2 => ALUResult_1_0,
      ADR1 => N147,
      ADR4 => N148,
      ADR3 => N145,
      ADR0 => N146,
      O => DMemoryPort_mux8_82_9534
    );
  IDecodePort_Reg_array_5_17 : X_FF
    generic map(
      LOC => "SLICE_X58Y79",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_17_CLK,
      I => Write_data(17),
      O => IDecodePort_Reg_array_5_17_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data96 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y79",
      INIT => X"2F2F202F2F2F2020"
    )
    port map (
      ADR2 => DMemRead,
      ADR5 => Mmux_Write_data94_8271,
      ADR3 => ALUop(2),
      ADR4 => Mmux_Write_data93_0,
      ADR1 => N206,
      ADR0 => DMemoryPort_mux8_82_9534,
      O => Write_data(17)
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y80",
      INIT => X"5533FFFF5533FFFF"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_2(16),
      ADR3 => LED_3_OBUF_8283,
      ADR0 => DMemoryPort_DMem_10(16),
      ADR4 => LED_1_OBUF_8285,
      O => N500
    );
  DMemoryPort_DMem_2_18 : X_FF
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_18_CLK,
      I => DMemoryPort_DMem_2_18_dpot_4265,
      O => DMemoryPort_DMem_2(18),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_18_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => X"FCFCFCFC30303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_2(18),
      ADR5 => IDecodePort_Mmux_read_data2_49,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_18_dpot_4265
    );
  DMemoryPort_DMem_2_17 : X_FF
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_17_CLK,
      I => DMemoryPort_DMem_2_17_dpot_4272,
      O => DMemoryPort_DMem_2(17),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_17_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => X"F0CCF0CCF0CCF0CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR1 => DMemoryPort_DMem_2(17),
      ADR2 => IDecodePort_Mmux_read_data2_48,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_17_dpot_4272
    );
  DMemoryPort_DMem_2_16 : X_FF
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_16_CLK,
      I => DMemoryPort_DMem_2_16_dpot_4277,
      O => DMemoryPort_DMem_2(16),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_16_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => X"EE22EE22EE22EE22"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR0 => DMemoryPort_DMem_2(16),
      ADR3 => IDecodePort_Mmux_read_data2_47,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_16_dpot_4277
    );
  DMemoryPort_DMem_2_15 : X_FF
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_15_CLK,
      I => DMemoryPort_DMem_2_15_dpot_4285,
      O => DMemoryPort_DMem_2(15),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X58Y81",
      INIT => X"CCF0CCF0CCF0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => DMemoryPort_DMem_2(15),
      ADR1 => IDecodePort_Mmux_read_data2_46,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_15_dpot_4285
    );
  DMemoryPort_mux13_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y84",
      INIT => X"F1F1FBFBFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR5 => DMemoryPort_DMem_12(21),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => ALUResult(0),
      O => N122
    );
  DMemoryPort_mux10_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y84",
      INIT => X"F1FFFBFFF1FFFBFF"
    )
    port map (
      ADR5 => '1',
      ADR3 => DMemoryPort_DMem_12(19),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => ALUResult(0),
      O => N137
    );
  DMemoryPort_mux8_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y85",
      INIT => X"FFCFFFFFFFCFFF0F"
    )
    port map (
      ADR0 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => DMemoryPort_DMem_2(17),
      ADR3 => ALUResult(0),
      O => N146
    );
  DMemoryPort_DMem_4_22_DMemoryPort_DMem_4_22_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N550,
      O => N550_0
    );
  DMemoryPort_DMem_4_22_DMemoryPort_DMem_4_22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N556,
      O => N556_0
    );
  DMemoryPort_DMem_4_22_DMemoryPort_DMem_4_22_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N558,
      O => N558_0
    );
  DMemoryPort_DMem_4_22_DMemoryPort_DMem_4_22_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N560,
      O => N560_0
    );
  DMemoryPort_DMem_4_22 : X_FF
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_22_CLK,
      I => DMemoryPort_DMem_4_22_dpot_4304,
      O => DMemoryPort_DMem_4(22),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_22_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"AAF0AAF0AAF0AAF0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_414,
      ADR2 => DMemoryPort_DMem_4(22),
      ADR3 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_22_dpot_4304
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"FCFC3030"
    )
    port map (
      ADR1 => LED_3_OBUF_8283,
      ADR4 => DMemoryPort_DMem_12(22),
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_4(22),
      ADR0 => '1',
      O => N550
    );
  DMemoryPort_DMem_4_21 : X_FF
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_21_CLK,
      I => DMemoryPort_DMem_4_21_dpot_4316,
      O => DMemoryPort_DMem_4(21),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_21_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"FFCC00CCFFCC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => IDecodePort_Mmux_read_data2_413,
      ADR1 => DMemoryPort_DMem_4(21),
      ADR3 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_21_dpot_4316
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"ACACACAC"
    )
    port map (
      ADR2 => LED_3_OBUF_8283,
      ADR0 => DMemoryPort_DMem_12(21),
      ADR3 => '1',
      ADR1 => DMemoryPort_DMem_4(21),
      ADR4 => '1',
      O => N556
    );
  DMemoryPort_DMem_4_20 : X_FF
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_20_CLK,
      I => DMemoryPort_DMem_4_20_dpot_4327,
      O => DMemoryPort_DMem_4(20),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_20_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"F0CCF0CCF0CCF0CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_412,
      ADR1 => DMemoryPort_DMem_4(20),
      ADR3 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_20_dpot_4327
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"AAAACCCC"
    )
    port map (
      ADR4 => LED_3_OBUF_8283,
      ADR0 => DMemoryPort_DMem_12(20),
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_4(20),
      ADR3 => '1',
      O => N558
    );
  DMemoryPort_DMem_4_19 : X_FF
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_19_CLK,
      I => DMemoryPort_DMem_4_19_dpot_4328,
      O => DMemoryPort_DMem_4(19),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_19_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"F0AAF0AAF0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_410,
      ADR0 => DMemoryPort_DMem_4(19),
      ADR3 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_19_dpot_4328
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X58Y86",
      INIT => X"EEEE2222"
    )
    port map (
      ADR1 => LED_3_OBUF_8283,
      ADR4 => DMemoryPort_DMem_12(19),
      ADR2 => '1',
      ADR0 => DMemoryPort_DMem_4(19),
      ADR3 => '1',
      O => N560
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X58Y88",
      INIT => X"37373737BFBFBFBF"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => DMemoryPort_DMem_2(21),
      ADR0 => LED_3_OBUF_8283,
      ADR5 => DMemoryPort_DMem_10(21),
      ADR1 => LED_1_OBUF_8285,
      O => N490
    );
  IDecodePort_Mmux_read_data2_4111_SW12_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y65",
      INIT => X"F1FDF1FD1FDF1FDF"
    )
    port map (
      ADR4 => '1',
      ADR3 => IDecodePort_Reg_array_4(2),
      ADR1 => IDecodePort_Reg_array_5_1_Q,
      ADR0 => IDecodePort_Reg_array_4(0),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      O => N424
    );
  IDecodePort_Mmux_read_data2_4111_SW12 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y65",
      INIT => X"000000000000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR4 => ControlUnitPort_NextPCSignal(2),
      ADR5 => N424,
      O => N417
    );
  ALUPort_Mmux_ALU_output231 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y65",
      INIT => X"FCFCC0C0AFA0AFA0"
    )
    port map (
      ADR2 => ALUop(0),
      ADR5 => ALUop(1),
      ADR1 => ALUPort_B_input(2),
      ADR4 => IDecodePort_Mmux_read_data1_422,
      ADR0 => ALUPort_A_input_31_B_input_31_sub_7_OUT_2_0,
      ADR3 => ALUPort_A_input_31_B_input_31_add_5_OUT_2_0,
      O => ALUPort_Mmux_ALU_output23
    );
  IDecodePort_Mmux_read_data1_4221 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y65",
      INIT => X"1100440000000000"
    )
    port map (
      ADR2 => '1',
      ADR5 => IDecodePort_Reg_array_4(2),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(4),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      O => IDecodePort_Mmux_read_data1_422
    );
  DMemoryPort_n1050_inv_cepot_DMemoryPort_n1050_inv_cepot_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_n0111(4),
      O => ControlUnitPort_n0111_4_0
    );
  DMemoryPort_n1082_inv_cepot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y67",
      INIT => X"0000333300013333"
    )
    port map (
      ADR5 => ControlUnitPort_ANDI_R_AND_OR_203_o_8664,
      ADR2 => ControlUnitPort_SUBI_R_SUB_OR_202_o_8665,
      ADR0 => ControlUnitPort_ORI_R_OR_OR_204_o_0,
      ADR3 => ControlUnitPort_ADDI_R_ADD_OR_201_o,
      ADR4 => ALUPort_Mmux_ALU_output274_8419,
      ADR1 => ALUPort_Mmux_ALU_output273_8515,
      O => DMemoryPort_n1050_inv_cepot
    );
  ControlUnitPort_Madd_n0111_Madd_xor_4_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X60Y67"
    )
    port map (
      CI => ControlUnitPort_Madd_n0111_Madd_cy(3),
      CYINIT => '0',
      CO(3) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_CO_3_UNCONNECTED,
      CO(2) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_CO_2_UNCONNECTED,
      CO(1) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_CO_0_UNCONNECTED,
      DI(3) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_DI_3_UNCONNECTED,
      DI(2) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_DI_2_UNCONNECTED,
      DI(1) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_DI_1_UNCONNECTED,
      DI(0) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_DI_0_UNCONNECTED,
      O(3) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_O_3_UNCONNECTED,
      O(2) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_O_2_UNCONNECTED,
      O(1) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_O_1_UNCONNECTED,
      O(0) => ControlUnitPort_n0111(4),
      S(3) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_S_3_UNCONNECTED,
      S(2) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_S_2_UNCONNECTED,
      S(1) => NLW_ControlUnitPort_Madd_n0111_Madd_xor_4_S_1_UNCONNECTED,
      S(0) => ControlUnitPort_Madd_n0111_Madd_lut(4)
    );
  IDecodePort_Mmux_read_data2_4111_SW9_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y67",
      INIT => X"0BAA0BAAF050F050"
    )
    port map (
      ADR4 => '1',
      ADR1 => IDecodePort_Reg_array_4(1),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      O => N429
    );
  IDecodePort_Mmux_read_data2_4111_SW9 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y67",
      INIT => X"00080088555D55DD"
    )
    port map (
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR1 => IDecodePort_Reg_array_5_1_Q,
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR2 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR5 => N429,
      O => N413
    );
  ControlUnitPort_Madd_n0111_Madd_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X60Y67",
      INIT => X"EF10FB0477888D72"
    )
    port map (
      ADR3 => ControlUnitPort_PCIncby1_4_0,
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      O => ControlUnitPort_Madd_n0111_Madd_lut(4)
    );
  ALUPort_Mmux_B_input33 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y68",
      INIT => X"FF001400FF008400"
    )
    port map (
      ADR1 => ControlUnitPort_NextPCSignal(3),
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(2),
      ADR3 => IDecodePort_Mmux_read_data2_42,
      O => ALUPort_B_input(11)
    );
  IDecodePort_n0296_inv2 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y68",
      INIT => X"0000470000000000"
    )
    port map (
      ADR4 => IDecodePort_write_register_address(2),
      ADR3 => IDecodePort_write_register_address(0),
      ADR5 => IDecodePort_n0296_inv1,
      ADR1 => RType,
      ADR2 => IFetchPort_Mram_Instruction17,
      ADR0 => IFetchPort_Mram_Instruction10,
      O => IDecodePort_n0296_inv
    );
  IDecodePort_Mmux_read_data2_9761 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y68",
      INIT => X"0F0A0F0A000A000A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => IDecodePort_Reg_array_5_3_Q,
      ADR0 => IDecodePort_Reg_array_4(3),
      ADR3 => IDecodePort_write_register_address(0),
      ADR2 => IFetchPort_Mram_Instruction17,
      O => IDecodePort_Mmux_read_data2_976
    );
  IDecodePort_Mmux_read_data2_4251 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y68",
      INIT => X"ACA0ACA0AFA0A0A0"
    )
    port map (
      ADR2 => IFetchPort_Mram_Instruction18,
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR5 => IDecodePort_write_register_address(0),
      ADR4 => IDecodePort_Reg_array_2_3_Q,
      ADR1 => IDecodePort_Reg_array_3_3_Q,
      ADR0 => IDecodePort_Mmux_read_data2_976,
      O => IDecodePort_Mmux_read_data2_425
    );
  IFetchPort_Mram_Instruction28_IFetchPort_Mram_Instruction28_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IFetchPort_Mram_Instruction,
      O => IFetchPort_Mram_Instruction_0
    );
  IFetchPort_Mram_Instruction28_IFetchPort_Mram_Instruction28_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_ORI_R_OR_OR_204_o_4434,
      O => ControlUnitPort_ORI_R_OR_OR_204_o_0
    );
  IFetchPort_Mram_Instruction281 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y69",
      INIT => X"F8FCA800F8FCA800"
    )
    port map (
      ADR1 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(2),
      ADR5 => '1',
      O => IFetchPort_Mram_Instruction28
    );
  IFetchPort_Mram_Instruction11 : X_LUT5
    generic map(
      LOC => "SLICE_X60Y69",
      INIT => X"03020808"
    )
    port map (
      ADR1 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(2),
      O => IFetchPort_Mram_Instruction
    );
  ControlUnitPort_ADDI_R_ADD_OR_201_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y69",
      INIT => X"00001B1300001B13"
    )
    port map (
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(2),
      ADR0 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(0),
      ADR5 => '1',
      O => ControlUnitPort_ADDI_R_ADD_OR_201_o
    );
  ControlUnitPort_ORI_R_OR_OR_204_o : X_LUT5
    generic map(
      LOC => "SLICE_X60Y69",
      INIT => X"00000048"
    )
    port map (
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(2),
      ADR0 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(0),
      O => ControlUnitPort_ORI_R_OR_OR_204_o_4434
    );
  IDecodePort_Mmux_read_data1_4111_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y69",
      INIT => X"090A6F5FDD55FFFF"
    )
    port map (
      ADR4 => IDecodePort_Reg_array_3_1_Q,
      ADR2 => IDecodePort_Reg_array_2_1_Q,
      ADR5 => ControlUnitPort_NextPCSignal(3),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      O => N369
    );
  IDecodePort_Mmux_read_data1_4111 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y69",
      INIT => X"0437003340730033"
    )
    port map (
      ADR1 => ControlUnitPort_NextPCSignal(4),
      ADR4 => IDecodePort_Reg_array_4(1),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR2 => ControlUnitPort_NextPCSignal(1),
      ADR5 => ControlUnitPort_NextPCSignal(0),
      ADR3 => N369,
      O => IDecodePort_Mmux_read_data1_411
    );
  IDecodePort_Reg_array_4_3 : X_FF
    generic map(
      LOC => "SLICE_X60Y70",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_3_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_3_IN,
      O => IDecodePort_Reg_array_4(3),
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux22_82 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y70",
      INIT => X"404C434F707C737F"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR2 => ALUResult_1_0,
      ADR3 => N77,
      ADR0 => N78,
      ADR4 => N75,
      ADR5 => N76,
      O => DMemoryPort_mux22_82_9540
    );
  IDecodePort_Reg_array_4_2 : X_FF
    generic map(
      LOC => "SLICE_X60Y70",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_2_CLK,
      I => Write_data(2),
      O => IDecodePort_Reg_array_4(2),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data231 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y70",
      INIT => X"00F000F011F000F0"
    )
    port map (
      ADR3 => DMemRead,
      ADR0 => ALUResult_5_0,
      ADR2 => ALUResult(2),
      ADR1 => ALUResult(4),
      ADR5 => ALUResult(6),
      ADR4 => DMemoryPort_mux22_82_9540,
      O => Write_data(2)
    );
  IDecodePort_Reg_array_4_1 : X_FF
    generic map(
      LOC => "SLICE_X60Y70",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_1_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_1_IN,
      O => IDecodePort_Reg_array_4(1),
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux_82 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y70",
      INIT => X"00F053530FFF5353"
    )
    port map (
      ADR2 => ALUResult(3),
      ADR4 => ALUResult_1_0,
      ADR0 => N182,
      ADR3 => N183,
      ADR1 => N180,
      ADR5 => N181,
      O => DMemoryPort_mux_82_9539
    );
  IDecodePort_Reg_array_4_0 : X_FF
    generic map(
      LOC => "SLICE_X60Y70",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_0_CLK,
      I => Write_data(0),
      O => IDecodePort_Reg_array_4(0),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data12 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y70",
      INIT => X"00000500CCCCCCCC"
    )
    port map (
      ADR5 => DMemRead,
      ADR2 => ALUResult_5_0,
      ADR1 => ALUResult(0),
      ADR4 => ALUResult(4),
      ADR0 => ALUResult(6),
      ADR3 => DMemoryPort_mux_82_9539,
      O => Write_data(0)
    );
  ControlUnitPort_NextPCSignal_3_1_ControlUnitPort_NextPCSignal_3_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_ANDI_R_AND_OR_203_o1_pack_3,
      O => ControlUnitPort_ANDI_R_AND_OR_203_o1
    );
  IDecodePort_n0308_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y71",
      INIT => X"000010D000000000"
    )
    port map (
      ADR4 => IDecodePort_write_register_address_1_0,
      ADR5 => IDecodePort_write_register_address(2),
      ADR2 => IDecodePort_n0296_inv1,
      ADR1 => RType,
      ADR0 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction10,
      O => IDecodePort_n0308_inv
    );
  IFetchPort_Mram_Instruction131 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y71",
      INIT => X"0125100401251004"
    )
    port map (
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(2),
      ADR1 => ControlUnitPort_NextPCSignal(4),
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR5 => '1',
      O => IFetchPort_Mram_Instruction13
    );
  ControlUnitPort_ANDI_R_AND_OR_203_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X60Y71",
      INIT => X"052F373F"
    )
    port map (
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(2),
      ADR1 => ControlUnitPort_NextPCSignal(4),
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      O => ControlUnitPort_ANDI_R_AND_OR_203_o1_pack_3
    );
  IDecodePort_Mmux_write_register_address31 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y71",
      INIT => X"FFAAFFAA55005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => RType,
      ADR3 => IFetchPort_Mram_Instruction18,
      ADR5 => IFetchPort_Mram_Instruction13,
      O => IDecodePort_write_register_address(2)
    );
  ControlUnitPort_NextPCSignal_3_1 : X_SFF
    generic map(
      LOC => "SLICE_X60Y71",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_3_1_CLK,
      I => NlwBufferSignal_ControlUnitPort_NextPCSignal_3_1_IN,
      O => ControlUnitPort_NextPCSignal_3_1_9446,
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ControlUnitPort_SWD_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y71",
      INIT => X"0404000004040000"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => IFetchPort_Mram_Instruction29,
      ADR0 => IFetchPort_Mram_Instruction27,
      ADR2 => IFetchPort_Mram_Instruction26,
      ADR4 => ControlUnitPort_ANDI_R_AND_OR_203_o1,
      O => DMemWrite
    );
  DMemoryPort_mux_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y72",
      INIT => X"FFFFFFFF11FFDDFF"
    )
    port map (
      ADR2 => '1',
      ADR3 => DMemoryPort_DMem_4(0),
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => ALUResult(0),
      O => N180
    );
  Mmux_Write_data45 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y72",
      INIT => X"FFF0F000CCAACCAA"
    )
    port map (
      ADR3 => ALUop(0),
      ADR5 => ALUop(1),
      ADR2 => ALUPort_B_input(12),
      ADR4 => IDecodePort_Mmux_read_data1_43,
      ADR1 => ALUPort_A_input_31_B_input_31_sub_7_OUT_12_0,
      ADR0 => ALUPort_A_input_31_B_input_31_add_5_OUT_12_0,
      O => Mmux_Write_data44_8391
    );
  IDecodePort_Mmux_read_data1_433 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y72",
      INIT => X"0000440044000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => IDecodePort_Reg_array_4(12),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(4),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      O => IDecodePort_Mmux_read_data1_43
    );
  DMemoryPort_DMem_4_2_DMemoryPort_DMem_4_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N592,
      O => N592_0
    );
  DMemoryPort_DMem_4_2 : X_FF
    generic map(
      LOC => "SLICE_X60Y73",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_2_CLK,
      I => DMemoryPort_DMem_4_2_dpot_4554,
      O => DMemoryPort_DMem_4(2),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y73",
      INIT => X"CCF0CCF0CCF0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => IDecodePort_Mmux_read_data2_422,
      ADR2 => DMemoryPort_DMem_4(2),
      ADR3 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_2_dpot_4554
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X60Y73",
      INIT => X"FAFA5050"
    )
    port map (
      ADR0 => LED_3_OBUF_8283,
      ADR4 => DMemoryPort_DMem_12(2),
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_4(2),
      ADR1 => '1',
      O => N592
    );
  DMemoryPort_n1050_inv_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y73",
      INIT => X"0000000100000001"
    )
    port map (
      ADR5 => '1',
      ADR1 => ALUResult(3),
      ADR4 => ALUResult_5_0,
      ADR0 => ALUResult(6),
      ADR2 => ALUResult(0),
      ADR3 => N14,
      O => DMemoryPort_n1050_inv_rstpot_9053
    );
  DMemoryPort_DMem_4_1 : X_FF
    generic map(
      LOC => "SLICE_X60Y73",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_1_CLK,
      I => DMemoryPort_DMem_4_1_dpot_4542,
      O => DMemoryPort_DMem_4(1),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y73",
      INIT => X"F0F0F0F0CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => DMemoryPort_DMem_4(1),
      ADR2 => IDecodePort_Mmux_read_data2_411,
      ADR5 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_1_dpot_4542
    );
  DMemoryPort_DMem_4_0 : X_FF
    generic map(
      LOC => "SLICE_X60Y73",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_0_CLK,
      I => DMemoryPort_DMem_4_0_dpot_4543,
      O => DMemoryPort_DMem_4(0),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y73",
      INIT => X"11000000F0F0F0F0"
    )
    port map (
      ADR4 => IDecodePort_Reg_array_4(0),
      ADR1 => IDecodePort_write_register_address(0),
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_4(0),
      ADR3 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_0_dpot_4543
    );
  DMemoryPort_mux22_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y74",
      INIT => X"DCDFDCDFFFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR5 => DMemoryPort_DMem_12(2),
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N77
    );
  DMemoryPort_mux11_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y74",
      INIT => X"AFAACFCCAFFFCFFF"
    )
    port map (
      ADR5 => DMemoryPort_DMem_2(1),
      ADR2 => DMemoryPort_DMem_3(1),
      ADR4 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N131
    );
  ALUPort_Sh161 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y75",
      INIT => X"FACF0ACFFAC00AC0"
    )
    port map (
      ADR3 => ALUPort_B_input(0),
      ADR2 => ALUPort_B_input(1),
      ADR0 => IDecodePort_Mmux_read_data1_46,
      ADR4 => IDecodePort_Mmux_read_data1_44,
      ADR1 => IDecodePort_Mmux_read_data1_45,
      ADR5 => IDecodePort_Mmux_read_data1_47,
      O => ALUPort_Sh16
    );
  IDecodePort_Mmux_read_data1_471 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y75",
      INIT => X"0F0000000A0A0000"
    )
    port map (
      ADR1 => '1',
      ADR3 => IDecodePort_Reg_array_5_16_Q,
      ADR0 => IDecodePort_Reg_array_4(16),
      ADR4 => IFetchPort_Mram_Instruction23,
      ADR2 => IFetchPort_Mram_Instruction22_8733,
      ADR5 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_47
    );
  IDecodePort_Mmux_read_data2_481 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y76",
      INIT => X"4400440055000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => IDecodePort_Reg_array_5_17_Q,
      ADR4 => IDecodePort_Reg_array_4(17),
      ADR5 => IDecodePort_write_register_address(0),
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR3 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_48
    );
  ALUPort_Mmux_B_input91 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y76",
      INIT => X"FFFF184400000000"
    )
    port map (
      ADR5 => IDecodePort_Mmux_read_data2_48,
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR2 => ControlUnitPort_NextPCSignal(1),
      ADR1 => ControlUnitPort_NextPCSignal(3),
      ADR4 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(17)
    );
  IDecodePort_Mmux_read_data2_461 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y76",
      INIT => X"0000CCAA00000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => IDecodePort_Reg_array_5_15_Q,
      ADR0 => IDecodePort_Reg_array_4(15),
      ADR3 => IDecodePort_write_register_address(0),
      ADR4 => IFetchPort_Mram_Instruction17,
      ADR5 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_46
    );
  ALUPort_Mmux_B_input71 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y76",
      INIT => X"BA00AE00AA00FA00"
    )
    port map (
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      ADR3 => IDecodePort_Mmux_read_data2_46,
      O => ALUPort_B_input(15)
    );
  IDecodePort_Mmux_read_data2_4311 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y77",
      INIT => X"4040404404004040"
    )
    port map (
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR1 => IDecodePort_Reg_array_4(9),
      ADR2 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      O => IDecodePort_Mmux_read_data2_431
    );
  ALUPort_Mmux_ALU_output11 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y78",
      INIT => X"0000EE880000EE88"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR0 => IDecodePort_Mmux_read_data1_4,
      ADR1 => ALUPort_B_input(0),
      ADR3 => ALUop(0),
      ADR4 => ALUop(2),
      O => ALUPort_Mmux_ALU_output1
    );
  ControlUnitPort_Mmux_ALU_Op31 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y78",
      INIT => X"EEEEEECCCCCCCCCC"
    )
    port map (
      ADR2 => '1',
      ADR0 => ControlUnitPort_NextPCSignal(3),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(4),
      O => ALUop(2)
    );
  DMemoryPort_mux9_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y80",
      INIT => X"FF33FFBBFF77FFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_12(18),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N142
    );
  DMemoryPort_mux13_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y80",
      INIT => X"FFFFFF77FFBBFF33"
    )
    port map (
      ADR2 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => DMemoryPort_DMem_10(21),
      ADR3 => ALUResult(0),
      O => N123
    );
  DMemoryPort_mux17_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y80",
      INIT => X"FFFFFFFF3F3F33FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => DMemoryPort_DMem_12(25),
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => ALUResult(0),
      O => N102
    );
  DMemoryPort_mux17_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y80",
      INIT => X"FFF0FFCCFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_10(25),
      ADR3 => ALUResult(0),
      O => N103
    );
  IDecodePort_Mmux_read_data2_4171 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y81",
      INIT => X"000088880000AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => IDecodePort_Reg_array_5_25_Q,
      ADR3 => IDecodePort_Reg_array_4(25),
      ADR5 => IDecodePort_write_register_address(0),
      ADR4 => IFetchPort_Mram_Instruction17,
      ADR0 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_417
    );
  ALUPort_Mmux_B_input181 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y81",
      INIT => X"C0C4C4C0C8C4C0C0"
    )
    port map (
      ADR1 => IDecodePort_Mmux_read_data2_417,
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(25)
    );
  DMemoryPort_mux9_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y81",
      INIT => X"FFFCF0FCFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR3 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_2(18),
      ADR2 => ALUResult(0),
      O => N141
    );
  DMemoryPort_mux17_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y81",
      INIT => X"FF0FFFFFFF3FFF3F"
    )
    port map (
      ADR0 => '1',
      ADR2 => DMemoryPort_DMem_4(25),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR5 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N100
    );
  DMemoryPort_mux14_82 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y82",
      INIT => X"0145236789CDABEF"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR0 => ALUResult_1_0,
      ADR3 => N117,
      ADR5 => N118,
      ADR2 => N115,
      ADR4 => N116,
      O => DMemoryPort_mux14_82_9542
    );
  IDecodePort_Reg_array_4_22 : X_FF
    generic map(
      LOC => "SLICE_X60Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_22_CLK,
      I => Write_data(22),
      O => IDecodePort_Reg_array_4(22),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data156 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y82",
      INIT => X"5C5F0C0F5C5C0C0C"
    )
    port map (
      ADR2 => DMemRead,
      ADR5 => Mmux_Write_data154_9395,
      ADR3 => ALUop(2),
      ADR1 => Mmux_Write_data153,
      ADR0 => N206,
      ADR4 => DMemoryPort_mux14_82_9542,
      O => Write_data(22)
    );
  IDecodePort_Reg_array_4_23 : X_FF
    generic map(
      LOC => "SLICE_X60Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_23_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_23_IN,
      O => IDecodePort_Reg_array_4(23),
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux13_82 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y82",
      INIT => X"05AF222205AF7777"
    )
    port map (
      ADR0 => ALUResult(3),
      ADR4 => ALUResult_1_0,
      ADR1 => N122,
      ADR3 => N123,
      ADR5 => N120,
      ADR2 => N121,
      O => DMemoryPort_mux13_82_9541
    );
  IDecodePort_Reg_array_4_21 : X_FF
    generic map(
      LOC => "SLICE_X60Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_21_CLK,
      I => Write_data(21),
      O => IDecodePort_Reg_array_4(21),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data146 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y82",
      INIT => X"3030FC303232FE32"
    )
    port map (
      ADR1 => DMemRead,
      ADR0 => Mmux_Write_data144_8404,
      ADR5 => ALUop(2),
      ADR2 => Mmux_Write_data143_8405,
      ADR4 => N206,
      ADR3 => DMemoryPort_mux13_82_9541,
      O => Write_data(21)
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y83",
      INIT => X"0303FFFFF3F3FFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => DMemoryPort_DMem_2(24),
      ADR2 => LED_3_OBUF_8283,
      ADR5 => DMemoryPort_DMem_10(24),
      ADR4 => LED_1_OBUF_8285,
      O => N486
    );
  DMemoryPort_DMem_10_30 : X_FF
    generic map(
      LOC => "SLICE_X60Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_30_CLK,
      I => DMemoryPort_DMem_10_30_dpot_4748,
      O => DMemoryPort_DMem_10(30),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_30_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y84",
      INIT => X"FC30FC3030303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => IFetchPort_Mram_Instruction18,
      ADR2 => DMemoryPort_DMem_10(30),
      ADR5 => IDecodePort_Mmux_read_data2_970,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_30_dpot_4748
    );
  DMemoryPort_DMem_10_29 : X_FF
    generic map(
      LOC => "SLICE_X60Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_29_CLK,
      I => DMemoryPort_DMem_10_29_dpot_4736,
      O => DMemoryPort_DMem_10(29),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_29_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y84",
      INIT => X"FC0CFC0CFC0CFC0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR1 => DMemoryPort_DMem_10(29),
      ADR3 => IDecodePort_Mmux_read_data2_421,
      ADR2 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_29_dpot_4736
    );
  DMemoryPort_DMem_10_28 : X_FF
    generic map(
      LOC => "SLICE_X60Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_28_CLK,
      I => DMemoryPort_DMem_10_28_dpot_4731,
      O => DMemoryPort_DMem_10(28),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_28_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y84",
      INIT => X"E4E4E4E4E4E4E4E4"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => DMemoryPort_DMem_10(28),
      ADR2 => IDecodePort_Mmux_read_data2_420,
      ADR0 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_28_dpot_4731
    );
  DMemoryPort_DMem_10_27 : X_FF
    generic map(
      LOC => "SLICE_X60Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_27_CLK,
      I => DMemoryPort_DMem_10_27_dpot_4743,
      O => DMemoryPort_DMem_10(27),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_27_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y84",
      INIT => X"D8D8D8D8D8D8D8D8"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_10(27),
      ADR1 => IDecodePort_Mmux_read_data2_419,
      ADR0 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_27_dpot_4743
    );
  DMemoryPort_DMem_10_26 : X_FF
    generic map(
      LOC => "SLICE_X60Y85",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_26_CLK,
      I => DMemoryPort_DMem_10_26_dpot_4751,
      O => DMemoryPort_DMem_10(26),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_26_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y85",
      INIT => X"FF00FF00F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => DMemoryPort_DMem_10(26),
      ADR3 => IDecodePort_Mmux_read_data2_418,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_26_dpot_4751
    );
  DMemoryPort_DMem_10_25 : X_FF
    generic map(
      LOC => "SLICE_X60Y85",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_25_CLK,
      I => DMemoryPort_DMem_10_25_dpot_4758,
      O => DMemoryPort_DMem_10(25),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_25_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y85",
      INIT => X"F0F0F0F0CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => DMemoryPort_DMem_10(25),
      ADR2 => IDecodePort_Mmux_read_data2_417,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_25_dpot_4758
    );
  DMemoryPort_DMem_10_24 : X_FF
    generic map(
      LOC => "SLICE_X60Y85",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_24_CLK,
      I => DMemoryPort_DMem_10_24_dpot_4763,
      O => DMemoryPort_DMem_10(24),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_24_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y85",
      INIT => X"AACCAACCAACCAACC"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_10(24),
      ADR0 => IDecodePort_Mmux_read_data2_416,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_24_dpot_4763
    );
  DMemoryPort_DMem_10_23 : X_FF
    generic map(
      LOC => "SLICE_X60Y85",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_23_CLK,
      I => DMemoryPort_DMem_10_23_dpot_4771,
      O => DMemoryPort_DMem_10(23),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_23_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y85",
      INIT => X"FFF0FFF000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => DMemoryPort_DMem_10(23),
      ADR5 => IDecodePort_Mmux_read_data2_415,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_23_dpot_4771
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y86",
      INIT => X"03FF03FFF3FFF3FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => DMemoryPort_DMem_2(26),
      ADR2 => LED_3_OBUF_8283,
      ADR5 => DMemoryPort_DMem_10(26),
      ADR3 => LED_1_OBUF_8285,
      O => N480
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X60Y87",
      INIT => X"33F333F33FFF3FFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => DMemoryPort_DMem_2(19),
      ADR2 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_10(19),
      ADR1 => LED_1_OBUF_8285,
      O => N494
    );
  DMemoryPort_DMem_10_22 : X_FF
    generic map(
      LOC => "SLICE_X60Y88",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_22_CLK,
      I => DMemoryPort_DMem_10_22_dpot_4783,
      O => DMemoryPort_DMem_10(22),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_22_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y88",
      INIT => X"B8B8B8B8B8B8B8B8"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_10(22),
      ADR0 => IDecodePort_Mmux_read_data2_414,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_22_dpot_4783
    );
  DMemoryPort_DMem_10_21 : X_FF
    generic map(
      LOC => "SLICE_X60Y88",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_21_CLK,
      I => DMemoryPort_DMem_10_21_dpot_4790,
      O => DMemoryPort_DMem_10(21),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_21_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y88",
      INIT => X"BBBB8888BBBB8888"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => DMemoryPort_DMem_10(21),
      ADR0 => IDecodePort_Mmux_read_data2_413,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_21_dpot_4790
    );
  DMemoryPort_DMem_10_20 : X_FF
    generic map(
      LOC => "SLICE_X60Y88",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_20_CLK,
      I => DMemoryPort_DMem_10_20_dpot_4795,
      O => DMemoryPort_DMem_10(20),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_20_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y88",
      INIT => X"E2E2E2E2E2E2E2E2"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR0 => DMemoryPort_DMem_10(20),
      ADR2 => IDecodePort_Mmux_read_data2_412,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_20_dpot_4795
    );
  DMemoryPort_DMem_10_19 : X_FF
    generic map(
      LOC => "SLICE_X60Y88",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_19_CLK,
      I => DMemoryPort_DMem_10_19_dpot_4803,
      O => DMemoryPort_DMem_10(19),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_19_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X60Y88",
      INIT => X"B8B8B8B8B8B8B8B8"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_10(19),
      ADR0 => IDecodePort_Mmux_read_data2_410,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_19_dpot_4803
    );
  ALUPort_Mmux_B_input281 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y64",
      INIT => X"0000000800000000"
    )
    port map (
      ADR5 => IDecodePort_Reg_array_4(5),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      O => ALUPort_B_input(5)
    );
  ControlUnitPort_ALUSrc1 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y65",
      INIT => X"3333300303333033"
    )
    port map (
      ADR0 => '1',
      ADR1 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(2),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      O => ALUSrc
    );
  IDecodePort_Mmux_read_data2_4111_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y65",
      INIT => X"BBBBFFFF88880000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => IDecodePort_Mmux_read_data1_427,
      ADR0 => IDecodePort_Mmux_read_data1_429,
      ADR4 => IFetchPort_Mram_Instruction1,
      ADR1 => ALUSrc,
      O => N405
    );
  Mmux_Write_data53 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y65",
      INIT => X"0000F0000303F303"
    )
    port map (
      ADR0 => '1',
      ADR2 => ALUop(0),
      ADR5 => ALUPort_B_input(13),
      ADR1 => IDecodePort_Mmux_read_data1_44,
      ADR3 => ALUPort_Sh45,
      ADR4 => ALUPort_B_input(4),
      O => Mmux_Write_data52_9543
    );
  Mmux_Write_data54 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y65",
      INIT => X"0000CCC088888888"
    )
    port map (
      ADR1 => ALUop(2),
      ADR5 => ALUop(1),
      ADR4 => ALUop(0),
      ADR2 => Mmux_Write_data5,
      ADR3 => Mmux_Write_data51_8830,
      ADR0 => Mmux_Write_data52_9543,
      O => Mmux_Write_data53_8829
    );
  IDecodePort_Mmux_read_data2_4111_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y66",
      INIT => X"FF00FFFFFF0FFF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => IDecodePort_Reg_array_4(1),
      ADR4 => IDecodePort_Reg_array_5_1_Q,
      ADR5 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      O => N392
    );
  DMemoryPort_n1038_inv21 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y66",
      INIT => X"0000020200010203"
    )
    port map (
      ADR0 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output274_8419,
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUPort_Mmux_ALU_output273_8515,
      ADR2 => ALUResult(3),
      O => DMemoryPort_n1038_inv2
    );
  Mmux_Write_data313 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y66",
      INIT => X"0F1100110F110011"
    )
    port map (
      ADR5 => '1',
      ADR3 => ALUop(0),
      ADR1 => ALUPort_B_input(8),
      ADR0 => IDecodePort_Mmux_read_data1_430,
      ADR4 => ALUPort_Sh40,
      ADR2 => ALUPort_B_input(4),
      O => Mmux_Write_data312_9544
    );
  Mmux_Write_data314 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y66",
      INIT => X"0000E0E0F000F000"
    )
    port map (
      ADR2 => ALUop(2),
      ADR5 => ALUop(1),
      ADR4 => ALUop(0),
      ADR0 => Mmux_Write_data31_8645,
      ADR1 => Mmux_Write_data311_9432,
      ADR3 => Mmux_Write_data312_9544,
      O => Mmux_Write_data313_8477
    );
  Mmux_Write_data325 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y67",
      INIT => X"7733460277334400"
    )
    port map (
      ADR1 => ALUop(1),
      ADR4 => Mmux_Write_data321_9430,
      ADR5 => ALUPort_Sh41_9431,
      ADR0 => ALUop(0),
      ADR2 => ALUPort_B_input(4),
      ADR3 => Mmux_Write_data323_9545,
      O => Mmux_Write_data324_8805
    );
  Mmux_Write_data324 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y67",
      INIT => X"0030003F8ABA80BF"
    )
    port map (
      ADR1 => IFetchPort_Mram_Instruction4,
      ADR4 => IDecodePort_Mmux_read_data2_426,
      ADR2 => ALUSrc,
      ADR5 => ALUPort_B_input(3),
      ADR0 => Mmux_Write_data322_8598,
      ADR3 => N534,
      O => Mmux_Write_data323_9545
    );
  Mmux_Write_data301 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y67",
      INIT => X"FCFCC0C0AFA0AFA0"
    )
    port map (
      ADR2 => ALUop(0),
      ADR5 => ALUop(1),
      ADR1 => ALUPort_B_input(7),
      ADR4 => IDecodePort_Mmux_read_data1_429,
      ADR0 => ALUPort_A_input_31_B_input_31_sub_7_OUT_7_0,
      ADR3 => ALUPort_A_input_31_B_input_31_add_5_OUT_7_0,
      O => Mmux_Write_data30
    );
  IDecodePort_Mmux_read_data1_4291 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y67",
      INIT => X"0300300000000000"
    )
    port map (
      ADR0 => '1',
      ADR5 => IDecodePort_Reg_array_4(7),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR4 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      O => IDecodePort_Mmux_read_data1_429
    );
  Mmux_Write_data315 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y68",
      INIT => X"FCBBFC88B833B800"
    )
    port map (
      ADR3 => ALUop(0),
      ADR1 => ALUop(1),
      ADR0 => ALUPort_B_input(8),
      ADR5 => IDecodePort_Mmux_read_data1_430,
      ADR2 => ALUPort_A_input_31_B_input_31_sub_7_OUT_8_0,
      ADR4 => ALUPort_A_input_31_B_input_31_add_5_OUT_8_0,
      O => Mmux_Write_data314_8476
    );
  IDecodePort_Mmux_read_data2_4271 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y68",
      INIT => X"3031000012100000"
    )
    port map (
      ADR1 => ControlUnitPort_NextPCSignal(4),
      ADR4 => IDecodePort_Reg_array_4(5),
      ADR2 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      O => IDecodePort_Mmux_read_data2_427
    );
  IDecodePort_Mmux_read_data2_4281 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y68",
      INIT => X"2010202020003020"
    )
    port map (
      ADR1 => ControlUnitPort_NextPCSignal(4),
      ADR2 => IDecodePort_Reg_array_4(6),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(3),
      O => IDecodePort_Mmux_read_data2_428
    );
  DMemoryPort_n1070_inv1_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y68",
      INIT => X"FF00FD20FF00FF00"
    )
    port map (
      ADR3 => DMemoryPort_DMem_9(3),
      ADR4 => IFetchPort_Mram_Instruction27,
      ADR0 => IFetchPort_Mram_Instruction29,
      ADR5 => ControlUnitPort_ANDI_R_AND_OR_203_o1,
      ADR1 => IFetchPort_Mram_Instruction26,
      ADR2 => IDecodePort_Mmux_read_data2_425,
      O => N378
    );
  ControlUnitPort_NextPCSignal_4 : X_SFF
    generic map(
      LOC => "SLICE_X61Y69",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_4_CLK,
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_4_Q,
      O => ControlUnitPort_NextPCSignal(4),
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ControlUnitPort_Mmux_NextPCSignal_31_GND_46_o_mux_39_OUT271 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y69",
      INIT => X"DD88DDDDDD888888"
    )
    port map (
      ADR2 => '1',
      ADR3 => IFetchPort_Mram_Instruction4,
      ADR5 => ControlUnitPort_PCIncby1_4_0,
      ADR4 => ControlUnitPort_JUMP,
      ADR1 => ControlUnitPort_n0111_4_0,
      ADR0 => ControlUnitPort_BEQ_BNE_OR_198_o,
      O => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_4_Q
    );
  IDecodePort_Mmux_read_data2_4251_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y69",
      INIT => X"EEEE000022220000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => IDecodePort_Reg_array_2_3_Q,
      ADR5 => IDecodePort_Reg_array_3_3_Q,
      ADR1 => IDecodePort_write_register_address(0),
      ADR4 => IFetchPort_Mram_Instruction17,
      O => N396
    );
  IDecodePort_n0296_inv11 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y69",
      INIT => X"0000007700007777"
    )
    port map (
      ADR2 => '1',
      ADR4 => ControlUnitPort_JUMP,
      ADR3 => IFetchPort_Mram_Instruction29,
      ADR0 => IFetchPort_Mram_Instruction10,
      ADR1 => RType,
      ADR5 => ControlUnitPort_ANDI_R_AND_OR_203_o1,
      O => IDecodePort_n0296_inv1
    );
  ControlUnitPort_JUMP_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y69",
      INIT => X"0004040400000000"
    )
    port map (
      ADR2 => IFetchPort_Mram_Instruction27,
      ADR1 => IFetchPort_Mram_Instruction29,
      ADR0 => IFetchPort_Mram_Instruction26,
      ADR5 => IFetchPort_Mram_Instruction28,
      ADR4 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(4),
      O => ControlUnitPort_JUMP
    );
  IFetchPort_Mram_Instruction171 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y70",
      INIT => X"000000002222D2D2"
    )
    port map (
      ADR3 => '1',
      ADR5 => ControlUnitPort_NextPCSignal_4_2_8612,
      ADR2 => ControlUnitPort_NextPCSignal_3_1_9446,
      ADR4 => ControlUnitPort_NextPCSignal(2),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      O => IFetchPort_Mram_Instruction17
    );
  IDecodePort_n0304_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y70",
      INIT => X"3010200000000000"
    )
    port map (
      ADR5 => IDecodePort_n0296_inv1,
      ADR1 => IDecodePort_write_register_address(2),
      ADR2 => IDecodePort_write_register_address(0),
      ADR0 => RType,
      ADR3 => IFetchPort_Mram_Instruction10,
      ADR4 => IFetchPort_Mram_Instruction17,
      O => IDecodePort_n0304_inv
    );
  IFetchPort_Mram_Instruction161 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y70",
      INIT => X"1010505017175151"
    )
    port map (
      ADR3 => '1',
      ADR4 => ControlUnitPort_NextPCSignal_0_1_8633,
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR5 => ControlUnitPort_NextPCSignal_3_1_9446,
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      O => IDecodePort_write_register_address(0)
    );
  IDecodePort_Mmux_read_data2_4251_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y70",
      INIT => X"AAF0AAF0AAF0AAF0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR0 => IDecodePort_Reg_array_3_3_Q,
      ADR2 => IDecodePort_Reg_array_2_3_Q,
      ADR3 => IDecodePort_write_register_address(0),
      O => N298
    );
  DMemoryPort_mux_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y71",
      INIT => X"AAFFFFFFAFAFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => DMemoryPort_DMem_12(0),
      ADR2 => ALUPort_Mmux_ALU_output23,
      ADR5 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => ALUResult(0),
      O => N182
    );
  IDecodePort_Mmux_read_data2_4221 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y71",
      INIT => X"0000CD2C00000000"
    )
    port map (
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR5 => IDecodePort_Reg_array_4(2),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      O => IDecodePort_Mmux_read_data2_422
    );
  IDecodePort_Reg_array_3_3 : X_FF
    generic map(
      LOC => "SLICE_X61Y71",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0304_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_3_3_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_3_3_IN,
      O => IDecodePort_Reg_array_3_3_Q,
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux11_82 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y71",
      INIT => X"05220577AF22AF77"
    )
    port map (
      ADR0 => ALUResult_1_0,
      ADR3 => ALUResult(3),
      ADR4 => N130,
      ADR2 => N132,
      ADR1 => N131,
      ADR5 => N133,
      O => DMemoryPort_mux11_82_9546
    );
  IDecodePort_Reg_array_3_1 : X_FF
    generic map(
      LOC => "SLICE_X61Y71",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0304_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_3_1_CLK,
      I => Write_data(1),
      O => IDecodePort_Reg_array_3_1_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data121 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y71",
      INIT => X"3333333B00000008"
    )
    port map (
      ADR1 => DMemRead,
      ADR5 => ALUResult_1_0,
      ADR4 => ALUResult_5_0,
      ADR3 => ALUResult(4),
      ADR2 => ALUResult(6),
      ADR0 => DMemoryPort_mux11_82_9546,
      O => Write_data(1)
    );
  DMemoryPort_DMem_12_2 : X_FF
    generic map(
      LOC => "SLICE_X61Y72",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_2_CLK,
      I => DMemoryPort_DMem_12_2_dpot_5022,
      O => DMemoryPort_DMem_12(2),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X61Y72",
      INIT => X"CCF0CCF0CCF0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => DMemoryPort_DMem_12(2),
      ADR1 => IDecodePort_Mmux_read_data2_422,
      ADR3 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_2_dpot_5022
    );
  DMemoryPort_n1082_inv_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X61Y72",
      INIT => X"0000000000000500"
    )
    port map (
      ADR1 => '1',
      ADR3 => ALUResult(3),
      ADR0 => ALUResult_5_0,
      ADR2 => ALUResult(6),
      ADR5 => ALUResult(0),
      ADR4 => N14,
      O => DMemoryPort_n1082_inv_rstpot_8745
    );
  DMemoryPort_DMem_12_1 : X_FF
    generic map(
      LOC => "SLICE_X61Y72",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_1_CLK,
      I => DMemoryPort_DMem_12_1_dpot_5009,
      O => DMemoryPort_DMem_12(1),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X61Y72",
      INIT => X"AAAAAAAACCCCCCCC"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_12(1),
      ADR0 => IDecodePort_Mmux_read_data2_411,
      ADR5 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_1_dpot_5009
    );
  DMemoryPort_DMem_12_0 : X_FF
    generic map(
      LOC => "SLICE_X61Y72",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_0_CLK,
      I => DMemoryPort_DMem_12_0_dpot_5004,
      O => DMemoryPort_DMem_12(0),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X61Y72",
      INIT => X"00440000F0F0F0F0"
    )
    port map (
      ADR4 => IDecodePort_Reg_array_4(0),
      ADR0 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_12(0),
      ADR1 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_0_dpot_5004
    );
  IDecodePort_Mmux_read_data1_461 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y73",
      INIT => X"0000CC8800000088"
    )
    port map (
      ADR2 => '1',
      ADR5 => IDecodePort_Reg_array_5_15_Q,
      ADR0 => IDecodePort_Reg_array_4(15),
      ADR1 => IFetchPort_Mram_Instruction23,
      ADR4 => IFetchPort_Mram_Instruction22_8733,
      ADR3 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_46
    );
  ALUPort_Mmux_B_input121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y73",
      INIT => X"FFFF0F0FF0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => ALUPort_B_input(0),
      ADR5 => IDecodePort_Mmux_read_data1_45,
      ADR4 => IDecodePort_Mmux_read_data1_46,
      O => N260
    );
  IFetchPort_Mram_Instruction221 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y73",
      INIT => X"0F0F000C0F0F0C0C"
    )
    port map (
      ADR0 => '1',
      ADR2 => ControlUnitPort_NextPCSignal_4_1_9419,
      ADR1 => ControlUnitPort_NextPCSignal_2_2_8528,
      ADR5 => ControlUnitPort_NextPCSignal_0_1_8633,
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal_3_1_9446,
      O => IFetchPort_Mram_Instruction22_8733
    );
  DMemoryPort_mux_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y74",
      INIT => X"FAFFFFFFFAFFF0FF"
    )
    port map (
      ADR1 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_2(0),
      ADR2 => ALUResult(0),
      O => N181
    );
  DMemoryPort_mux22_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y74",
      INIT => X"AFFFBFBFAFFFBFBF"
    )
    port map (
      ADR5 => '1',
      ADR2 => DMemoryPort_DMem_4(2),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => ALUResult(0),
      O => N75
    );
  IDecodePort_Mmux_read_data1_481 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y75",
      INIT => X"00E2000000E20000"
    )
    port map (
      ADR5 => '1',
      ADR2 => IDecodePort_Reg_array_5_17_Q,
      ADR0 => IDecodePort_Reg_array_4(17),
      ADR4 => IFetchPort_Mram_Instruction23,
      ADR3 => IFetchPort_Mram_Instruction22_8733,
      ADR1 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_48
    );
  ALUPort_Mmux_B_input121_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y75",
      INIT => X"FFFF3333CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => ALUPort_B_input(0),
      ADR5 => IDecodePort_Mmux_read_data1_47,
      ADR4 => IDecodePort_Mmux_read_data1_48,
      O => N261
    );
  DMemoryPort_mux11_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y75",
      INIT => X"AFAFFFFFBBBBFFFF"
    )
    port map (
      ADR3 => '1',
      ADR4 => DMemoryPort_DMem_4(1),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR5 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => ALUResult(0),
      O => N130
    );
  IDecodePort_Mmux_read_data2_4301 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y76",
      INIT => X"00000000CD002C00"
    )
    port map (
      ADR5 => ControlUnitPort_NextPCSignal(4),
      ADR3 => IDecodePort_Reg_array_4(8),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR4 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      O => IDecodePort_Mmux_read_data2_430
    );
  Mmux_Write_data106 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y77",
      INIT => X"FEDCDC54BA989810"
    )
    port map (
      ADR1 => ALUop(0),
      ADR0 => ALUop(1),
      ADR4 => ALUPort_B_input(18),
      ADR3 => IDecodePort_Mmux_read_data1_49,
      ADR5 => ALUPort_A_input_31_B_input_31_sub_7_OUT_18_0,
      ADR2 => ALUPort_A_input_31_B_input_31_add_5_OUT_18_0,
      O => Mmux_Write_data105_8656
    );
  IDecodePort_Mmux_read_data1_491 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y77",
      INIT => X"5400100054001000"
    )
    port map (
      ADR5 => '1',
      ADR4 => IDecodePort_Reg_array_5_18_Q,
      ADR2 => IDecodePort_Reg_array_4(18),
      ADR3 => IFetchPort_Mram_Instruction23,
      ADR0 => IFetchPort_Mram_Instruction22_8733,
      ADR1 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_49
    );
  ALUPort_Mmux_ALU_output110 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y77",
      INIT => X"FFFFFCFCAA00FCFC"
    )
    port map (
      ADR0 => ALUPort_Mmux_ALU_output14_8710,
      ADR4 => ALUop(1),
      ADR5 => ALUPort_Mmux_ALU_output1,
      ADR1 => ALUPort_Mmux_ALU_output15_8604,
      ADR2 => ALUPort_Mmux_ALU_output17_8535,
      ADR3 => ALUPort_Mmux_ALU_output13_8687,
      O => ALUResult(0)
    );
  DMemoryPort_mux26_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y77",
      INIT => X"FF55FF33FFFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR5 => DMemoryPort_DMem_4(4),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N60
    );
  DMemoryPort_mux6_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y78",
      INIT => X"FFF3FFFFFFF3FF33"
    )
    port map (
      ADR0 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => DMemoryPort_DMem_10(15),
      ADR3 => ALUResult(0),
      O => N158
    );
  DMemoryPort_mux22_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y78",
      INIT => X"FFFFFFFFAFA0FFFF"
    )
    port map (
      ADR1 => '1',
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => DMemoryPort_DMem_2(2),
      ADR5 => ALUResult(0),
      O => N76
    );
  DMemoryPort_mux6_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y78",
      INIT => X"FFACFFFFFFACFFFF"
    )
    port map (
      ADR5 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => DMemoryPort_DMem_2(15),
      ADR3 => ALUResult(0),
      O => N156
    );
  IDecodePort_Mmux_read_data2_4101 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y79",
      INIT => X"3000300020202020"
    )
    port map (
      ADR4 => '1',
      ADR3 => IDecodePort_Reg_array_5_19_Q,
      ADR0 => IDecodePort_Reg_array_4(19),
      ADR5 => IDecodePort_write_register_address(0),
      ADR1 => IFetchPort_Mram_Instruction17,
      ADR2 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_410
    );
  ALUPort_Mmux_B_input111 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y79",
      INIT => X"F2F5F4F000000000"
    )
    port map (
      ADR5 => IDecodePort_Mmux_read_data2_410,
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(19)
    );
  DMemoryPort_mux13_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y79",
      INIT => X"AEBFAEBFFFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR5 => DMemoryPort_DMem_4(21),
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => ALUResult(0),
      O => N120
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y79",
      INIT => X"03FFCFFF03FFCFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => DMemoryPort_DMem_2(15),
      ADR1 => LED_3_OBUF_8283,
      ADR4 => DMemoryPort_DMem_10(15),
      ADR3 => LED_1_OBUF_8285,
      O => N504
    );
  DMemoryPort_mux16_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y80",
      INIT => X"DDFFCCFFDDFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR3 => DMemoryPort_DMem_12(24),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N107
    );
  DMemoryPort_mux15_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y80",
      INIT => X"DDFFCCFFDDFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR3 => DMemoryPort_DMem_12(23),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N112
    );
  DMemoryPort_mux15_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y80",
      INIT => X"FFFDDFDDFFFDDFDD"
    )
    port map (
      ADR5 => '1',
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => DMemoryPort_DMem_10(23),
      ADR1 => ALUResult(0),
      O => N113
    );
  DMemoryPort_mux15_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y80",
      INIT => X"FF5FFF77FF5FFF77"
    )
    port map (
      ADR5 => '1',
      ADR0 => DMemoryPort_DMem_4(23),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N110
    );
  DMemoryPort_DMem_4_26_DMemoryPort_DMem_4_26_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N546,
      O => N546_0
    );
  DMemoryPort_DMem_4_26_DMemoryPort_DMem_4_26_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N548,
      O => N548_0
    );
  DMemoryPort_DMem_4_26_DMemoryPort_DMem_4_26_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N552,
      O => N552_0
    );
  DMemoryPort_DMem_4_26_DMemoryPort_DMem_4_26_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N554,
      O => N554_0
    );
  DMemoryPort_DMem_4_26 : X_FF
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_26_CLK,
      I => DMemoryPort_DMem_4_26_dpot_5167,
      O => DMemoryPort_DMem_4(26),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_26_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => X"FAFA5050FAFA5050"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => IDecodePort_Mmux_read_data2_418,
      ADR2 => DMemoryPort_DMem_4(26),
      ADR0 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_26_dpot_5167
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => X"FC30FC30"
    )
    port map (
      ADR1 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_12(26),
      ADR0 => '1',
      ADR2 => DMemoryPort_DMem_4(26),
      ADR4 => '1',
      O => N546
    );
  DMemoryPort_DMem_4_25 : X_FF
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_25_CLK,
      I => DMemoryPort_DMem_4_25_dpot_5179,
      O => DMemoryPort_DMem_4(25),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_25_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => X"E4E4E4E4E4E4E4E4"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_417,
      ADR1 => DMemoryPort_DMem_4(25),
      ADR0 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_25_dpot_5179
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => X"FF00CCCC"
    )
    port map (
      ADR4 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_12(25),
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_4(25),
      ADR0 => '1',
      O => N548
    );
  DMemoryPort_DMem_4_24 : X_FF
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_24_CLK,
      I => DMemoryPort_DMem_4_24_dpot_5190,
      O => DMemoryPort_DMem_4(24),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_24_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => X"F0CCF0CCF0CCF0CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_416,
      ADR1 => DMemoryPort_DMem_4(24),
      ADR3 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_24_dpot_5190
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => X"AAAACCCC"
    )
    port map (
      ADR4 => LED_3_OBUF_8283,
      ADR0 => DMemoryPort_DMem_12(24),
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_4(24),
      ADR3 => '1',
      O => N552
    );
  DMemoryPort_DMem_4_23 : X_FF
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_23_CLK,
      I => DMemoryPort_DMem_4_23_dpot_5191,
      O => DMemoryPort_DMem_4(23),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_23_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => IDecodePort_Mmux_read_data2_415,
      ADR2 => DMemoryPort_DMem_4(23),
      ADR4 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_23_dpot_5191
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X61Y81",
      INIT => X"FC30FC30"
    )
    port map (
      ADR1 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_12(23),
      ADR0 => '1',
      ADR2 => DMemoryPort_DMem_4(23),
      ADR4 => '1',
      O => N554
    );
  IDecodePort_Reg_array_5_22 : X_FF
    generic map(
      LOC => "SLICE_X61Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_22_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_5_22_IN,
      O => IDecodePort_Reg_array_5_22_Q,
      RST => GND,
      SET => GND
    );
  IDecodePort_Mmux_read_data2_4141 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y82",
      INIT => X"0000C0C00000CC00"
    )
    port map (
      ADR0 => '1',
      ADR3 => IDecodePort_Reg_array_4(22),
      ADR5 => IDecodePort_write_register_address(0),
      ADR2 => IDecodePort_Reg_array_5_22_Q,
      ADR4 => IFetchPort_Mram_Instruction17,
      ADR1 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_414
    );
  IDecodePort_Reg_array_5_21 : X_FF
    generic map(
      LOC => "SLICE_X61Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_21_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_5_21_IN,
      O => IDecodePort_Reg_array_5_21_Q,
      RST => GND,
      SET => GND
    );
  ALUPort_Mmux_B_input151 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y82",
      INIT => X"CDCE0000EDCC0000"
    )
    port map (
      ADR4 => IDecodePort_Mmux_read_data2_414,
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      ADR1 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(22)
    );
  IDecodePort_Reg_array_5_20 : X_FF
    generic map(
      LOC => "SLICE_X61Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_20_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_5_20_IN,
      O => IDecodePort_Reg_array_5_20_Q,
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux10_82 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y82",
      INIT => X"02A207A752F257F7"
    )
    port map (
      ADR0 => ALUResult(3),
      ADR2 => ALUResult_1_0,
      ADR1 => N137,
      ADR3 => N138,
      ADR4 => N135,
      ADR5 => N136,
      O => DMemoryPort_mux10_82_9547
    );
  IDecodePort_Reg_array_5_19 : X_FF
    generic map(
      LOC => "SLICE_X61Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_19_CLK,
      I => Write_data(19),
      O => IDecodePort_Reg_array_5_19_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data117 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y82",
      INIT => X"4444EE445454FE54"
    )
    port map (
      ADR0 => DMemRead,
      ADR2 => Mmux_Write_data115_8306,
      ADR5 => ALUop(2),
      ADR1 => Mmux_Write_data114_8307,
      ADR4 => N206,
      ADR3 => DMemoryPort_mux10_82_9547,
      O => Write_data(19)
    );
  DMemoryPort_mux10_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y83",
      INIT => X"FFFFFF5FFFAFFF0F"
    )
    port map (
      ADR1 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => DMemoryPort_DMem_10(19),
      ADR3 => ALUResult(0),
      O => N138
    );
  DMemoryPort_mux12_82 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y83",
      INIT => X"447744770303CFCF"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR5 => ALUResult_1_0,
      ADR4 => N127,
      ADR0 => N128,
      ADR2 => N125,
      ADR3 => N126,
      O => DMemoryPort_mux12_82_9549
    );
  IDecodePort_Reg_array_4_20 : X_FF
    generic map(
      LOC => "SLICE_X61Y83",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_20_CLK,
      I => Write_data(20),
      O => IDecodePort_Reg_array_4(20),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data136 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y83",
      INIT => X"3032FCFE30323032"
    )
    port map (
      ADR1 => DMemRead,
      ADR0 => Mmux_Write_data134_9393,
      ADR3 => ALUop(2),
      ADR2 => Mmux_Write_data133_9391,
      ADR4 => N206,
      ADR5 => DMemoryPort_mux12_82_9549,
      O => Write_data(20)
    );
  IDecodePort_Reg_array_4_19 : X_FF
    generic map(
      LOC => "SLICE_X61Y83",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_19_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_19_IN,
      O => IDecodePort_Reg_array_4(19),
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux12_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y83",
      INIT => X"AFFFBBFFAFFFBBFF"
    )
    port map (
      ADR5 => '1',
      ADR3 => DMemoryPort_DMem_12(20),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => ALUResult(0),
      O => N127
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y84",
      INIT => X"5F5F0FFF5F5F0FFF"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => DMemoryPort_DMem_2(30),
      ADR4 => LED_3_OBUF_8283,
      ADR0 => DMemoryPort_DMem_10(30),
      ADR2 => LED_1_OBUF_8285,
      O => N472
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y84",
      INIT => X"00FF55FFFFFF55FF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => DMemoryPort_DMem_2(25),
      ADR4 => LED_3_OBUF_8283,
      ADR5 => DMemoryPort_DMem_10(25),
      ADR3 => LED_1_OBUF_8285,
      O => N482
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y85",
      INIT => X"5555FFFF77777777"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_2(28),
      ADR5 => LED_3_OBUF_8283,
      ADR4 => DMemoryPort_DMem_10(28),
      ADR0 => LED_1_OBUF_8285,
      O => N478
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y85",
      INIT => X"33773377FF77FF77"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => DMemoryPort_DMem_2(29),
      ADR3 => LED_3_OBUF_8283,
      ADR5 => DMemoryPort_DMem_10(29),
      ADR1 => LED_1_OBUF_8285,
      O => N476
    );
  DMemoryPort_mux12_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y85",
      INIT => X"FFAAFFCCFFFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_10(20),
      ADR3 => ALUResult(0),
      O => N128
    );
  DMemoryPort_mux10_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y86",
      INIT => X"FCFFFFFFFCFFCCFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_2(19),
      ADR1 => ALUResult(0),
      O => N136
    );
  DMemoryPort_mux14_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y86",
      INIT => X"FFFFFFFFAFA0FFFF"
    )
    port map (
      ADR1 => '1',
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => DMemoryPort_DMem_10(22),
      ADR5 => ALUResult(0),
      O => N118
    );
  DMemoryPort_mux14_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y86",
      INIT => X"FAFAFCFCFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_2(22),
      ADR2 => ALUResult(0),
      O => N116
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X61Y87",
      INIT => X"0055AAFFFFFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => DMemoryPort_DMem_2(20),
      ADR0 => LED_3_OBUF_8283,
      ADR4 => DMemoryPort_DMem_10(20),
      ADR5 => LED_1_OBUF_8285,
      O => N492
    );
  IDecodePort_Mmux_read_data1_4251_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y62",
      INIT => X"F2F2F2F2FAFAFAFA"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR1 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      O => N300
    );
  ALUPort_Mmux_ALU_output275 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y63",
      INIT => X"EFE3E323ECE0E020"
    )
    port map (
      ADR2 => ALUop(0),
      ADR1 => ALUop(1),
      ADR3 => ALUPort_B_input(4),
      ADR4 => IDecodePort_Mmux_read_data1_426,
      ADR0 => ALUPort_A_input_31_B_input_31_sub_7_OUT_4_0,
      ADR5 => ALUPort_A_input_31_B_input_31_add_5_OUT_4_0,
      O => ALUPort_Mmux_ALU_output274_8419
    );
  Mmux_Write_data271_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y63",
      INIT => X"00FF00FF00FF11FF"
    )
    port map (
      ADR2 => '1',
      ADR1 => ControlUnitPort_ANDI_R_AND_OR_203_o_8664,
      ADR0 => ControlUnitPort_SUBI_R_SUB_OR_202_o_8665,
      ADR4 => ControlUnitPort_ORI_R_OR_OR_204_o_0,
      ADR5 => ControlUnitPort_ADDI_R_ADD_OR_201_o,
      ADR3 => ALUPort_Mmux_ALU_output274_8419,
      O => N192
    );
  ALUPort_Mmux_ALU_output283_ALUPort_Mmux_ALU_output283_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUResult(5),
      O => ALUResult_5_0
    );
  ALUPort_Mmux_ALU_output285 : X_MUX2
    generic map(
      LOC => "SLICE_X62Y64"
    )
    port map (
      IA => N462,
      IB => N463,
      O => ALUResult(5),
      SEL => ALUop(2)
    );
  ALUPort_Mmux_ALU_output285_F : X_LUT6
    generic map(
      LOC => "SLICE_X62Y64",
      INIT => X"FBCBF8C8CB0BC808"
    )
    port map (
      ADR1 => ALUop(0),
      ADR2 => ALUop(1),
      ADR5 => ALUPort_B_input(5),
      ADR3 => IDecodePort_Mmux_read_data1_427,
      ADR0 => ALUPort_A_input_31_B_input_31_sub_7_OUT_5_0,
      ADR4 => ALUPort_A_input_31_B_input_31_add_5_OUT_5_0,
      O => N462
    );
  ALUPort_Mmux_ALU_output285_G : X_LUT6
    generic map(
      LOC => "SLICE_X62Y64",
      INIT => X"FFFFFFFF0200A200"
    )
    port map (
      ADR0 => ALUPort_Mmux_ALU_output2831,
      ADR3 => ALUPort_Sh451_8787,
      ADR2 => ALUSrc,
      ADR4 => IFetchPort_Mram_Instruction3,
      ADR1 => IDecodePort_Mmux_read_data2_425,
      ADR5 => ALUPort_Mmux_ALU_output283_9550,
      O => N463
    );
  ALUPort_Mmux_ALU_output284 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y64",
      INIT => X"5455505054505050"
    )
    port map (
      ADR3 => ALUPort_B_input(4),
      ADR4 => ALUop(1),
      ADR0 => ALUop(0),
      ADR2 => ALUPort_Mmux_ALU_output281,
      ADR1 => ALUPort_Sh149,
      ADR5 => ALUPort_Mmux_ALU_output282_8785,
      O => ALUPort_Mmux_ALU_output283_9550
    );
  IDecodePort_Mmux_read_data1_4271 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y64",
      INIT => X"0000000000888800"
    )
    port map (
      ADR2 => '1',
      ADR1 => IDecodePort_Reg_array_4(5),
      ADR3 => ControlUnitPort_NextPCSignal(0),
      ADR4 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      O => IDecodePort_Mmux_read_data1_427
    );
  ALUPort_B_input_4_ALUPort_B_input_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_R_NOR_R_type_AND_110_o_pack_1,
      O => ControlUnitPort_R_NOR_R_type_AND_110_o
    );
  ALUPort_Mmux_B_input271 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y65",
      INIT => X"FFFFAAAA0000AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => IFetchPort_Mram_Instruction4,
      ADR0 => IDecodePort_Mmux_read_data2_426,
      ADR4 => ALUSrc,
      O => ALUPort_B_input(4)
    );
  Mmux_Write_data63 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y65",
      INIT => X"00030003FF030003"
    )
    port map (
      ADR0 => '1',
      ADR3 => ALUop(0),
      ADR1 => ALUPort_B_input(14),
      ADR2 => IDecodePort_Mmux_read_data1_45,
      ADR4 => ALUPort_Sh46,
      ADR5 => ALUPort_B_input(4),
      O => Mmux_Write_data62_8548
    );
  ControlUnitPort_Mmux_ALU_Op1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y65",
      INIT => X"4000000040000000"
    )
    port map (
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR5 => '1',
      O => N8
    );
  ControlUnitPort_R_NOR_R_type_AND_110_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X62Y65",
      INIT => X"00400000"
    )
    port map (
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      O => ControlUnitPort_R_NOR_R_type_AND_110_o_pack_1
    );
  ALUPort_Mmux_ALU_output16 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y65",
      INIT => X"0000000000000302"
    )
    port map (
      ADR2 => ControlUnitPort_SUBI_R_SUB_OR_202_o_8665,
      ADR4 => ControlUnitPort_ORI_R_OR_OR_204_o_0,
      ADR1 => ControlUnitPort_ANDI_R_AND_OR_203_o_8664,
      ADR5 => ControlUnitPort_ADDI_R_ADD_OR_201_o,
      ADR0 => ControlUnitPort_R_NOR_R_type_AND_110_o,
      ADR3 => N8,
      O => ALUPort_Mmux_ALU_output14_8710
    );
  IDecodePort_Mmux_read_data2_4111_SW8 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y66",
      INIT => X"CCCCCCCCFFCC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_426,
      ADR1 => IDecodePort_Mmux_read_data1_428,
      ADR5 => IFetchPort_Mram_Instruction1,
      ADR3 => ALUSrc,
      O => N411
    );
  ALUPort_Sh10021 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y66",
      INIT => X"FB73FB40C840FB40"
    )
    port map (
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR1 => IFetchPort_Mram_Instruction18,
      ADR2 => N410,
      ADR4 => IDecodePort_Mmux_read_data2_835_8459,
      ADR3 => N409,
      ADR5 => N411,
      O => ALUPort_Sh1002
    );
  IDecodePort_Mmux_read_data2_4111_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y66",
      INIT => X"FFF000F0FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => IDecodePort_Mmux_read_data1_427,
      ADR4 => IDecodePort_Mmux_read_data1_429,
      ADR3 => IFetchPort_Mram_Instruction1,
      ADR5 => ALUSrc,
      O => N407
    );
  ALUPort_Sh10011 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y66",
      INIT => X"FFF53A30CFC50A00"
    )
    port map (
      ADR1 => IFetchPort_Mram_Instruction17,
      ADR2 => IFetchPort_Mram_Instruction18,
      ADR5 => N406,
      ADR0 => IDecodePort_Mmux_read_data2_835_8459,
      ADR4 => N405,
      ADR3 => N407,
      O => ALUPort_Sh1001
    );
  ALUPort_Sh331 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y67",
      INIT => X"0000000005000404"
    )
    port map (
      ADR2 => ALUPort_B_input(1),
      ADR0 => ALUPort_B_input(2),
      ADR5 => ALUPort_B_input(3),
      ADR4 => ALUPort_B_input(0),
      ADR1 => IDecodePort_Mmux_read_data1_411,
      ADR3 => IDecodePort_Mmux_read_data1_4,
      O => ALUPort_Sh33
    );
  IDecodePort_Mmux_read_data1_432 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y67",
      INIT => X"0202000020200000"
    )
    port map (
      ADR3 => '1',
      ADR0 => IDecodePort_Reg_array_4(0),
      ADR5 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      O => IDecodePort_Mmux_read_data1_4
    );
  ALUPort_Sh4511 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y67",
      INIT => X"0FEF00E00F2F0020"
    )
    port map (
      ADR2 => ALUPort_B_input(2),
      ADR3 => ALUPort_B_input(1),
      ADR1 => ALUPort_B_input(0),
      ADR5 => IDecodePort_Mmux_read_data1_4,
      ADR0 => IDecodePort_Mmux_read_data1_411,
      ADR4 => ALUPort_Sh5,
      O => ALUPort_Sh451_8787
    );
  Mmux_Write_data141 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y67",
      INIT => X"00000000CA00CA00"
    )
    port map (
      ADR4 => '1',
      ADR1 => IFetchPort_Mram_Instruction4,
      ADR0 => IDecodePort_Mmux_read_data2_426,
      ADR2 => ALUSrc,
      ADR5 => ALUPort_B_input(3),
      ADR3 => ALUPort_Sh451_8787,
      O => Mmux_Write_data14
    );
  IDecodePort_n0300_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y68",
      INIT => X"00000000000088A0"
    )
    port map (
      ADR5 => IDecodePort_write_register_address(0),
      ADR0 => IDecodePort_n0296_inv1,
      ADR4 => IDecodePort_write_register_address(2),
      ADR3 => RType,
      ADR2 => IFetchPort_Mram_Instruction17,
      ADR1 => IFetchPort_Mram_Instruction10,
      O => IDecodePort_n0300_inv
    );
  IDecodePort_Mmux_read_data2_4111_SW13 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y68",
      INIT => X"FFFF5500AAFF0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_422,
      ADR5 => IDecodePort_Mmux_read_data1_4,
      ADR0 => IFetchPort_Mram_Instruction1,
      ADR3 => ALUSrc,
      O => N418
    );
  ALUPort_Mmux_ALU_output13 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y68",
      INIT => X"FFF35C50AFA30C00"
    )
    port map (
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR2 => IFetchPort_Mram_Instruction18,
      ADR5 => N417,
      ADR1 => IDecodePort_Mmux_read_data2_835_8459,
      ADR4 => N416,
      ADR3 => N418,
      O => ALUPort_Mmux_ALU_output11_8799
    );
  ALUPort_Sh101 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y69",
      INIT => X"AAFFAA00CCF0CCF0"
    )
    port map (
      ADR2 => IDecodePort_Mmux_read_data1_41,
      ADR1 => IDecodePort_Mmux_read_data1_431,
      ADR4 => IDecodePort_Mmux_read_data1_430,
      ADR0 => IDecodePort_Mmux_read_data1_429,
      ADR3 => ALUPort_B_input(0),
      ADR5 => ALUPort_B_input(1),
      O => ALUPort_Sh10
    );
  ALUPort_Mmux_B_input121_SW16 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y69",
      INIT => X"50AA5AAA00205520"
    )
    port map (
      ADR4 => IDecodePort_Reg_array_2_1_Q,
      ADR1 => IDecodePort_Reg_array_4(1),
      ADR3 => ControlUnitPort_NextPCSignal(3),
      ADR5 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      O => N449
    );
  ControlUnitPort_NextPCSignal_3 : X_SFF
    generic map(
      LOC => "SLICE_X62Y70",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_3_CLK,
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_3_Q,
      O => ControlUnitPort_NextPCSignal(3),
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ControlUnitPort_Mmux_NextPCSignal_31_GND_46_o_mux_39_OUT261 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y70",
      INIT => X"FFDD00DDFF880088"
    )
    port map (
      ADR2 => '1',
      ADR1 => IFetchPort_Mram_Instruction3,
      ADR5 => ControlUnitPort_PCIncby1_3_0,
      ADR0 => ControlUnitPort_JUMP,
      ADR4 => ControlUnitPort_n0111_3_0,
      ADR3 => ControlUnitPort_BEQ_BNE_OR_198_o,
      O => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_3_Q
    );
  ControlUnitPort_NextPCSignal_2 : X_SFF
    generic map(
      LOC => "SLICE_X62Y70",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_CLK,
      I => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_IN,
      O => ControlUnitPort_NextPCSignal(2),
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ControlUnitPort_NextPCSignal_1 : X_SFF
    generic map(
      LOC => "SLICE_X62Y70",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_1_CLK,
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_1_Q,
      O => ControlUnitPort_NextPCSignal(1),
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ControlUnitPort_Mmux_NextPCSignal_31_GND_46_o_mux_39_OUT121 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y70",
      INIT => X"AACCAAFFAACCAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => IFetchPort_Mram_Instruction1,
      ADR5 => ControlUnitPort_PCIncby1_1_0,
      ADR4 => ControlUnitPort_JUMP,
      ADR0 => ControlUnitPort_n0111_1_0,
      ADR3 => ControlUnitPort_BEQ_BNE_OR_198_o,
      O => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_1_Q
    );
  ControlUnitPort_NextPCSignal_0 : X_SFF
    generic map(
      LOC => "SLICE_X62Y70",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_0_CLK,
      I => NlwBufferSignal_ControlUnitPort_NextPCSignal_0_IN,
      O => ControlUnitPort_NextPCSignal(0),
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  DMemoryPort_n1082_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y71",
      INIT => X"FFFF7575FFFF7F7F"
    )
    port map (
      ADR3 => '1',
      ADR0 => DMemWrite,
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult_1_0,
      O => N14
    );
  IFetchPort_Mram_Instruction231 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y71",
      INIT => X"000055AA00000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => ControlUnitPort_NextPCSignal_2_1_8525,
      ADR5 => ControlUnitPort_NextPCSignal_4_1_9419,
      ADR3 => ControlUnitPort_NextPCSignal_0_1_8633,
      ADR0 => ControlUnitPort_NextPCSignal(1),
      O => IFetchPort_Mram_Instruction23
    );
  ControlUnitPort_NextPCSignal_0_1 : X_SFF
    generic map(
      LOC => "SLICE_X62Y71",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_0_1_CLK,
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_0_Q,
      O => ControlUnitPort_NextPCSignal_0_1_8633,
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ControlUnitPort_Mmux_NextPCSignal_31_GND_46_o_mux_39_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y71",
      INIT => X"CCCCAFAFCCCCA0A0"
    )
    port map (
      ADR3 => '1',
      ADR5 => ControlUnitPort_PCIncby1_0_0,
      ADR0 => IFetchPort_Mram_Instruction_0,
      ADR1 => ControlUnitPort_n0111_0_0,
      ADR2 => ControlUnitPort_JUMP,
      ADR4 => ControlUnitPort_BEQ_BNE_OR_198_o,
      O => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_0_Q
    );
  ControlUnitPort_NextPCSignal_0_2 : X_SFF
    generic map(
      LOC => "SLICE_X62Y71",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_0_2_CLK,
      I => NlwBufferSignal_ControlUnitPort_NextPCSignal_0_2_IN,
      O => ControlUnitPort_NextPCSignal_0_2_8634,
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ControlUnitPort_BEQ_BNE_OR_198_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y71",
      INIT => X"004080C080800000"
    )
    port map (
      ADR1 => IFetchPort_Mram_Instruction29,
      ADR2 => ControlUnitPort_ANDI_R_AND_OR_203_o1,
      ADR5 => IFetchPort_Mram_Instruction26,
      ADR0 => IFetchPort_Mram_Instruction27,
      ADR4 => ControlUnitPort_A_31_B_31_equal_31_o_0,
      ADR3 => ControlUnitPort_Mcompar_A_31_B_31_LessThan_32_o_cy_15_0,
      O => ControlUnitPort_BEQ_BNE_OR_198_o
    );
  IDecodePort_Reg_array_5_26 : X_FF
    generic map(
      LOC => "SLICE_X62Y80",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_26_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_5_26_IN,
      O => IDecodePort_Reg_array_5_26_Q,
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux17_82 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y80",
      INIT => X"407043734C7C4F7F"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR2 => ALUResult_1_0,
      ADR5 => N102,
      ADR0 => N103,
      ADR4 => N100,
      ADR3 => N101,
      O => DMemoryPort_mux17_82_9555
    );
  IDecodePort_Reg_array_5_25 : X_FF
    generic map(
      LOC => "SLICE_X62Y80",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_25_CLK,
      I => Write_data(25),
      O => IDecodePort_Reg_array_5_25_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data188 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y80",
      INIT => X"0B0AFBFA0B0A0B0A"
    )
    port map (
      ADR2 => DMemRead,
      ADR3 => Mmux_Write_data186_9397,
      ADR1 => ALUop(2),
      ADR0 => Mmux_Write_data185_9464,
      ADR4 => N206,
      ADR5 => DMemoryPort_mux17_82_9555,
      O => Write_data(25)
    );
  IDecodePort_Reg_array_5_24 : X_FF
    generic map(
      LOC => "SLICE_X62Y80",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_24_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_5_24_IN,
      O => IDecodePort_Reg_array_5_24_Q,
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux15_82 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y80",
      INIT => X"111105AFBBBB05AF"
    )
    port map (
      ADR0 => ALUResult(3),
      ADR4 => ALUResult_1_0,
      ADR3 => N112,
      ADR5 => N113,
      ADR2 => N110,
      ADR1 => N111,
      O => DMemoryPort_mux15_82_9554
    );
  IDecodePort_Reg_array_5_23 : X_FF
    generic map(
      LOC => "SLICE_X62Y80",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_23_CLK,
      I => Write_data(23),
      O => IDecodePort_Reg_array_5_23_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data166 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y80",
      INIT => X"0000FF00DCDCDCDC"
    )
    port map (
      ADR5 => DMemRead,
      ADR2 => Mmux_Write_data164_9394,
      ADR0 => ALUop(2),
      ADR1 => Mmux_Write_data163,
      ADR4 => N206,
      ADR3 => DMemoryPort_mux15_82_9554,
      O => Write_data(23)
    );
  DMemoryPort_mux18_82 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y81",
      INIT => X"0A115F110ABB5FBB"
    )
    port map (
      ADR3 => ALUResult(3),
      ADR0 => ALUResult_1_0,
      ADR4 => N97,
      ADR2 => N98,
      ADR1 => N95,
      ADR5 => N96,
      O => DMemoryPort_mux18_82_9557
    );
  IDecodePort_Reg_array_4_26 : X_FF
    generic map(
      LOC => "SLICE_X62Y81",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_26_CLK,
      I => Write_data(26),
      O => IDecodePort_Reg_array_4(26),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data196 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y81",
      INIT => X"5050505050725050"
    )
    port map (
      ADR0 => DMemRead,
      ADR1 => ALUResult_5_0,
      ADR2 => Mmux_Write_data194_8737,
      ADR5 => ALUResult(4),
      ADR3 => ALUResult(6),
      ADR4 => DMemoryPort_mux18_82_9557,
      O => Write_data(26)
    );
  IDecodePort_Reg_array_4_25 : X_FF
    generic map(
      LOC => "SLICE_X62Y81",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_25_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_25_IN,
      O => IDecodePort_Reg_array_4(25),
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux16_82 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y81",
      INIT => X"330F0055330FFF55"
    )
    port map (
      ADR3 => ALUResult(3),
      ADR4 => ALUResult_1_0,
      ADR5 => N107,
      ADR1 => N108,
      ADR0 => N105,
      ADR2 => N106,
      O => DMemoryPort_mux16_82_9556
    );
  IDecodePort_Reg_array_4_24 : X_FF
    generic map(
      LOC => "SLICE_X62Y81",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_24_CLK,
      I => Write_data(24),
      O => IDecodePort_Reg_array_4(24),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data176 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y81",
      INIT => X"0002FFFF00020000"
    )
    port map (
      ADR4 => DMemRead,
      ADR1 => ALUResult_5_0,
      ADR5 => Mmux_Write_data174_9368,
      ADR3 => ALUResult(4),
      ADR2 => ALUResult(6),
      ADR0 => DMemoryPort_mux16_82_9556,
      O => Write_data(24)
    );
  DMemoryPort_mux20_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y82",
      INIT => X"AFAFEFEFBFBFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_4(28),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => ALUResult(0),
      O => N85
    );
  DMemoryPort_mux18_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y82",
      INIT => X"FFFFBFBFEFEFAFAF"
    )
    port map (
      ADR3 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => DMemoryPort_DMem_10(26),
      ADR0 => ALUResult(0),
      O => N98
    );
  DMemoryPort_mux23_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y82",
      INIT => X"F2F7F2F7FFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR5 => DMemoryPort_DMem_4(30),
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => ALUResult(0),
      O => N70
    );
  DMemoryPort_mux17_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y82",
      INIT => X"FEF4FFFFFEF4FFFF"
    )
    port map (
      ADR5 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => DMemoryPort_DMem_2(25),
      ADR2 => ALUResult(0),
      O => N101
    );
  DMemoryPort_DMem_4_30_DMemoryPort_DMem_4_30_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N542,
      O => N542_0
    );
  DMemoryPort_DMem_4_30_DMemoryPort_DMem_4_30_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N544,
      O => N544_0
    );
  DMemoryPort_DMem_4_30_DMemoryPort_DMem_4_30_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N540,
      O => N540_0
    );
  DMemoryPort_DMem_4_30 : X_FF
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_30_CLK,
      I => DMemoryPort_DMem_4_30_dpot_5651,
      O => DMemoryPort_DMem_4(30),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_30_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => X"D8D85050D8D85050"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR2 => DMemoryPort_DMem_4(30),
      ADR1 => IDecodePort_Mmux_read_data2_970,
      ADR0 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_30_dpot_5651
    );
  DMemoryPort_DMem_4_29 : X_FF
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_29_CLK,
      I => DMemoryPort_DMem_4_29_dpot_5643,
      O => DMemoryPort_DMem_4(29),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_29_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => X"E4E4E4E4E4E4E4E4"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => IDecodePort_Mmux_read_data2_421,
      ADR1 => DMemoryPort_DMem_4(29),
      ADR0 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_29_dpot_5643
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => X"FF00CCCC"
    )
    port map (
      ADR4 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_12(29),
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_4(29),
      ADR0 => '1',
      O => N542
    );
  DMemoryPort_DMem_4_28 : X_FF
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_28_CLK,
      I => DMemoryPort_DMem_4_28_dpot_5649,
      O => DMemoryPort_DMem_4(28),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_28_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => X"FF00CCCCFF00CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => IDecodePort_Mmux_read_data2_420,
      ADR1 => DMemoryPort_DMem_4(28),
      ADR4 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_28_dpot_5649
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => X"ACACACAC"
    )
    port map (
      ADR2 => LED_3_OBUF_8283,
      ADR0 => DMemoryPort_DMem_12(28),
      ADR3 => '1',
      ADR1 => DMemoryPort_DMem_4(28),
      ADR4 => '1',
      O => N544
    );
  DMemoryPort_DMem_4_27 : X_FF
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_27_CLK,
      I => DMemoryPort_DMem_4_27_dpot_5621,
      O => DMemoryPort_DMem_4(27),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_27_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => X"DD88DD88DD88DD88"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => IDecodePort_Mmux_read_data2_419,
      ADR3 => DMemoryPort_DMem_4(27),
      ADR0 => DMemoryPort_n1050_inv_rstpot_9053,
      ADR5 => '1',
      O => DMemoryPort_DMem_4_27_dpot_5621
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X62Y83",
      INIT => X"FFF00F00"
    )
    port map (
      ADR2 => LED_3_OBUF_8283,
      ADR4 => DMemoryPort_DMem_12(27),
      ADR0 => '1',
      ADR3 => DMemoryPort_DMem_4(27),
      ADR1 => '1',
      O => N540
    );
  DMemoryPort_DMem_2_30 : X_FF
    generic map(
      LOC => "SLICE_X62Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_30_CLK,
      I => DMemoryPort_DMem_2_30_dpot_5677,
      O => DMemoryPort_DMem_2(30),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_30_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X62Y84",
      INIT => X"B830B830B830B830"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR0 => IFetchPort_Mram_Instruction18,
      ADR2 => DMemoryPort_DMem_2(30),
      ADR3 => IDecodePort_Mmux_read_data2_970,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_30_dpot_5677
    );
  DMemoryPort_DMem_2_29 : X_FF
    generic map(
      LOC => "SLICE_X62Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_29_CLK,
      I => DMemoryPort_DMem_2_29_dpot_5665,
      O => DMemoryPort_DMem_2(29),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_29_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X62Y84",
      INIT => X"BBBB8888BBBB8888"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => DMemoryPort_DMem_2(29),
      ADR0 => IDecodePort_Mmux_read_data2_421,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_29_dpot_5665
    );
  DMemoryPort_DMem_2_28 : X_FF
    generic map(
      LOC => "SLICE_X62Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_28_CLK,
      I => DMemoryPort_DMem_2_28_dpot_5660,
      O => DMemoryPort_DMem_2(28),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_28_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X62Y84",
      INIT => X"E4E4E4E4E4E4E4E4"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => DMemoryPort_DMem_2(28),
      ADR2 => IDecodePort_Mmux_read_data2_420,
      ADR0 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_28_dpot_5660
    );
  DMemoryPort_DMem_2_27 : X_FF
    generic map(
      LOC => "SLICE_X62Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_27_CLK,
      I => DMemoryPort_DMem_2_27_dpot_5672,
      O => DMemoryPort_DMem_2(27),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_27_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X62Y84",
      INIT => X"D8D8D8D8D8D8D8D8"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_2(27),
      ADR1 => IDecodePort_Mmux_read_data2_419,
      ADR0 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_27_dpot_5672
    );
  DMemoryPort_mux8_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y85",
      INIT => X"FFF0FFCCFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_10(17),
      ADR3 => ALUResult(0),
      O => N148
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X62Y86",
      INIT => X"AAAAFFFFAAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => LED_3_OBUF_8283,
      ADR5 => DMemoryPort_DMem_4(30),
      ADR0 => DMemoryPort_DMem_12(30),
      O => N538
    );
  ALUPort_Mmux_ALU_output282 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y62",
      INIT => X"0000050500000505"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => ALUPort_B_input(5),
      ADR4 => IDecodePort_Mmux_read_data1_427,
      ADR0 => ALUop(1),
      O => ALUPort_Mmux_ALU_output281
    );
  ALUPort_Mmux_ALU_output276 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y63",
      INIT => X"FCFCFCFCFCFCFCF8"
    )
    port map (
      ADR1 => ALUPort_Mmux_ALU_output274_8419,
      ADR5 => ControlUnitPort_ADDI_R_ADD_OR_201_o,
      ADR3 => ControlUnitPort_SUBI_R_SUB_OR_202_o_8665,
      ADR0 => ControlUnitPort_ANDI_R_AND_OR_203_o_8664,
      ADR4 => ControlUnitPort_ORI_R_OR_OR_204_o_0,
      ADR2 => ALUPort_Mmux_ALU_output273_8515,
      O => ALUResult(4)
    );
  ALUPort_Mmux_ALU_output238 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y63",
      INIT => X"CCCCCCCCCCCDCCC8"
    )
    port map (
      ADR3 => ControlUnitPort_ANDI_R_AND_OR_203_o_8664,
      ADR0 => ControlUnitPort_SUBI_R_SUB_OR_202_o_8665,
      ADR2 => ControlUnitPort_ORI_R_OR_OR_204_o_0,
      ADR5 => ControlUnitPort_ADDI_R_ADD_OR_201_o,
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      O => ALUResult(2)
    );
  IDecodePort_Mmux_read_data1_425_IDecodePort_Mmux_read_data1_425_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_SUBI_R_SUB_OR_202_o_pack_2,
      O => ControlUnitPort_SUBI_R_SUB_OR_202_o_8665
    );
  IDecodePort_Mmux_read_data1_4251 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y65",
      INIT => X"4E4E4E0A0A4E0A0A"
    )
    port map (
      ADR5 => IDecodePort_Reg_array_3_3_Q,
      ADR4 => IDecodePort_Reg_array_2_3_Q,
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR2 => N301,
      ADR1 => N300,
      ADR3 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_425
    );
  ALUPort_Sh42_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y65",
      INIT => X"FCFDFFFD0C5DFF5D"
    )
    port map (
      ADR0 => IDecodePort_Mmux_read_data1_426,
      ADR5 => IFetchPort_Mram_Instruction2,
      ADR1 => IDecodePort_Mmux_read_data2_422,
      ADR2 => ALUSrc,
      ADR3 => ALUPort_B_input(0),
      ADR4 => IDecodePort_Mmux_read_data1_425,
      O => N308
    );
  ControlUnitPort_ANDI_R_AND_OR_203_o : X_LUT6
    generic map(
      LOC => "SLICE_X63Y65",
      INIT => X"0000002200000022"
    )
    port map (
      ADR2 => '1',
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR5 => '1',
      O => ControlUnitPort_ANDI_R_AND_OR_203_o_8664
    );
  ControlUnitPort_SUBI_R_SUB_OR_202_o : X_LUT5
    generic map(
      LOC => "SLICE_X63Y65",
      INIT => X"00004400"
    )
    port map (
      ADR2 => '1',
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      O => ControlUnitPort_SUBI_R_SUB_OR_202_o_pack_2
    );
  ALUPort_Mmux_ALU_output234 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y65",
      INIT => X"0000000055005504"
    )
    port map (
      ADR5 => ControlUnitPort_ADDI_R_ADD_OR_201_o,
      ADR0 => ControlUnitPort_SUBI_R_SUB_OR_202_o_8665,
      ADR2 => ControlUnitPort_R_NOR_R_type_AND_110_o,
      ADR1 => N8,
      ADR4 => N384,
      ADR3 => ControlUnitPort_ANDI_R_AND_OR_203_o_8664,
      O => ALUPort_Mmux_ALU_output123
    );
  IFetchPort_Mram_Instruction31 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y66",
      INIT => X"0A000A05000F0AF0"
    )
    port map (
      ADR1 => '1',
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      O => IFetchPort_Mram_Instruction3
    );
  IFetchPort_Mram_Instruction22 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y66",
      INIT => X"00F000050A0000F0"
    )
    port map (
      ADR1 => '1',
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      O => IFetchPort_Mram_Instruction2
    );
  IDecodePort_Mmux_read_data2_4111_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y66",
      INIT => X"F0AAF0AAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => IDecodePort_Mmux_read_data1_426,
      ADR2 => IDecodePort_Mmux_read_data1_428,
      ADR3 => IFetchPort_Mram_Instruction1,
      ADR5 => ALUSrc,
      O => N409
    );
  IDecodePort_Mmux_read_data2_4111_SW11 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y66",
      INIT => X"FCFC3030F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_422,
      ADR2 => IDecodePort_Mmux_read_data1_4,
      ADR1 => IFetchPort_Mram_Instruction1,
      ADR5 => ALUSrc,
      O => N416
    );
  ALUPort_Sh1051 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y67",
      INIT => X"BFBC8F8CB3B08380"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data1_431,
      ADR0 => IDecodePort_Mmux_read_data1_43,
      ADR4 => IDecodePort_Mmux_read_data1_41,
      ADR2 => ALUPort_B_input(0),
      ADR1 => ALUPort_B_input(1),
      ADR5 => IDecodePort_Mmux_read_data1_42,
      O => ALUPort_Sh105
    );
  ALUPort_Sh9611 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y67",
      INIT => X"F0F5F0A0FFF500A0"
    )
    port map (
      ADR1 => '1',
      ADR5 => N414_0,
      ADR0 => N413,
      ADR4 => IDecodePort_Mmux_read_data1_411,
      ADR2 => IDecodePort_Mmux_read_data1_425,
      ADR3 => IDecodePort_Mmux_read_data2_835_8459,
      O => ALUPort_Sh961
    );
  ALUPort_Mmux_ALU_output291 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y67",
      INIT => X"FEDCBA98BA983210"
    )
    port map (
      ADR0 => ALUop(0),
      ADR1 => ALUop(1),
      ADR5 => ALUPort_B_input(6),
      ADR4 => IDecodePort_Mmux_read_data1_428,
      ADR3 => ALUPort_A_input_31_B_input_31_sub_7_OUT_6_0,
      ADR2 => ALUPort_A_input_31_B_input_31_add_5_OUT_6_0,
      O => ALUPort_Mmux_ALU_output29
    );
  IDecodePort_Mmux_read_data1_4281 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y67",
      INIT => X"0000000066000000"
    )
    port map (
      ADR2 => '1',
      ADR3 => IDecodePort_Reg_array_4(6),
      ADR1 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      O => IDecodePort_Mmux_read_data1_428
    );
  IDecodePort_Mmux_read_data2_835 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y68",
      INIT => X"AFAFA0A0F000F000"
    )
    port map (
      ADR1 => '1',
      ADR4 => IDecodePort_Reg_array_1_1_0,
      ADR0 => IDecodePort_Reg_array_3_1_Q,
      ADR3 => IDecodePort_Reg_array_2_1_Q,
      ADR5 => IDecodePort_write_register_address(0),
      ADR2 => IFetchPort_Mram_Instruction17,
      O => IDecodePort_Mmux_read_data2_835_8459
    );
  IDecodePort_Mmux_read_data2_4111 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y68",
      INIT => X"0CAA0CAA0FAA00AA"
    )
    port map (
      ADR3 => IFetchPort_Mram_Instruction18,
      ADR2 => IFetchPort_Mram_Instruction17,
      ADR5 => IDecodePort_write_register_address(0),
      ADR1 => IDecodePort_Reg_array_5_1_Q,
      ADR4 => IDecodePort_Reg_array_4(1),
      ADR0 => IDecodePort_Mmux_read_data2_835_8459,
      O => IDecodePort_Mmux_read_data2_411
    );
  Mmux_Write_data186 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y68",
      INIT => X"F030F020F030F000"
    )
    port map (
      ADR2 => ALUop(2),
      ADR1 => ALUop(1),
      ADR4 => Mmux_Write_data183_9396,
      ADR5 => Mmux_Write_data184_0,
      ADR0 => ALUPort_Sh41_9431,
      ADR3 => Mmux_Write_data182_0,
      O => Mmux_Write_data185_9464
    );
  ALUPort_Sh41 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y68",
      INIT => X"00FC003011FC1130"
    )
    port map (
      ADR3 => ALUPort_B_input(3),
      ADR4 => ALUPort_Sh5,
      ADR1 => ALUPort_B_input(2),
      ADR2 => ALUPort_Sh9,
      ADR0 => ALUPort_B_input(1),
      ADR5 => N18,
      O => ALUPort_Sh41_9431
    );
  DMemoryPort_n1046_inv1_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y69",
      INIT => X"FFFDFFFF02000000"
    )
    port map (
      ADR5 => DMemoryPort_DMem_3(1),
      ADR2 => IFetchPort_Mram_Instruction27,
      ADR0 => IFetchPort_Mram_Instruction29,
      ADR4 => ControlUnitPort_ANDI_R_AND_OR_203_o1,
      ADR1 => IFetchPort_Mram_Instruction26,
      ADR3 => IDecodePort_Mmux_read_data2_411,
      O => N374
    );
  IDecodePort_n0312_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y69",
      INIT => X"0D08000000000000"
    )
    port map (
      ADR4 => IDecodePort_write_register_address(2),
      ADR2 => IDecodePort_write_register_address_1_0,
      ADR5 => IDecodePort_n0296_inv1,
      ADR0 => RType,
      ADR1 => IFetchPort_Mram_Instruction10,
      ADR3 => IDecodePort_write_register_address(0),
      O => IDecodePort_n0312_inv
    );
  IFetchPort_Mram_Instruction181 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y69",
      INIT => X"555511112727EAEA"
    )
    port map (
      ADR3 => '1',
      ADR5 => ControlUnitPort_NextPCSignal_2_3_8529,
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR4 => ControlUnitPort_NextPCSignal(1),
      ADR1 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      O => IFetchPort_Mram_Instruction18
    );
  IDecodePort_Mmux_read_data2_4210 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y69",
      INIT => X"5500500005000000"
    )
    port map (
      ADR1 => '1',
      ADR5 => IDecodePort_Reg_array_5_11_Q,
      ADR4 => IDecodePort_Reg_array_4(11),
      ADR2 => IDecodePort_write_register_address(0),
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR3 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_42
    );
  Mmux_Write_data104 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y70",
      INIT => X"FEBADC9876325410"
    )
    port map (
      ADR1 => ALUPort_B_input(2),
      ADR0 => ALUPort_B_input(3),
      ADR3 => ALUPort_Sh14,
      ADR5 => ALUPort_Sh6,
      ADR4 => ALUPort_Sh10,
      ADR2 => ALUPort_Sh18,
      O => Mmux_Write_data103_9374
    );
  ControlUnitPort_NextPCSignal_2_3 : X_SFF
    generic map(
      LOC => "SLICE_X63Y70",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_3_CLK,
      I => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_3_IN,
      O => ControlUnitPort_NextPCSignal_2_3_8529,
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ALUPort_Sh421 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y70",
      INIT => X"7676545432321010"
    )
    port map (
      ADR3 => '1',
      ADR0 => ALUPort_B_input(3),
      ADR1 => ALUPort_B_input(2),
      ADR5 => ALUPort_Sh6,
      ADR2 => ALUPort_Sh10,
      ADR4 => ALUPort_Sh2,
      O => ALUPort_Sh42_8776
    );
  ControlUnitPort_NextPCSignal_2_2 : X_SFF
    generic map(
      LOC => "SLICE_X63Y70",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_2_CLK,
      I => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_2_IN,
      O => ControlUnitPort_NextPCSignal_2_2_8528,
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_Write_data191 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y70",
      INIT => X"2020203100000011"
    )
    port map (
      ADR1 => ALUop(1),
      ADR0 => ALUop(0),
      ADR4 => IDecodePort_Mmux_read_data1_418,
      ADR3 => ALUPort_B_input(26),
      ADR2 => ALUPort_B_input(4),
      ADR5 => ALUPort_Sh42_8776,
      O => Mmux_Write_data19
    );
  ControlUnitPort_NextPCSignal_2_1 : X_SFF
    generic map(
      LOC => "SLICE_X63Y70",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_1_CLK,
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_2_Q,
      O => ControlUnitPort_NextPCSignal_2_1_8525,
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ControlUnitPort_Mmux_NextPCSignal_31_GND_46_o_mux_39_OUT231 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y70",
      INIT => X"FFFC3330CFCC0300"
    )
    port map (
      ADR0 => '1',
      ADR5 => IFetchPort_Mram_Instruction2,
      ADR3 => ControlUnitPort_PCIncby1_2_0,
      ADR2 => ControlUnitPort_JUMP,
      ADR4 => ControlUnitPort_n0111_2_0,
      ADR1 => ControlUnitPort_BEQ_BNE_OR_198_o,
      O => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_2_Q
    );
  ALUPort_Mmux_B_input121_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y71",
      INIT => X"FF55FF55AA00AA00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => IDecodePort_Mmux_read_data1_431,
      ADR5 => IDecodePort_Mmux_read_data1_430,
      ADR0 => ALUPort_B_input(0),
      O => N269
    );
  ALUPort_Mmux_B_input110 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y71",
      INIT => X"00002C2800000808"
    )
    port map (
      ADR4 => ControlUnitPort_NextPCSignal_4_2_8612,
      ADR3 => IDecodePort_Reg_array_4(0),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR1 => ControlUnitPort_NextPCSignal(2),
      O => ALUPort_B_input(0)
    );
  Mmux_Write_data184 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y71",
      INIT => X"0000000000002277"
    )
    port map (
      ADR2 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_417,
      ADR5 => ALUop(0),
      ADR0 => ALUSrc,
      ADR3 => IDecodePort_Mmux_read_data2_417,
      ADR1 => IFetchPort_Mram_Instruction10,
      O => Mmux_Write_data183_9396
    );
  DMemoryPort_DMem_3_1 : X_FF
    generic map(
      LOC => "SLICE_X63Y71",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_3_1_CLK,
      I => DMemoryPort_DMem_3_1_dpot_5890,
      O => DMemoryPort_DMem_3(1),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_3_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y71",
      INIT => X"F0F0F0F0E2F0F0F0"
    )
    port map (
      ADR0 => N374,
      ADR4 => ALUResult_1_0,
      ADR1 => ALUResult_5_0,
      ADR2 => DMemoryPort_DMem_3(1),
      ADR5 => ALUResult(6),
      ADR3 => ALUResult(0),
      O => DMemoryPort_DMem_3_1_dpot_5890
    );
  Mmux_Write_data44 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y72",
      INIT => X"00000C0055005500"
    )
    port map (
      ADR3 => ALUop(2),
      ADR1 => ALUPort_Sh44,
      ADR5 => ALUop(0),
      ADR4 => ALUPort_B_input(4),
      ADR2 => ALUop(1),
      ADR0 => N287,
      O => Mmux_Write_data43
    );
  Mmux_Write_data41_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y72",
      INIT => X"77F377F377F344C0"
    )
    port map (
      ADR4 => IDecodePort_Mmux_read_data1_43,
      ADR5 => ALUPort_B_input(12),
      ADR1 => ALUop(1),
      ADR3 => ALUPort_B_input(4),
      ADR0 => ALUPort_Sh156,
      ADR2 => N372,
      O => N287
    );
  ControlUnitPort_NextPCSignal_4_2 : X_SFF
    generic map(
      LOC => "SLICE_X63Y72",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_4_2_CLK,
      I => NlwBufferSignal_ControlUnitPort_NextPCSignal_4_2_IN,
      O => ControlUnitPort_NextPCSignal_4_2_8612,
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_Write_data143 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y72",
      INIT => X"0F000F0000003333"
    )
    port map (
      ADR0 => '1',
      ADR5 => ALUop(1),
      ADR4 => ALUPort_B_input(21),
      ADR1 => IDecodePort_Mmux_read_data1_413,
      ADR3 => ALUPort_Sh149,
      ADR2 => ALUPort_B_input(4),
      O => Mmux_Write_data142_9558
    );
  ControlUnitPort_NextPCSignal_4_1 : X_SFF
    generic map(
      LOC => "SLICE_X63Y72",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_4_1_CLK,
      I => NlwBufferSignal_ControlUnitPort_NextPCSignal_4_1_IN,
      O => ControlUnitPort_NextPCSignal_4_1_9419,
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_Write_data144 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y72",
      INIT => X"2A202A202A200A00"
    )
    port map (
      ADR2 => ALUop(0),
      ADR0 => ALUop(2),
      ADR1 => ALUop(1),
      ADR5 => Mmux_Write_data141_9386,
      ADR4 => Mmux_Write_data14,
      ADR3 => Mmux_Write_data142_9558,
      O => Mmux_Write_data143_8405
    );
  ALUPort_Sh1181 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y73",
      INIT => X"FCFC0C0CAFA0AFA0"
    )
    port map (
      ADR5 => ALUPort_B_input(0),
      ADR2 => ALUPort_B_input(1),
      ADR1 => IDecodePort_Mmux_read_data1_415,
      ADR4 => IDecodePort_Mmux_read_data1_417,
      ADR0 => IDecodePort_Mmux_read_data1_416,
      ADR3 => IDecodePort_Mmux_read_data1_414,
      O => ALUPort_Sh118
    );
  IDecodePort_Mmux_read_data1_4141 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y73",
      INIT => X"0000F0000000CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => IDecodePort_Reg_array_5_22_Q,
      ADR1 => IDecodePort_Reg_array_4(22),
      ADR3 => IFetchPort_Mram_Instruction23,
      ADR4 => IFetchPort_Mram_Instruction22_8733,
      ADR5 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_414
    );
  IFetchPort_Mram_Instruction211 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y73",
      INIT => X"000030CF00003F00"
    )
    port map (
      ADR0 => '1',
      ADR4 => ControlUnitPort_NextPCSignal_4_1_9419,
      ADR3 => ControlUnitPort_NextPCSignal_2_2_8528,
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal_0_2_8634,
      ADR5 => ControlUnitPort_NextPCSignal(3),
      O => IFetchPort_Mram_Instruction21
    );
  IDecodePort_Mmux_read_data1_451 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y73",
      INIT => X"4455000044000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => IDecodePort_Reg_array_5_14_Q,
      ADR5 => IDecodePort_Reg_array_4(14),
      ADR4 => IFetchPort_Mram_Instruction23,
      ADR0 => IFetchPort_Mram_Instruction22_8733,
      ADR3 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_45
    );
  Mmux_Write_data171 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y74",
      INIT => X"2222000000030003"
    )
    port map (
      ADR1 => ALUop(1),
      ADR5 => ALUop(0),
      ADR2 => IDecodePort_Mmux_read_data1_416,
      ADR3 => ALUPort_B_input(24),
      ADR4 => ALUPort_B_input(4),
      ADR0 => ALUPort_Sh40,
      O => Mmux_Write_data17
    );
  Mmux_Write_data175 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y74",
      INIT => X"CFC0FFF0CFC0CFC0"
    )
    port map (
      ADR0 => '1',
      ADR2 => ALUop(2),
      ADR5 => Mmux_Write_data172_0,
      ADR4 => ALUPort_B_input(4),
      ADR1 => Mmux_Write_data17,
      ADR3 => Mmux_Write_data173_8750,
      O => Mmux_Write_data174_9368
    );
  ALUPort_Sh201 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y74",
      INIT => X"FDADF8A85D0D5808"
    )
    port map (
      ADR0 => ALUPort_B_input(0),
      ADR2 => ALUPort_B_input(1),
      ADR1 => IDecodePort_Mmux_read_data1_410,
      ADR5 => IDecodePort_Mmux_read_data1_48,
      ADR3 => IDecodePort_Mmux_read_data1_49,
      ADR4 => IDecodePort_Mmux_read_data1_412,
      O => ALUPort_Sh20
    );
  IDecodePort_Mmux_read_data1_4121 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y74",
      INIT => X"0F0C000003000000"
    )
    port map (
      ADR0 => '1',
      ADR5 => IDecodePort_Reg_array_5_20_Q,
      ADR3 => IDecodePort_Reg_array_4(20),
      ADR4 => IFetchPort_Mram_Instruction23,
      ADR2 => IFetchPort_Mram_Instruction22_8733,
      ADR1 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_412
    );
  Mmux_Write_data194 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y75",
      INIT => X"FFCCCC00AAF0AAF0"
    )
    port map (
      ADR3 => ALUop(0),
      ADR5 => ALUop(1),
      ADR1 => ALUPort_B_input(26),
      ADR4 => IDecodePort_Mmux_read_data1_418,
      ADR0 => ALUPort_A_input_31_B_input_31_sub_7_OUT_26_0,
      ADR2 => ALUPort_A_input_31_B_input_31_add_5_OUT_26_0,
      O => Mmux_Write_data193_9401
    );
  IDecodePort_Mmux_read_data1_4231 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y75",
      INIT => X"080808080A0A0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => IDecodePort_Reg_array_5_30_Q,
      ADR4 => IDecodePort_Reg_array_4(30),
      ADR0 => IFetchPort_Mram_Instruction23,
      ADR2 => IFetchPort_Mram_Instruction22_8733,
      ADR5 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_423
    );
  Mmux_Write_data111 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y75",
      INIT => X"0000300000113011"
    )
    port map (
      ADR1 => ALUop(0),
      ADR3 => ALUop(1),
      ADR0 => IDecodePort_Mmux_read_data1_410,
      ADR5 => ALUPort_B_input(19),
      ADR2 => ALUPort_Sh147,
      ADR4 => ALUPort_B_input(4),
      O => Mmux_Write_data11
    );
  Mmux_Write_data115 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y75",
      INIT => X"F0A0F0A0F000F080"
    )
    port map (
      ADR2 => ALUop(2),
      ADR0 => Mmux_Write_data101_0,
      ADR5 => Mmux_Write_data112,
      ADR1 => Mmux_Write_data113_9381,
      ADR4 => ALUPort_B_input(4),
      ADR3 => Mmux_Write_data11,
      O => Mmux_Write_data114_8307
    );
  Mmux_Write_data145 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y76",
      INIT => X"EE88EE88F5F5A0A0"
    )
    port map (
      ADR0 => ALUop(0),
      ADR5 => ALUop(1),
      ADR1 => ALUPort_B_input(21),
      ADR3 => IDecodePort_Mmux_read_data1_413,
      ADR2 => ALUPort_A_input_31_B_input_31_sub_7_OUT_21_0,
      ADR4 => ALUPort_A_input_31_B_input_31_add_5_OUT_21_0,
      O => Mmux_Write_data144_8404
    );
  Mmux_Write_data155 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y76",
      INIT => X"FEAEF4A4AE0EA404"
    )
    port map (
      ADR0 => ALUop(0),
      ADR2 => ALUop(1),
      ADR3 => ALUPort_B_input(22),
      ADR5 => IDecodePort_Mmux_read_data1_414,
      ADR4 => ALUPort_A_input_31_B_input_31_sub_7_OUT_22_0,
      ADR1 => ALUPort_A_input_31_B_input_31_add_5_OUT_22_0,
      O => Mmux_Write_data154_9395
    );
  IDecodePort_Mmux_read_data2_4181 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y76",
      INIT => X"0000F0300000C000"
    )
    port map (
      ADR0 => '1',
      ADR3 => IDecodePort_Reg_array_5_26_Q,
      ADR5 => IDecodePort_Reg_array_4(26),
      ADR1 => IDecodePort_write_register_address(0),
      ADR4 => IFetchPort_Mram_Instruction17,
      ADR2 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_418
    );
  ALUPort_Mmux_B_input191 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y76",
      INIT => X"CC00DE00EC00DC00"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data2_418,
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR1 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(26)
    );
  Mmux_Write_data134_Mmux_Write_data134_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_A_31_B_31_equal_31_o,
      O => ControlUnitPort_A_31_B_31_equal_31_o_0
    );
  Mmux_Write_data135 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y79",
      INIT => X"FAFAEE44A0A0EE44"
    )
    port map (
      ADR0 => ALUop(0),
      ADR4 => ALUop(1),
      ADR2 => ALUPort_B_input(20),
      ADR5 => IDecodePort_Mmux_read_data1_412,
      ADR3 => ALUPort_A_input_31_B_input_31_sub_7_OUT_20_0,
      ADR1 => ALUPort_A_input_31_B_input_31_add_5_OUT_20_0,
      O => Mmux_Write_data134_9393
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X63Y79"
    )
    port map (
      CI => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_7_Q_9235,
      CYINIT => '0',
      CO(3) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_CO_3_UNCONNECTED,
      CO(2) => ControlUnitPort_A_31_B_31_equal_31_o,
      CO(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_CO_0_UNCONNECTED,
      DI(3) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_O_3_UNCONNECTED,
      O(2) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_O_2_UNCONNECTED,
      O(1) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_O_1_UNCONNECTED,
      O(0) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_O_0_UNCONNECTED,
      S(3) => NLW_ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_cy_10_S_3_UNCONNECTED,
      S(2) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_10_Q_6048,
      S(1) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_9_Q_6061,
      S(0) => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_8_Q_6038
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y79",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR3 => IDecodePort_Mmux_read_data1_423,
      ADR0 => IDecodePort_Mmux_read_data2_423,
      ADR1 => IDecodePort_Mmux_read_data1_424,
      ADR4 => IDecodePort_Mmux_read_data2_424_0,
      ADR5 => '1',
      O => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_10_Q_6048
    );
  DMemoryPort_mux10_10_101_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X63Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_DMemoryPort_mux10_10_101_C5LUT_O_UNCONNECTED
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y79",
      INIT => X"8200008241000041"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data1_421,
      ADR0 => IDecodePort_Mmux_read_data1_419,
      ADR1 => IDecodePort_Mmux_read_data1_420,
      ADR4 => IDecodePort_Mmux_read_data2_421,
      ADR2 => IDecodePort_Mmux_read_data2_420,
      ADR5 => IDecodePort_Mmux_read_data2_419,
      O => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_9_Q_6061
    );
  ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X63Y79",
      INIT => X"8008200240041001"
    )
    port map (
      ADR1 => IDecodePort_Mmux_read_data1_418,
      ADR5 => IDecodePort_Mmux_read_data1_417,
      ADR2 => IDecodePort_Mmux_read_data1_416,
      ADR4 => IDecodePort_Mmux_read_data2_418,
      ADR3 => IDecodePort_Mmux_read_data2_416,
      ADR0 => IDecodePort_Mmux_read_data2_417,
      O => ControlUnitPort_Mcompar_A_31_B_31_equal_31_o_lut_8_Q_6038
    );
  DMemoryPort_DMem_12_26 : X_FF
    generic map(
      LOC => "SLICE_X63Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_26_CLK,
      I => DMemoryPort_DMem_12_26_dpot_6069,
      O => DMemoryPort_DMem_12(26),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_26_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y80",
      INIT => X"AAF0AAF0AAF0AAF0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => DMemoryPort_DMem_12(26),
      ADR0 => IDecodePort_Mmux_read_data2_418,
      ADR3 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_26_dpot_6069
    );
  DMemoryPort_DMem_12_25 : X_FF
    generic map(
      LOC => "SLICE_X63Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_25_CLK,
      I => DMemoryPort_DMem_12_25_dpot_6076,
      O => DMemoryPort_DMem_12(25),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_25_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y80",
      INIT => X"FFCC00CCFFCC00CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_12(25),
      ADR4 => IDecodePort_Mmux_read_data2_417,
      ADR3 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_25_dpot_6076
    );
  DMemoryPort_DMem_12_24 : X_FF
    generic map(
      LOC => "SLICE_X63Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_24_CLK,
      I => DMemoryPort_DMem_12_24_dpot_6081,
      O => DMemoryPort_DMem_12(24),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_24_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y80",
      INIT => X"FF00FF00CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_12(24),
      ADR3 => IDecodePort_Mmux_read_data2_416,
      ADR5 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_24_dpot_6081
    );
  DMemoryPort_DMem_12_23 : X_FF
    generic map(
      LOC => "SLICE_X63Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_23_CLK,
      I => DMemoryPort_DMem_12_23_dpot_6089,
      O => DMemoryPort_DMem_12(23),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_23_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y80",
      INIT => X"CCCCCCCCF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_12(23),
      ADR1 => IDecodePort_Mmux_read_data2_415,
      ADR5 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_23_dpot_6089
    );
  DMemoryPort_mux14_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y81",
      INIT => X"FF0FFFAFFF5FFFFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => DMemoryPort_DMem_4(22),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N115
    );
  DMemoryPort_mux18_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y81",
      INIT => X"FF0FFFAFFF5FFFFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => DMemoryPort_DMem_4(26),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N95
    );
  IDecodePort_Mmux_read_data2_4161 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y81",
      INIT => X"00000000CF00C000"
    )
    port map (
      ADR0 => '1',
      ADR1 => IDecodePort_Reg_array_5_24_Q,
      ADR4 => IDecodePort_Reg_array_4(24),
      ADR2 => IDecodePort_write_register_address(0),
      ADR5 => IFetchPort_Mram_Instruction17,
      ADR3 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_416
    );
  ALUPort_Mmux_B_input171 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y81",
      INIT => X"F200F500F000F800"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data2_416,
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR5 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(24)
    );
  IDecodePort_Mmux_read_data2_4121 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y82",
      INIT => X"5000500044004400"
    )
    port map (
      ADR4 => '1',
      ADR2 => IDecodePort_Reg_array_5_20_Q,
      ADR1 => IDecodePort_Reg_array_4(20),
      ADR5 => IDecodePort_write_register_address(0),
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR3 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_412
    );
  ALUPort_Mmux_B_input131 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y82",
      INIT => X"CDEC0000CECE0000"
    )
    port map (
      ADR4 => IDecodePort_Mmux_read_data2_412,
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      ADR1 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(20)
    );
  IDecodePort_Mmux_read_data2_4131 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y82",
      INIT => X"3030300000300000"
    )
    port map (
      ADR0 => '1',
      ADR5 => IDecodePort_Reg_array_5_21_Q,
      ADR4 => IDecodePort_Reg_array_4(21),
      ADR3 => IDecodePort_write_register_address(0),
      ADR1 => IFetchPort_Mram_Instruction17,
      ADR2 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_413
    );
  ALUPort_Mmux_B_input141 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y82",
      INIT => X"88888AA8A88888A8"
    )
    port map (
      ADR0 => IDecodePort_Mmux_read_data2_413,
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR1 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(21)
    );
  DMemoryPort_DMem_12_30 : X_FF
    generic map(
      LOC => "SLICE_X63Y83",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_30_CLK,
      I => DMemoryPort_DMem_12_30_dpot_6162,
      O => DMemoryPort_DMem_12(30),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_30_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y83",
      INIT => X"FFF000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => IFetchPort_Mram_Instruction18,
      ADR2 => DMemoryPort_DMem_12(30),
      ADR4 => IDecodePort_Mmux_read_data2_970,
      ADR3 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_30_dpot_6162
    );
  DMemoryPort_DMem_12_29 : X_FF
    generic map(
      LOC => "SLICE_X63Y83",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_29_CLK,
      I => DMemoryPort_DMem_12_29_dpot_6150,
      O => DMemoryPort_DMem_12(29),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_29_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y83",
      INIT => X"AACCAACCAACCAACC"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_12(29),
      ADR0 => IDecodePort_Mmux_read_data2_421,
      ADR3 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_29_dpot_6150
    );
  DMemoryPort_DMem_12_28 : X_FF
    generic map(
      LOC => "SLICE_X63Y83",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_28_CLK,
      I => DMemoryPort_DMem_12_28_dpot_6145,
      O => DMemoryPort_DMem_12(28),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_28_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y83",
      INIT => X"FFCCFFCC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_12(28),
      ADR5 => IDecodePort_Mmux_read_data2_420,
      ADR3 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_28_dpot_6145
    );
  DMemoryPort_DMem_12_27 : X_FF
    generic map(
      LOC => "SLICE_X63Y83",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_27_CLK,
      I => DMemoryPort_DMem_12_27_dpot_6157,
      O => DMemoryPort_DMem_12(27),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_27_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y83",
      INIT => X"FFFF0000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_12(27),
      ADR4 => IDecodePort_Mmux_read_data2_419,
      ADR5 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_27_dpot_6157
    );
  DMemoryPort_DMem_2_26 : X_FF
    generic map(
      LOC => "SLICE_X63Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_26_CLK,
      I => DMemoryPort_DMem_2_26_dpot_6165,
      O => DMemoryPort_DMem_2(26),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_26_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y84",
      INIT => X"F0F0FFFFF0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => DMemoryPort_DMem_2(26),
      ADR2 => IDecodePort_Mmux_read_data2_418,
      ADR4 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_26_dpot_6165
    );
  DMemoryPort_DMem_2_25 : X_FF
    generic map(
      LOC => "SLICE_X63Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_25_CLK,
      I => DMemoryPort_DMem_2_25_dpot_6172,
      O => DMemoryPort_DMem_2(25),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_25_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y84",
      INIT => X"FCFC0C0CFCFC0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR1 => DMemoryPort_DMem_2(25),
      ADR4 => IDecodePort_Mmux_read_data2_417,
      ADR2 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_25_dpot_6172
    );
  DMemoryPort_DMem_2_24 : X_FF
    generic map(
      LOC => "SLICE_X63Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_24_CLK,
      I => DMemoryPort_DMem_2_24_dpot_6177,
      O => DMemoryPort_DMem_2(24),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_24_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y84",
      INIT => X"EE44EE44EE44EE44"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_2(24),
      ADR3 => IDecodePort_Mmux_read_data2_416,
      ADR0 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_24_dpot_6177
    );
  DMemoryPort_DMem_2_23 : X_FF
    generic map(
      LOC => "SLICE_X63Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_23_CLK,
      I => DMemoryPort_DMem_2_23_dpot_6185,
      O => DMemoryPort_DMem_2(23),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_23_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X63Y84",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_2(23),
      ADR0 => IDecodePort_Mmux_read_data2_415,
      ADR4 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_23_dpot_6185
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X63Y85",
      INIT => X"00FF0F0FFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => DMemoryPort_DMem_2(23),
      ADR4 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_10(23),
      ADR5 => LED_1_OBUF_8285,
      O => N488
    );
  ALUPort_Mmux_ALU_output18_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y62",
      INIT => X"00660E8000000A80"
    )
    port map (
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR5 => IDecodePort_Reg_array_4(0),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      O => N293
    );
  ALUPort_Sh331_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y63",
      INIT => X"FFFFAAEEFFFFBBFF"
    )
    port map (
      ADR2 => '1',
      ADR4 => ALUPort_B_input(2),
      ADR3 => IDecodePort_Mmux_read_data1_4,
      ADR1 => ALUPort_B_input(0),
      ADR5 => IDecodePort_Mmux_read_data1_411,
      ADR0 => ALUPort_B_input(4),
      O => N442
    );
  ALUPort_Mmux_ALU_output122 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y63",
      INIT => X"0001000000010505"
    )
    port map (
      ADR5 => IDecodePort_Mmux_read_data1_411,
      ADR0 => ALUPort_B_input(1),
      ADR4 => ALUop(0),
      ADR2 => ALUop(1),
      ADR1 => ALUPort_B_input(3),
      ADR3 => N442,
      O => ALUPort_Mmux_ALU_output122_8599
    );
  ALUPort_Mmux_ALU_output233 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y64",
      INIT => X"0000000000C50005"
    )
    port map (
      ADR0 => IDecodePort_Mmux_read_data1_422,
      ADR5 => ALUPort_B_input(2),
      ADR3 => ALUop(1),
      ADR2 => ALUop(0),
      ADR1 => ALUPort_Sh2,
      ADR4 => ALUPort_Mmux_ALU_output231_9563,
      O => ALUPort_Mmux_ALU_output232_8682
    );
  ALUPort_Mmux_ALU_output232 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y64",
      INIT => X"000A111B000A111B"
    )
    port map (
      ADR5 => '1',
      ADR2 => IFetchPort_Mram_Instruction3,
      ADR3 => IFetchPort_Mram_Instruction4,
      ADR4 => IDecodePort_Mmux_read_data2_426,
      ADR0 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data2_425,
      O => ALUPort_Mmux_ALU_output231_9563
    );
  ALUPort_Mmux_ALU_output124_ALUPort_Mmux_ALU_output124_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUResult(1),
      O => ALUResult_1_0
    );
  ALUPort_Mmux_ALU_output127 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y65"
    )
    port map (
      IA => N466,
      IB => N467,
      O => ALUResult(1),
      SEL => ALUop(2)
    );
  ALUPort_Mmux_ALU_output127_F : X_LUT6
    generic map(
      LOC => "SLICE_X65Y65",
      INIT => X"FEBADC98BA329810"
    )
    port map (
      ADR0 => ALUop(0),
      ADR1 => ALUop(1),
      ADR3 => ALUPort_B_input(1),
      ADR5 => IDecodePort_Mmux_read_data1_411,
      ADR4 => ALUPort_A_input_31_B_input_31_sub_7_OUT_1_0,
      ADR2 => ALUPort_A_input_31_B_input_31_add_5_OUT_1_0,
      O => N466
    );
  ALUPort_Mmux_ALU_output127_G : X_LUT6
    generic map(
      LOC => "SLICE_X65Y65",
      INIT => X"FFFFC0F0FFFFC0A0"
    )
    port map (
      ADR3 => ALUPort_B_input(4),
      ADR2 => ALUPort_Mmux_ALU_output123,
      ADR4 => ALUPort_Mmux_ALU_output122_8599,
      ADR0 => ALUPort_Mmux_ALU_output125_8713,
      ADR1 => ALUPort_Sh145,
      ADR5 => ALUPort_Mmux_ALU_output124_9564,
      O => N467
    );
  ALUPort_Mmux_ALU_output124 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y65",
      INIT => X"A0A0AA22A0A08800"
    )
    port map (
      ADR0 => ALUPort_B_input(2),
      ADR1 => ALUPort_B_input(0),
      ADR4 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh109,
      ADR5 => ALUPort_Sh1001,
      ADR3 => ALUPort_Sh1012,
      O => ALUPort_Mmux_ALU_output124_9564
    );
  ALUPort_Mmux_ALU_output19 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y66",
      INIT => X"020202020202028A"
    )
    port map (
      ADR2 => N293,
      ADR1 => ALUop(0),
      ADR0 => ALUop(2),
      ADR5 => ALUPort_B_input(1),
      ADR4 => N294,
      ADR3 => ALUPort_B_input(3),
      O => ALUPort_Mmux_ALU_output17_8535
    );
  ALUPort_Mmux_B_input261 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y66",
      INIT => X"FF00F0F0FF008888"
    )
    port map (
      ADR3 => IFetchPort_Mram_Instruction3,
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR5 => IFetchPort_Mram_Instruction18,
      ADR4 => ALUSrc,
      ADR1 => N298,
      ADR2 => IDecodePort_Mmux_read_data2_976,
      O => ALUPort_B_input(3)
    );
  DMemoryPort_mux31_41_SW0_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y66",
      INIT => X"FFFFFCECFFFFFCCC"
    )
    port map (
      ADR0 => ALUPort_B_input(4),
      ADR2 => ALUPort_Mmux_ALU_output123,
      ADR4 => ALUPort_Mmux_ALU_output291_8424,
      ADR5 => ALUPort_Sh148,
      ADR3 => ALUPort_Mmux_ALU_output272,
      ADR1 => ALUPort_Mmux_ALU_output294_8427,
      O => N436
    );
  DMemoryPort_mux31_41_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y66",
      INIT => X"FFFFFEFEFFFFFE0E"
    )
    port map (
      ADR2 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output27,
      ADR1 => ALUPort_Mmux_ALU_output274_8419,
      ADR0 => ALUPort_Mmux_ALU_output29,
      ADR3 => N436,
      ADR4 => ALUResult_5_0,
      O => N206
    );
  ALUPort_Sh145_ALUPort_Sh145_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_Write_data93_6275,
      O => Mmux_Write_data93_0
    );
  Mmux_Write_data94 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      IA => N598,
      IB => N599,
      O => Mmux_Write_data93_6275,
      SEL => ALUop(0)
    );
  Mmux_Write_data94_F : X_LUT6
    generic map(
      LOC => "SLICE_X65Y67",
      INIT => X"00020002888A0002"
    )
    port map (
      ADR0 => ALUop(2),
      ADR1 => ALUop(1),
      ADR4 => ALUPort_Sh145,
      ADR5 => ALUPort_B_input(4),
      ADR3 => IDecodePort_Mmux_read_data1_48,
      ADR2 => ALUPort_B_input(17),
      O => N598
    );
  Mmux_Write_data94_G : X_LUT6
    generic map(
      LOC => "SLICE_X65Y67",
      INIT => X"2200220022220000"
    )
    port map (
      ADR2 => '1',
      ADR0 => ALUop(2),
      ADR1 => ALUop(1),
      ADR5 => ALUPort_B_input(4),
      ADR4 => Mmux_Write_data92,
      ADR3 => ALUPort_Sh33,
      O => N599
    );
  ALUPort_Sh1451 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y67",
      INIT => X"EE22EE22F3F3C0C0"
    )
    port map (
      ADR1 => ALUPort_B_input(2),
      ADR5 => ALUPort_B_input(3),
      ADR3 => ALUPort_Sh125,
      ADR2 => ALUPort_Sh117,
      ADR4 => ALUPort_Sh113,
      ADR0 => ALUPort_Sh121,
      O => ALUPort_Sh145
    );
  Mmux_Write_data93 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y67",
      INIT => X"FCFC3030BB88BB88"
    )
    port map (
      ADR1 => ALUPort_B_input(2),
      ADR5 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh13,
      ADR4 => ALUPort_Sh5,
      ADR2 => ALUPort_Sh9,
      ADR3 => ALUPort_Sh17,
      O => Mmux_Write_data92
    );
  ALUPort_Sh171 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y68",
      INIT => X"F0FFF000AACCAACC"
    )
    port map (
      ADR3 => ALUPort_B_input(0),
      ADR5 => ALUPort_B_input(1),
      ADR0 => IDecodePort_Mmux_read_data1_47,
      ADR2 => IDecodePort_Mmux_read_data1_45,
      ADR4 => IDecodePort_Mmux_read_data1_46,
      ADR1 => IDecodePort_Mmux_read_data1_48,
      O => ALUPort_Sh17
    );
  IFetchPort_Mram_Instruction111 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y68",
      INIT => X"00F0005F005555FF"
    )
    port map (
      ADR1 => '1',
      ADR3 => ControlUnitPort_NextPCSignal(4),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(2),
      O => IFetchPort_Mram_Instruction1
    );
  ALUPort_Sh131 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y68",
      INIT => X"ACACACACFFF00F00"
    )
    port map (
      ADR0 => IDecodePort_Mmux_read_data1_41,
      ADR1 => IDecodePort_Mmux_read_data1_43,
      ADR5 => ALUPort_B_input(0),
      ADR2 => ALUPort_B_input(1),
      ADR3 => IDecodePort_Mmux_read_data1_44,
      ADR4 => IDecodePort_Mmux_read_data1_42,
      O => ALUPort_Sh13
    );
  ALUPort_Sh451 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y68",
      INIT => X"5050FAFADD88DD88"
    )
    port map (
      ADR0 => ALUPort_B_input(2),
      ADR4 => N289_0,
      ADR5 => ALUPort_B_input(3),
      ADR3 => ALUPort_Sh13,
      ADR2 => ALUPort_Sh5,
      ADR1 => ALUPort_Sh9,
      O => ALUPort_Sh45
    );
  ALUPort_Sh21 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y69",
      INIT => X"22FC22FC22302230"
    )
    port map (
      ADR4 => '1',
      ADR2 => IDecodePort_Mmux_read_data1_422,
      ADR0 => IDecodePort_Mmux_read_data1_4,
      ADR1 => ALUPort_B_input(0),
      ADR5 => IDecodePort_Mmux_read_data1_411,
      ADR3 => ALUPort_B_input(1),
      O => ALUPort_Sh2
    );
  ALUPort_Mmux_B_input121 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y69",
      INIT => X"0050333300F03333"
    )
    port map (
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR2 => IDecodePort_Reg_array_5_1_Q,
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR1 => N449,
      O => ALUPort_B_input(1)
    );
  ALUPort_Sh61 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y69",
      INIT => X"CFC0CFC0AFAFA0A0"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data1_426,
      ADR0 => IDecodePort_Mmux_read_data1_427,
      ADR4 => IDecodePort_Mmux_read_data1_428,
      ADR2 => ALUPort_B_input(0),
      ADR5 => ALUPort_B_input(1),
      ADR1 => IDecodePort_Mmux_read_data1_425,
      O => ALUPort_Sh6
    );
  ALUPort_Mmux_ALU_output292 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y69",
      INIT => X"0000B0800000B080"
    )
    port map (
      ADR5 => '1',
      ADR1 => ALUPort_B_input(2),
      ADR0 => ALUPort_Sh2,
      ADR2 => ALUPort_Mmux_ALU_output2831,
      ADR4 => ALUPort_B_input(3),
      ADR3 => ALUPort_Sh6,
      O => ALUPort_Mmux_ALU_output291_8424
    );
  ALUPort_Sh541_ALUPort_Sh541_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_Sh531_pack_5,
      O => ALUPort_Sh531
    );
  ALUPort_Sh5411 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y70",
      INIT => X"F3C0F3C0F3C0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh14,
      ADR3 => ALUPort_Sh22,
      ADR5 => '1',
      O => ALUPort_Sh541
    );
  ALUPort_Sh5311 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y70",
      INIT => X"BBBB8888"
    )
    port map (
      ADR4 => ALUPort_Sh21_9456,
      ADR0 => ALUPort_Sh13,
      ADR1 => ALUPort_B_input(3),
      ADR3 => '1',
      ADR2 => '1',
      O => ALUPort_Sh531_pack_5
    );
  ALUPort_Sh221 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y70",
      INIT => X"E4E4FFAAE4E45500"
    )
    port map (
      ADR4 => ALUPort_B_input(0),
      ADR0 => ALUPort_B_input(1),
      ADR1 => IDecodePort_Mmux_read_data1_413,
      ADR2 => IDecodePort_Mmux_read_data1_410,
      ADR5 => IDecodePort_Mmux_read_data1_412,
      ADR3 => IDecodePort_Mmux_read_data1_414,
      O => ALUPort_Sh22
    );
  Mmux_Write_data142 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y70",
      INIT => X"0000E2E20000FF00"
    )
    port map (
      ADR4 => ALUPort_B_input(4),
      ADR5 => ALUPort_B_input(2),
      ADR1 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh17,
      ADR2 => ALUPort_Sh9,
      ADR3 => ALUPort_Sh531,
      O => Mmux_Write_data141_9386
    );
  ALUPort_Sh128 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y70",
      INIT => X"DDF5DDA088F588A0"
    )
    port map (
      ADR4 => IDecodePort_Mmux_read_data1_43,
      ADR5 => IDecodePort_Mmux_read_data1_41,
      ADR1 => IDecodePort_Mmux_read_data1_431,
      ADR0 => ALUPort_B_input(0),
      ADR3 => ALUPort_B_input(1),
      ADR2 => IDecodePort_Mmux_read_data1_42,
      O => ALUPort_Sh12
    );
  Mmux_Write_data193 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y71",
      INIT => X"33330000F3BBC088"
    )
    port map (
      ADR3 => ALUPort_B_input(2),
      ADR1 => ALUop(0),
      ADR5 => ALUop(1),
      ADR0 => ALUPort_Sh581_0,
      ADR2 => ALUPort_Sh541,
      ADR4 => Mmux_Write_data191_9399,
      O => Mmux_Write_data192_9568
    );
  Mmux_Write_data195 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y71",
      INIT => X"FFF0FFF03F300F00"
    )
    port map (
      ADR0 => '1',
      ADR2 => ALUop(2),
      ADR4 => Mmux_Write_data192_9568,
      ADR1 => ALUPort_B_input(4),
      ADR5 => Mmux_Write_data19,
      ADR3 => Mmux_Write_data193_9401,
      O => Mmux_Write_data194_8737
    );
  Mmux_Write_data242 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y71",
      INIT => X"FFCCFFAA00CC00AA"
    )
    port map (
      ADR2 => '1',
      ADR4 => ALUPort_B_input(0),
      ADR0 => ALUPort_Sh301,
      ADR1 => ALUPort_Sh291,
      ADR3 => ALUPort_B_input(3),
      ADR5 => ALUPort_Sh22,
      O => Mmux_Write_data241_9567
    );
  Mmux_Write_data243 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y71",
      INIT => X"BBB88B88BBB88B88"
    )
    port map (
      ADR5 => '1',
      ADR1 => ALUPort_B_input(4),
      ADR2 => ALUPort_B_input(2),
      ADR4 => ALUPort_Sh581_0,
      ADR3 => Mmux_Write_data241_9567,
      ADR0 => ALUPort_Sh46,
      O => Mmux_Write_data242_9036
    );
  ALUPort_Mmux_ALU_output265 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y72",
      INIT => X"FEF4AEA4AEA40E04"
    )
    port map (
      ADR0 => ALUop(0),
      ADR2 => ALUop(1),
      ADR5 => ALUPort_B_input(3),
      ADR4 => IDecodePort_Mmux_read_data1_425,
      ADR3 => ALUPort_A_input_31_B_input_31_sub_7_OUT_3_0,
      ADR1 => ALUPort_A_input_31_B_input_31_add_5_OUT_3_0,
      O => ALUPort_Mmux_ALU_output264_8677
    );
  ALUPort_Sh1071 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y72",
      INIT => X"CFC0FAFACFC00A0A"
    )
    port map (
      ADR5 => IDecodePort_Mmux_read_data1_43,
      ADR2 => ALUPort_B_input(0),
      ADR4 => ALUPort_B_input(1),
      ADR0 => IDecodePort_Mmux_read_data1_42,
      ADR3 => IDecodePort_Mmux_read_data1_44,
      ADR1 => IDecodePort_Mmux_read_data1_45,
      O => ALUPort_Sh107
    );
  Mmux_Write_data34 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y72",
      INIT => X"FAFFA0CCFA00A0CC"
    )
    port map (
      ADR4 => ALUop(0),
      ADR3 => ALUop(1),
      ADR2 => ALUPort_B_input(11),
      ADR0 => IDecodePort_Mmux_read_data1_42,
      ADR5 => ALUPort_A_input_31_B_input_31_sub_7_OUT_11_0,
      ADR1 => ALUPort_A_input_31_B_input_31_add_5_OUT_11_0,
      O => Mmux_Write_data35_8790
    );
  Mmux_Write_data65 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y73",
      INIT => X"EFE5EAE08F858A80"
    )
    port map (
      ADR0 => ALUop(0),
      ADR2 => ALUop(1),
      ADR5 => ALUPort_B_input(14),
      ADR1 => IDecodePort_Mmux_read_data1_45,
      ADR3 => ALUPort_A_input_31_B_input_31_sub_7_OUT_14_0,
      ADR4 => ALUPort_A_input_31_B_input_31_add_5_OUT_14_0,
      O => Mmux_Write_data64_8825
    );
  IDecodePort_Mmux_read_data1_4171 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y74",
      INIT => X"0000F5A000000000"
    )
    port map (
      ADR1 => '1',
      ADR2 => IDecodePort_Reg_array_5_25_Q,
      ADR3 => IDecodePort_Reg_array_4(25),
      ADR5 => IFetchPort_Mram_Instruction23,
      ADR4 => IFetchPort_Mram_Instruction22_8733,
      ADR0 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_417
    );
  ALUPort_Mmux_B_input121_SW10 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y74",
      INIT => X"FFAA00AAFFAA00AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ALUPort_B_input(0),
      ADR0 => IDecodePort_Mmux_read_data1_416,
      ADR4 => IDecodePort_Mmux_read_data1_417,
      O => N275
    );
  IDecodePort_Mmux_read_data1_4211 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y74",
      INIT => X"5000440050004400"
    )
    port map (
      ADR5 => '1',
      ADR2 => IDecodePort_Reg_array_5_29_Q,
      ADR1 => IDecodePort_Reg_array_4(29),
      ADR3 => IFetchPort_Mram_Instruction23,
      ADR0 => IFetchPort_Mram_Instruction22_8733,
      ADR4 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_421
    );
  ALUPort_Mmux_B_input121_SW8 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y74",
      INIT => X"FF00FF00FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => ALUPort_B_input(0),
      ADR4 => IDecodePort_Mmux_read_data1_420,
      ADR3 => IDecodePort_Mmux_read_data1_421,
      O => N272
    );
  IDecodePort_Mmux_read_data1_4191 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y75",
      INIT => X"0000CACA00000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => IDecodePort_Reg_array_5_27_Q,
      ADR0 => IDecodePort_Reg_array_4(27),
      ADR5 => IFetchPort_Mram_Instruction23,
      ADR4 => IFetchPort_Mram_Instruction22_8733,
      ADR2 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_419
    );
  ALUPort_Mmux_B_input121_SW11 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y75",
      INIT => X"FFAA00AAFFAA00AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ALUPort_B_input(0),
      ADR0 => IDecodePort_Mmux_read_data1_418,
      ADR4 => IDecodePort_Mmux_read_data1_419,
      O => N276
    );
  ALUPort_Sh1221 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y75",
      INIT => X"CAFFCAF0CA0FCA00"
    )
    port map (
      ADR3 => ALUPort_B_input(0),
      ADR2 => ALUPort_B_input(1),
      ADR0 => IDecodePort_Mmux_read_data1_419,
      ADR1 => IDecodePort_Mmux_read_data1_421,
      ADR5 => IDecodePort_Mmux_read_data1_420,
      ADR4 => IDecodePort_Mmux_read_data1_418,
      O => ALUPort_Sh122
    );
  IDecodePort_Mmux_read_data1_4181 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y75",
      INIT => X"4444004444000000"
    )
    port map (
      ADR2 => '1',
      ADR4 => IDecodePort_Reg_array_5_26_Q,
      ADR5 => IDecodePort_Reg_array_4(26),
      ADR1 => IFetchPort_Mram_Instruction23,
      ADR0 => IFetchPort_Mram_Instruction22_8733,
      ADR3 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_418
    );
  ALUPort_Sh301_ALUPort_Sh301_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_Sh281,
      O => ALUPort_Sh281_0
    );
  ALUPort_Sh3011 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y76",
      INIT => X"AACCAACCAACCAACC"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => ALUPort_B_input(1),
      ADR1 => IDecodePort_Mmux_read_data1_423,
      ADR0 => IDecodePort_Mmux_read_data1_420,
      ADR5 => '1',
      O => ALUPort_Sh301
    );
  ALUPort_Sh2811 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y76",
      INIT => X"FFAA00AA"
    )
    port map (
      ADR2 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_418,
      ADR3 => ALUPort_B_input(1),
      ADR1 => '1',
      ADR0 => IDecodePort_Mmux_read_data1_420,
      O => ALUPort_Sh281
    );
  IDecodePort_Mmux_read_data1_4201 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y76",
      INIT => X"0000F0CC00000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => IDecodePort_Reg_array_5_28_Q,
      ADR1 => IDecodePort_Reg_array_4(28),
      ADR5 => IFetchPort_Mram_Instruction23,
      ADR4 => IFetchPort_Mram_Instruction22_8733,
      ADR3 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_420
    );
  Mmux_Write_data174 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y76",
      INIT => X"FACFCA0FFAC0CA00"
    )
    port map (
      ADR3 => ALUop(0),
      ADR2 => ALUop(1),
      ADR1 => ALUPort_B_input(24),
      ADR4 => IDecodePort_Mmux_read_data1_416,
      ADR0 => ALUPort_A_input_31_B_input_31_sub_7_OUT_24_0,
      ADR5 => ALUPort_A_input_31_B_input_31_add_5_OUT_24_0,
      O => Mmux_Write_data173_8750
    );
  IDecodePort_Mmux_read_data1_4161 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y76",
      INIT => X"4404400044044000"
    )
    port map (
      ADR5 => '1',
      ADR3 => IDecodePort_Reg_array_5_24_Q,
      ADR4 => IDecodePort_Reg_array_4(24),
      ADR1 => IFetchPort_Mram_Instruction23,
      ADR0 => IFetchPort_Mram_Instruction22_8733,
      ADR2 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_416
    );
  DMemoryPort_mux24_82 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y81",
      INIT => X"0F0F5555333300FF"
    )
    port map (
      ADR5 => ALUResult(3),
      ADR4 => ALUResult_1_0,
      ADR0 => N67,
      ADR2 => N68,
      ADR3 => N65,
      ADR1 => N66,
      O => DMemoryPort_mux24_82_9570
    );
  IDecodePort_Reg_array_5_31 : X_FF
    generic map(
      LOC => "SLICE_X65Y81",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_31_CLK,
      I => Write_data(31),
      O => IDecodePort_Reg_array_5_31_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data257 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y81",
      INIT => X"3737333337043300"
    )
    port map (
      ADR1 => DMemRead,
      ADR5 => Mmux_Write_data251_0,
      ADR0 => ALUResult_5_0,
      ADR3 => Mmux_Write_data255_0,
      ADR2 => N212,
      ADR4 => DMemoryPort_mux24_82_9570,
      O => Write_data(31)
    );
  DMemoryPort_mux23_82 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y81",
      INIT => X"050305F3F503F5F3"
    )
    port map (
      ADR3 => ALUResult(3),
      ADR2 => ALUResult_1_0,
      ADR0 => N72,
      ADR5 => N73,
      ADR1 => N70,
      ADR4 => N71,
      O => DMemoryPort_mux23_82_9569
    );
  IDecodePort_Reg_array_5_30 : X_FF
    generic map(
      LOC => "SLICE_X65Y81",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_30_CLK,
      I => Write_data(30),
      O => IDecodePort_Reg_array_5_30_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data246 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y81",
      INIT => X"00001100F0F0F0F0"
    )
    port map (
      ADR5 => DMemRead,
      ADR4 => ALUResult_5_0,
      ADR2 => Mmux_Write_data244_9039,
      ADR0 => ALUResult(4),
      ADR1 => ALUResult(6),
      ADR3 => DMemoryPort_mux23_82_9569,
      O => Write_data(30)
    );
  DMemoryPort_mux21_82 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y82",
      INIT => X"010D313DC1CDF1FD"
    )
    port map (
      ADR1 => ALUResult(3),
      ADR2 => ALUResult_1_0,
      ADR3 => N82,
      ADR5 => N83,
      ADR0 => N80,
      ADR4 => N81,
      O => DMemoryPort_mux21_82_9571
    );
  IDecodePort_Reg_array_5_29 : X_FF
    generic map(
      LOC => "SLICE_X65Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_29_CLK,
      I => Write_data(29),
      O => IDecodePort_Reg_array_5_29_Q,
      RST => GND,
      SET => GND
    );
  Mmux_Write_data226 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y82",
      INIT => X"3030303030743030"
    )
    port map (
      ADR1 => DMemRead,
      ADR0 => ALUResult_5_0,
      ADR2 => Mmux_Write_data224_9018,
      ADR3 => ALUResult(4),
      ADR5 => ALUResult(6),
      ADR4 => DMemoryPort_mux21_82_9571,
      O => Write_data(29)
    );
  IDecodePort_Reg_array_5_28 : X_FF
    generic map(
      LOC => "SLICE_X65Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_28_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_5_28_IN,
      O => IDecodePort_Reg_array_5_28_Q,
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux23_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y82",
      INIT => X"FF05FFAFFFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR5 => DMemoryPort_DMem_12(30),
      ADR2 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N72
    );
  IDecodePort_Reg_array_5_27 : X_FF
    generic map(
      LOC => "SLICE_X65Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0312_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_5_27_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_5_27_IN,
      O => IDecodePort_Reg_array_5_27_Q,
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux24_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y82",
      INIT => X"FDFFECFFFDFFECFF"
    )
    port map (
      ADR5 => '1',
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_2(31),
      ADR1 => ALUResult(0),
      O => N66
    );
  DMemoryPort_mux24_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y83",
      INIT => X"FDFDFFFFFDFDDDDD"
    )
    port map (
      ADR3 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => DMemoryPort_DMem_10(31),
      ADR1 => ALUResult(0),
      O => N68
    );
  DMemoryPort_mux20_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y83",
      INIT => X"EEFFFFFFEEFFCCFF"
    )
    port map (
      ADR2 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => DMemoryPort_DMem_10(28),
      ADR1 => ALUResult(0),
      O => N88
    );
  IDecodePort_Mmux_read_data2_4191 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y83",
      INIT => X"0A0008080A000808"
    )
    port map (
      ADR5 => '1',
      ADR3 => IDecodePort_Reg_array_5_27_Q,
      ADR1 => IDecodePort_Reg_array_4(27),
      ADR4 => IDecodePort_write_register_address(0),
      ADR2 => IFetchPort_Mram_Instruction17,
      ADR0 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_419
    );
  ALUPort_Mmux_B_input201 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y83",
      INIT => X"C0E0D0C0C0C0E0E0"
    )
    port map (
      ADR2 => IDecodePort_Mmux_read_data2_419,
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      ADR1 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(27)
    );
  DMemoryPort_DMem_2_31 : X_FF
    generic map(
      LOC => "SLICE_X65Y84",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_31_CLK,
      I => DMemoryPort_DMem_2_31_dpot_6599,
      O => DMemoryPort_DMem_2(31),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_31_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X65Y84",
      INIT => X"F3F33333C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_DMem_2(31),
      ADR4 => IDecodePort_Mmux_read_data2_973,
      ADR1 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_31_dpot_6599
    );
  DMemoryPort_DMem_10_31 : X_FF
    generic map(
      LOC => "SLICE_X65Y85",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_31_CLK,
      I => DMemoryPort_DMem_10_31_dpot_6609,
      O => DMemoryPort_DMem_10(31),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_31_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X65Y85",
      INIT => X"CCF000F0CCF000F0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR2 => DMemoryPort_DMem_10(31),
      ADR1 => IDecodePort_Mmux_read_data2_973,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_31_dpot_6609
    );
  ALUPort_Mmux_ALU_output283_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y61",
      INIT => X"FFFFF0F00F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_427,
      ADR5 => IDecodePort_Mmux_read_data1_428,
      ADR2 => ALUPort_B_input(0),
      O => N389
    );
  ALUPort_Mmux_ALU_output283_SW0_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y62",
      INIT => X"EEEEEEEE44444444"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => IDecodePort_Mmux_read_data1_430,
      ADR1 => IDecodePort_Mmux_read_data1_429,
      ADR0 => ALUPort_B_input(0),
      O => N390
    );
  ALUPort_Mmux_ALU_output18_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y63",
      INIT => X"FFFCFFFAFFFFFFFF"
    )
    port map (
      ADR5 => IDecodePort_Mmux_read_data1_4,
      ADR1 => IFetchPort_Mram_Instruction4,
      ADR0 => IDecodePort_Mmux_read_data2_426,
      ADR4 => ALUSrc,
      ADR2 => ALUPort_B_input(2),
      ADR3 => ALUPort_B_input(0),
      O => N294
    );
  Mmux_Write_data24 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y64",
      INIT => X"33220000F0F00000"
    )
    port map (
      ADR1 => ALUop(0),
      ADR4 => ALUop(2),
      ADR5 => ALUop(1),
      ADR0 => Mmux_Write_data2,
      ADR2 => Mmux_Write_data26_8775,
      ADR3 => Mmux_Write_data23_9573,
      O => Mmux_Write_data27
    );
  Mmux_Write_data22 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y64",
      INIT => X"0000FFD8000000D8"
    )
    port map (
      ADR4 => ALUPort_B_input(4),
      ADR3 => ALUPort_B_input(2),
      ADR1 => ALUPort_Sh114,
      ADR0 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh106,
      ADR5 => ALUPort_Sh1381,
      O => Mmux_Write_data23_9573
    );
  ALUPort_Mmux_ALU_output283 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y64",
      INIT => X"EC2CEF2FE020E323"
    )
    port map (
      ADR1 => ALUPort_B_input(2),
      ADR5 => ALUPort_Sh105,
      ADR2 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh109,
      ADR3 => ALUPort_Sh113,
      ADR4 => N256,
      O => ALUPort_Mmux_ALU_output282_8785
    );
  ALUPort_Mmux_ALU_output283_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y64",
      INIT => X"00001D1DE2E2FFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => ALUSrc,
      ADR2 => IFetchPort_Mram_Instruction1,
      ADR5 => N390,
      ADR4 => N389,
      ADR0 => IDecodePort_Mmux_read_data2_411,
      O => N256
    );
  ALUPort_Mmux_B_input261_1 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y65",
      INIT => X"AAAAAAAAFC0CF000"
    )
    port map (
      ADR0 => IFetchPort_Mram_Instruction3,
      ADR4 => IFetchPort_Mram_Instruction17,
      ADR2 => IFetchPort_Mram_Instruction18,
      ADR5 => ALUSrc,
      ADR1 => N298,
      ADR3 => IDecodePort_Mmux_read_data2_976,
      O => ALUPort_Mmux_B_input261_8446
    );
  ALUPort_Sh42_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y65",
      INIT => X"FCEEFCEEFFFFF0AA"
    )
    port map (
      ADR0 => IDecodePort_Mmux_read_data1_422,
      ADR1 => IFetchPort_Mram_Instruction2,
      ADR4 => IDecodePort_Mmux_read_data2_422,
      ADR5 => ALUSrc,
      ADR3 => ALUPort_B_input(0),
      ADR2 => IDecodePort_Mmux_read_data1_411,
      O => N311
    );
  ALUPort_Sh1131 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y65",
      INIT => X"F3EEF322C0EEC022"
    )
    port map (
      ADR3 => ALUPort_B_input(0),
      ADR1 => ALUPort_B_input(1),
      ADR5 => IDecodePort_Mmux_read_data1_49,
      ADR2 => IDecodePort_Mmux_read_data1_412,
      ADR4 => IDecodePort_Mmux_read_data1_410,
      ADR0 => IDecodePort_Mmux_read_data1_48,
      O => ALUPort_Sh113
    );
  Mmux_Write_data324_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y65",
      INIT => X"5555333300FF0F0F"
    )
    port map (
      ADR5 => ALUPort_B_input(2),
      ADR2 => ALUPort_Sh105,
      ADR4 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh117,
      ADR1 => ALUPort_Sh109,
      ADR3 => ALUPort_Sh113,
      O => N534
    );
  ALUPort_Mmux_ALU_output273 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y66",
      INIT => X"5410541055550000"
    )
    port map (
      ADR0 => ALUPort_B_input(4),
      ADR5 => ALUPort_B_input(2),
      ADR1 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh104,
      ADR3 => ALUPort_Sh112,
      ADR4 => ALUPort_Sh1281,
      O => ALUPort_Mmux_ALU_output272
    );
  ALUPort_Mmux_ALU_output274 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y66",
      INIT => X"CC88CC88CC80CC00"
    )
    port map (
      ADR2 => ALUPort_B_input(4),
      ADR1 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output123,
      ADR3 => ALUPort_Mmux_ALU_output27,
      ADR4 => ALUPort_Sh148,
      ADR5 => ALUPort_Mmux_ALU_output272,
      O => ALUPort_Mmux_ALU_output273_8515
    );
  ALUPort_Sh401 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y66",
      INIT => X"0AFF0A0F0AF00A00"
    )
    port map (
      ADR1 => '1',
      ADR2 => ALUPort_B_input(3),
      ADR3 => ALUPort_B_input(2),
      ADR0 => ALUPort_Sh4,
      ADR5 => ALUPort_Sh8,
      ADR4 => ALUPort_Sh,
      O => ALUPort_Sh40
    );
  ALUPort_Sh1921 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y66",
      INIT => X"0202000007070000"
    )
    port map (
      ADR3 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_4,
      ADR1 => IFetchPort_Mram_Instruction1,
      ADR0 => ALUSrc,
      ADR2 => ALUPort_B_input(0),
      ADR5 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh
    );
  ALUPort_Sh1281_ALUPort_Sh1281_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_Write_data184_6732,
      O => Mmux_Write_data184_0
    );
  ALUPort_Sh1281_ALUPort_Sh1281_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUop_1_pack_2,
      O => ALUop(1)
    );
  ALUPort_Sh12811 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y67",
      INIT => X"EE22FF33EE22CC00"
    )
    port map (
      ADR2 => '1',
      ADR1 => ALUPort_Mmux_B_input261_8446,
      ADR4 => ALUPort_B_input(0),
      ADR0 => ALUPort_Sh1001,
      ADR5 => ALUPort_Sh1002,
      ADR3 => ALUPort_Sh108,
      O => ALUPort_Sh1281
    );
  ALUPort_Sh1081 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y67",
      INIT => X"FEAE02A2FEAE02A2"
    )
    port map (
      ADR5 => '1',
      ADR3 => IFetchPort_Mram_Instruction1,
      ADR2 => ALUSrc,
      ADR0 => N263,
      ADR4 => N260,
      ADR1 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh108
    );
  ALUPort_Mmux_ALU_output28311 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y67",
      INIT => X"0000084C0000084C"
    )
    port map (
      ADR2 => IFetchPort_Mram_Instruction4,
      ADR3 => IDecodePort_Mmux_read_data2_426,
      ADR0 => ALUSrc,
      ADR1 => ALUop(0),
      ADR4 => ALUop(1),
      ADR5 => '1',
      O => ALUPort_Mmux_ALU_output2831
    );
  Mmux_Write_data185 : X_LUT5
    generic map(
      LOC => "SLICE_X64Y67",
      INIT => X"C480C480"
    )
    port map (
      ADR2 => IFetchPort_Mram_Instruction4,
      ADR3 => IDecodePort_Mmux_read_data2_426,
      ADR0 => ALUSrc,
      ADR1 => ALUop(0),
      ADR4 => '1',
      O => Mmux_Write_data184_6732
    );
  ALUPort_Mmux_ALU_output234_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y67",
      INIT => X"0050004000500040"
    )
    port map (
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR4 => ControlUnitPort_NextPCSignal(2),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR5 => '1',
      O => N384
    );
  ControlUnitPort_Mmux_ALU_Op2 : X_LUT5
    generic map(
      LOC => "SLICE_X64Y67",
      INIT => X"EABABAFA"
    )
    port map (
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR4 => ControlUnitPort_NextPCSignal(2),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      O => ALUop_1_pack_2
    );
  DMemoryPort_mux24_41_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y68",
      INIT => X"FFFFFFFCEEEEFFFC"
    )
    port map (
      ADR4 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output291_8424,
      ADR5 => ALUPort_Mmux_ALU_output294_8427,
      ADR2 => ALUPort_Mmux_ALU_output29,
      ADR3 => ALUPort_Mmux_ALU_output274_8419,
      ADR1 => ALUPort_Mmux_ALU_output273_8515,
      O => N212
    );
  ALUPort_Sh461 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y70",
      INIT => X"FF00F0F0AAAACCCC"
    )
    port map (
      ADR4 => ALUPort_B_input(2),
      ADR0 => ALUPort_Sh10,
      ADR3 => ALUPort_Sh2,
      ADR5 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh6,
      ADR1 => ALUPort_Sh14,
      O => ALUPort_Sh46
    );
  ALUPort_Sh141 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y70",
      INIT => X"F3F3EE22C0C0EE22"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data1_43,
      ADR4 => ALUPort_B_input(0),
      ADR1 => ALUPort_B_input(1),
      ADR2 => IDecodePort_Mmux_read_data1_42,
      ADR5 => IDecodePort_Mmux_read_data1_44,
      ADR0 => IDecodePort_Mmux_read_data1_45,
      O => ALUPort_Sh14
    );
  ALUPort_Sh1461 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y70",
      INIT => X"FF00F0F0AAAACCCC"
    )
    port map (
      ADR4 => ALUPort_B_input(2),
      ADR5 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh122,
      ADR0 => ALUPort_Sh118,
      ADR3 => ALUPort_Sh126,
      ADR1 => ALUPort_Sh114,
      O => ALUPort_Sh146
    );
  ALUPort_Mmux_ALU_output237 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y70",
      INIT => X"FFBBAAAAFEBAAAAA"
    )
    port map (
      ADR1 => ALUPort_B_input(4),
      ADR4 => ALUPort_Mmux_ALU_output123,
      ADR0 => ALUPort_Mmux_ALU_output232_8682,
      ADR5 => ALUPort_Mmux_ALU_output234_8622,
      ADR2 => ALUPort_Mmux_ALU_output235_8690,
      ADR3 => ALUPort_Sh146,
      O => ALUPort_Mmux_ALU_output236_8586
    );
  ALUPort_Sh181 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y71",
      INIT => X"FFCA0FCAF0CA00CA"
    )
    port map (
      ADR2 => ALUPort_B_input(0),
      ADR3 => ALUPort_B_input(1),
      ADR1 => IDecodePort_Mmux_read_data1_48,
      ADR4 => IDecodePort_Mmux_read_data1_46,
      ADR5 => IDecodePort_Mmux_read_data1_47,
      ADR0 => IDecodePort_Mmux_read_data1_49,
      O => ALUPort_Sh18
    );
  Mmux_Write_data151 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y71",
      INIT => X"0ACF0AC000000000"
    )
    port map (
      ADR5 => ALUPort_B_input(2),
      ADR3 => ALUPort_B_input(3),
      ADR2 => ALUPort_B_input(4),
      ADR1 => ALUPort_Sh2,
      ADR4 => ALUPort_Sh18,
      ADR0 => ALUPort_Sh10,
      O => Mmux_Write_data15
    );
  ALUPort_Sh1441 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y71",
      INIT => X"F7E6D5C4B3A29180"
    )
    port map (
      ADR0 => ALUPort_B_input(2),
      ADR1 => ALUPort_B_input(3),
      ADR4 => ALUPort_Sh116,
      ADR2 => ALUPort_Sh124,
      ADR5 => ALUPort_Sh120,
      ADR3 => ALUPort_Sh112,
      O => ALUPort_Sh144
    );
  ALUPort_Mmux_ALU_output15 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y71",
      INIT => X"FA0AFF0FFA0AF000"
    )
    port map (
      ADR1 => '1',
      ADR2 => ALUPort_B_input(4),
      ADR4 => ALUPort_B_input(2),
      ADR0 => ALUPort_Sh1281,
      ADR5 => ALUPort_Mmux_ALU_output12,
      ADR3 => ALUPort_Sh144,
      O => ALUPort_Mmux_ALU_output13_8687
    );
  DMemoryPort_DMem_10_18 : X_FF
    generic map(
      LOC => "SLICE_X64Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_18_CLK,
      I => DMemoryPort_DMem_10_18_dpot_6801,
      O => DMemoryPort_DMem_10(18),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_18_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X64Y80",
      INIT => X"FFF0FFF000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => DMemoryPort_DMem_10(18),
      ADR5 => IDecodePort_Mmux_read_data2_49,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_18_dpot_6801
    );
  DMemoryPort_DMem_10_17 : X_FF
    generic map(
      LOC => "SLICE_X64Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_17_CLK,
      I => DMemoryPort_DMem_10_17_dpot_6808,
      O => DMemoryPort_DMem_10(17),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_17_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X64Y80",
      INIT => X"FFFF0000CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_10(17),
      ADR4 => IDecodePort_Mmux_read_data2_48,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_17_dpot_6808
    );
  DMemoryPort_DMem_10_16 : X_FF
    generic map(
      LOC => "SLICE_X64Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_16_CLK,
      I => DMemoryPort_DMem_10_16_dpot_6813,
      O => DMemoryPort_DMem_10(16),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_16_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X64Y80",
      INIT => X"FF00FF00CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_10(16),
      ADR3 => IDecodePort_Mmux_read_data2_47,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_16_dpot_6813
    );
  DMemoryPort_DMem_10_15 : X_FF
    generic map(
      LOC => "SLICE_X64Y80",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1066_inv1,
      CLK => NlwBufferSignal_DMemoryPort_DMem_10_15_CLK,
      I => DMemoryPort_DMem_10_15_dpot_6821,
      O => DMemoryPort_DMem_10(15),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_10_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X64Y80",
      INIT => X"FFFF0000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => DMemoryPort_DMem_10(15),
      ADR4 => IDecodePort_Mmux_read_data2_46,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_10_15_dpot_6821
    );
  IDecodePort_Mmux_read_data2_973_IDecodePort_Mmux_read_data2_973_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data2_424,
      O => IDecodePort_Mmux_read_data2_424_0
    );
  IDecodePort_Mmux_read_data2_9731 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y81",
      INIT => X"0F000C0C0F000C0C"
    )
    port map (
      ADR0 => '1',
      ADR2 => IFetchPort_Mram_Instruction17,
      ADR4 => IDecodePort_write_register_address(0),
      ADR1 => IDecodePort_Reg_array_4_31_0,
      ADR3 => IDecodePort_Reg_array_5_31_Q,
      ADR5 => '1',
      O => IDecodePort_Mmux_read_data2_973
    );
  IDecodePort_Mmux_read_data2_4241 : X_LUT5
    generic map(
      LOC => "SLICE_X64Y81",
      INIT => X"0A000808"
    )
    port map (
      ADR0 => IFetchPort_Mram_Instruction18,
      ADR2 => IFetchPort_Mram_Instruction17,
      ADR4 => IDecodePort_write_register_address(0),
      ADR1 => IDecodePort_Reg_array_4_31_0,
      ADR3 => IDecodePort_Reg_array_5_31_Q,
      O => IDecodePort_Mmux_read_data2_424
    );
  Mmux_Write_data187 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y81",
      INIT => X"FFF0F000AACCAACC"
    )
    port map (
      ADR3 => ALUop(0),
      ADR5 => ALUop(1),
      ADR2 => ALUPort_B_input(25),
      ADR4 => IDecodePort_Mmux_read_data1_417,
      ADR0 => ALUPort_A_input_31_B_input_31_sub_7_OUT_25_0,
      ADR1 => ALUPort_A_input_31_B_input_31_add_5_OUT_25_0,
      O => Mmux_Write_data186_9397
    );
  DMemoryPort_mux16_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y81",
      INIT => X"FFDFEFCFFFDFEFCF"
    )
    port map (
      ADR5 => '1',
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => DMemoryPort_DMem_10(24),
      ADR1 => ALUResult(0),
      O => N108
    );
  DMemoryPort_mux21_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y81",
      INIT => X"FF33FF77FFBBFFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_4(29),
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N80
    );
  IDecodePort_Reg_array_4_30_IDecodePort_Reg_array_4_30_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Reg_array_4(31),
      O => IDecodePort_Reg_array_4_31_0
    );
  IDecodePort_Reg_array_4_30 : X_FF
    generic map(
      LOC => "SLICE_X64Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_30_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_30_IN,
      O => IDecodePort_Reg_array_4(30),
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux20_82 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y82",
      INIT => X"220A770A225F775F"
    )
    port map (
      ADR3 => ALUResult(3),
      ADR0 => ALUResult_1_0,
      ADR4 => N87,
      ADR1 => N88,
      ADR5 => N85,
      ADR2 => N86,
      O => DMemoryPort_mux20_82_9575
    );
  IDecodePort_Reg_array_4_28 : X_FF
    generic map(
      LOC => "SLICE_X64Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_28_CLK,
      I => Write_data(28),
      O => IDecodePort_Reg_array_4(28),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data216 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y82",
      INIT => X"00F000F011F000F0"
    )
    port map (
      ADR3 => DMemRead,
      ADR0 => ALUResult_5_0,
      ADR2 => Mmux_Write_data214_9024,
      ADR1 => ALUResult(4),
      ADR5 => ALUResult(6),
      ADR4 => DMemoryPort_mux20_82_9575,
      O => Write_data(28)
    );
  IDecodePort_Reg_array_4_29 : X_FF
    generic map(
      LOC => "SLICE_X64Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_29_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_29_IN,
      O => IDecodePort_Reg_array_4(29),
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux19_82 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y82",
      INIT => X"001D331DCC1DFF1D"
    )
    port map (
      ADR3 => ALUResult(3),
      ADR1 => ALUResult_1_0,
      ADR4 => N92,
      ADR5 => N93,
      ADR0 => N90,
      ADR2 => N91,
      O => DMemoryPort_mux19_82_9574
    );
  IDecodePort_Reg_array_4_27 : X_FF
    generic map(
      LOC => "SLICE_X64Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_27_CLK,
      I => Write_data(27),
      O => IDecodePort_Reg_array_4(27),
      RST => GND,
      SET => GND
    );
  Mmux_Write_data206 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y82",
      INIT => X"5050505050507250"
    )
    port map (
      ADR0 => DMemRead,
      ADR4 => ALUResult_5_0,
      ADR2 => Mmux_Write_data204_9010,
      ADR5 => ALUResult(4),
      ADR1 => ALUResult(6),
      ADR3 => DMemoryPort_mux19_82_9574,
      O => Write_data(27)
    );
  IDecodePort_Reg_array_4_31 : X_FF
    generic map(
      LOC => "SLICE_X64Y82",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_n0308_inv,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_4_31_CLK,
      I => NlwBufferSignal_IDecodePort_Reg_array_4_31_IN,
      O => IDecodePort_Reg_array_4(31),
      RST => GND,
      SET => GND
    );
  DMemoryPort_mux21_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y83",
      INIT => X"FF0FFFCFFF3FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => DMemoryPort_DMem_12(29),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N82
    );
  DMemoryPort_mux20_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y83",
      INIT => X"FF0FFFCFFF3FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => DMemoryPort_DMem_12(28),
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR1 => ALUop(2),
      ADR4 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N87
    );
  DMemoryPort_mux18_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y83",
      INIT => X"FFFFFFFFCFCFFF0F"
    )
    port map (
      ADR0 => '1',
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => DMemoryPort_DMem_2(26),
      ADR5 => ALUResult(0),
      O => N96
    );
  DMemoryPort_mux23_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y83",
      INIT => X"FFFFFFFFFF55DDDD"
    )
    port map (
      ADR2 => '1',
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR3 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => DMemoryPort_DMem_2(30),
      ADR5 => ALUResult(0),
      O => N71
    );
  DMemoryPort_mux20_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y84",
      INIT => X"FFFFF7F7FFFFB3B3"
    )
    port map (
      ADR3 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => DMemoryPort_DMem_2(28),
      ADR4 => ALUResult(0),
      O => N86
    );
  DMemoryPort_mux23_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y84",
      INIT => X"FFFFF7F7FFFFB3B3"
    )
    port map (
      ADR3 => '1',
      ADR5 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => DMemoryPort_DMem_10(30),
      ADR4 => ALUResult(0),
      O => N73
    );
  DMemoryPort_mux21_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y84",
      INIT => X"FDFDFFDDFDFDFFDD"
    )
    port map (
      ADR5 => '1',
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => DMemoryPort_DMem_2(29),
      ADR1 => ALUResult(0),
      O => N81
    );
  DMemoryPort_mux24_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y84",
      INIT => X"FF0FFF33FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => DMemoryPort_DMem_4(31),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR4 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N65
    );
  N126_N126_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_82_6942,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_82_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_82 : X_MUX2
    generic map(
      LOC => "SLICE_X64Y85"
    )
    port map (
      IA => N608,
      IB => N609,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_82_6942,
      SEL => LED_1_OBUF_8285
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_82_F : X_LUT6
    generic map(
      LOC => "SLICE_X64Y85",
      INIT => X"5040100050401000"
    )
    port map (
      ADR5 => '1',
      ADR2 => LED_2_OBUF_8362,
      ADR0 => LED_0_OBUF_8361,
      ADR1 => LED_3_OBUF_8283,
      ADR3 => DMemoryPort_DMem_4(31),
      ADR4 => DMemoryPort_DMem_12(31),
      O => N608
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_82_G : X_LUT6
    generic map(
      LOC => "SLICE_X64Y85",
      INIT => X"0501040005010400"
    )
    port map (
      ADR5 => '1',
      ADR0 => LED_0_OBUF_8361,
      ADR2 => LED_2_OBUF_8362,
      ADR1 => LED_3_OBUF_8283,
      ADR4 => DMemoryPort_DMem_2(31),
      ADR3 => DMemoryPort_DMem_10(31),
      O => N609
    );
  DMemoryPort_mux12_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y85",
      INIT => X"FFDFFFD5FFDFFFD5"
    )
    port map (
      ADR5 => '1',
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR0 => DMemoryPort_DMem_2(20),
      ADR3 => ALUResult(0),
      O => N126
    );
  DMemoryPort_mux13_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y85",
      INIT => X"FFCFFFC0FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_2(21),
      ADR3 => ALUResult(0),
      O => N121
    );
  DMemoryPort_DMem_4_31 : X_FF
    generic map(
      LOC => "SLICE_X64Y86",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_4_31_CLK,
      I => DMemoryPort_DMem_4_31_dpot_6964,
      O => DMemoryPort_DMem_4(31),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_4_31_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X64Y86",
      INIT => X"CCCC0000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => IFetchPort_Mram_Instruction18,
      ADR2 => DMemoryPort_DMem_4(31),
      ADR1 => IDecodePort_Mmux_read_data2_973,
      ADR5 => DMemoryPort_n1050_inv_rstpot_9053,
      O => DMemoryPort_DMem_4_31_dpot_6964
    );
  ALUPort_Sh1381_ALUPort_Sh1381_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_Sh1371_pack_2,
      O => ALUPort_Sh1371
    );
  ALUPort_Sh13811 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y64",
      INIT => X"AACCAACCAACCAACC"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh118,
      ADR1 => ALUPort_Sh110,
      ADR5 => '1',
      O => ALUPort_Sh1381
    );
  ALUPort_Sh13711 : X_LUT5
    generic map(
      LOC => "SLICE_X66Y64",
      INIT => X"F0FFF000"
    )
    port map (
      ADR4 => ALUPort_Sh109,
      ADR2 => ALUPort_Sh117,
      ADR3 => ALUPort_B_input(3),
      ADR1 => '1',
      ADR0 => '1',
      O => ALUPort_Sh1371_pack_2
    );
  Mmux_Write_data52 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y64",
      INIT => X"5410541054541010"
    )
    port map (
      ADR0 => ALUPort_B_input(4),
      ADR1 => ALUPort_B_input(2),
      ADR5 => ALUPort_B_input(3),
      ADR4 => ALUPort_Sh113,
      ADR3 => ALUPort_Sh121,
      ADR2 => ALUPort_Sh1371,
      O => Mmux_Write_data51_8830
    );
  Mmux_Write_data51 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y65",
      INIT => X"000000A800000008"
    )
    port map (
      ADR3 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh125,
      ADR4 => ALUPort_B_input(2),
      ADR2 => ALUSrc,
      ADR1 => IDecodePort_Mmux_read_data2_426,
      ADR5 => IFetchPort_Mram_Instruction4,
      O => Mmux_Write_data5
    );
  ALUPort_Sh42_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y65",
      INIT => X"FEFFFEEEF2FFF222"
    )
    port map (
      ADR1 => ALUSrc,
      ADR5 => IFetchPort_Mram_Instruction2,
      ADR4 => IDecodePort_Mmux_read_data1_426,
      ADR3 => ALUPort_B_input(0),
      ADR0 => IDecodePort_Mmux_read_data2_422,
      ADR2 => IDecodePort_Mmux_read_data1_425,
      O => N310
    );
  ALUPort_Mmux_ALU_output271 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y65",
      INIT => X"0001000100450001"
    )
    port map (
      ADR2 => IDecodePort_Mmux_read_data1_426,
      ADR3 => ALUPort_B_input(4),
      ADR0 => ALUop(1),
      ADR1 => ALUop(0),
      ADR5 => ALUPort_B_input(3),
      ADR4 => ALUPort_Sh441,
      O => ALUPort_Mmux_ALU_output27
    );
  ALUPort_Sh4411 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y65",
      INIT => X"AFBB05BBAF110511"
    )
    port map (
      ADR3 => ALUPort_B_input(1),
      ADR4 => N311,
      ADR2 => N309,
      ADR5 => N310,
      ADR1 => N308,
      ADR0 => ALUPort_Sh,
      O => ALUPort_Sh441
    );
  ALUPort_Sh51 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y66",
      INIT => X"CCF0CCF0FFAA00AA"
    )
    port map (
      ADR2 => IDecodePort_Mmux_read_data1_426,
      ADR1 => IDecodePort_Mmux_read_data1_422,
      ADR0 => IDecodePort_Mmux_read_data1_427,
      ADR5 => ALUPort_B_input(0),
      ADR3 => ALUPort_B_input(1),
      ADR4 => IDecodePort_Mmux_read_data1_425,
      O => ALUPort_Sh5
    );
  ALUPort_Sh42 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y66",
      INIT => X"CCFFCC00AAF0AAF0"
    )
    port map (
      ADR5 => ALUPort_B_input(0),
      ADR3 => ALUPort_B_input(1),
      ADR4 => IDecodePort_Mmux_read_data1_425,
      ADR1 => IDecodePort_Mmux_read_data1_411,
      ADR0 => IDecodePort_Mmux_read_data1_422,
      ADR2 => IDecodePort_Mmux_read_data1_426,
      O => ALUPort_Sh4
    );
  ALUPort_Mmux_ALU_output236 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y66",
      INIT => X"00EE002200FC0030"
    )
    port map (
      ADR3 => ALUPort_B_input(2),
      ADR5 => ALUPort_B_input(0),
      ADR1 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh971,
      ADR0 => ALUPort_Sh981,
      ADR4 => ALUPort_Sh106,
      O => ALUPort_Mmux_ALU_output235_8690
    );
  ALUPort_Sh1061 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y66",
      INIT => X"F0F5F0A0FFF500A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => ALUSrc,
      ADR5 => IFetchPort_Mram_Instruction1,
      ADR2 => N263,
      ADR4 => N266,
      ADR0 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh106
    );
  ALUPort_Mmux_ALU_output235 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y67",
      INIT => X"AA00AA00A2A28080"
    )
    port map (
      ADR0 => ALUPort_B_input(2),
      ADR5 => ALUPort_B_input(3),
      ADR1 => ALUPort_B_input(0),
      ADR4 => ALUPort_Sh1012,
      ADR2 => ALUPort_Sh1021,
      ADR3 => ALUPort_Sh110,
      O => ALUPort_Mmux_ALU_output234_8622
    );
  ALUPort_Sh1101 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y67",
      INIT => X"DCDFDCDF8C808C80"
    )
    port map (
      ADR4 => '1',
      ADR2 => ALUSrc,
      ADR0 => IFetchPort_Mram_Instruction1,
      ADR1 => N261,
      ADR5 => N260,
      ADR3 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh110
    );
  Mmux_Write_data323 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y67",
      INIT => X"FFCC3300FFCC3300"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => ALUPort_B_input(2),
      ADR3 => ALUPort_Sh121,
      ADR4 => ALUPort_Sh125,
      O => Mmux_Write_data322_8598
    );
  ALUPort_Sh1251 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y67",
      INIT => X"44444444F5A05500"
    )
    port map (
      ADR2 => IFetchPort_Mram_Instruction23,
      ADR0 => ALUPort_B_input(0),
      ADR5 => ALUPort_B_input(1),
      ADR4 => IDecodePort_Mmux_read_data1_970,
      ADR1 => IDecodePort_Mmux_read_data1_424,
      ADR3 => IDecodePort_Mmux_read_data1_421,
      O => ALUPort_Sh125
    );
  RType_RType_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_write_register_address(1),
      O => IDecodePort_write_register_address_1_0
    );
  RType_RType_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N289,
      O => N289_0
    );
  ControlUnitPort_R_type_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y68",
      INIT => X"0000245000002450"
    )
    port map (
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR5 => '1',
      O => RType
    );
  IDecodePort_Mmux_write_register_address21 : X_LUT5
    generic map(
      LOC => "SLICE_X66Y68",
      INIT => X"00000282"
    )
    port map (
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      O => IDecodePort_write_register_address(1)
    );
  ALUPort_Sh41_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y68",
      INIT => X"3355335533553355"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => ALUPort_B_input(0),
      ADR1 => IDecodePort_Mmux_read_data1_4,
      ADR0 => IDecodePort_Mmux_read_data1_411,
      ADR5 => '1',
      O => N18
    );
  ALUPort_Sh4511_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X66Y68",
      INIT => X"F3F5F3F5"
    )
    port map (
      ADR4 => '1',
      ADR2 => ALUPort_B_input(1),
      ADR3 => ALUPort_B_input(0),
      ADR1 => IDecodePort_Mmux_read_data1_4,
      ADR0 => IDecodePort_Mmux_read_data1_411,
      O => N289
    );
  Mmux_Write_data303 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y68",
      INIT => X"FFFFBB880000BB88"
    )
    port map (
      ADR2 => '1',
      ADR1 => ALUPort_B_input(2),
      ADR4 => ALUPort_B_input(4),
      ADR0 => ALUPort_Sh1351,
      ADR5 => ALUPort_Sh151,
      ADR3 => ALUPort_Sh1311,
      O => Mmux_Write_data302_9578
    );
  Mmux_Write_data304 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y68",
      INIT => X"CCCCFFCCCCCCCDCD"
    )
    port map (
      ADR2 => IDecodePort_Mmux_read_data1_429,
      ADR0 => ALUPort_B_input(7),
      ADR4 => ALUop(0),
      ADR5 => ALUop(1),
      ADR1 => Mmux_Write_data301_9429,
      ADR3 => Mmux_Write_data302_9578,
      O => Mmux_Write_data303_9428
    );
  Mmux_Write_data192 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y69",
      INIT => X"00A800A800080008"
    )
    port map (
      ADR4 => '1',
      ADR0 => ALUop(1),
      ADR3 => ALUPort_B_input(3),
      ADR2 => ALUPort_B_input(2),
      ADR1 => ALUPort_Sh122,
      ADR5 => ALUPort_Sh126,
      O => Mmux_Write_data191_9399
    );
  Mmux_Write_data81 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y69",
      INIT => X"0000440001014501"
    )
    port map (
      ADR2 => IDecodePort_Mmux_read_data1_47,
      ADR4 => ALUPort_B_input(4),
      ADR0 => ALUop(0),
      ADR1 => ALUop(1),
      ADR5 => ALUPort_B_input(16),
      ADR3 => ALUPort_Sh144,
      O => Mmux_Write_data8
    );
  Mmux_Write_data85 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y69",
      INIT => X"AA8AAA00AA88AA00"
    )
    port map (
      ADR0 => ALUop(2),
      ADR4 => Mmux_Write_data101_0,
      ADR1 => Mmux_Write_data82,
      ADR5 => Mmux_Write_data83_8841,
      ADR2 => ALUPort_B_input(4),
      ADR3 => Mmux_Write_data8,
      O => Mmux_Write_data84_8838
    );
  ALUPort_Sh1141 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y70",
      INIT => X"BBBB8888AAFFAA00"
    )
    port map (
      ADR2 => '1',
      ADR5 => ALUSrc,
      ADR1 => IFetchPort_Mram_Instruction1,
      ADR0 => N278,
      ADR4 => N281,
      ADR3 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh114
    );
  ALUPort_Sh1501 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y70",
      INIT => X"7766554433221100"
    )
    port map (
      ADR2 => '1',
      ADR0 => ALUPort_B_input(3),
      ADR1 => ALUPort_B_input(2),
      ADR5 => ALUPort_Sh122,
      ADR3 => ALUPort_Sh118,
      ADR4 => ALUPort_Sh126,
      O => ALUPort_Sh150
    );
  ALUPort_Sh1261 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y70",
      INIT => X"0B0008000BBB0888"
    )
    port map (
      ADR2 => IFetchPort_Mram_Instruction1,
      ADR3 => ALUSrc,
      ADR1 => ALUPort_B_input(0),
      ADR0 => IDecodePort_Mmux_read_data1_424,
      ADR4 => IDecodePort_Mmux_read_data1_423,
      ADR5 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh126
    );
  ALUPort_Sh1481 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y71",
      INIT => X"55005500DDDD8888"
    )
    port map (
      ADR2 => '1',
      ADR5 => ALUPort_B_input(3),
      ADR0 => ALUPort_B_input(2),
      ADR1 => ALUPort_Sh120,
      ADR4 => ALUPort_Sh116,
      ADR3 => ALUPort_Sh124,
      O => ALUPort_Sh148
    );
  ALUPort_Sh1241 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y71",
      INIT => X"FEAEFEAE02A202A2"
    )
    port map (
      ADR4 => '1',
      ADR2 => ALUSrc,
      ADR3 => IFetchPort_Mram_Instruction1,
      ADR5 => N273,
      ADR0 => N272,
      ADR1 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh124
    );
  IFetchPort_Mram_Instruction41 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y71",
      INIT => X"0050A50F0500A00A"
    )
    port map (
      ADR1 => '1',
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR4 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(3),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      O => IFetchPort_Mram_Instruction4
    );
  Mmux_Write_data113 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y71",
      INIT => X"000000000C040800"
    )
    port map (
      ADR5 => ALUPort_B_input(3),
      ADR1 => ALUPort_Sh3,
      ADR2 => ALUPort_B_input(2),
      ADR0 => ALUSrc,
      ADR4 => IDecodePort_Mmux_read_data2_426,
      ADR3 => IFetchPort_Mram_Instruction4,
      O => Mmux_Write_data112
    );
  ALUPort_Sh120_ALUPort_Sh120_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_Write_data172,
      O => Mmux_Write_data172_0
    );
  Mmux_Write_data173 : X_MUX2
    generic map(
      LOC => "SLICE_X66Y72"
    )
    port map (
      IA => N612,
      IB => N613,
      O => Mmux_Write_data172,
      SEL => ALUPort_B_input(2)
    );
  Mmux_Write_data173_F : X_LUT6
    generic map(
      LOC => "SLICE_X66Y72",
      INIT => X"118011C4008000C4"
    )
    port map (
      ADR1 => ALUop(0),
      ADR3 => ALUop(1),
      ADR0 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh16,
      ADR4 => N26,
      ADR5 => ALUPort_Sh120,
      O => N612
    );
  Mmux_Write_data173_G : X_LUT6
    generic map(
      LOC => "SLICE_X66Y72",
      INIT => X"02CC020C02C00200"
    )
    port map (
      ADR3 => ALUop(1),
      ADR1 => ALUop(0),
      ADR2 => ALUPort_B_input(3),
      ADR5 => ALUPort_Sh20,
      ADR4 => ALUPort_Sh12,
      ADR0 => ALUPort_Sh124,
      O => N613
    );
  ALUPort_Sh1201 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y72",
      INIT => X"F2F2F7F7D0D08080"
    )
    port map (
      ADR3 => '1',
      ADR0 => ALUSrc,
      ADR1 => IFetchPort_Mram_Instruction1,
      ADR2 => N276,
      ADR5 => N275,
      ADR4 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh120
    );
  ALUPort_Sh119_ALUPort_Sh119_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_Sh561_7185,
      O => ALUPort_Sh561_0
    );
  ALUPort_Sh1191 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y73",
      INIT => X"EEFCEE3022FC2230"
    )
    port map (
      ADR3 => ALUPort_B_input(0),
      ADR1 => ALUPort_B_input(1),
      ADR0 => IDecodePort_Mmux_read_data1_416,
      ADR5 => IDecodePort_Mmux_read_data1_418,
      ADR4 => IDecodePort_Mmux_read_data1_417,
      ADR2 => IDecodePort_Mmux_read_data1_415,
      O => ALUPort_Sh119
    );
  ALUPort_Sh5211 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y73",
      INIT => X"EEEE2222EEEE2222"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh20,
      ADR4 => ALUPort_Sh12,
      ADR5 => '1',
      O => ALUPort_Sh521
    );
  ALUPort_Sh561 : X_LUT5
    generic map(
      LOC => "SLICE_X66Y73",
      INIT => X"CF03CF03"
    )
    port map (
      ADR2 => N26,
      ADR3 => ALUPort_Sh16,
      ADR1 => ALUPort_B_input(3),
      ADR0 => '1',
      ADR4 => '1',
      O => ALUPort_Sh561_7185
    );
  Mmux_Write_data132 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y73",
      INIT => X"3330131023200300"
    )
    port map (
      ADR1 => ALUPort_B_input(4),
      ADR2 => ALUPort_B_input(2),
      ADR0 => ALUPort_B_input(3),
      ADR5 => ALUPort_Sh16,
      ADR4 => ALUPort_Sh8,
      ADR3 => ALUPort_Sh521,
      O => Mmux_Write_data131_9181
    );
  IDecodePort_Mmux_read_data1_424_IDecodePort_Mmux_read_data1_424_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_Sh581_7199,
      O => ALUPort_Sh581_0
    );
  ALUPort_Sh581 : X_MUX2
    generic map(
      LOC => "SLICE_X66Y74"
    )
    port map (
      IA => N456,
      IB => N457,
      O => ALUPort_Sh581_7199,
      SEL => ALUPort_B_input(3)
    );
  ALUPort_Sh581_F : X_LUT6
    generic map(
      LOC => "SLICE_X66Y74",
      INIT => X"BBFCBB3088FC8830"
    )
    port map (
      ADR3 => ALUPort_B_input(1),
      ADR1 => ALUPort_B_input(0),
      ADR5 => IDecodePort_Mmux_read_data1_416,
      ADR0 => IDecodePort_Mmux_read_data1_415,
      ADR4 => IDecodePort_Mmux_read_data1_417,
      ADR2 => IDecodePort_Mmux_read_data1_418,
      O => N456
    );
  ALUPort_Sh581_G : X_LUT6
    generic map(
      LOC => "SLICE_X66Y74",
      INIT => X"EEEE2222FC30FC30"
    )
    port map (
      ADR1 => ALUPort_B_input(0),
      ADR5 => ALUPort_B_input(1),
      ADR3 => IDecodePort_Mmux_read_data1_48,
      ADR4 => IDecodePort_Mmux_read_data1_46,
      ADR0 => IDecodePort_Mmux_read_data1_47,
      ADR2 => IDecodePort_Mmux_read_data1_49,
      O => N457
    );
  IDecodePort_Mmux_read_data1_4241 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y74",
      INIT => X"0A0F00000A000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => IDecodePort_Reg_array_5_31_Q,
      ADR5 => IDecodePort_Reg_array_4_31_0,
      ADR4 => IFetchPort_Mram_Instruction23,
      ADR2 => IFetchPort_Mram_Instruction22_8733,
      ADR3 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_424
    );
  ALUPort_Mmux_B_input121_SW9 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y74",
      INIT => X"EE22EE22EE22EE22"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => ALUPort_B_input(0),
      ADR0 => IDecodePort_Mmux_read_data1_423,
      ADR3 => IDecodePort_Mmux_read_data1_424,
      O => N273
    );
  Mmux_Write_data163_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y75",
      INIT => X"00FA33FA00FA33FA"
    )
    port map (
      ADR5 => '1',
      ADR3 => ALUop(0),
      ADR2 => IDecodePort_Mmux_read_data1_415,
      ADR0 => ALUPort_B_input(23),
      ADR4 => Mmux_Write_data161_8857,
      ADR1 => Mmux_Write_data16,
      O => N452
    );
  Mmux_Write_data164 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y75",
      INIT => X"000800080000AAAA"
    )
    port map (
      ADR0 => ALUop(2),
      ADR1 => ALUPort_Sh151,
      ADR5 => ALUop(1),
      ADR3 => ALUop(0),
      ADR2 => ALUPort_B_input(4),
      ADR4 => N452,
      O => Mmux_Write_data163
    );
  Mmux_Write_data212 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y75",
      INIT => X"FF55AA00EE44EE44"
    )
    port map (
      ADR2 => '1',
      ADR5 => ALUPort_B_input(0),
      ADR0 => ALUPort_B_input(3),
      ADR1 => ALUPort_Sh281_0,
      ADR3 => ALUPort_Sh20,
      ADR4 => ALUPort_Sh271,
      O => Mmux_Write_data211_9031
    );
  Mmux_Write_data213_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y75",
      INIT => X"FFFFDCDFFFFFFFFF"
    )
    port map (
      ADR2 => ALUPort_B_input(2),
      ADR1 => ALUPort_B_input(4),
      ADR5 => ALUop(0),
      ADR4 => ALUop(1),
      ADR0 => ALUPort_Sh561_0,
      ADR3 => Mmux_Write_data211_9031,
      O => N313
    );
  Mmux_Write_data95 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y76",
      INIT => X"FCC0FCC0BBBB8888"
    )
    port map (
      ADR1 => ALUop(0),
      ADR5 => ALUop(1),
      ADR3 => ALUPort_B_input(17),
      ADR2 => IDecodePort_Mmux_read_data1_48,
      ADR0 => ALUPort_A_input_31_B_input_31_sub_7_OUT_17_0,
      ADR4 => ALUPort_A_input_31_B_input_31_add_5_OUT_17_0,
      O => Mmux_Write_data94_8271
    );
  Mmux_Write_data86 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y76",
      INIT => X"FCAAFCAAC0FFC000"
    )
    port map (
      ADR5 => ALUop(0),
      ADR3 => ALUop(1),
      ADR1 => ALUPort_B_input(16),
      ADR2 => IDecodePort_Mmux_read_data1_47,
      ADR0 => ALUPort_A_input_31_B_input_31_sub_7_OUT_16_0,
      ADR4 => ALUPort_A_input_31_B_input_31_add_5_OUT_16_0,
      O => Mmux_Write_data85_8843
    );
  Mmux_Write_data165 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y77",
      INIT => X"FAA0FAA0EEEE4444"
    )
    port map (
      ADR0 => ALUop(0),
      ADR5 => ALUop(1),
      ADR2 => ALUPort_B_input(23),
      ADR3 => IDecodePort_Mmux_read_data1_415,
      ADR4 => ALUPort_A_input_31_B_input_31_sub_7_OUT_23_0,
      ADR1 => ALUPort_A_input_31_B_input_31_add_5_OUT_23_0,
      O => Mmux_Write_data164_9394
    );
  Mmux_Write_data116 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y78",
      INIT => X"FCFCACACAFA00F00"
    )
    port map (
      ADR5 => ALUop(0),
      ADR2 => ALUop(1),
      ADR0 => ALUPort_B_input(19),
      ADR4 => IDecodePort_Mmux_read_data1_410,
      ADR1 => ALUPort_A_input_31_B_input_31_sub_7_OUT_19_0,
      ADR3 => ALUPort_A_input_31_B_input_31_add_5_OUT_19_0,
      O => Mmux_Write_data115_8306
    );
  IDecodePort_Mmux_read_data1_4131 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y79",
      INIT => X"5500440011000000"
    )
    port map (
      ADR2 => '1',
      ADR5 => IDecodePort_Reg_array_5_21_Q,
      ADR4 => IDecodePort_Reg_array_4(21),
      ADR3 => IFetchPort_Mram_Instruction23,
      ADR0 => IFetchPort_Mram_Instruction22_8733,
      ADR1 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_413
    );
  ALUPort_Mmux_B_input121_SW12 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y79",
      INIT => X"FF00FF00FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => ALUPort_B_input(0),
      ADR4 => IDecodePort_Mmux_read_data1_412,
      ADR3 => IDecodePort_Mmux_read_data1_413,
      O => N278
    );
  DMemoryPort_mux18_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y80",
      INIT => X"FFFF3737FFFFF7F7"
    )
    port map (
      ADR3 => '1',
      ADR1 => DMemoryPort_DMem_12(26),
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N97
    );
  DMemoryPort_mux19_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y80",
      INIT => X"FFFF3737FFFFF7F7"
    )
    port map (
      ADR3 => '1',
      ADR1 => DMemoryPort_DMem_12(27),
      ADR0 => ALUPort_Mmux_ALU_output23,
      ADR2 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => ALUResult(0),
      O => N92
    );
  IDecodePort_Mmux_read_data2_4151 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y80",
      INIT => X"4440040044400400"
    )
    port map (
      ADR5 => '1',
      ADR4 => IDecodePort_Reg_array_5_23_Q,
      ADR3 => IDecodePort_Reg_array_4(23),
      ADR2 => IDecodePort_write_register_address(0),
      ADR0 => IFetchPort_Mram_Instruction17,
      ADR1 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_415
    );
  ALUPort_Mmux_B_input161 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y80",
      INIT => X"F400F200F300F000"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data2_415,
      ADR1 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      ADR0 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(23)
    );
  DMemoryPort_DMem_12_31_DMemoryPort_DMem_12_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data2_423_pack_3,
      O => IDecodePort_Mmux_read_data2_423
    );
  IDecodePort_Mmux_read_data2_9701 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y81",
      INIT => X"0B0B08080B0B0808"
    )
    port map (
      ADR3 => '1',
      ADR2 => IFetchPort_Mram_Instruction17,
      ADR1 => IDecodePort_write_register_address(0),
      ADR4 => IDecodePort_Reg_array_4(30),
      ADR0 => IDecodePort_Reg_array_5_30_Q,
      ADR5 => '1',
      O => IDecodePort_Mmux_read_data2_970
    );
  IDecodePort_Mmux_read_data2_4231 : X_LUT5
    generic map(
      LOC => "SLICE_X66Y81",
      INIT => X"0B000800"
    )
    port map (
      ADR3 => IFetchPort_Mram_Instruction18,
      ADR2 => IFetchPort_Mram_Instruction17,
      ADR1 => IDecodePort_write_register_address(0),
      ADR4 => IDecodePort_Reg_array_4(30),
      ADR0 => IDecodePort_Reg_array_5_30_Q,
      O => IDecodePort_Mmux_read_data2_423_pack_3
    );
  ALUPort_Mmux_B_input241 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y81",
      INIT => X"CEDCDDCC00000000"
    )
    port map (
      ADR3 => ControlUnitPort_NextPCSignal(3),
      ADR1 => ControlUnitPort_NextPCSignal(4),
      ADR2 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR4 => ControlUnitPort_NextPCSignal(2),
      ADR5 => IDecodePort_Mmux_read_data2_423,
      O => ALUPort_B_input(30)
    );
  DMemoryPort_mux19_82_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y81",
      INIT => X"DFDFDFDFCFFFCFFF"
    )
    port map (
      ADR4 => '1',
      ADR2 => DMemoryPort_DMem_4(27),
      ADR3 => ALUPort_Mmux_ALU_output23,
      ADR5 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => ALUResult(0),
      O => N90
    );
  DMemoryPort_DMem_12_31 : X_FF
    generic map(
      LOC => "SLICE_X66Y81",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1050_inv_cepot,
      CLK => NlwBufferSignal_DMemoryPort_DMem_12_31_CLK,
      I => DMemoryPort_DMem_12_31_dpot_7337,
      O => DMemoryPort_DMem_12(31),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_12_31_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X66Y81",
      INIT => X"88888888F0F0F0F0"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => IFetchPort_Mram_Instruction18,
      ADR2 => DMemoryPort_DMem_12(31),
      ADR0 => IDecodePort_Mmux_read_data2_973,
      ADR5 => DMemoryPort_n1082_inv_rstpot_8745,
      O => DMemoryPort_DMem_12_31_dpot_7337
    );
  DMemoryPort_mux19_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y82",
      INIT => X"FFFBFFFBFF73FF73"
    )
    port map (
      ADR4 => '1',
      ADR2 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR1 => DMemoryPort_DMem_10(27),
      ADR3 => ALUResult(0),
      O => N93
    );
  DMemoryPort_mux15_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y82",
      INIT => X"FFFFEFEFDFDFCFCF"
    )
    port map (
      ADR3 => '1',
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR5 => ALUPort_Mmux_ALU_output236_8586,
      ADR2 => DMemoryPort_DMem_2(23),
      ADR1 => ALUResult(0),
      O => N111
    );
  ALUPort_Sh42_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y63",
      INIT => X"FCFEFDFF0CAE5DFF"
    )
    port map (
      ADR4 => IDecodePort_Mmux_read_data1_422,
      ADR5 => IFetchPort_Mram_Instruction2,
      ADR1 => IDecodePort_Mmux_read_data2_422,
      ADR2 => ALUSrc,
      ADR0 => ALUPort_B_input(0),
      ADR3 => IDecodePort_Mmux_read_data1_411,
      O => N309
    );
  Mmux_Write_data83 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y64",
      INIT => X"0020003000200000"
    )
    port map (
      ADR0 => IFetchPort_Mram_Instruction4,
      ADR5 => IDecodePort_Mmux_read_data2_426,
      ADR4 => ALUSrc,
      ADR3 => ALUPort_B_input(2),
      ADR1 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh,
      O => Mmux_Write_data82
    );
  ALUPort_Sh1091 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y65",
      INIT => X"F3BBC0BBF388C088"
    )
    port map (
      ADR3 => ALUPort_B_input(0),
      ADR1 => ALUPort_B_input(1),
      ADR4 => IDecodePort_Mmux_read_data1_45,
      ADR2 => IDecodePort_Mmux_read_data1_47,
      ADR0 => IDecodePort_Mmux_read_data1_46,
      ADR5 => IDecodePort_Mmux_read_data1_44,
      O => ALUPort_Sh109
    );
  ALUPort_Mmux_ALU_output125 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y65",
      INIT => X"00F000F000EE0022"
    )
    port map (
      ADR3 => ALUPort_B_input(2),
      ADR1 => ALUPort_B_input(0),
      ADR2 => ALUPort_Sh105,
      ADR5 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh961,
      ADR4 => ALUPort_Sh971,
      O => ALUPort_Mmux_ALU_output125_8713
    );
  ALUPort_Sh9711 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y65",
      INIT => X"AEAEA2A2BFBF8080"
    )
    port map (
      ADR3 => '1',
      ADR1 => ALUSrc,
      ADR2 => IFetchPort_Mram_Instruction1,
      ADR0 => IDecodePort_Mmux_read_data1_426,
      ADR4 => IDecodePort_Mmux_read_data1_422,
      ADR5 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh971
    );
  Mmux_Write_data62 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y66",
      INIT => X"3033300022222222"
    )
    port map (
      ADR1 => ALUPort_B_input(4),
      ADR5 => ALUPort_B_input(2),
      ADR3 => ALUPort_B_input(3),
      ADR4 => ALUPort_Sh114,
      ADR2 => ALUPort_Sh122,
      ADR0 => ALUPort_Sh1381,
      O => Mmux_Write_data61_9582
    );
  Mmux_Write_data64 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y66",
      INIT => X"0088AA880088A088"
    )
    port map (
      ADR4 => ALUop(0),
      ADR0 => ALUop(2),
      ADR3 => ALUop(1),
      ADR2 => Mmux_Write_data6,
      ADR1 => Mmux_Write_data62_8548,
      ADR5 => Mmux_Write_data61_9582,
      O => Mmux_Write_data63_8824
    );
  Mmux_Write_data312 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y66",
      INIT => X"0000303033002222"
    )
    port map (
      ADR1 => ALUPort_B_input(2),
      ADR4 => ALUPort_B_input(3),
      ADR5 => ALUPort_B_input(4),
      ADR2 => ALUPort_Sh120,
      ADR0 => ALUPort_Sh104,
      ADR3 => ALUPort_Sh112,
      O => Mmux_Write_data311_9432
    );
  ALUPort_Sh91 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y66",
      INIT => X"CCCCF0F0FF00AAAA"
    )
    port map (
      ADR0 => IDecodePort_Mmux_read_data1_431,
      ADR3 => IDecodePort_Mmux_read_data1_430,
      ADR2 => IDecodePort_Mmux_read_data1_429,
      ADR1 => IDecodePort_Mmux_read_data1_428,
      ADR4 => ALUPort_B_input(0),
      ADR5 => ALUPort_B_input(1),
      O => ALUPort_Sh9
    );
  ALUPort_Mmux_ALU_output14 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y67",
      INIT => X"FF00FF00D8D8D8D8"
    )
    port map (
      ADR4 => '1',
      ADR0 => ALUPort_B_input(0),
      ADR2 => ALUPort_Mmux_ALU_output11_8799,
      ADR5 => ALUPort_B_input(3),
      ADR1 => ALUPort_Sh961,
      ADR3 => ALUPort_Sh104,
      O => ALUPort_Mmux_ALU_output12
    );
  ALUPort_Sh1041 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y67",
      INIT => X"E2E2F0AAE2E2F0AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => IFetchPort_Mram_Instruction1,
      ADR4 => ALUSrc,
      ADR0 => N269,
      ADR2 => N266,
      ADR3 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh104
    );
  ALUPort_Mmux_ALU_output263 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y67",
      INIT => X"FC30EE22FC30EE22"
    )
    port map (
      ADR5 => '1',
      ADR4 => ALUPort_B_input(0),
      ADR1 => ALUPort_B_input(3),
      ADR3 => ALUPort_Sh107,
      ADR2 => ALUPort_Sh1002,
      ADR0 => ALUPort_Sh981,
      O => ALUPort_Mmux_ALU_output262_8678
    );
  ALUPort_Sh9811 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y67",
      INIT => X"FFAF00A0FAAA0AAA"
    )
    port map (
      ADR1 => '1',
      ADR2 => ALUSrc,
      ADR3 => IFetchPort_Mram_Instruction1,
      ADR4 => IDecodePort_Mmux_read_data1_427,
      ADR0 => IDecodePort_Mmux_read_data1_425,
      ADR5 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh981
    );
  Mmux_Write_data84 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y68",
      INIT => X"CCCCF0F0AAAAFF00"
    )
    port map (
      ADR5 => ALUPort_B_input(2),
      ADR4 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh12,
      ADR1 => ALUPort_Sh4,
      ADR0 => ALUPort_Sh8,
      ADR3 => ALUPort_Sh16,
      O => Mmux_Write_data83_8841
    );
  Mmux_Write_data61 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y68",
      INIT => X"0000000030002020"
    )
    port map (
      ADR1 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh126,
      ADR5 => ALUPort_B_input(2),
      ADR4 => ALUSrc,
      ADR0 => IDecodePort_Mmux_read_data2_426,
      ADR3 => IFetchPort_Mram_Instruction4,
      O => Mmux_Write_data6
    );
  ALUPort_Sh10211 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y68",
      INIT => X"F0FAF050F5FFA000"
    )
    port map (
      ADR1 => '1',
      ADR0 => ALUSrc,
      ADR3 => IFetchPort_Mram_Instruction1,
      ADR2 => IDecodePort_Mmux_read_data1_431,
      ADR4 => IDecodePort_Mmux_read_data1_429,
      ADR5 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh1021
    );
  ALUPort_Sh10121 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y68",
      INIT => X"FF22DD00FF778800"
    )
    port map (
      ADR2 => '1',
      ADR0 => ALUSrc,
      ADR1 => IFetchPort_Mram_Instruction1,
      ADR3 => IDecodePort_Mmux_read_data1_430,
      ADR4 => IDecodePort_Mmux_read_data1_428,
      ADR5 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh1012
    );
  ALUPort_Sh1161 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y70",
      INIT => X"F0AAE2E2F0AAE2E2"
    )
    port map (
      ADR5 => '1',
      ADR4 => ALUSrc,
      ADR3 => IFetchPort_Mram_Instruction1,
      ADR2 => N279,
      ADR0 => N278,
      ADR1 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh116
    );
  Mmux_Write_data311 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y70",
      INIT => X"5D580D0800000000"
    )
    port map (
      ADR5 => ALUPort_B_input(2),
      ADR0 => ALUPort_B_input(4),
      ADR2 => ALUPort_B_input(3),
      ADR3 => ALUPort_Sh108,
      ADR1 => ALUPort_Sh124,
      ADR4 => ALUPort_Sh116,
      O => Mmux_Write_data31_8645
    );
  ALUPort_Sh31 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y70",
      INIT => X"FCFAFC0A0CFA0C0A"
    )
    port map (
      ADR1 => IDecodePort_Mmux_read_data1_422,
      ADR5 => IDecodePort_Mmux_read_data1_4,
      ADR3 => ALUPort_B_input(0),
      ADR4 => IDecodePort_Mmux_read_data1_411,
      ADR2 => ALUPort_B_input(1),
      ADR0 => IDecodePort_Mmux_read_data1_425,
      O => ALUPort_Sh3
    );
  Mmux_Write_data302 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y70",
      INIT => X"5410000054100000"
    )
    port map (
      ADR5 => '1',
      ADR4 => ALUPort_Mmux_ALU_output2831,
      ADR0 => ALUPort_B_input(3),
      ADR1 => ALUPort_B_input(2),
      ADR2 => ALUPort_Sh7,
      ADR3 => ALUPort_Sh3,
      O => Mmux_Write_data301_9429
    );
  Mmux_Write_data223_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y71",
      INIT => X"FF3FFF3FFF5FFFFF"
    )
    port map (
      ADR0 => ALUPort_B_input(2),
      ADR5 => ALUPort_B_input(4),
      ADR2 => ALUop(0),
      ADR3 => ALUop(1),
      ADR4 => ALUPort_Sh571_0,
      ADR1 => ALUPort_Sh45,
      O => N316
    );
  Mmux_Write_data223_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y71",
      INIT => X"F3FFF3FFF0FFFAFF"
    )
    port map (
      ADR0 => ALUPort_B_input(2),
      ADR5 => ALUPort_B_input(4),
      ADR3 => ALUop(0),
      ADR2 => ALUop(1),
      ADR4 => ALUPort_Sh571_0,
      ADR1 => ALUPort_Sh45,
      O => N317
    );
  ALUPort_Sh1121 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y71",
      INIT => X"AEBFAEBFA280A280"
    )
    port map (
      ADR4 => '1',
      ADR1 => ALUSrc,
      ADR2 => IFetchPort_Mram_Instruction1,
      ADR0 => N281,
      ADR5 => N261,
      ADR3 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh112
    );
  Mmux_Write_data41_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y71",
      INIT => X"44770C0C44773F3F"
    )
    port map (
      ADR4 => ALUPort_B_input(2),
      ADR1 => ALUPort_B_input(3),
      ADR5 => ALUPort_Sh108,
      ADR2 => ALUPort_Sh116,
      ADR0 => ALUPort_Sh120,
      ADR3 => ALUPort_Sh112,
      O => N372
    );
  Mmux_Write_data131 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y72",
      INIT => X"5505000050000000"
    )
    port map (
      ADR1 => '1',
      ADR3 => IFetchPort_Mram_Instruction4,
      ADR5 => IDecodePort_Mmux_read_data2_426,
      ADR2 => ALUSrc,
      ADR0 => ALUPort_B_input(3),
      ADR4 => ALUPort_Sh441,
      O => Mmux_Write_data13
    );
  ALUPort_Sh442 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y72",
      INIT => X"EEEE4444FAFA5050"
    )
    port map (
      ADR3 => '1',
      ADR0 => ALUPort_B_input(3),
      ADR5 => ALUPort_B_input(2),
      ADR1 => ALUPort_Sh8,
      ADR2 => ALUPort_Sh12,
      ADR4 => ALUPort_Sh441,
      O => ALUPort_Sh44
    );
  ALUPort_Mmux_ALU_output264 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y73",
      INIT => X"FFD8FFD800D800D8"
    )
    port map (
      ADR4 => '1',
      ADR0 => ALUPort_B_input(2),
      ADR3 => ALUPort_B_input(4),
      ADR2 => ALUPort_Mmux_ALU_output262_8678,
      ADR5 => ALUPort_Sh147,
      ADR1 => ALUPort_Sh1311,
      O => ALUPort_Mmux_ALU_output263_9583
    );
  ALUPort_Mmux_ALU_output266 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y73",
      INIT => X"FAFA50D8FAFA5050"
    )
    port map (
      ADR0 => ALUop(2),
      ADR1 => ALUop(1),
      ADR3 => ALUop(0),
      ADR4 => ALUPort_Mmux_ALU_output261_8674,
      ADR2 => ALUPort_Mmux_ALU_output264_8677,
      ADR5 => ALUPort_Mmux_ALU_output263_9583,
      O => ALUResult(3)
    );
  IDecodePort_Mmux_read_data1_4151 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y73",
      INIT => X"0A0A000A0A000000"
    )
    port map (
      ADR1 => '1',
      ADR4 => IDecodePort_Reg_array_5_23_Q,
      ADR5 => IDecodePort_Reg_array_4(23),
      ADR0 => IFetchPort_Mram_Instruction23,
      ADR2 => IFetchPort_Mram_Instruction22_8733,
      ADR3 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_415
    );
  ALUPort_Mmux_B_input121_SW13 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y73",
      INIT => X"FF00FF00CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => ALUPort_B_input(0),
      ADR1 => IDecodePort_Mmux_read_data1_414,
      ADR3 => IDecodePort_Mmux_read_data1_415,
      O => N279
    );
  Mmux_Write_data224 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y74",
      INIT => X"FFD8AAD8DD508850"
    )
    port map (
      ADR3 => ALUop(0),
      ADR0 => ALUop(1),
      ADR1 => ALUPort_B_input(29),
      ADR5 => IDecodePort_Mmux_read_data1_421,
      ADR4 => ALUPort_A_input_31_B_input_31_sub_7_OUT_29_0,
      ADR2 => ALUPort_A_input_31_B_input_31_add_5_OUT_29_0,
      O => Mmux_Write_data223
    );
  Mmux_Write_data225 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y74",
      INIT => X"FFAA5D08FFAA7F2A"
    )
    port map (
      ADR0 => ALUop(2),
      ADR1 => Mmux_Write_data221_9019,
      ADR2 => N317,
      ADR5 => N316,
      ADR4 => Mmux_Write_data22_8556,
      ADR3 => Mmux_Write_data223,
      O => Mmux_Write_data224_9018
    );
  IDecodePort_Mmux_read_data1_9701 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y75",
      INIT => X"4444444455550000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => IDecodePort_Reg_array_5_30_Q,
      ADR4 => IDecodePort_Reg_array_4(30),
      ADR0 => IFetchPort_Mram_Instruction22_8733,
      ADR5 => IFetchPort_Mram_Instruction21,
      O => IDecodePort_Mmux_read_data1_970
    );
  ALUPort_Sh211 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y75",
      INIT => X"F5F5A0A0EE44EE44"
    )
    port map (
      ADR5 => ALUPort_B_input(0),
      ADR0 => ALUPort_B_input(1),
      ADR4 => IDecodePort_Mmux_read_data1_412,
      ADR2 => IDecodePort_Mmux_read_data1_49,
      ADR3 => IDecodePort_Mmux_read_data1_410,
      ADR1 => IDecodePort_Mmux_read_data1_413,
      O => ALUPort_Sh21_9456
    );
  Mmux_Write_data222 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y75",
      INIT => X"FFAA5500EEEE4444"
    )
    port map (
      ADR2 => '1',
      ADR0 => ALUPort_B_input(3),
      ADR5 => ALUPort_B_input(0),
      ADR3 => ALUPort_Sh281_0,
      ADR1 => ALUPort_Sh291,
      ADR4 => ALUPort_Sh21_9456,
      O => Mmux_Write_data221_9019
    );
  IDecodePort_Mmux_read_data2_4211 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y76",
      INIT => X"00A000A000880088"
    )
    port map (
      ADR4 => '1',
      ADR2 => IDecodePort_Reg_array_5_29_Q,
      ADR1 => IDecodePort_Reg_array_4(29),
      ADR5 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR0 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_421
    );
  ALUPort_Mmux_B_input221 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y76",
      INIT => X"C0C4C4C0C8C4C0C0"
    )
    port map (
      ADR1 => IDecodePort_Mmux_read_data2_421,
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR2 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(29)
    );
  IDecodePort_Mmux_read_data2_4201 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y76",
      INIT => X"00000000BB880000"
    )
    port map (
      ADR2 => '1',
      ADR0 => IDecodePort_Reg_array_5_28_Q,
      ADR3 => IDecodePort_Reg_array_4(28),
      ADR1 => IDecodePort_write_register_address(0),
      ADR5 => IFetchPort_Mram_Instruction17,
      ADR4 => IFetchPort_Mram_Instruction18,
      O => IDecodePort_Mmux_read_data2_420
    );
  ALUPort_Mmux_B_input211 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y76",
      INIT => X"ABEA0000BABA0000"
    )
    port map (
      ADR4 => IDecodePort_Mmux_read_data2_420,
      ADR1 => ControlUnitPort_NextPCSignal(0),
      ADR5 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal(3),
      ADR0 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(28)
    );
  DMemoryPort_DMem_2_2 : X_FF
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_2_CLK,
      I => DMemoryPort_DMem_2_2_dpot_7614,
      O => DMemoryPort_DMem_2(2),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => X"CCF0CCF0CCF0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => DMemoryPort_DMem_2(2),
      ADR1 => IDecodePort_Mmux_read_data2_422,
      ADR3 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_2_dpot_7614
    );
  DMemoryPort_n1042_inv1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => X"0000000000000088"
    )
    port map (
      ADR2 => '1',
      ADR0 => DMemWrite,
      ADR1 => ALUResult_1_0,
      ADR5 => ALUResult_5_0,
      ADR3 => ALUResult(6),
      ADR4 => ALUResult(0),
      O => DMemoryPort_n1042_inv1_rstpot_8771
    );
  DMemoryPort_DMem_2_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_1_CLK,
      I => DMemoryPort_DMem_2_1_dpot_7627,
      O => DMemoryPort_DMem_2(1),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => X"AAAAAAAACCCCCCCC"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => DMemoryPort_DMem_2(1),
      ADR0 => IDecodePort_Mmux_read_data2_411,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_1_dpot_7627
    );
  DMemoryPort_DMem_2_0 : X_FF
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => '0'
    )
    port map (
      CE => DMemoryPort_n1038_inv2,
      CLK => NlwBufferSignal_DMemoryPort_DMem_2_0_CLK,
      I => DMemoryPort_DMem_2_0_dpot_7632,
      O => DMemoryPort_DMem_2(0),
      RST => GND,
      SET => GND
    );
  DMemoryPort_DMem_2_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => X"00220000F0F0F0F0"
    )
    port map (
      ADR4 => IDecodePort_Reg_array_4(0),
      ADR1 => IDecodePort_write_register_address(0),
      ADR3 => IFetchPort_Mram_Instruction17,
      ADR2 => DMemoryPort_DMem_2(0),
      ADR0 => IFetchPort_Mram_Instruction18,
      ADR5 => DMemoryPort_n1042_inv1_rstpot_8771,
      O => DMemoryPort_DMem_2_0_dpot_7632
    );
  Mmux_Write_data214 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y78",
      INIT => X"EEEE8888FC30FC30"
    )
    port map (
      ADR1 => ALUop(0),
      ADR5 => ALUop(1),
      ADR4 => ALUPort_B_input(28),
      ADR0 => IDecodePort_Mmux_read_data1_420,
      ADR3 => ALUPort_A_input_31_B_input_31_sub_7_OUT_28_0,
      ADR2 => ALUPort_A_input_31_B_input_31_add_5_OUT_28_0,
      O => Mmux_Write_data213
    );
  Mmux_Write_data244 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y78",
      INIT => X"FFAAF0AAF0CC00CC"
    )
    port map (
      ADR5 => ALUop(0),
      ADR3 => ALUop(1),
      ADR4 => ALUPort_B_input(30),
      ADR2 => IDecodePort_Mmux_read_data1_423,
      ADR0 => ALUPort_A_input_31_B_input_31_sub_7_OUT_30_0,
      ADR1 => ALUPort_A_input_31_B_input_31_add_5_OUT_30_0,
      O => Mmux_Write_data243_9585
    );
  Mmux_Write_data245 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y78",
      INIT => X"AFA0EFE0AFA0AFA0"
    )
    port map (
      ADR2 => ALUop(2),
      ADR0 => Mmux_Write_data24_9034,
      ADR1 => Mmux_Write_data242_9036,
      ADR5 => ALUop(0),
      ADR4 => ALUop(1),
      ADR3 => Mmux_Write_data243_9585,
      O => Mmux_Write_data244_9039
    );
  DMemoryPort_mux24_82_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y81",
      INIT => X"FF55FFFFFF33FFFF"
    )
    port map (
      ADR2 => '1',
      ADR4 => DMemoryPort_DMem_12(31),
      ADR1 => ALUPort_Mmux_ALU_output23,
      ADR5 => ALUop(2),
      ADR0 => ALUPort_Mmux_ALU_output236_8586,
      ADR3 => ALUResult(0),
      O => N67
    );
  DMemoryPort_mux19_82_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y82",
      INIT => X"FFD8FFFFFFD8FFFF"
    )
    port map (
      ADR5 => '1',
      ADR2 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR1 => ALUPort_Mmux_ALU_output236_8586,
      ADR4 => DMemoryPort_DMem_2(27),
      ADR3 => ALUResult(0),
      O => N91
    );
  DMemoryPort_mux21_82_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y82",
      INIT => X"FDFDECECFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR4 => ALUPort_Mmux_ALU_output23,
      ADR0 => ALUop(2),
      ADR2 => ALUPort_Mmux_ALU_output236_8586,
      ADR5 => DMemoryPort_DMem_10(29),
      ADR1 => ALUResult(0),
      O => N83
    );
  Mmux_Write_data21 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y66",
      INIT => X"0000C0C000008888"
    )
    port map (
      ADR3 => '1',
      ADR1 => ALUPort_B_input(4),
      ADR4 => ALUPort_B_input(3),
      ADR5 => ALUPort_B_input(2),
      ADR0 => ALUPort_Sh122,
      ADR2 => ALUPort_Sh126,
      O => Mmux_Write_data2
    );
  ALUPort_Sh1171 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y67",
      INIT => X"ACACFF0FACACF000"
    )
    port map (
      ADR4 => ALUPort_B_input(0),
      ADR2 => ALUPort_B_input(1),
      ADR1 => IDecodePort_Mmux_read_data1_414,
      ADR0 => IDecodePort_Mmux_read_data1_416,
      ADR3 => IDecodePort_Mmux_read_data1_415,
      ADR5 => IDecodePort_Mmux_read_data1_413,
      O => ALUPort_Sh117
    );
  ALUPort_Mmux_ALU_output295 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y67",
      INIT => X"0F0D0E0C0C0C0C0C"
    )
    port map (
      ADR0 => ALUPort_B_input(4),
      ADR5 => ALUop(1),
      ADR2 => ALUop(0),
      ADR1 => ALUPort_Mmux_ALU_output292_8626,
      ADR3 => ALUPort_Sh150,
      ADR4 => ALUPort_Mmux_ALU_output293_8625,
      O => ALUPort_Mmux_ALU_output294_8427
    );
  ALUPort_Mmux_ALU_output294 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y67",
      INIT => X"ECA86420FDB97531"
    )
    port map (
      ADR0 => ALUPort_B_input(2),
      ADR1 => ALUPort_B_input(3),
      ADR5 => N258,
      ADR2 => ALUPort_Sh106,
      ADR4 => ALUPort_Sh114,
      ADR3 => ALUPort_Sh110,
      O => ALUPort_Mmux_ALU_output293_8625
    );
  Mmux_Write_data31 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y71",
      INIT => X"00000F0000001111"
    )
    port map (
      ADR1 => IDecodePort_Mmux_read_data1_42,
      ADR2 => ALUPort_B_input(4),
      ADR5 => ALUop(0),
      ADR4 => ALUop(1),
      ADR0 => ALUPort_B_input(11),
      ADR3 => ALUPort_Sh43,
      O => Mmux_Write_data3
    );
  ALUPort_Sh1561 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y71",
      INIT => X"000000440000CC44"
    )
    port map (
      ADR2 => '1',
      ADR5 => IFetchPort_Mram_Instruction2,
      ADR0 => IDecodePort_Mmux_read_data2_422,
      ADR3 => ALUSrc,
      ADR4 => ALUPort_B_input(3),
      ADR1 => ALUPort_Sh124,
      O => ALUPort_Sh156
    );
  ALUPort_Sh115_ALUPort_Sh115_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_Write_data33_7735,
      O => Mmux_Write_data33_0
    );
  ALUPort_Sh1151 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y72",
      INIT => X"E2FFE2CCE233E200"
    )
    port map (
      ADR3 => ALUPort_B_input(0),
      ADR1 => ALUPort_B_input(1),
      ADR0 => IDecodePort_Mmux_read_data1_412,
      ADR2 => IDecodePort_Mmux_read_data1_414,
      ADR5 => IDecodePort_Mmux_read_data1_413,
      ADR4 => IDecodePort_Mmux_read_data1_410,
      O => ALUPort_Sh115
    );
  ALUPort_Sh13511 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y72",
      INIT => X"FFFF00FFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ALUPort_B_input(3),
      ADR5 => ALUPort_Sh107,
      ADR4 => ALUPort_Sh115,
      O => ALUPort_Sh1351
    );
  IDecodePort_Mmux_read_data2_432 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y72",
      INIT => X"5501000005400000"
    )
    port map (
      ADR0 => ControlUnitPort_NextPCSignal(4),
      ADR4 => IDecodePort_Reg_array_4(0),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR5 => ControlUnitPort_NextPCSignal(1),
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR1 => ControlUnitPort_NextPCSignal(3),
      O => IDecodePort_Mmux_read_data2_4
    );
  ALUPort_Sh1511 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y72",
      INIT => X"30EE302230EE3022"
    )
    port map (
      ADR3 => ALUPort_B_input(3),
      ADR1 => ALUPort_B_input(2),
      ADR4 => ALUPort_Sh123,
      ADR0 => ALUPort_Sh119,
      ADR2 => ALUPort_Sh127,
      ADR5 => '1',
      O => ALUPort_Sh151
    );
  Mmux_Write_data32 : X_LUT5
    generic map(
      LOC => "SLICE_X69Y72",
      INIT => X"F3F3C0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => ALUPort_B_input(2),
      ADR4 => ALUPort_Sh123,
      ADR3 => '1',
      ADR2 => ALUPort_Sh127,
      O => Mmux_Write_data33_7735
    );
  ALUPort_Mmux_ALU_output26_ALUPort_Mmux_ALU_output26_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N438_pack_2,
      O => N438
    );
  ALUPort_Mmux_ALU_output261 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y73",
      INIT => X"000C030F000C030F"
    )
    port map (
      ADR0 => '1',
      ADR3 => IFetchPort_Mram_Instruction4,
      ADR4 => IDecodePort_Mmux_read_data2_426,
      ADR1 => ALUSrc,
      ADR2 => ALUPort_B_input(2),
      ADR5 => '1',
      O => ALUPort_Mmux_ALU_output26
    );
  ALUPort_Sh1581_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X69Y73",
      INIT => X"FFFBFEFA"
    )
    port map (
      ADR0 => ALUPort_B_input(3),
      ADR3 => IFetchPort_Mram_Instruction4,
      ADR4 => IDecodePort_Mmux_read_data2_426,
      ADR1 => ALUSrc,
      ADR2 => ALUPort_B_input(2),
      O => N438_pack_2
    );
  ALUPort_Mmux_B_input231 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y73",
      INIT => X"0000040400000004"
    )
    port map (
      ADR2 => ControlUnitPort_NextPCSignal(4),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR0 => ControlUnitPort_NextPCSignal(3),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(2),
      ADR5 => IDecodePort_Reg_array_4(2),
      O => ALUPort_B_input(2)
    );
  Mmux_Write_data221 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y73",
      INIT => X"0000330001010101"
    )
    port map (
      ADR1 => ALUop(0),
      ADR5 => ALUop(1),
      ADR0 => ALUPort_B_input(29),
      ADR2 => IDecodePort_Mmux_read_data1_421,
      ADR3 => ALUPort_Sh125,
      ADR4 => N438,
      O => Mmux_Write_data22_8556
    );
  ALUPort_Sh111 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y74",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data1_431,
      ADR1 => IDecodePort_Mmux_read_data1_41,
      ADR2 => IDecodePort_Mmux_read_data1_430,
      ADR4 => ALUPort_B_input(0),
      ADR5 => ALUPort_B_input(1),
      ADR0 => IDecodePort_Mmux_read_data1_42,
      O => ALUPort_Sh11
    );
  Mmux_Write_data133 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y74",
      INIT => X"00AA00AA00003333"
    )
    port map (
      ADR2 => '1',
      ADR4 => IDecodePort_Mmux_read_data1_412,
      ADR3 => ALUPort_B_input(4),
      ADR5 => ALUop(1),
      ADR1 => ALUPort_B_input(20),
      ADR0 => ALUPort_Sh148,
      O => Mmux_Write_data132_9586
    );
  Mmux_Write_data134 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y74",
      INIT => X"50005000F0A0D080"
    )
    port map (
      ADR0 => ALUop(0),
      ADR2 => ALUop(2),
      ADR5 => ALUop(1),
      ADR4 => Mmux_Write_data131_9181,
      ADR1 => Mmux_Write_data13,
      ADR3 => Mmux_Write_data132_9586,
      O => Mmux_Write_data133_9391
    );
  ALUPort_Sh431 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y75",
      INIT => X"0000AAAAF0F0FF00"
    )
    port map (
      ADR1 => '1',
      ADR5 => ALUPort_B_input(2),
      ADR0 => ALUPort_Sh7,
      ADR2 => ALUPort_Sh3,
      ADR3 => ALUPort_Sh11,
      ADR4 => ALUPort_B_input(3),
      O => ALUPort_Sh43
    );
  Mmux_Write_data201 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y75",
      INIT => X"4445000100010001"
    )
    port map (
      ADR0 => ALUop(1),
      ADR1 => ALUop(0),
      ADR2 => IDecodePort_Mmux_read_data1_419,
      ADR3 => ALUPort_B_input(27),
      ADR5 => ALUPort_B_input(4),
      ADR4 => ALUPort_Sh43,
      O => Mmux_Write_data20
    );
  ALUPort_Sh2911 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y75",
      INIT => X"CCCCCCCCAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => ALUPort_B_input(1),
      ADR0 => IDecodePort_Mmux_read_data1_421,
      ADR1 => IDecodePort_Mmux_read_data1_419,
      O => ALUPort_Sh291
    );
  Mmux_Write_data71 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y76",
      INIT => X"0303001100000011"
    )
    port map (
      ADR0 => IDecodePort_Mmux_read_data1_46,
      ADR2 => ALUPort_B_input(4),
      ADR4 => ALUop(0),
      ADR1 => ALUop(1),
      ADR3 => ALUPort_B_input(15),
      ADR5 => ALUPort_Sh47,
      O => Mmux_Write_data7
    );
  Mmux_Write_data75 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y76",
      INIT => X"FFCC3B08FFCC3300"
    )
    port map (
      ADR2 => ALUop(0),
      ADR0 => ALUop(1),
      ADR1 => ALUop(2),
      ADR4 => Mmux_Write_data7,
      ADR3 => Mmux_Write_data73_8847,
      ADR5 => Mmux_Write_data72_0,
      O => Mmux_Write_data74_8846
    );
  Mmux_Write_data203_Mmux_Write_data203_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_Write_data251,
      O => Mmux_Write_data251_0
    );
  Mmux_Write_data252 : X_MUX2
    generic map(
      LOC => "SLICE_X69Y78"
    )
    port map (
      IA => N596,
      IB => N597,
      O => Mmux_Write_data251,
      SEL => ALUop(2)
    );
  Mmux_Write_data252_F : X_LUT6
    generic map(
      LOC => "SLICE_X69Y78",
      INIT => X"EE00E8008800E800"
    )
    port map (
      ADR3 => ALUop(1),
      ADR4 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data2_424_0,
      ADR5 => IFetchPort_Mram_Instruction10,
      ADR0 => ALUop(0),
      ADR1 => IDecodePort_Mmux_read_data1_424,
      O => N596
    );
  Mmux_Write_data252_G : X_LUT6
    generic map(
      LOC => "SLICE_X69Y78",
      INIT => X"0000000000100000"
    )
    port map (
      ADR5 => ALUop(0),
      ADR3 => ALUPort_B_input(3),
      ADR0 => ALUPort_B_input(4),
      ADR1 => ALUPort_B_input(2),
      ADR4 => ALUop(1),
      ADR2 => ALUPort_Sh127,
      O => N597
    );
  Mmux_Write_data204 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y78",
      INIT => X"FFAAAA00CCF0CCF0"
    )
    port map (
      ADR3 => ALUop(0),
      ADR5 => ALUop(1),
      ADR4 => ALUPort_B_input(27),
      ADR0 => IDecodePort_Mmux_read_data1_419,
      ADR1 => ALUPort_A_input_31_B_input_31_sub_7_OUT_27_0,
      ADR2 => ALUPort_A_input_31_B_input_31_add_5_OUT_27_0,
      O => Mmux_Write_data203_9588
    );
  Mmux_Write_data205 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y78",
      INIT => X"FFCCFFCC3F0C3300"
    )
    port map (
      ADR0 => '1',
      ADR1 => ALUop(2),
      ADR4 => Mmux_Write_data202_9011,
      ADR2 => ALUPort_B_input(4),
      ADR5 => Mmux_Write_data20,
      ADR3 => Mmux_Write_data203_9588,
      O => Mmux_Write_data204_9010
    );
  Mmux_Write_data253_Mmux_Write_data253_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_Write_data255,
      O => Mmux_Write_data255_0
    );
  Mmux_Write_data256 : X_MUX2
    generic map(
      LOC => "SLICE_X69Y79"
    )
    port map (
      IA => N460,
      IB => N461,
      O => Mmux_Write_data255,
      SEL => ALUop(0)
    );
  Mmux_Write_data256_F : X_LUT6
    generic map(
      LOC => "SLICE_X69Y79",
      INIT => X"000500CC000500CC"
    )
    port map (
      ADR5 => '1',
      ADR3 => ALUop(1),
      ADR4 => ALUop(2),
      ADR2 => IDecodePort_Mmux_read_data1_424,
      ADR0 => ALUPort_B_input(31),
      ADR1 => ALUPort_A_input_31_B_input_31_add_5_OUT_31_0,
      O => N460
    );
  Mmux_Write_data256_G : X_LUT6
    generic map(
      LOC => "SLICE_X69Y79",
      INIT => X"00FA00CC005000CC"
    )
    port map (
      ADR3 => ALUop(1),
      ADR4 => ALUop(2),
      ADR0 => ALUPort_B_input(4),
      ADR5 => ALUPort_Sh47,
      ADR2 => Mmux_Write_data253_9590,
      ADR1 => ALUPort_A_input_31_B_input_31_sub_7_OUT_31_0,
      O => N461
    );
  Mmux_Write_data254 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y79",
      INIT => X"FF00AAAA3333F0F0"
    )
    port map (
      ADR5 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh23,
      ADR4 => ALUPort_B_input(2),
      ADR3 => ALUPort_Sh19,
      ADR2 => Mmux_Write_data252_8542,
      ADR1 => N291,
      O => Mmux_Write_data253_9590
    );
  ALUPort_Mmux_B_input251 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y79",
      INIT => X"CCCCCCCC04844000"
    )
    port map (
      ADR1 => IDecodePort_Mmux_read_data2_424_0,
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR2 => ControlUnitPort_NextPCSignal(2),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(3),
      ADR5 => ControlUnitPort_NextPCSignal(4),
      O => ALUPort_B_input(31)
    );
  ALUPort_Mmux_ALU_output294_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y64",
      INIT => X"BBBB8888BBBB8888"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR0 => IDecodePort_Mmux_read_data1_429,
      ADR4 => IDecodePort_Mmux_read_data1_428,
      ADR1 => ALUPort_B_input(0),
      O => N386
    );
  ALUPort_Sh1491 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => X"5D0D58085D0D5808"
    )
    port map (
      ADR5 => '1',
      ADR2 => ALUPort_B_input(2),
      ADR0 => ALUPort_B_input(3),
      ADR1 => ALUPort_Sh125,
      ADR4 => ALUPort_Sh117,
      ADR3 => ALUPort_Sh121,
      O => ALUPort_Sh149
    );
  ALUPort_Sh1211 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => X"FD75EC64B931A820"
    )
    port map (
      ADR1 => ALUPort_B_input(0),
      ADR0 => ALUPort_B_input(1),
      ADR5 => IDecodePort_Mmux_read_data1_418,
      ADR3 => IDecodePort_Mmux_read_data1_420,
      ADR2 => IDecodePort_Mmux_read_data1_419,
      ADR4 => IDecodePort_Mmux_read_data1_417,
      O => ALUPort_Sh121
    );
  ALUPort_Mmux_ALU_output294_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y66",
      INIT => X"55551D1D47470F0F"
    )
    port map (
      ADR3 => '1',
      ADR1 => ALUSrc,
      ADR4 => IFetchPort_Mram_Instruction1,
      ADR0 => N269,
      ADR2 => N386,
      ADR5 => IDecodePort_Mmux_read_data2_411,
      O => N258
    );
  ALUResult_6_ALUResult_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_Write_data182_7898,
      O => Mmux_Write_data182_0
    );
  Mmux_Write_data183 : X_MUX2
    generic map(
      LOC => "SLICE_X68Y67"
    )
    port map (
      IA => N602,
      IB => N603,
      O => Mmux_Write_data182_7898,
      SEL => ALUop(0)
    );
  Mmux_Write_data183_F : X_LUT6
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"000C000800000008"
    )
    port map (
      ADR3 => ALUPort_B_input(4),
      ADR1 => ALUop(1),
      ADR2 => ALUPort_B_input(3),
      ADR4 => ALUPort_B_input(2),
      ADR0 => ALUPort_Sh121,
      ADR5 => ALUPort_Sh125,
      O => N602
    );
  Mmux_Write_data183_G : X_LUT6
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"0303020201010000"
    )
    port map (
      ADR3 => '1',
      ADR2 => ALUPort_B_input(4),
      ADR1 => ALUop(1),
      ADR0 => ALUPort_B_input(2),
      ADR4 => ALUPort_Sh571_0,
      ADR5 => ALUPort_Sh531,
      O => N603
    );
  ALUPort_Mmux_ALU_output296 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"DFCFDFDFD0C0D0D0"
    )
    port map (
      ADR2 => ALUop(2),
      ADR0 => ALUop(0),
      ADR3 => ALUPort_Mmux_ALU_output292_8626,
      ADR1 => ALUPort_Mmux_ALU_output291_8424,
      ADR5 => ALUPort_Mmux_ALU_output29,
      ADR4 => N403,
      O => ALUResult(6)
    );
  ALUPort_Mmux_ALU_output296_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y67",
      INIT => X"33270F27FFFFFFFF"
    )
    port map (
      ADR4 => IFetchPort_Mram_Instruction4,
      ADR0 => IDecodePort_Mmux_read_data2_426,
      ADR3 => ALUSrc,
      ADR5 => ALUop(1),
      ADR1 => ALUPort_Sh150,
      ADR2 => ALUPort_Mmux_ALU_output293_8625,
      O => N403
    );
  ALUPort_Sh13112 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => X"B8B8B8B8AAAAF0F0"
    )
    port map (
      ADR3 => '1',
      ADR5 => ALUSrc,
      ADR1 => IFetchPort_Mram_Instruction1,
      ADR0 => IDecodePort_Mmux_read_data1_48,
      ADR2 => IDecodePort_Mmux_read_data1_46,
      ADR4 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh13112_8699
    );
  Mmux_Write_data33 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => X"0ACA0FCF0ACA00C0"
    )
    port map (
      ADR4 => ALUPort_B_input(2),
      ADR2 => ALUPort_B_input(4),
      ADR3 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh1391_0,
      ADR5 => ALUPort_Sh1351,
      ADR1 => Mmux_Write_data33_0,
      O => Mmux_Write_data34_9592
    );
  Mmux_Write_data35 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y68",
      INIT => X"CFCCAAAACCCCAAAA"
    )
    port map (
      ADR2 => ALUop(0),
      ADR4 => ALUop(2),
      ADR5 => ALUop(1),
      ADR1 => Mmux_Write_data3,
      ADR3 => Mmux_Write_data34_9592,
      ADR0 => Mmux_Write_data35_8790,
      O => Mmux_Write_data36_8438
    );
  Mmux_Write_data152 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y70",
      INIT => X"0303320200003202"
    )
    port map (
      ADR1 => ALUPort_B_input(2),
      ADR4 => ALUPort_B_input(4),
      ADR2 => ALUPort_B_input(3),
      ADR3 => ALUPort_Sh14,
      ADR0 => ALUPort_Sh22,
      ADR5 => ALUPort_Sh6,
      O => Mmux_Write_data151_8500
    );
  IFetchPort_Mram_Instruction101 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y70",
      INIT => X"0000000000550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(2),
      ADR4 => ControlUnitPort_NextPCSignal(4),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      O => IFetchPort_Mram_Instruction10
    );
  ALUPort_Mmux_ALU_output293 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y70",
      INIT => X"0000000000441155"
    )
    port map (
      ADR2 => '1',
      ADR0 => IDecodePort_Mmux_read_data1_428,
      ADR5 => ALUop(1),
      ADR1 => ALUSrc,
      ADR4 => IDecodePort_Mmux_read_data2_428,
      ADR3 => IFetchPort_Mram_Instruction10,
      O => ALUPort_Mmux_ALU_output292_8626
    );
  Mmux_Write_data153_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y71",
      INIT => X"555055505550FFFA"
    )
    port map (
      ADR1 => '1',
      ADR0 => ALUop(0),
      ADR3 => IDecodePort_Mmux_read_data1_414,
      ADR2 => ALUPort_B_input(22),
      ADR5 => Mmux_Write_data151_8500,
      ADR4 => Mmux_Write_data15,
      O => N454
    );
  Mmux_Write_data154 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y71",
      INIT => X"000F0000404F0000"
    )
    port map (
      ADR4 => ALUop(2),
      ADR1 => ALUPort_Sh150,
      ADR2 => ALUop(1),
      ADR5 => ALUop(0),
      ADR0 => ALUPort_B_input(4),
      ADR3 => N454,
      O => Mmux_Write_data153
    );
  ALUPort_Mmux_ALU_output262 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y72",
      INIT => X"0000000000A30003"
    )
    port map (
      ADR2 => ALUop(0),
      ADR3 => ALUop(1),
      ADR1 => IDecodePort_Mmux_read_data1_425,
      ADR4 => ALUPort_Mmux_ALU_output26,
      ADR0 => ALUPort_Sh3,
      ADR5 => ALUPort_B_input(3),
      O => ALUPort_Mmux_ALU_output261_8674
    );
  ALUPort_Sh561_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y72",
      INIT => X"333300FF0F0F5555"
    )
    port map (
      ADR5 => ALUPort_B_input(1),
      ADR4 => ALUPort_B_input(0),
      ADR3 => IDecodePort_Mmux_read_data1_414,
      ADR1 => IDecodePort_Mmux_read_data1_413,
      ADR0 => IDecodePort_Mmux_read_data1_416,
      ADR2 => IDecodePort_Mmux_read_data1_415,
      O => N26
    );
  ALUPort_Mmux_ALU_output17 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y73",
      INIT => X"5550555000500050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => ALUPort_A_input_31_B_input_31_sub_7_OUT_0_0,
      ADR2 => ALUPort_A_input_31_B_input_31_add_5_OUT_0_0,
      ADR3 => ALUop(0),
      ADR0 => ALUop(2),
      O => ALUPort_Mmux_ALU_output15_8604
    );
  Mmux_Write_data241 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y75",
      INIT => X"0000220000032203"
    )
    port map (
      ADR3 => ALUop(1),
      ADR1 => ALUop(0),
      ADR2 => IDecodePort_Mmux_read_data1_423,
      ADR5 => ALUPort_B_input(30),
      ADR4 => N438,
      ADR0 => ALUPort_Sh126,
      O => Mmux_Write_data24_9034
    );
  Mmux_Write_data114 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y75",
      INIT => X"EFEAE5E04F4A4540"
    )
    port map (
      ADR0 => ALUPort_B_input(2),
      ADR2 => ALUPort_B_input(3),
      ADR4 => ALUPort_Sh15,
      ADR5 => ALUPort_Sh7,
      ADR1 => ALUPort_Sh11,
      ADR3 => ALUPort_Sh19,
      O => Mmux_Write_data113_9381
    );
  ALUPort_Sh71 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y75",
      INIT => X"FC30FC30BBBB8888"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data1_426,
      ADR2 => IDecodePort_Mmux_read_data1_427,
      ADR4 => IDecodePort_Mmux_read_data1_429,
      ADR0 => IDecodePort_Mmux_read_data1_428,
      ADR1 => ALUPort_B_input(0),
      ADR5 => ALUPort_B_input(1),
      O => ALUPort_Sh7
    );
  Mmux_Write_data162 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y75",
      INIT => X"1100313111002020"
    )
    port map (
      ADR1 => ALUPort_B_input(2),
      ADR4 => ALUPort_B_input(4),
      ADR0 => ALUPort_B_input(3),
      ADR2 => ALUPort_Sh15,
      ADR5 => ALUPort_Sh23,
      ADR3 => ALUPort_Sh7,
      O => Mmux_Write_data161_8857
    );
  ALUPort_Sh231 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y76",
      INIT => X"BF8FB383BC8CB080"
    )
    port map (
      ADR2 => ALUPort_B_input(0),
      ADR1 => ALUPort_B_input(1),
      ADR3 => IDecodePort_Mmux_read_data1_414,
      ADR0 => IDecodePort_Mmux_read_data1_412,
      ADR4 => IDecodePort_Mmux_read_data1_413,
      ADR5 => IDecodePort_Mmux_read_data1_415,
      O => ALUPort_Sh23
    );
  ALUPort_Sh5511 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y76",
      INIT => X"AAAAFFFFAAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh15,
      ADR5 => ALUPort_Sh23,
      O => ALUPort_Sh551
    );
  Mmux_Write_data74 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y76",
      INIT => X"FAFAEE44A0A0EE44"
    )
    port map (
      ADR0 => ALUop(0),
      ADR4 => ALUop(1),
      ADR5 => ALUPort_B_input(15),
      ADR2 => IDecodePort_Mmux_read_data1_46,
      ADR3 => ALUPort_A_input_31_B_input_31_sub_7_OUT_15_0,
      ADR1 => ALUPort_A_input_31_B_input_31_add_5_OUT_15_0,
      O => Mmux_Write_data73_8847
    );
  Mmux_Write_data211 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y77",
      INIT => X"000000000A000A33"
    )
    port map (
      ADR1 => IDecodePort_Mmux_read_data1_420,
      ADR2 => ALUPort_B_input(4),
      ADR5 => ALUop(0),
      ADR3 => ALUop(1),
      ADR4 => ALUPort_B_input(28),
      ADR0 => ALUPort_Sh156,
      O => Mmux_Write_data21_9594
    );
  Mmux_Write_data215 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y77",
      INIT => X"FF75FF7FAA20AA2A"
    )
    port map (
      ADR0 => ALUop(2),
      ADR2 => ALUPort_Sh44,
      ADR1 => N314,
      ADR4 => N313,
      ADR3 => Mmux_Write_data21_9594,
      ADR5 => Mmux_Write_data213,
      O => Mmux_Write_data214_9024
    );
  Mmux_Write_data253 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y79",
      INIT => X"FEDCBA9876543210"
    )
    port map (
      ADR1 => ALUPort_B_input(1),
      ADR0 => ALUPort_B_input(0),
      ADR4 => IDecodePort_Mmux_read_data1_421,
      ADR5 => IDecodePort_Mmux_read_data1_420,
      ADR3 => IDecodePort_Mmux_read_data1_423,
      ADR2 => IDecodePort_Mmux_read_data1_424,
      O => Mmux_Write_data252_8542
    );
  ALUPort_Sh571_ALUPort_Sh571_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_Sh571_8064,
      O => ALUPort_Sh571_0
    );
  ALUPort_Sh571 : X_MUX2
    generic map(
      LOC => "SLICE_X70Y67"
    )
    port map (
      IA => N464,
      IB => N465,
      O => ALUPort_Sh571_8064,
      SEL => ALUPort_B_input(3)
    );
  ALUPort_Sh571_F : X_LUT6
    generic map(
      LOC => "SLICE_X70Y67",
      INIT => X"FFB833B8CCB800B8"
    )
    port map (
      ADR3 => ALUPort_B_input(1),
      ADR1 => ALUPort_B_input(0),
      ADR5 => IDecodePort_Mmux_read_data1_415,
      ADR4 => IDecodePort_Mmux_read_data1_414,
      ADR0 => IDecodePort_Mmux_read_data1_416,
      ADR2 => IDecodePort_Mmux_read_data1_417,
      O => N464
    );
  ALUPort_Sh571_G : X_LUT6
    generic map(
      LOC => "SLICE_X70Y67",
      INIT => X"BBF388F3BBC088C0"
    )
    port map (
      ADR1 => ALUPort_B_input(0),
      ADR3 => ALUPort_B_input(1),
      ADR2 => IDecodePort_Mmux_read_data1_47,
      ADR0 => IDecodePort_Mmux_read_data1_45,
      ADR4 => IDecodePort_Mmux_read_data1_46,
      ADR5 => IDecodePort_Mmux_read_data1_48,
      O => N465
    );
  ALUPort_Sh13111 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y68",
      INIT => X"FDB97531ECA86420"
    )
    port map (
      ADR3 => IDecodePort_Mmux_read_data1_41,
      ADR5 => IDecodePort_Mmux_read_data1_430,
      ADR1 => ALUPort_B_input(1),
      ADR4 => IDecodePort_Mmux_read_data1_49,
      ADR2 => IDecodePort_Mmux_read_data1_47,
      ADR0 => ALUPort_B_input(3),
      O => ALUPort_Sh13111_9595
    );
  ALUPort_Sh13113 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y68",
      INIT => X"EEEEFFCC22223300"
    )
    port map (
      ADR2 => '1',
      ADR1 => ALUPort_B_input(0),
      ADR4 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh13112_8699,
      ADR3 => ALUPort_Sh1021,
      ADR5 => ALUPort_Sh13111_9595,
      O => ALUPort_Sh1311
    );
  ALUPort_Sh1391_ALUPort_Sh1391_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_Sh1391_8093,
      O => ALUPort_Sh1391_0
    );
  ALUPort_Sh1391 : X_MUX2
    generic map(
      LOC => "SLICE_X70Y71"
    )
    port map (
      IA => N458,
      IB => N459,
      O => ALUPort_Sh1391_8093,
      SEL => ALUPort_B_input(3)
    );
  ALUPort_Sh1391_F : X_LUT6
    generic map(
      LOC => "SLICE_X70Y71",
      INIT => X"CAFFCAF0CA0FCA00"
    )
    port map (
      ADR3 => ALUPort_B_input(1),
      ADR2 => ALUPort_B_input(0),
      ADR0 => IDecodePort_Mmux_read_data1_48,
      ADR1 => IDecodePort_Mmux_read_data1_49,
      ADR5 => IDecodePort_Mmux_read_data1_47,
      ADR4 => IDecodePort_Mmux_read_data1_46,
      O => N458
    );
  ALUPort_Sh1391_G : X_LUT6
    generic map(
      LOC => "SLICE_X70Y71",
      INIT => X"FFF0CCAA00F0CCAA"
    )
    port map (
      ADR4 => ALUPort_B_input(0),
      ADR3 => ALUPort_B_input(1),
      ADR2 => IDecodePort_Mmux_read_data1_416,
      ADR5 => IDecodePort_Mmux_read_data1_418,
      ADR1 => IDecodePort_Mmux_read_data1_417,
      ADR0 => IDecodePort_Mmux_read_data1_415,
      O => N459
    );
  ALUPort_Sh1471 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y72",
      INIT => X"FCFC0C0CAFA0AFA0"
    )
    port map (
      ADR2 => ALUPort_B_input(2),
      ADR5 => ALUPort_B_input(3),
      ADR3 => ALUPort_Sh115,
      ADR0 => ALUPort_Sh119,
      ADR1 => ALUPort_Sh123,
      ADR4 => ALUPort_Sh127,
      O => ALUPort_Sh147
    );
  ALUPort_Sh1271 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y72",
      INIT => X"0000440000444444"
    )
    port map (
      ADR2 => '1',
      ADR4 => IFetchPort_Mram_Instruction1,
      ADR3 => ALUSrc,
      ADR0 => ALUPort_B_input(0),
      ADR1 => IDecodePort_Mmux_read_data1_424,
      ADR5 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh127
    );
  ALUPort_Sh191 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y75",
      INIT => X"AACCF0FFAACCF000"
    )
    port map (
      ADR3 => ALUPort_B_input(0),
      ADR4 => ALUPort_B_input(1),
      ADR2 => IDecodePort_Mmux_read_data1_49,
      ADR0 => IDecodePort_Mmux_read_data1_47,
      ADR1 => IDecodePort_Mmux_read_data1_48,
      ADR5 => IDecodePort_Mmux_read_data1_410,
      O => ALUPort_Sh19
    );
  Mmux_Write_data161 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y75",
      INIT => X"0A8A0A80008A0080"
    )
    port map (
      ADR0 => ALUPort_B_input(2),
      ADR3 => ALUPort_B_input(3),
      ADR2 => ALUPort_B_input(4),
      ADR1 => ALUPort_Sh3,
      ADR4 => ALUPort_Sh19,
      ADR5 => ALUPort_Sh11,
      O => Mmux_Write_data16
    );
  ALUPort_Sh471 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y75",
      INIT => X"B8B8B8B8FF33CC00"
    )
    port map (
      ADR1 => ALUPort_B_input(2),
      ADR2 => ALUPort_Sh7,
      ADR0 => ALUPort_Sh3,
      ADR3 => ALUPort_Sh11,
      ADR5 => ALUPort_B_input(3),
      ADR4 => ALUPort_Sh15,
      O => ALUPort_Sh47
    );
  ALUPort_Sh152 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y75",
      INIT => X"F0FFF000CCAACCAA"
    )
    port map (
      ADR2 => IDecodePort_Mmux_read_data1_43,
      ADR5 => ALUPort_B_input(0),
      ADR3 => ALUPort_B_input(1),
      ADR1 => IDecodePort_Mmux_read_data1_44,
      ADR4 => IDecodePort_Mmux_read_data1_45,
      ADR0 => IDecodePort_Mmux_read_data1_46,
      O => ALUPort_Sh15
    );
  ALUPort_Sh2711 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y76",
      INIT => X"EEFF4400EECC44CC"
    )
    port map (
      ADR2 => '1',
      ADR3 => ALUSrc,
      ADR0 => IFetchPort_Mram_Instruction1,
      ADR4 => IDecodePort_Mmux_read_data1_417,
      ADR1 => IDecodePort_Mmux_read_data1_419,
      ADR5 => IDecodePort_Mmux_read_data2_411,
      O => ALUPort_Sh271
    );
  Mmux_Write_data203 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y77",
      INIT => X"4E444E444E4E4444"
    )
    port map (
      ADR5 => ALUPort_B_input(2),
      ADR0 => ALUop(0),
      ADR2 => ALUop(1),
      ADR3 => ALUPort_Sh551,
      ADR1 => Mmux_Write_data201_9009,
      ADR4 => ALUPort_Sh591_9596,
      O => Mmux_Write_data202_9011
    );
  ALUPort_Sh591 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y77",
      INIT => X"AA33AA33AAFFAA00"
    )
    port map (
      ADR2 => '1',
      ADR5 => ALUPort_B_input(0),
      ADR3 => ALUPort_B_input(3),
      ADR0 => ALUPort_Sh19,
      ADR1 => N20,
      ADR4 => ALUPort_Sh271,
      O => ALUPort_Sh591_9596
    );
  ALUPort_Sh123_ALUPort_Sh123_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_Write_data72,
      O => Mmux_Write_data72_0
    );
  Mmux_Write_data73 : X_MUX2
    generic map(
      LOC => "SLICE_X71Y72"
    )
    port map (
      IA => N600,
      IB => N601,
      O => Mmux_Write_data72,
      SEL => ALUPort_B_input(2)
    );
  Mmux_Write_data73_F : X_LUT6
    generic map(
      LOC => "SLICE_X71Y72",
      INIT => X"02FE02028ABA8A8A"
    )
    port map (
      ADR0 => ALUPort_Sh1391_0,
      ADR1 => ALUSrc,
      ADR2 => IDecodePort_Mmux_read_data2_426,
      ADR5 => IFetchPort_Mram_Instruction4,
      ADR4 => ALUPort_Sh127,
      ADR3 => ALUPort_B_input(3),
      O => N600
    );
  Mmux_Write_data73_G : X_LUT6
    generic map(
      LOC => "SLICE_X71Y72",
      INIT => X"00003120C480F5A0"
    )
    port map (
      ADR1 => ALUSrc,
      ADR4 => IDecodePort_Mmux_read_data2_426,
      ADR5 => IFetchPort_Mram_Instruction4,
      ADR0 => ALUPort_B_input(3),
      ADR3 => ALUPort_Sh115,
      ADR2 => ALUPort_Sh123,
      O => N601
    );
  ALUPort_Sh1231 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y72",
      INIT => X"FCFC3030EE22EE22"
    )
    port map (
      ADR1 => ALUPort_B_input(0),
      ADR5 => ALUPort_B_input(1),
      ADR3 => IDecodePort_Mmux_read_data1_420,
      ADR4 => IDecodePort_Mmux_read_data1_423,
      ADR2 => IDecodePort_Mmux_read_data1_421,
      ADR0 => IDecodePort_Mmux_read_data1_419,
      O => ALUPort_Sh123
    );
  Mmux_Write_data202 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y74",
      INIT => X"00000000FC003000"
    )
    port map (
      ADR0 => '1',
      ADR3 => ALUop(1),
      ADR5 => ALUPort_B_input(3),
      ADR1 => ALUPort_B_input(2),
      ADR2 => ALUPort_Sh123,
      ADR4 => ALUPort_Sh127,
      O => Mmux_Write_data201_9009
    );
  Mmux_Write_data213_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y75",
      INIT => X"FFFFFFFF0053FFFF"
    )
    port map (
      ADR2 => ALUPort_B_input(2),
      ADR3 => ALUPort_B_input(4),
      ADR4 => ALUop(0),
      ADR5 => ALUop(1),
      ADR0 => ALUPort_Sh561_0,
      ADR1 => Mmux_Write_data211_9031,
      O => N314
    );
  ALUPort_Sh591_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y77",
      INIT => X"4747550F4747550F"
    )
    port map (
      ADR5 => '1',
      ADR4 => ALUSrc,
      ADR1 => IFetchPort_Mram_Instruction1,
      ADR0 => IDecodePort_Mmux_read_data1_416,
      ADR2 => IDecodePort_Mmux_read_data1_418,
      ADR3 => IDecodePort_Mmux_read_data2_411,
      O => N20
    );
  ALUPort_Sh591_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y77",
      INIT => X"FF55FF5500550055"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ALUPort_B_input(0),
      ADR0 => ALUPort_Sh271,
      ADR5 => N20,
      O => N291
    );
  NlwBufferBlock_Cntr_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_3_CLK
    );
  NlwBufferBlock_Cntr_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_2_CLK
    );
  NlwBufferBlock_Cntr_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_1_CLK
    );
  NlwBufferBlock_Cntr_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_0_CLK
    );
  NlwBufferBlock_Cntr_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_7_CLK
    );
  NlwBufferBlock_Cntr_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_6_CLK
    );
  NlwBufferBlock_Cntr_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_5_CLK
    );
  NlwBufferBlock_Cntr_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_4_CLK
    );
  NlwBufferBlock_Cntr_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_11_CLK
    );
  NlwBufferBlock_Cntr_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_10_CLK
    );
  NlwBufferBlock_Cntr_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_9_CLK
    );
  NlwBufferBlock_Cntr_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_8_CLK
    );
  NlwBufferBlock_Cntr_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_15_CLK
    );
  NlwBufferBlock_Cntr_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_14_CLK
    );
  NlwBufferBlock_Cntr_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_13_CLK
    );
  NlwBufferBlock_Cntr_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_12_CLK
    );
  NlwBufferBlock_Cntr_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_19_CLK
    );
  NlwBufferBlock_Cntr_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_18_CLK
    );
  NlwBufferBlock_Cntr_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_17_CLK
    );
  NlwBufferBlock_Cntr_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_16_CLK
    );
  NlwBufferBlock_Cntr_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_23_CLK
    );
  NlwBufferBlock_Cntr_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_22_CLK
    );
  NlwBufferBlock_Cntr_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_21_CLK
    );
  NlwBufferBlock_Cntr_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_20_CLK
    );
  NlwBufferBlock_Cntr_26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_26_CLK
    );
  NlwBufferBlock_Cntr_25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_25_CLK
    );
  NlwBufferBlock_Cntr_24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Cntr_24_CLK
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_4,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_411,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_422,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_425,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_3_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_426,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_427,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_428,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_429,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_7_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_430,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_431,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_41,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_42,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_11_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_43,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_44,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_45,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_46,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_15_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_47,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_48,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_49,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_410,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_19_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_412,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_413,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_414,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_415,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_23_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_416,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_417,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_418,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_419,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_cy_27_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_420,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_421,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_423,
      O => NlwBufferSignal_ALUPort_Msub_A_input_31_B_input_31_sub_7_OUT_31_0_xor_31_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_4,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_411,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_422,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_425,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_3_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_426,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_427,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_428,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_429,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_7_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_430,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_431,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_41,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_42,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_11_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_43,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_44,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_45,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_46,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_15_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_47,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_48,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_49,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_410,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_19_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_412,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_413,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_414,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_415,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_23_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_416,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_417,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_418,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_2_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_419,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_cy_27_DI_3_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_420,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_0_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_421,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_1_Q
    );
  NlwBufferBlock_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_Mmux_read_data1_423,
      O => NlwBufferSignal_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_31_DI_2_Q
    );
  NlwBufferBlock_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_PCIncby1_0_0,
      O => NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_0_Q
    );
  NlwBufferBlock_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_PCIncby1_1_0,
      O => NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_1_Q
    );
  NlwBufferBlock_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_PCIncby1_2_0,
      O => NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_2_Q
    );
  NlwBufferBlock_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_PCIncby1_3_0,
      O => NlwBufferSignal_ControlUnitPort_Madd_n0111_Madd_cy_3_DI_3_Q
    );
  NlwBufferBlock_LED_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_12_OBUF_9276,
      O => NlwBufferSignal_LED_12_OBUF_I
    );
  NlwBufferBlock_LED_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_11_OBUF_9277,
      O => NlwBufferSignal_LED_11_OBUF_I
    );
  NlwBufferBlock_LED_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_14_OBUF_9278,
      O => NlwBufferSignal_LED_14_OBUF_I
    );
  NlwBufferBlock_LED_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_13_OBUF_9279,
      O => NlwBufferSignal_LED_13_OBUF_I
    );
  NlwBufferBlock_LED_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_10_OBUF_9280,
      O => NlwBufferSignal_LED_10_OBUF_I
    );
  NlwBufferBlock_LED_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_15_OBUF_9149,
      O => NlwBufferSignal_LED_15_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_6_OBUF_9221,
      O => NlwBufferSignal_SSEG_CA_6_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_5_OBUF_9281,
      O => NlwBufferSignal_SSEG_CA_5_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_0_OBUF_9097,
      O => NlwBufferSignal_SSEG_CA_0_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_2_OBUF_9107,
      O => NlwBufferSignal_SSEG_CA_2_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_1_OBUF_9282,
      O => NlwBufferSignal_SSEG_CA_1_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_4_OBUF_9220,
      O => NlwBufferSignal_SSEG_CA_4_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_3_OBUF_9283,
      O => NlwBufferSignal_SSEG_CA_3_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_6_OBUF_9132,
      O => NlwBufferSignal_SSEG_AN_6_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_5_OBUF_0,
      O => NlwBufferSignal_SSEG_AN_5_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_7_OBUF_0,
      O => NlwBufferSignal_SSEG_AN_7_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_0_OBUF_9101,
      O => NlwBufferSignal_SSEG_AN_0_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_2_OBUF_9191,
      O => NlwBufferSignal_SSEG_AN_2_OBUF_I
    );
  NlwBufferBlock_LED_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_0_OBUF_8361,
      O => NlwBufferSignal_LED_0_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_1_OBUF_9174,
      O => NlwBufferSignal_SSEG_AN_1_OBUF_I
    );
  NlwBufferBlock_LED_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_1_OBUF_8285,
      O => NlwBufferSignal_LED_1_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_4_OBUF_9168,
      O => NlwBufferSignal_SSEG_AN_4_OBUF_I
    );
  NlwBufferBlock_LED_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_2_OBUF_8362,
      O => NlwBufferSignal_LED_2_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_3_OBUF_0,
      O => NlwBufferSignal_SSEG_AN_3_OBUF_I
    );
  NlwBufferBlock_LED_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_3_OBUF_8283,
      O => NlwBufferSignal_LED_3_OBUF_I
    );
  NlwBufferBlock_LED_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_4_OBUF_8368,
      O => NlwBufferSignal_LED_4_OBUF_I
    );
  NlwBufferBlock_LED_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_5_OBUF_8367,
      O => NlwBufferSignal_LED_5_OBUF_I
    );
  NlwBufferBlock_LED_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_6_OBUF_8366,
      O => NlwBufferSignal_LED_6_OBUF_I
    );
  NlwBufferBlock_LED_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_7_OBUF_9284,
      O => NlwBufferSignal_LED_7_OBUF_I
    );
  NlwBufferBlock_LED_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_8_OBUF_9285,
      O => NlwBufferSignal_LED_8_OBUF_I
    );
  NlwBufferBlock_LED_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_9_OBUF_9286,
      O => NlwBufferSignal_LED_9_OBUF_I
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_9287,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_BTN_2_BTN_1_OR_3_o_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o,
      O => NlwBufferSignal_BTN_2_BTN_1_OR_3_o_BUFG_IN
    );
  NlwBufferBlock_Val_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Val_3_CLK
    );
  NlwBufferBlock_Val_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Val_1_CLK
    );
  NlwBufferBlock_Val_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Val_2_CLK
    );
  NlwBufferBlock_Val_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Val_0_CLK
    );
  NlwBufferBlock_clr_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clr_G_9495,
      O => NlwBufferSignal_clr_CLK
    );
  NlwBufferBlock_hexval_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_7_CLK
    );
  NlwBufferBlock_hexval_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_6_CLK
    );
  NlwBufferBlock_hexval_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_5_CLK
    );
  NlwBufferBlock_hexval_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_4_CLK
    );
  NlwBufferBlock_hexval_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_11_CLK
    );
  NlwBufferBlock_hexval_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_10_CLK
    );
  NlwBufferBlock_hexval_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_9_CLK
    );
  NlwBufferBlock_hexval_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_8_CLK
    );
  NlwBufferBlock_hexval_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_3_CLK
    );
  NlwBufferBlock_hexval_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_2_CLK
    );
  NlwBufferBlock_hexval_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_1_CLK
    );
  NlwBufferBlock_hexval_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_0_CLK
    );
  NlwBufferBlock_hexval_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_15_CLK
    );
  NlwBufferBlock_hexval_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_14_CLK
    );
  NlwBufferBlock_hexval_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_13_CLK
    );
  NlwBufferBlock_hexval_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_12_CLK
    );
  NlwBufferBlock_hexval_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_23_CLK
    );
  NlwBufferBlock_hexval_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_22_CLK
    );
  NlwBufferBlock_hexval_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_21_CLK
    );
  NlwBufferBlock_hexval_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_20_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_10_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_9_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_8_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_7_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_11_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_10_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_9_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_8_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_10_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_9_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_8_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_7_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_7_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_6_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_5_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_4_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_10_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_9_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_8_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_7_CLK
    );
  NlwBufferBlock_hexval_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_19_CLK
    );
  NlwBufferBlock_hexval_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_18_CLK
    );
  NlwBufferBlock_hexval_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_17_CLK
    );
  NlwBufferBlock_hexval_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_16_CLK
    );
  NlwBufferBlock_hexval_31_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_31_CLK
    );
  NlwBufferBlock_hexval_30_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_30_CLK
    );
  NlwBufferBlock_hexval_29_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_29_CLK
    );
  NlwBufferBlock_hexval_28_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_28_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_14_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_13_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_12_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_11_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_6_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_5_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_4_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_3_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_9_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_8_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_6_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_5_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_4_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_3_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_14_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_13_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_12_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_11_CLK
    );
  NlwBufferBlock_hexval_27_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_27_CLK
    );
  NlwBufferBlock_hexval_26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_26_CLK
    );
  NlwBufferBlock_hexval_25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_25_CLK
    );
  NlwBufferBlock_hexval_24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_9144,
      O => NlwBufferSignal_hexval_24_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_7_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_6_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_6_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_5_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_4_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_3_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_14_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_13_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_12_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_11_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_16_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_16_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(16),
      O => NlwBufferSignal_IDecodePort_Reg_array_5_16_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_14_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_15_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_15_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(15),
      O => NlwBufferSignal_IDecodePort_Reg_array_5_15_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_13_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_5_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_4_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_14_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_14_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(14),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_14_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_13_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_13_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(13),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_13_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_12_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_9_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_9_3_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_18_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_17_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_16_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_15_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_11_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_10_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_14_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_13_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_12_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_3_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_2_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_1_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_0_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_18_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_17_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_16_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_15_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_2_3_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_2_3_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(3),
      O => NlwBufferSignal_IDecodePort_Reg_array_2_3_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_2_1_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_2_1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(1),
      O => NlwBufferSignal_IDecodePort_Reg_array_2_1_IN
    );
  NlwBufferBlock_DMemoryPort_DMem_11_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_11_3_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_22_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_21_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_20_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_19_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_22_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_21_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_20_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_19_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_11_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_11_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(11),
      O => NlwBufferSignal_IDecodePort_Reg_array_5_11_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_3_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_1_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(1),
      O => NlwBufferSignal_IDecodePort_Reg_array_5_1_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_1_1_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_1_1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(1),
      O => NlwBufferSignal_IDecodePort_Reg_array_1_1_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_18_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_18_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(18),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_18_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_16_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_17_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_17_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(17),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_17_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_15_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_18_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_17_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_18_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_17_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_16_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_15_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_22_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_21_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_20_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_19_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_3_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_3_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(3),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_3_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_2_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_1_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(1),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_1_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_0_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_3_1_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_3_1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_3_Q,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_3_1_IN
    );
  NlwBufferBlock_DMemoryPort_DMem_4_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_2_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_1_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_0_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_22_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_23_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_23_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(23),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_23_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_21_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_30_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_30_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_29_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_29_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_28_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_28_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_27_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_27_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_26_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_25_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_24_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_23_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_22_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_21_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_20_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_19_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_4_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_3_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_3_3_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_3_3_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(3),
      O => NlwBufferSignal_IDecodePort_Reg_array_3_3_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_3_1_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_2_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_1_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_0_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_26_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_25_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_24_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_23_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_22_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_22_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(22),
      O => NlwBufferSignal_IDecodePort_Reg_array_5_22_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_21_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_21_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(21),
      O => NlwBufferSignal_IDecodePort_Reg_array_5_21_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_20_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_20_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(20),
      O => NlwBufferSignal_IDecodePort_Reg_array_5_20_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_19_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_20_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_19_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_19_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(19),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_19_IN
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_3_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_2_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_2_Q,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_IN
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_1_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_0_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_0_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_0_Q,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_0_IN
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_0_1_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_0_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_0_2_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_0_2_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_0_Q,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_0_2_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_26_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_26_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(26),
      O => NlwBufferSignal_IDecodePort_Reg_array_5_26_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_25_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_24_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_24_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(24),
      O => NlwBufferSignal_IDecodePort_Reg_array_5_24_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_23_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_26_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_25_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_25_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(25),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_25_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_24_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_30_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_30_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_29_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_29_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_28_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_28_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_4_27_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_27_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_30_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_30_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_29_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_29_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_28_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_28_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_27_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_27_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_3_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_2_3_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_2_Q,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_3_IN
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_2_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_2_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_2_2_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_2_Q,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_2_IN
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_2_1_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_3_1_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_4_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_4_2_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_4_2_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_4_Q,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_4_2_IN
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_4_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_4_1_CLK
    );
  NlwBufferBlock_ControlUnitPort_NextPCSignal_4_1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_NextPCSignal_31_GND_46_o_mux_39_OUT_4_Q,
      O => NlwBufferSignal_ControlUnitPort_NextPCSignal_4_1_IN
    );
  NlwBufferBlock_DMemoryPort_DMem_12_26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_26_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_25_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_24_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_23_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_30_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_30_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_29_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_29_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_28_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_28_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_27_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_27_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_26_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_25_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_24_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_23_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_31_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_31_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_30_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_30_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_29_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_29_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_28_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_28_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_28_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(28),
      O => NlwBufferSignal_IDecodePort_Reg_array_5_28_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_27_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_5_27_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_5_27_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(27),
      O => NlwBufferSignal_IDecodePort_Reg_array_5_27_IN
    );
  NlwBufferBlock_DMemoryPort_DMem_2_31_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_31_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_31_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_31_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_18_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_17_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_16_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_10_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_10_15_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_30_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_30_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_30_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(30),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_30_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_28_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_28_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_29_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_29_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_29_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(29),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_29_IN
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_27_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_27_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_31_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_4_31_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_4_31_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Write_data(31),
      O => NlwBufferSignal_IDecodePort_Reg_array_4_31_IN
    );
  NlwBufferBlock_DMemoryPort_DMem_4_31_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_4_31_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_12_31_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_12_31_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_2_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_1_CLK
    );
  NlwBufferBlock_DMemoryPort_DMem_2_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_DMemoryPort_DMem_2_0_CLK
    );
  NlwBlock_TopModule_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_TopModule_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

