--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: TopModule_timesim.vhd
-- /___/   /\     Timestamp: Sun Dec 11 19:49:47 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf TopModule.pcf -rpw 100 -tpw 0 -ar Structure -tm TopModule -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim TopModule.ncd TopModule_timesim.vhd 
-- Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
-- Input file	: TopModule.ncd
-- Output file	: C:\Users\Parteek Khushdil\Documents\GitHub\AHD-Project-2016\VHDL Code\RC5\netgen\par\TopModule_timesim.vhd
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
  signal Cntr_26_GND_8_o_equal_8_o : STD_LOGIC; 
  signal Cntr_26_GND_8_o_equal_8_o_26_Q : STD_LOGIC; 
  signal Cntr_26_GND_8_o_equal_8_o_26_1_1697 : STD_LOGIC; 
  signal Cntr_26_GND_8_o_equal_8_o_26_2_1698 : STD_LOGIC; 
  signal BTN_2_BTN_1_OR_3_o_BUFG_1705 : STD_LOGIC; 
  signal hexval_24_1706 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_24_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_25_0 : STD_LOGIC; 
  signal BTN_1_IBUF_1709 : STD_LOGIC; 
  signal BTN_2_IBUF_1710 : STD_LOGIC; 
  signal hexval_25_1711 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_10 : STD_LOGIC; 
  signal LED_1_OBUF_1714 : STD_LOGIC; 
  signal LED_3_OBUF_1715 : STD_LOGIC; 
  signal LED_2_OBUF_1716 : STD_LOGIC; 
  signal LED_0_OBUF_1717 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_91_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_16_0 : STD_LOGIC; 
  signal LED_6_OBUF_1720 : STD_LOGIC; 
  signal LED_5_OBUF_1721 : STD_LOGIC; 
  signal LED_4_OBUF_1722 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_82 : STD_LOGIC; 
  signal hexval_21_1724 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_21_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_22_0 : STD_LOGIC; 
  signal hexval_22_1727 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_91 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_91_0 : STD_LOGIC; 
  signal BTN_3_IBUF_1730 : STD_LOGIC; 
  signal BTN_0_IBUF_1731 : STD_LOGIC; 
  signal clr_1732 : STD_LOGIC; 
  signal Mmux_SSEG_CA105_1733 : STD_LOGIC; 
  signal Mmux_SSEG_CA110 : STD_LOGIC; 
  signal hexval_16_1735 : STD_LOGIC; 
  signal hexval_18_1736 : STD_LOGIC; 
  signal hexval_17_1737 : STD_LOGIC; 
  signal hexval_19_1738 : STD_LOGIC; 
  signal Mmux_SSEG_CA145_1739 : STD_LOGIC; 
  signal Mmux_SSEG_CA15 : STD_LOGIC; 
  signal hexval_6_1741 : STD_LOGIC; 
  signal hexval_7_1742 : STD_LOGIC; 
  signal hexval_4_1743 : STD_LOGIC; 
  signal hexval_5_1744 : STD_LOGIC; 
  signal Mmux_SSEG_CA1215_1745 : STD_LOGIC; 
  signal Mmux_SSEG_CA1214_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA66_1747 : STD_LOGIC; 
  signal Mmux_SSEG_CA18 : STD_LOGIC; 
  signal hexval_12_1749 : STD_LOGIC; 
  signal hexval_14_1750 : STD_LOGIC; 
  signal hexval_15_1751 : STD_LOGIC; 
  signal hexval_13_1752 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_6_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA8124_1757 : STD_LOGIC; 
  signal Mmux_SSEG_CA17 : STD_LOGIC; 
  signal hexval_23_1759 : STD_LOGIC; 
  signal hexval_20_1760 : STD_LOGIC; 
  signal Mmux_SSEG_CA85_1761 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_91_1762 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_1763 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_9_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_15_0 : STD_LOGIC; 
  signal SSEG_AN_6_OBUF_1767 : STD_LOGIC; 
  signal SSEG_AN_7_OBUF_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA1216_1770 : STD_LOGIC; 
  signal Mmux_SSEG_CA123_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_1772 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_91_1773 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_10_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_5_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_13_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_91 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_7_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_91_1780 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_1781 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_11_0 : STD_LOGIC; 
  signal SSEG_CA_0_OBUF_1783 : STD_LOGIC; 
  signal Mmux_SSEG_CA27_1784 : STD_LOGIC; 
  signal Mmux_SSEG_CA812 : STD_LOGIC; 
  signal Mmux_SSEG_CA121 : STD_LOGIC; 
  signal Mmux_SSEG_CA2 : STD_LOGIC; 
  signal SSEG_AN_0_OBUF_1788 : STD_LOGIC; 
  signal hexval_2_1789 : STD_LOGIC; 
  signal hexval_0_1790 : STD_LOGIC; 
  signal hexval_3_1791 : STD_LOGIC; 
  signal hexval_1_1792 : STD_LOGIC; 
  signal Mmux_SSEG_CA61_0 : STD_LOGIC; 
  signal SSEG_CA_2_OBUF_1794 : STD_LOGIC; 
  signal Mmux_SSEG_CA68_1795 : STD_LOGIC; 
  signal Mmux_SSEG_CA42 : STD_LOGIC; 
  signal Mmux_SSEG_CA41_0 : STD_LOGIC; 
  signal hexval_28_1798 : STD_LOGIC; 
  signal hexval_31_1799 : STD_LOGIC; 
  signal hexval_29_1800 : STD_LOGIC; 
  signal hexval_30_1801 : STD_LOGIC; 
  signal Mmux_SSEG_CA101_1802 : STD_LOGIC; 
  signal Mmux_SSEG_CA141_1803 : STD_LOGIC; 
  signal Mmux_SSEG_CA19 : STD_LOGIC; 
  signal hexval_26_1805 : STD_LOGIC; 
  signal hexval_27_1806 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_91_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_14_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_17_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_18_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA8121_1813 : STD_LOGIC; 
  signal Mmux_SSEG_CA22_0 : STD_LOGIC; 
  signal hexval_9_1815 : STD_LOGIC; 
  signal hexval_10_1816 : STD_LOGIC; 
  signal ControlUnitPort_n0247 : STD_LOGIC; 
  signal start_1820 : STD_LOGIC; 
  signal ControlUnitPort_n0257_inv_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA48_1822 : STD_LOGIC; 
  signal CONV2_Mram_Y22 : STD_LOGIC; 
  signal Mmux_SSEG_CA82_1824 : STD_LOGIC; 
  signal Mmux_SSEG_CA24_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_91_1826 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_1827 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_12_0 : STD_LOGIC; 
  signal SSEG_AN_4_OBUF_1829 : STD_LOGIC; 
  signal SSEG_AN_5_OBUF_0 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_1833 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_91 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_91_1836 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_20_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_30_0 : STD_LOGIC; 
  signal hexval_11_1840 : STD_LOGIC; 
  signal Mmux_SSEG_CA103_1841 : STD_LOGIC; 
  signal Mmux_SSEG_CA16 : STD_LOGIC; 
  signal hexval_8_1843 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_91 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_91 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_29_0 : STD_LOGIC; 
  signal SSEG_AN_2_OBUF_1851 : STD_LOGIC; 
  signal SSEG_AN_3_OBUF_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_4_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA1212_1854 : STD_LOGIC; 
  signal Mmux_SSEG_CA124_0 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_1856 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal Mmux_SSEG_CA1211_1858 : STD_LOGIC; 
  signal Mmux_SSEG_CA122_0 : STD_LOGIC; 
  signal BTN_2_BTN_1_OR_3_o : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_1861 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_3_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_0_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_91 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_8_0 : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_0_4 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_2_0 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_1_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA142_1874 : STD_LOGIC; 
  signal Mmux_SSEG_CA44_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA146_1876 : STD_LOGIC; 
  signal Mmux_SSEG_CA87_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_91_1878 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_1879 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_26_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA84_1881 : STD_LOGIC; 
  signal Mmux_SSEG_CA8125_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_31_0 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_3_0 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction27 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction26 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_3_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_1889 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_91 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_27_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_10 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_91_1893 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_19_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_23_0 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_91 : STD_LOGIC; 
  signal Mmux_SSEG_CA106_1899 : STD_LOGIC; 
  signal Mmux_SSEG_CA12_0 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_28_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA25_1902 : STD_LOGIC; 
  signal Mmux_SSEG_CA63_0 : STD_LOGIC; 
  signal SSEG_CA_4_OBUF_1904 : STD_LOGIC; 
  signal SSEG_CA_6_OBUF_1905 : STD_LOGIC; 
  signal Mmux_SSEG_CA143_1906 : STD_LOGIC; 
  signal Mmux_SSEG_CA49_1907 : STD_LOGIC; 
  signal Mmux_SSEG_CA62_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA4 : STD_LOGIC; 
  signal Mmux_SSEG_CA88_0 : STD_LOGIC; 
  signal Mmux_SSEG_CA81_1911 : STD_LOGIC; 
  signal Mmux_SSEG_CA212 : STD_LOGIC; 
  signal LED_15_OBUF_1913 : STD_LOGIC; 
  signal Result_0_0 : STD_LOGIC; 
  signal Result_1_0 : STD_LOGIC; 
  signal Result_2_0 : STD_LOGIC; 
  signal Mcount_Cntr_cy_3_Q_1920 : STD_LOGIC; 
  signal Result_3_0 : STD_LOGIC; 
  signal Result_4_0 : STD_LOGIC; 
  signal Result_5_0 : STD_LOGIC; 
  signal Mcount_Cntr_cy_7_Q_1928 : STD_LOGIC; 
  signal Cntr_26_BTN_4_OR_92_o : STD_LOGIC; 
  signal Mcount_Cntr_cy_11_Q_1932 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_1_0 : STD_LOGIC; 
  signal Mcount_Cntr_cy_15_Q_1935 : STD_LOGIC; 
  signal LED_12_OBUF_1938 : STD_LOGIC; 
  signal LED_11_OBUF_1939 : STD_LOGIC; 
  signal LED_14_OBUF_1940 : STD_LOGIC; 
  signal LED_13_OBUF_1941 : STD_LOGIC; 
  signal LED_10_OBUF_1942 : STD_LOGIC; 
  signal BTN_4_IBUF_1943 : STD_LOGIC; 
  signal Mcount_Val_val : STD_LOGIC; 
  signal SSEG_CA_5_OBUF_1945 : STD_LOGIC; 
  signal SSEG_CA_1_OBUF_1946 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_Q_1947 : STD_LOGIC; 
  signal SSEG_CA_3_OBUF_1948 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal Mmux_SSEG_CA421_1950 : STD_LOGIC; 
  signal Mmux_SSEG_CA424_1951 : STD_LOGIC; 
  signal Mmux_SSEG_CA423_1952 : STD_LOGIC; 
  signal Mmux_SSEG_CA125_1953 : STD_LOGIC; 
  signal CONV4_Mram_Y22 : STD_LOGIC; 
  signal Mmux_SSEG_CA126_1955 : STD_LOGIC; 
  signal Mmux_SSEG_CA127_1956 : STD_LOGIC; 
  signal LED_7_OBUF_1957 : STD_LOGIC; 
  signal Mmux_SSEG_CA129_1958 : STD_LOGIC; 
  signal LED_8_OBUF_1959 : STD_LOGIC; 
  signal LED_9_OBUF_1960 : STD_LOGIC; 
  signal SSEG_AN_1_OBUF_1961 : STD_LOGIC; 
  signal Mmux_SSEG_CA1213_1962 : STD_LOGIC; 
  signal Mmux_SSEG_CA1217_1963 : STD_LOGIC; 
  signal Mmux_SSEG_CA46_1964 : STD_LOGIC; 
  signal Mmux_SSEG_CA23_1965 : STD_LOGIC; 
  signal Mmux_SSEG_CA65_1966 : STD_LOGIC; 
  signal Mmux_SSEG_CA64_1967 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_91_1968 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_1969 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_278_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_275_o : STD_LOGIC; 
  signal Mmux_SSEG_CA45_1972 : STD_LOGIC; 
  signal Mmux_SSEG_CA67_1973 : STD_LOGIC; 
  signal Mmux_SSEG_CA128_1974 : STD_LOGIC; 
  signal Mmux_SSEG_CA10 : STD_LOGIC; 
  signal Mmux_SSEG_CA14 : STD_LOGIC; 
  signal Mmux_SSEG_CA6 : STD_LOGIC; 
  signal Mmux_SSEG_CA83_1978 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_233_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_227_o : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_91 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_1983 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_82 : STD_LOGIC; 
  signal clr_G_1985 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_245_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_239_o : STD_LOGIC; 
  signal Mmux_SSEG_CA104_1988 : STD_LOGIC; 
  signal Mmux_SSEG_CA144_1989 : STD_LOGIC; 
  signal Mmux_SSEG_CA107_1990 : STD_LOGIC; 
  signal Mmux_SSEG_CA147_1991 : STD_LOGIC; 
  signal Mmux_SSEG_CA26_1992 : STD_LOGIC; 
  signal Mmux_SSEG_CA43_1993 : STD_LOGIC; 
  signal Mmux_SSEG_CA102_1994 : STD_LOGIC; 
  signal Mmux_SSEG_CA422_1995 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_209_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_203_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_218_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_212_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_269_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_263_o : STD_LOGIC; 
  signal Mmux_SSEG_CA21_2003 : STD_LOGIC; 
  signal Mmux_SSEG_CA47_2004 : STD_LOGIC; 
  signal Mmux_SSEG_CA8122_2005 : STD_LOGIC; 
  signal Mmux_SSEG_CA8 : STD_LOGIC; 
  signal Mmux_SSEG_CA86_2007 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_257_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_248_o : STD_LOGIC; 
  signal Mmux_SSEG_CA426_2010 : STD_LOGIC; 
  signal Mmux_SSEG_CA425_2011 : STD_LOGIC; 
  signal Mmux_SSEG_CA427_2012 : STD_LOGIC; 
  signal Mmux_SSEG_CA8123_2013 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_2_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_91_11 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_4_1 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_16_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_4_18 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_9_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_91_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_4_34 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_10_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_91_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_4_50 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_7_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_4_66 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_11_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_91_91 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_4_82 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_14_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_4_98 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_12_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_91_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_4_114 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_13_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_91_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_4_130 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_20_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82_pack_3 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_4_146 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_30_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_4_163 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_17_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_91_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_4_179 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_21_Q : STD_LOGIC; 
  signal Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_4 : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_3_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_4_209 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_26_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_4_225 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_31_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_91_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_4_235 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_27_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_4_251 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_5_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_4_260 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_19_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_91_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_4_276 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_4_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_4_292 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_28_Q : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_8_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_4_301 : STD_LOGIC; 
  signal Cntr_1_rt_323 : STD_LOGIC; 
  signal Cntr_2_rt_320 : STD_LOGIC; 
  signal Cntr_3_rt_311 : STD_LOGIC; 
  signal Cntr_4_rt_352 : STD_LOGIC; 
  signal Cntr_5_rt_349 : STD_LOGIC; 
  signal Cntr_6_rt_346 : STD_LOGIC; 
  signal Cntr_7_rt_335 : STD_LOGIC; 
  signal Cntr_8_rt_380 : STD_LOGIC; 
  signal Cntr_9_rt_376 : STD_LOGIC; 
  signal Cntr_10_rt_372 : STD_LOGIC; 
  signal Cntr_11_rt_361 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_4_388 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_1_Q : STD_LOGIC; 
  signal Cntr_12_rt_418 : STD_LOGIC; 
  signal Cntr_13_rt_414 : STD_LOGIC; 
  signal Cntr_14_rt_410 : STD_LOGIC; 
  signal Cntr_15_rt_399 : STD_LOGIC; 
  signal ProtoComp95_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal SW_9_ProtoComp95_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_rt_537 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_3_Q : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_pack_5 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_4_540 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_3_Q : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_18_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_4_562 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_272_o : STD_LOGIC; 
  signal Mmux_SSEG_CA123_608 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_275_o_pack_4 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_251_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_278_o_pack_3 : STD_LOGIC; 
  signal Mmux_SSEG_CA10_pack_6 : STD_LOGIC; 
  signal Mmux_SSEG_CA12 : STD_LOGIC; 
  signal Mmux_SSEG_CA6_pack_1 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_29_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_4_746 : STD_LOGIC; 
  signal Mmux_SSEG_CA8125_736 : STD_LOGIC; 
  signal Mmux_SSEG_CA44_765 : STD_LOGIC; 
  signal Mmux_SSEG_CA17_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_4_750 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_25_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_4_788 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_24_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_776 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_224_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_227_o_pack_4 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_233_o_pack_3 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_230_o : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_4_824 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_22_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_4_866 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_pack_2 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_6_Q : STD_LOGIC; 
  signal Val_3_rstpot_844 : STD_LOGIC; 
  signal Cntr_4_rstpot_887 : STD_LOGIC; 
  signal Cntr_5_rstpot_883 : STD_LOGIC; 
  signal clr_D_914 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_4_910 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_15_Q : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_91_pack_1 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_239_o_pack_6 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_236_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_245_o_pack_3 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_242_o : STD_LOGIC; 
  signal Mmux_SSEG_CA104_pack_6 : STD_LOGIC; 
  signal Mmux_SSEG_CA24_987 : STD_LOGIC; 
  signal Mmux_SSEG_CA110_pack_6 : STD_LOGIC; 
  signal Mmux_SSEG_CA107_pack_2 : STD_LOGIC; 
  signal Mmux_SSEG_CA1214_1080 : STD_LOGIC; 
  signal Mmux_SSEG_CA87_1120 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_209_o_pack_3 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_206_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_203_o_pack_6 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_200_o : STD_LOGIC; 
  signal Mmux_SSEG_CA63_1149 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_218_o_pack_3 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_215_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_212_o_pack_4 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_197_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_266_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_269_o_pack_3 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_260_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_263_o_pack_4 : STD_LOGIC; 
  signal Val_0_rstpot_1197 : STD_LOGIC; 
  signal Val_1_rstpot_1193 : STD_LOGIC; 
  signal Val_2_rstpot_1183 : STD_LOGIC; 
  signal Cntr_3_rstpot_1235 : STD_LOGIC; 
  signal Cntr_1_rstpot_1229 : STD_LOGIC; 
  signal Cntr_0_rstpot_1222 : STD_LOGIC; 
  signal Cntr_2_rstpot_1213 : STD_LOGIC; 
  signal Cntr_17_rt_1258 : STD_LOGIC; 
  signal Cntr_16_rt_1255 : STD_LOGIC; 
  signal ControlUnitPort_Madd_PCIncby1_lut_0_1 : STD_LOGIC; 
  signal ControlUnitPort_NextPCSignal_1_rt_1273 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_4_1287 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_0_Q : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_290_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_287_o : STD_LOGIC; 
  signal SSEG_AN_5_OBUF_1310 : STD_LOGIC; 
  signal Mmux_SSEG_CA124_1331 : STD_LOGIC; 
  signal Mmux_SSEG_CA61_1317 : STD_LOGIC; 
  signal Mmux_SSEG_CA22_1366 : STD_LOGIC; 
  signal Mmux_SSEG_CA19_pack_1 : STD_LOGIC; 
  signal Mmux_SSEG_CA47_pack_3 : STD_LOGIC; 
  signal Mmux_SSEG_CA8_pack_7 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_4_1415 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_2_Q : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_221_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_248_o_pack_4 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_254_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_257_o_pack_3 : STD_LOGIC; 
  signal ControlUnitPort_n0257_inv_1447 : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_284_o : STD_LOGIC; 
  signal hexval_31_SW_4_MUX_281_o : STD_LOGIC; 
  signal SW_4_reg_file_31_31_wide_mux_5_OUT_1_Q : STD_LOGIC; 
  signal Mmux_SSEG_CA122_1484 : STD_LOGIC; 
  signal SSEG_AN_3_OBUF_1493 : STD_LOGIC; 
  signal Mmux_SSEG_CA88_1527 : STD_LOGIC; 
  signal Mmux_SSEG_CA62_1526 : STD_LOGIC; 
  signal Mmux_SSEG_CA41_1503 : STD_LOGIC; 
  signal Mmux_SSEG_CA8123_pack_1 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_91 : STD_LOGIC; 
  signal Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_4_1570 : STD_LOGIC; 
  signal SW_6_datamemory_127_31_wide_mux_3_OUT_23_Q : STD_LOGIC; 
  signal ALUPort_Mmux_B_input11 : STD_LOGIC; 
  signal ALUPort_A_input_31_B_input_31_add_5_OUT_2_pack_4 : STD_LOGIC; 
  signal IDecodePort_Reg_array_1_2_rstpot_1586 : STD_LOGIC; 
  signal IDecodePort_write_register_address_1_pack_2 : STD_LOGIC; 
  signal IDecodePort_Reg_array_2_3_dpot_1599 : STD_LOGIC; 
  signal IDecodePort_Reg_array_3_3_dpot_1626 : STD_LOGIC; 
  signal IFetchPort_Mram_Instruction27_pack_2 : STD_LOGIC; 
  signal SSEG_AN_7_OBUF_1635 : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_BTN_2_BTN_1_OR_3_o_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_12_CLK : STD_LOGIC; 
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
  signal NlwBufferSignal_hexval_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_21_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_19_IN : STD_LOGIC; 
  signal NlwBufferSignal_Val_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clr_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_17_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_29_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_27_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_26_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_24_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Val_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Val_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Val_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Cntr_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ControlUnitPort_NextPCSignal_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_hexval_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hexval_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_IDecodePort_Reg_array_3_3_CLK : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_36_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_43_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_42_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_45_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_41_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_39_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_40_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_37_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_32_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_22_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_35_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_31_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_53_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_26_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_21_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_23_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_48_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_33_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_46_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_25_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_44_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_7_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp68_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_6_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_5_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CONV1_Mram_Y7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_11_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_10_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_9_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_8_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_15_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_14_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_13_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_12_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_51_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_19_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_18_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_17_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_16_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp107_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_49_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_34_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_24_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_27_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_29_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_28_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_47_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_38_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_17_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_17_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_17_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_17_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_17_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_17_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_17_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_17_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_17_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_17_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mcount_Cntr_xor_17_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_20_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp144_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_1_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_1_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_1_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_1_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_1_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_1_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_1_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_1_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_1_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_1_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ControlUnitPort_Madd_PCIncby1_xor_1_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_CONV1_Mram_Y7_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_52_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_50_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_54_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Mmux_ALU_output23_30_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp162_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_S_3_UNCONNECTED : STD_LOGIC; 
  signal Cntr : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal Val : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ControlUnitPort_NextPCSignal : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal IDecodePort_write_register_address : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal IDecodePort_Reg_array_2 : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal IDecodePort_Reg_array_3 : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal IDecodePort_Reg_array_1 : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal ControlUnitPort_Madd_PCIncby1_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_Cntr_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal ControlUnitPort_PCIncby1 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_10_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_16_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_16_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_10_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_10_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_91_11,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_91_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y89"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_4_1,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_16_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y89",
      INIT => X"FF4400F0004400F0"
    )
    port map (
      ADR3 => LED_5_OBUF_1721,
      ADR4 => LED_4_OBUF_1722,
      ADR0 => LED_3_OBUF_1715,
      ADR1 => LED_1_OBUF_1714,
      ADR2 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_82,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_10,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_4_1
    );
  ALUPort_Mmux_ALU_output23_36_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y89",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_36_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_101 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y89",
      INIT => X"008C008C008C008C"
    )
    port map (
      ADR4 => '1',
      ADR1 => LED_1_OBUF_1714,
      ADR3 => LED_3_OBUF_1715,
      ADR2 => LED_2_OBUF_1716,
      ADR0 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_10
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_91 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y89",
      INIT => X"02AD02AD"
    )
    port map (
      ADR4 => '1',
      ADR1 => LED_1_OBUF_1714,
      ADR3 => LED_3_OBUF_1715,
      ADR2 => LED_2_OBUF_1716,
      ADR0 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_91_11
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_91_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_9_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_9_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_91_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_1763
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y100"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_4_18,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_9_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"D5D5D0D085858080"
    )
    port map (
      ADR3 => '1',
      ADR0 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR1 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_91_1762,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_1763,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_4_18
    );
  ALUPort_Mmux_ALU_output23_43_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_43_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_91 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"00050FF000050FF0"
    )
    port map (
      ADR1 => '1',
      ADR4 => LED_3_OBUF_1715,
      ADR2 => LED_2_OBUF_1716,
      ADR3 => LED_0_OBUF_1717,
      ADR0 => LED_1_OBUF_1714,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_91_1762
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"F05F5FA0"
    )
    port map (
      ADR1 => '1',
      ADR4 => LED_3_OBUF_1715,
      ADR2 => LED_2_OBUF_1716,
      ADR3 => LED_0_OBUF_1717,
      ADR0 => LED_1_OBUF_1714,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_9_82_pack_1
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_10_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_10_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_91_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_91_1773
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y88"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_4_34,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_10_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y88",
      INIT => X"B3B38383B0B08080"
    )
    port map (
      ADR3 => '1',
      ADR1 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR0 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_91_1773,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_1772,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_4_34
    );
  ALUPort_Mmux_ALU_output23_42_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X2Y88",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_42_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y88",
      INIT => X"389C389C389C389C"
    )
    port map (
      ADR4 => '1',
      ADR1 => LED_1_OBUF_1714,
      ADR2 => LED_3_OBUF_1715,
      ADR0 => LED_0_OBUF_1717,
      ADR3 => LED_2_OBUF_1716,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_82_1772
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_91 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y88",
      INIT => X"06230623"
    )
    port map (
      ADR4 => '1',
      ADR1 => LED_1_OBUF_1714,
      ADR2 => LED_3_OBUF_1715,
      ADR0 => LED_0_OBUF_1717,
      ADR3 => LED_2_OBUF_1716,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_91_pack_1
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_7_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_7_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_91_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_91
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y92"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_4_50,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_7_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y92",
      INIT => X"A0FFA00FA0F0A000"
    )
    port map (
      ADR1 => '1',
      ADR3 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR0 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_10,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_91,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_4_50
    );
  ALUPort_Mmux_ALU_output23_45_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y92",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_45_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_821 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y92",
      INIT => X"5878587858785878"
    )
    port map (
      ADR4 => '1',
      ADR2 => LED_1_OBUF_1714,
      ADR3 => LED_2_OBUF_1716,
      ADR1 => LED_3_OBUF_1715,
      ADR0 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_82
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_911 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y92",
      INIT => X"03070307"
    )
    port map (
      ADR4 => '1',
      ADR2 => LED_1_OBUF_1714,
      ADR3 => LED_2_OBUF_1716,
      ADR1 => LED_3_OBUF_1715,
      ADR0 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_7_91_pack_1
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_91_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_11_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_11_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_91_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_1781
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y87"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_4_66,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_11_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y87",
      INIT => X"B3B3B0B083838080"
    )
    port map (
      ADR3 => '1',
      ADR1 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR0 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_91_1780,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_1781,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_4_66
    );
  ALUPort_Mmux_ALU_output23_41_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X2Y87",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_41_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_91 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y87",
      INIT => X"0219021902190219"
    )
    port map (
      ADR4 => '1',
      ADR2 => LED_3_OBUF_1715,
      ADR0 => LED_0_OBUF_1717,
      ADR3 => LED_2_OBUF_1716,
      ADR1 => LED_1_OBUF_1714,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_91_1780
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y87",
      INIT => X"65BA65BA"
    )
    port map (
      ADR4 => '1',
      ADR2 => LED_3_OBUF_1715,
      ADR0 => LED_0_OBUF_1717,
      ADR3 => LED_2_OBUF_1716,
      ADR1 => LED_1_OBUF_1714,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_11_82_pack_1
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_14_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_14_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_91_91,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_91_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y84"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_4_82,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_14_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_4 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y84",
      INIT => X"F0F05F5000005F50"
    )
    port map (
      ADR1 => '1',
      ADR4 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR0 => LED_3_OBUF_1715,
      ADR3 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82_0,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_4_82
    );
  ALUPort_Mmux_ALU_output23_39_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X3Y84",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_39_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_101 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y84",
      INIT => X"000300CC000300CC"
    )
    port map (
      ADR0 => '1',
      ADR3 => LED_2_OBUF_1716,
      ADR4 => LED_3_OBUF_1715,
      ADR1 => LED_1_OBUF_1714,
      ADR2 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_91 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y84",
      INIT => X"003003FC"
    )
    port map (
      ADR0 => '1',
      ADR3 => LED_2_OBUF_1716,
      ADR4 => LED_3_OBUF_1715,
      ADR1 => LED_1_OBUF_1714,
      ADR2 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_91_91
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_91_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_12_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_12_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_91_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_1827
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y93"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_4_98,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_12_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y93",
      INIT => X"D5D5D0D085858080"
    )
    port map (
      ADR3 => '1',
      ADR0 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR1 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_91_1826,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_1827,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_4_98
    );
  ALUPort_Mmux_ALU_output23_40_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X2Y93",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_40_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_91 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y93",
      INIT => X"1144006611440066"
    )
    port map (
      ADR2 => '1',
      ADR1 => LED_3_OBUF_1715,
      ADR0 => LED_2_OBUF_1716,
      ADR3 => LED_1_OBUF_1714,
      ADR4 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_91_1826
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y93",
      INIT => X"99EECC77"
    )
    port map (
      ADR2 => '1',
      ADR1 => LED_3_OBUF_1715,
      ADR0 => LED_2_OBUF_1716,
      ADR3 => LED_1_OBUF_1714,
      ADR4 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_12_82_pack_1
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_13_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_13_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_91_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_91
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y74"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_4_114,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_13_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y74",
      INIT => X"88FF885588AA8800"
    )
    port map (
      ADR2 => '1',
      ADR3 => LED_5_OBUF_1721,
      ADR0 => LED_4_OBUF_1722,
      ADR1 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_91,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_1833,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_4_114
    );
  ALUPort_Mmux_ALU_output23_37_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X0Y74",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_37_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y74",
      INIT => X"CC88EECCCC88EECC"
    )
    port map (
      ADR2 => '1',
      ADR1 => LED_2_OBUF_1716,
      ADR3 => LED_1_OBUF_1714,
      ADR4 => LED_3_OBUF_1715,
      ADR0 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_82_1833
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_911 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y74",
      INIT => X"00331133"
    )
    port map (
      ADR2 => '1',
      ADR1 => LED_2_OBUF_1716,
      ADR3 => LED_1_OBUF_1714,
      ADR4 => LED_3_OBUF_1715,
      ADR0 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_91_pack_1
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_20_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_20_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_91_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_91_1836
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y88"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_4_130,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_20_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y88",
      INIT => X"8F8F83838C8C8080"
    )
    port map (
      ADR3 => '1',
      ADR2 => LED_5_OBUF_1721,
      ADR1 => LED_4_OBUF_1722,
      ADR0 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_91_1836,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_4_130
    );
  ALUPort_Mmux_ALU_output23_32_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X0Y88",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_32_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_821 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y88",
      INIT => X"3333336633333366"
    )
    port map (
      ADR2 => '1',
      ADR1 => LED_1_OBUF_1714,
      ADR3 => LED_3_OBUF_1715,
      ADR4 => LED_2_OBUF_1716,
      ADR0 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_82
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_91 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y88",
      INIT => X"009911BB"
    )
    port map (
      ADR2 => '1',
      ADR1 => LED_1_OBUF_1714,
      ADR3 => LED_3_OBUF_1715,
      ADR4 => LED_2_OBUF_1716,
      ADR0 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_20_91_pack_1
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_30_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_30_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82_pack_3,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y86"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_4_146,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_30_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y86",
      INIT => X"F04FF040004F0040"
    )
    port map (
      ADR3 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR0 => LED_3_OBUF_1715,
      ADR1 => LED_1_OBUF_1714,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_4_146
    );
  ALUPort_Mmux_ALU_output23_22_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X2Y86",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_22_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_10 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y86",
      INIT => X"081C081C081C081C"
    )
    port map (
      ADR4 => '1',
      ADR2 => LED_3_OBUF_1715,
      ADR1 => LED_1_OBUF_1714,
      ADR0 => LED_0_OBUF_1717,
      ADR3 => LED_2_OBUF_1716,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_821 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y86",
      INIT => X"E666E666"
    )
    port map (
      ADR4 => '1',
      ADR2 => LED_3_OBUF_1715,
      ADR1 => LED_1_OBUF_1714,
      ADR0 => LED_0_OBUF_1717,
      ADR3 => LED_2_OBUF_1716,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_30_82_pack_3
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_91_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_17_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_17_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_91_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y84"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_4_163,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_17_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y84",
      INIT => X"A0A0A0A0CFCFC0C0"
    )
    port map (
      ADR3 => '1',
      ADR5 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR0 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10,
      ADR1 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_91,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_4_163
    );
  ALUPort_Mmux_ALU_output23_35_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X2Y84",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_35_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_911 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y84",
      INIT => X"0919091909190919"
    )
    port map (
      ADR4 => '1',
      ADR2 => LED_3_OBUF_1715,
      ADR0 => LED_1_OBUF_1714,
      ADR1 => LED_0_OBUF_1717,
      ADR3 => LED_2_OBUF_1716,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_91
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_821 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y84",
      INIT => X"57885788"
    )
    port map (
      ADR4 => '1',
      ADR2 => LED_3_OBUF_1715,
      ADR0 => LED_1_OBUF_1714,
      ADR1 => LED_0_OBUF_1717,
      ADR3 => LED_2_OBUF_1716,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_82_pack_1
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_21_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_21_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_91_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_91
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y93"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_4_179,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_21_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y93",
      INIT => X"B3B38383B0B08080"
    )
    port map (
      ADR3 => '1',
      ADR1 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR0 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_91,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_4_179
    );
  ALUPort_Mmux_ALU_output23_31_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y93",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_31_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_821 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y93",
      INIT => X"AAABAAABAAABAAAB"
    )
    port map (
      ADR4 => '1',
      ADR0 => LED_2_OBUF_1716,
      ADR2 => LED_1_OBUF_1714,
      ADR1 => LED_0_OBUF_1717,
      ADR3 => LED_3_OBUF_1715,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_82
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_911 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y93",
      INIT => X"006A006A"
    )
    port map (
      ADR4 => '1',
      ADR0 => LED_2_OBUF_1716,
      ADR2 => LED_1_OBUF_1714,
      ADR1 => LED_0_OBUF_1717,
      ADR3 => LED_3_OBUF_1715,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_21_91_pack_1
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
      O => BTN_2_BTN_1_OR_3_o_BUFG_1705
    );
  SW_4_reg_file_31_31_wide_mux_5_OUT_3_SW_4_reg_file_31_31_wide_mux_5_OUT_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_3_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_3_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y75"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_3_Q,
      SEL => LED_4_OBUF_1722
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_41 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y75",
      INIT => X"0000000040404400"
    )
    port map (
      ADR0 => LED_3_OBUF_1715,
      ADR5 => LED_2_OBUF_1716,
      ADR1 => LED_1_OBUF_1714,
      ADR4 => LED_0_OBUF_1717,
      ADR3 => IDecodePort_Reg_array_2(3),
      ADR2 => IDecodePort_Reg_array_3(3),
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_3_4
    );
  ALUPort_Mmux_ALU_output23_53_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X3Y75",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_53_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_91_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_26_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_26_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_91_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_1879
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y90"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_4_209,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_26_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y90",
      INIT => X"D5D5D0D085858080"
    )
    port map (
      ADR3 => '1',
      ADR0 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR1 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_10,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_91_1878,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_1879,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_4_209
    );
  ALUPort_Mmux_ALU_output23_26_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X0Y90",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_26_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_91 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y90",
      INIT => X"0101B4B40101B4B4"
    )
    port map (
      ADR3 => '1',
      ADR4 => LED_3_OBUF_1715,
      ADR1 => LED_2_OBUF_1716,
      ADR2 => LED_1_OBUF_1714,
      ADR0 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_91_1878
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y90",
      INIT => X"F2F25B5B"
    )
    port map (
      ADR3 => '1',
      ADR4 => LED_3_OBUF_1715,
      ADR1 => LED_2_OBUF_1716,
      ADR2 => LED_1_OBUF_1714,
      ADR0 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_26_82_pack_1
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
      LOC => "SLICE_X1Y86"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_4_225,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_31_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y86",
      INIT => X"000E01054A064505"
    )
    port map (
      ADR2 => LED_5_OBUF_1721,
      ADR0 => LED_2_OBUF_1716,
      ADR4 => LED_0_OBUF_1717,
      ADR3 => LED_4_OBUF_1722,
      ADR1 => LED_1_OBUF_1714,
      ADR5 => LED_3_OBUF_1715,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_4_225
    );
  ALUPort_Mmux_ALU_output23_21_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y86",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_21_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_27_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_27_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_91_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_91
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y85"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_4_235,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_27_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y85",
      INIT => X"F555A505F050A000"
    )
    port map (
      ADR1 => '1',
      ADR0 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR3 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_91,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_1889,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_4_235
    );
  ALUPort_Mmux_ALU_output23_23_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X0Y85",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_23_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y85",
      INIT => X"CC11EE00CC11EE00"
    )
    port map (
      ADR2 => '1',
      ADR3 => LED_2_OBUF_1716,
      ADR1 => LED_1_OBUF_1714,
      ADR4 => LED_3_OBUF_1715,
      ADR0 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_82_1889
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_911 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y85",
      INIT => X"00338833"
    )
    port map (
      ADR2 => '1',
      ADR3 => LED_2_OBUF_1716,
      ADR1 => LED_1_OBUF_1714,
      ADR4 => LED_3_OBUF_1715,
      ADR0 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_27_91_pack_1
    );
  SW_6_datamemory_127_31_wide_mux_3_OUT_5_SW_6_datamemory_127_31_wide_mux_3_OUT_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_5_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_5_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y74"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_4_251,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_5_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y74",
      INIT => X"88F588A088F588A0"
    )
    port map (
      ADR5 => '1',
      ADR3 => LED_5_OBUF_1721,
      ADR0 => LED_4_OBUF_1722,
      ADR1 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_10,
      ADR2 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_13_91,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_1861,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_5_4_251
    );
  ALUPort_Mmux_ALU_output23_48_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y74",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_48_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_91_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_19_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_19_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_91_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y88"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_4_260,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_19_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y88",
      INIT => X"AF0FAF00A00FA000"
    )
    port map (
      ADR1 => '1',
      ADR2 => LED_5_OBUF_1721,
      ADR3 => LED_4_OBUF_1722,
      ADR0 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_91_1893,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_4_260
    );
  ALUPort_Mmux_ALU_output23_33_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y88",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_33_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_91 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y88",
      INIT => X"2222229922222299"
    )
    port map (
      ADR2 => '1',
      ADR1 => LED_3_OBUF_1715,
      ADR4 => LED_2_OBUF_1716,
      ADR3 => LED_1_OBUF_1714,
      ADR0 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_91_1893
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_821 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y88",
      INIT => X"55554466"
    )
    port map (
      ADR2 => '1',
      ADR1 => LED_3_OBUF_1715,
      ADR4 => LED_2_OBUF_1716,
      ADR3 => LED_1_OBUF_1714,
      ADR0 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_19_82_pack_1
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_4_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_4_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_91_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_91
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y76"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_4_276,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_4_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y76",
      INIT => X"88FF885588AA8800"
    )
    port map (
      ADR2 => '1',
      ADR3 => LED_5_OBUF_1721,
      ADR0 => LED_4_OBUF_1722,
      ADR1 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_91,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_4_276
    );
  ALUPort_Mmux_ALU_output23_46_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X0Y76",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_46_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_821 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y76",
      INIT => X"8C8CC6C68C8CC6C6"
    )
    port map (
      ADR3 => '1',
      ADR1 => LED_1_OBUF_1714,
      ADR4 => LED_3_OBUF_1715,
      ADR2 => LED_2_OBUF_1716,
      ADR0 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_82
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_911 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y76",
      INIT => X"03033939"
    )
    port map (
      ADR3 => '1',
      ADR1 => LED_1_OBUF_1714,
      ADR4 => LED_3_OBUF_1715,
      ADR2 => LED_2_OBUF_1716,
      ADR0 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_4_91_pack_1
    );
  SW_6_datamemory_127_31_wide_mux_3_OUT_28_SW_6_datamemory_127_31_wide_mux_3_OUT_28_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_28_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_28_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y78"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_4_292,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_28_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_4 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y78",
      INIT => X"EE222222CF030303"
    )
    port map (
      ADR1 => LED_5_OBUF_1721,
      ADR5 => LED_2_OBUF_1716,
      ADR0 => N12,
      ADR2 => LED_3_OBUF_1715,
      ADR4 => LED_4_OBUF_1722,
      ADR3 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_4_292
    );
  ALUPort_Mmux_ALU_output23_25_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X3Y78",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_25_C6LUT_O_UNCONNECTED
    );
  SW_6_datamemory_127_31_wide_mux_3_OUT_8_SW_6_datamemory_127_31_wide_mux_3_OUT_8_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_8_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_8_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y86"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_4_301,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_8_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y86",
      INIT => X"CC003030CC00B8B8"
    )
    port map (
      ADR4 => LED_5_OBUF_1721,
      ADR1 => LED_4_OBUF_1722,
      ADR5 => LED_3_OBUF_1715,
      ADR0 => LED_2_OBUF_1716,
      ADR2 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_0,
      ADR3 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_4_301
    );
  ALUPort_Mmux_ALU_output23_44_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X0Y86",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_44_C6LUT_O_UNCONNECTED
    );
  Mcount_Cntr_cy_3_Mcount_Cntr_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(3),
      O => Result_3_0
    );
  Mcount_Cntr_cy_3_Mcount_Cntr_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(2),
      O => Result_2_0
    );
  Mcount_Cntr_cy_3_Mcount_Cntr_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(1),
      O => Result_1_0
    );
  Mcount_Cntr_cy_3_Mcount_Cntr_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(0),
      O => Result_0_0
    );
  Cntr_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Cntr(3),
      ADR5 => '1',
      O => Cntr_3_rt_311
    );
  ALUPort_Mmux_ALU_output23_7_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_7_D5LUT_O_UNCONNECTED
    );
  ProtoComp68_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X0Y95"
    )
    port map (
      O => NLW_ProtoComp68_CYINITGND_O_UNCONNECTED
    );
  Mcount_Cntr_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y95"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => Mcount_Cntr_cy_3_Q_1920,
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
      S(3) => Cntr_3_rt_311,
      S(2) => Cntr_2_rt_320,
      S(1) => Cntr_1_rt_323,
      S(0) => Mcount_Cntr_lut(0)
    );
  Cntr_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Cntr(2),
      ADR5 => '1',
      O => Cntr_2_rt_320
    );
  ALUPort_Mmux_ALU_output23_6_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_6_C5LUT_O_UNCONNECTED
    );
  Cntr_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Cntr(1),
      ADR5 => '1',
      O => Cntr_1_rt_323
    );
  ALUPort_Mmux_ALU_output23_5_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_5_B5LUT_O_UNCONNECTED
    );
  Mcount_Cntr_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Cntr(0),
      ADR5 => '1',
      O => Mcount_Cntr_lut(0)
    );
  CONV1_Mram_Y7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y95",
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
  Cntr_7_Cntr_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(5),
      O => Result_5_0
    );
  Cntr_7_Cntr_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(4),
      O => Result_4_0
    );
  Cntr_7 : X_SFF
    generic map(
      LOC => "SLICE_X0Y96",
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
      LOC => "SLICE_X0Y96",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(7),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_7_rt_335
    );
  ALUPort_Mmux_ALU_output23_11_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y96",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_11_D5LUT_O_UNCONNECTED
    );
  Cntr_6 : X_SFF
    generic map(
      LOC => "SLICE_X0Y96",
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
      LOC => "SLICE_X0Y96"
    )
    port map (
      CI => Mcount_Cntr_cy_3_Q_1920,
      CYINIT => '0',
      CO(3) => Mcount_Cntr_cy_7_Q_1928,
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
      S(3) => Cntr_7_rt_335,
      S(2) => Cntr_6_rt_346,
      S(1) => Cntr_5_rt_349,
      S(0) => Cntr_4_rt_352
    );
  Cntr_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y96",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(6),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_6_rt_346
    );
  ALUPort_Mmux_ALU_output23_10_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y96",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_10_C5LUT_O_UNCONNECTED
    );
  Cntr_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y96",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Cntr(5),
      ADR5 => '1',
      O => Cntr_5_rt_349
    );
  ALUPort_Mmux_ALU_output23_9_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y96",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_9_B5LUT_O_UNCONNECTED
    );
  Cntr_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y96",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Cntr(4),
      ADR5 => '1',
      O => Cntr_4_rt_352
    );
  ALUPort_Mmux_ALU_output23_8_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y96",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_8_A5LUT_O_UNCONNECTED
    );
  Cntr_11 : X_SFF
    generic map(
      LOC => "SLICE_X0Y97",
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
      LOC => "SLICE_X0Y97",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(11),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_11_rt_361
    );
  ALUPort_Mmux_ALU_output23_15_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y97",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_15_D5LUT_O_UNCONNECTED
    );
  Cntr_10 : X_SFF
    generic map(
      LOC => "SLICE_X0Y97",
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
      LOC => "SLICE_X0Y97"
    )
    port map (
      CI => Mcount_Cntr_cy_7_Q_1928,
      CYINIT => '0',
      CO(3) => Mcount_Cntr_cy_11_Q_1932,
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
      S(3) => Cntr_11_rt_361,
      S(2) => Cntr_10_rt_372,
      S(1) => Cntr_9_rt_376,
      S(0) => Cntr_8_rt_380
    );
  Cntr_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y97",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(10),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_10_rt_372
    );
  ALUPort_Mmux_ALU_output23_14_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y97",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_14_C5LUT_O_UNCONNECTED
    );
  Cntr_9 : X_SFF
    generic map(
      LOC => "SLICE_X0Y97",
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
      LOC => "SLICE_X0Y97",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(9),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_9_rt_376
    );
  ALUPort_Mmux_ALU_output23_13_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y97",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_13_B5LUT_O_UNCONNECTED
    );
  Cntr_8 : X_SFF
    generic map(
      LOC => "SLICE_X0Y97",
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
      LOC => "SLICE_X0Y97",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(8),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_8_rt_380
    );
  ALUPort_Mmux_ALU_output23_12_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y97",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_12_A5LUT_O_UNCONNECTED
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
      LOC => "SLICE_X2Y78"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_4_388,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_1_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y78",
      INIT => X"CCED00EDCC210021"
    )
    port map (
      ADR3 => LED_5_OBUF_1721,
      ADR1 => LED_4_OBUF_1722,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_91,
      ADR0 => LED_1_OBUF_1714,
      ADR2 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_1_4_388
    );
  ALUPort_Mmux_ALU_output23_51_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X2Y78",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_51_C6LUT_O_UNCONNECTED
    );
  Cntr_15 : X_SFF
    generic map(
      LOC => "SLICE_X0Y98",
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
      LOC => "SLICE_X0Y98",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(15),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_15_rt_399
    );
  ALUPort_Mmux_ALU_output23_19_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y98",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_19_D5LUT_O_UNCONNECTED
    );
  Cntr_14 : X_SFF
    generic map(
      LOC => "SLICE_X0Y98",
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
      LOC => "SLICE_X0Y98"
    )
    port map (
      CI => Mcount_Cntr_cy_11_Q_1932,
      CYINIT => '0',
      CO(3) => Mcount_Cntr_cy_15_Q_1935,
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
      S(3) => Cntr_15_rt_399,
      S(2) => Cntr_14_rt_410,
      S(1) => Cntr_13_rt_414,
      S(0) => Cntr_12_rt_418
    );
  Cntr_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y98",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(14),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_14_rt_410
    );
  ALUPort_Mmux_ALU_output23_18_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y98",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_18_C5LUT_O_UNCONNECTED
    );
  Cntr_13 : X_SFF
    generic map(
      LOC => "SLICE_X0Y98",
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
      LOC => "SLICE_X0Y98",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(13),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_13_rt_414
    );
  ALUPort_Mmux_ALU_output23_17_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y98",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_17_B5LUT_O_UNCONNECTED
    );
  Cntr_12 : X_SFF
    generic map(
      LOC => "SLICE_X0Y98",
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
      LOC => "SLICE_X0Y98",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(12),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_12_rt_418
    );
  ALUPort_Mmux_ALU_output23_16_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y98",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_16_A5LUT_O_UNCONNECTED
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
      O => BTN_0_IBUF_1731,
      I => BTN(0)
    );
  BTN_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y81",
      PATHPULSE => 50 ps
    )
    port map (
      O => BTN_1_IBUF_1709,
      I => BTN(1)
    );
  BTN_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y76",
      PATHPULSE => 50 ps
    )
    port map (
      O => BTN_2_IBUF_1710,
      I => BTN(2)
    );
  BTN_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y79",
      PATHPULSE => 50 ps
    )
    port map (
      O => BTN_3_IBUF_1730,
      I => BTN(3)
    );
  BTN_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y91",
      PATHPULSE => 50 ps
    )
    port map (
      O => BTN_4_IBUF_1943,
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
      O => LED_10_OBUF_1942,
      I => SW(10)
    );
  SW_11_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y54",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_11_OBUF_1939,
      I => SW(11)
    );
  SW_12_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y102",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_12_OBUF_1938,
      I => SW(12)
    );
  SW_13_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y60",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_13_OBUF_1941,
      I => SW(13)
    );
  SW_14_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y61",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_14_OBUF_1940,
      I => SW(14)
    );
  SW_15_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y58",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_15_OBUF_1913,
      I => SW(15)
    );
  SW_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y101",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_0_OBUF_1717,
      I => SW(0)
    );
  SW_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y93",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_1_OBUF_1714,
      I => SW(1)
    );
  SW_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y87",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_2_OBUF_1716,
      I => SW(2)
    );
  SW_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y73",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_3_OBUF_1715,
      I => SW(3)
    );
  SW_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y75",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_4_OBUF_1722,
      I => SW(4)
    );
  SW_5_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y85",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_5_OBUF_1721,
      I => SW(5)
    );
  SW_6_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y65",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_6_OBUF_1720,
      I => SW(6)
    );
  SW_7_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y89",
      PATHPULSE => 50 ps
    )
    port map (
      O => LED_7_OBUF_1957,
      I => SW(7)
    );
  ProtoComp95_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X1Y51"
    )
    port map (
      O => ProtoComp95_INTERMDISABLE_GND_0
    );
  SW_8_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y51"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp95_INTERMDISABLE_GND_0,
      O => LED_8_OBUF_1959,
      I => SW(8),
      TPWRGT => '1'
    );
  ProtoComp95_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X1Y50"
    )
    port map (
      O => SW_9_ProtoComp95_INTERMDISABLE_GND_0
    );
  SW_9_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y50"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => SW_9_ProtoComp95_INTERMDISABLE_GND_0,
      O => LED_9_OBUF_1960,
      I => SW(9),
      TPWRGT => '1'
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IOB_X1Y126",
      PATHPULSE => 50 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_1856,
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
  ALUPort_A_input_31_B_input_31_add_5_OUT_3_ALUPort_A_input_31_B_input_31_add_5_OUT_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_3_Q,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_3_0
    );
  ProtoComp107_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X7Y75"
    )
    port map (
      O => NLW_ProtoComp107_CYINITGND_O_UNCONNECTED
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X7Y75"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_CO_3_UNCONNECTED,
      CO(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_CO_0_UNCONNECTED,
      DI(3) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_DI_3_UNCONNECTED,
      DI(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_DI_2_UNCONNECTED,
      DI(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_DI_1_UNCONNECTED,
      DI(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_DI_0_UNCONNECTED,
      O(3) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_O_3_UNCONNECTED,
      O(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_O_2_UNCONNECTED,
      O(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_O_1_UNCONNECTED,
      O(0) => ALUPort_A_input_31_B_input_31_add_5_OUT_3_Q,
      S(3) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_S_3_UNCONNECTED,
      S(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_S_2_UNCONNECTED,
      S(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_3_S_1_UNCONNECTED,
      S(0) => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_rt_537
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X7Y75",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_Q_1947,
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_rt_537
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_91_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_3_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_3_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_91_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_pack_5,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_1969
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_91_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y76"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_4_540,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_3_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y76",
      INIT => X"A0FFA0AAA055A000"
    )
    port map (
      ADR1 => '1',
      ADR3 => LED_5_OBUF_1721,
      ADR0 => LED_4_OBUF_1722,
      ADR2 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_91_1968,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_1969,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_4_540
    );
  ALUPort_Mmux_ALU_output23_49_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y76",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_49_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_91 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y76",
      INIT => X"005A050A005A050A"
    )
    port map (
      ADR1 => '1',
      ADR0 => LED_0_OBUF_1717,
      ADR3 => LED_3_OBUF_1715,
      ADR2 => LED_2_OBUF_1716,
      ADR4 => LED_1_OBUF_1714,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_91_1968
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y76",
      INIT => X"A55AF50A"
    )
    port map (
      ADR1 => '1',
      ADR0 => LED_0_OBUF_1717,
      ADR3 => LED_3_OBUF_1715,
      ADR2 => LED_2_OBUF_1716,
      ADR4 => LED_1_OBUF_1714,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_3_82_pack_5
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_28_4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y76",
      INIT => X"050FF005050FF005"
    )
    port map (
      ADR1 => '1',
      ADR2 => LED_3_OBUF_1715,
      ADR4 => LED_4_OBUF_1722,
      ADR3 => LED_1_OBUF_1714,
      ADR0 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => N12
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_4_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y76",
      INIT => X"0FF05AF0"
    )
    port map (
      ADR1 => '1',
      ADR2 => LED_3_OBUF_1715,
      ADR4 => LED_4_OBUF_1722,
      ADR3 => LED_1_OBUF_1714,
      ADR0 => LED_0_OBUF_1717,
      O => N10
    );
  CONV4_Mram_Y22_CONV4_Mram_Y22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_18_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_18_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y77"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_4_562,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_18_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y77",
      INIT => X"CCCC00000FAA0FAA"
    )
    port map (
      ADR5 => LED_5_OBUF_1721,
      ADR3 => LED_2_OBUF_1716,
      ADR2 => LED_3_OBUF_1715,
      ADR0 => N10_0,
      ADR4 => LED_4_OBUF_1722,
      ADR1 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_18_4_562
    );
  ALUPort_Mmux_ALU_output23_34_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y77",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_34_C6LUT_O_UNCONNECTED
    );
  CONV4_Mram_Y221 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y77",
      INIT => X"0000555500000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => hexval_17_1737,
      ADR4 => hexval_19_1738,
      ADR0 => hexval_18_1736,
      O => CONV4_Mram_Y22
    );
  Mmux_SSEG_CA65 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y77",
      INIT => X"8C880C000C000C00"
    )
    port map (
      ADR1 => Mmux_SSEG_CA110,
      ADR3 => CONV4_Mram_Y22,
      ADR2 => hexval_16_1735,
      ADR0 => hexval_18_1736,
      ADR4 => hexval_19_1738,
      ADR5 => hexval_17_1737,
      O => Mmux_SSEG_CA64_1967
    );
  hexval_13_hexval_13_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_275_o_pack_4,
      O => hexval_31_SW_4_MUX_275_o
    );
  hexval_13_hexval_13_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA123_608,
      O => Mmux_SSEG_CA123_0
    );
  hexval_13_hexval_13_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_278_o_pack_3,
      O => hexval_31_SW_4_MUX_278_o
    );
  hexval_13 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y78",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_13_CLK,
      I => hexval_31_SW_4_MUX_251_o,
      O => hexval_13_1752,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_251_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y78",
      INIT => X"5000500050005000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => SW_6_datamemory_127_31_wide_mux_3_OUT_13_0,
      ADR2 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_251_o
    );
  Mmux_hexval_31_SW_4_MUX_275_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y78",
      INIT => X"50500000"
    )
    port map (
      ADR3 => '1',
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_5_0,
      ADR1 => '1',
      ADR2 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_275_o_pack_4
    );
  hexval_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y78",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_5_CLK,
      I => NlwBufferSignal_hexval_5_IN,
      O => hexval_5_1744,
      RST => GND,
      SET => GND
    );
  Mmux_SSEG_CA1217 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y78",
      INIT => X"0800000008000000"
    )
    port map (
      ADR3 => hexval_14_1750,
      ADR1 => hexval_12_1749,
      ADR2 => hexval_13_1752,
      ADR0 => hexval_15_1751,
      ADR4 => Mmux_SSEG_CA18,
      ADR5 => '1',
      O => Mmux_SSEG_CA1216_1770
    );
  Mmux_SSEG_CA124 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y78",
      INIT => X"40540000"
    )
    port map (
      ADR3 => hexval_14_1750,
      ADR1 => hexval_12_1749,
      ADR2 => hexval_13_1752,
      ADR0 => hexval_15_1751,
      ADR4 => Mmux_SSEG_CA18,
      O => Mmux_SSEG_CA123_608
    );
  hexval_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y78",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_6_CLK,
      I => hexval_31_SW_4_MUX_272_o,
      O => hexval_6_1741,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_272_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y78",
      INIT => X"0000F0000000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => SW_6_datamemory_127_31_wide_mux_3_OUT_6_0,
      ADR2 => BTN_1_IBUF_1709,
      ADR4 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_272_o
    );
  Mmux_hexval_31_SW_4_MUX_278_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y78",
      INIT => X"0000A0A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => SW_6_datamemory_127_31_wide_mux_3_OUT_4_0,
      ADR3 => '1',
      ADR2 => BTN_1_IBUF_1709,
      ADR4 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_278_o_pack_3
    );
  hexval_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y78",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_4_CLK,
      I => NlwBufferSignal_hexval_4_IN,
      O => hexval_4_1743,
      RST => GND,
      SET => GND
    );
  Mmux_SSEG_CA423 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y78",
      INIT => X"0004000000000000"
    )
    port map (
      ADR2 => hexval_16_1735,
      ADR5 => Val(2),
      ADR4 => hexval_19_1738,
      ADR0 => Val(1),
      ADR1 => hexval_18_1736,
      ADR3 => Val(0),
      O => Mmux_SSEG_CA423_1952
    );
  Mmux_SSEG_CA1211 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y79",
      INIT => X"FFFFFFFFFFFFFF30"
    )
    port map (
      ADR0 => '1',
      ADR2 => Mmux_SSEG_CA129_1958,
      ADR1 => Val(3),
      ADR4 => Mmux_SSEG_CA122_0,
      ADR3 => Mmux_SSEG_CA121,
      ADR5 => Mmux_SSEG_CA12_0,
      O => SSEG_CA_5_OBUF_1945
    );
  Mmux_SSEG_CA1219 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y79",
      INIT => X"BBBBBBBABBBBBBBA"
    )
    port map (
      ADR5 => '1',
      ADR1 => Val(3),
      ADR4 => Mmux_SSEG_CA1217_1963,
      ADR2 => Mmux_SSEG_CA1213_1962,
      ADR3 => Mmux_SSEG_CA1215_1745,
      ADR0 => Mmux_SSEG_CA1211_1858,
      O => Mmux_SSEG_CA121
    );
  Mmux_SSEG_CA45 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y79",
      INIT => X"FFFFFFFFA8002080"
    )
    port map (
      ADR0 => Mmux_SSEG_CA15,
      ADR1 => hexval_4_1743,
      ADR3 => hexval_5_1744,
      ADR4 => hexval_7_1742,
      ADR2 => hexval_6_1741,
      ADR5 => Mmux_SSEG_CA44_0,
      O => Mmux_SSEG_CA45_1972
    );
  Mmux_SSEG_CA46 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y79",
      INIT => X"FFC8FF08FF00FF80"
    )
    port map (
      ADR1 => Mmux_SSEG_CA110,
      ADR2 => hexval_16_1735,
      ADR5 => hexval_17_1737,
      ADR4 => hexval_19_1738,
      ADR0 => hexval_18_1736,
      ADR3 => Mmux_SSEG_CA45_1972,
      O => Mmux_SSEG_CA46_1964
    );
  Mmux_SSEG_CA129 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y80",
      INIT => X"AAAA0000EEAE0000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA19,
      ADR5 => hexval_27_1806,
      ADR1 => hexval_24_1706,
      ADR3 => hexval_25_1711,
      ADR2 => hexval_26_1805,
      ADR0 => CONV2_Mram_Y22,
      O => Mmux_SSEG_CA128_1974
    );
  Mmux_SSEG_CA1210 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y80",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR1 => Mmux_SSEG_CA123_0,
      ADR5 => Mmux_SSEG_CA124_0,
      ADR0 => Mmux_SSEG_CA125_1953,
      ADR2 => Mmux_SSEG_CA126_1955,
      ADR3 => Mmux_SSEG_CA127_1956,
      ADR4 => Mmux_SSEG_CA128_1974,
      O => Mmux_SSEG_CA129_1958
    );
  Mmux_SSEG_CA68 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y80",
      INIT => X"BA30000030300000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA19,
      ADR2 => CONV2_Mram_Y22,
      ADR1 => hexval_24_1706,
      ADR0 => hexval_26_1805,
      ADR3 => hexval_27_1806,
      ADR5 => hexval_25_1711,
      O => Mmux_SSEG_CA67_1973
    );
  Mmux_SSEG_CA69 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y80",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR0 => Mmux_SSEG_CA62_0,
      ADR1 => Mmux_SSEG_CA63_0,
      ADR2 => Mmux_SSEG_CA64_1967,
      ADR5 => Mmux_SSEG_CA65_1966,
      ADR4 => Mmux_SSEG_CA66_1747,
      ADR3 => Mmux_SSEG_CA67_1973,
      O => Mmux_SSEG_CA68_1795
    );
  Mmux_SSEG_CA106_Mmux_SSEG_CA106_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA12,
      O => Mmux_SSEG_CA12_0
    );
  Mmux_SSEG_CA106_Mmux_SSEG_CA106_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA10_pack_6,
      O => Mmux_SSEG_CA10
    );
  Mmux_SSEG_CA107 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y81",
      INIT => X"080C0888080C0888"
    )
    port map (
      ADR1 => Mmux_SSEG_CA41_0,
      ADR0 => hexval_28_1798,
      ADR4 => hexval_30_1801,
      ADR3 => hexval_29_1800,
      ADR2 => hexval_31_1799,
      ADR5 => '1',
      O => Mmux_SSEG_CA106_1899
    );
  Mmux_SSEG_CA122 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y81",
      INIT => X"08800C08"
    )
    port map (
      ADR1 => Mmux_SSEG_CA41_0,
      ADR0 => hexval_28_1798,
      ADR4 => hexval_30_1801,
      ADR3 => hexval_29_1800,
      ADR2 => hexval_31_1799,
      O => Mmux_SSEG_CA12
    );
  Mmux_SSEG_CA141 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y81",
      INIT => X"2000430020004300"
    )
    port map (
      ADR3 => Mmux_SSEG_CA19,
      ADR2 => hexval_26_1805,
      ADR1 => hexval_27_1806,
      ADR0 => hexval_24_1706,
      ADR4 => hexval_25_1711,
      ADR5 => '1',
      O => Mmux_SSEG_CA14
    );
  Mmux_SSEG_CA101 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y81",
      INIT => X"22003A00"
    )
    port map (
      ADR3 => Mmux_SSEG_CA19,
      ADR2 => hexval_26_1805,
      ADR1 => hexval_27_1806,
      ADR0 => hexval_24_1706,
      ADR4 => hexval_25_1711,
      O => Mmux_SSEG_CA10_pack_6
    );
  Mmux_SSEG_CA142 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y81",
      INIT => X"FFFFFFFF09410000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA18,
      ADR1 => hexval_14_1750,
      ADR2 => hexval_15_1751,
      ADR3 => hexval_12_1749,
      ADR0 => hexval_13_1752,
      ADR5 => Mmux_SSEG_CA14,
      O => Mmux_SSEG_CA141_1803
    );
  Mmux_SSEG_CA102 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y81",
      INIT => X"FFFF1F00FFFF0400"
    )
    port map (
      ADR3 => Mmux_SSEG_CA18,
      ADR5 => hexval_12_1749,
      ADR1 => hexval_14_1750,
      ADR0 => hexval_13_1752,
      ADR2 => hexval_15_1751,
      ADR4 => Mmux_SSEG_CA10,
      O => Mmux_SSEG_CA101_1802
    );
  Mmux_SSEG_CA2_Mmux_SSEG_CA2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA6_pack_1,
      O => Mmux_SSEG_CA6
    );
  Mmux_SSEG_CA21 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y82",
      INIT => X"2002820020028200"
    )
    port map (
      ADR0 => Mmux_SSEG_CA41_0,
      ADR3 => hexval_28_1798,
      ADR2 => hexval_31_1799,
      ADR1 => hexval_29_1800,
      ADR4 => hexval_30_1801,
      ADR5 => '1',
      O => Mmux_SSEG_CA2
    );
  Mmux_SSEG_CA61 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y82",
      INIT => X"80A00008"
    )
    port map (
      ADR0 => Mmux_SSEG_CA41_0,
      ADR3 => hexval_28_1798,
      ADR2 => hexval_31_1799,
      ADR1 => hexval_29_1800,
      ADR4 => hexval_30_1801,
      O => Mmux_SSEG_CA6_pack_1
    );
  Mmux_SSEG_CA610 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y82",
      INIT => X"FFFFFFFFFFFFFF50"
    )
    port map (
      ADR1 => '1',
      ADR2 => Mmux_SSEG_CA68_1795,
      ADR0 => Val(3),
      ADR3 => Mmux_SSEG_CA61_0,
      ADR4 => Mmux_SSEG_CA42,
      ADR5 => Mmux_SSEG_CA6,
      O => SSEG_CA_2_OBUF_1794
    );
  Mmux_SSEG_CA24 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y82",
      INIT => X"DCCCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => Mmux_SSEG_CA22_0,
      ADR3 => hexval_25_1711,
      ADR2 => hexval_24_1706,
      ADR0 => hexval_26_1805,
      ADR5 => hexval_27_1806,
      ADR4 => Mmux_SSEG_CA19,
      O => Mmux_SSEG_CA23_1965
    );
  Mmux_SSEG_CA83_Mmux_SSEG_CA83_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_29_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_29_0
    );
  Mmux_SSEG_CA83_Mmux_SSEG_CA83_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA8125_736,
      O => Mmux_SSEG_CA8125_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y83"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_4_746,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_29_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y83",
      INIT => X"1201504310033003"
    )
    port map (
      ADR1 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR3 => LED_0_OBUF_1717,
      ADR0 => LED_3_OBUF_1715,
      ADR4 => LED_2_OBUF_1716,
      ADR5 => LED_1_OBUF_1714,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_29_4_746
    );
  ALUPort_Mmux_ALU_output23_24_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y83",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_24_C6LUT_O_UNCONNECTED
    );
  Mmux_SSEG_CA84 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y83",
      INIT => X"8008800080088000"
    )
    port map (
      ADR1 => hexval_25_1711,
      ADR0 => Mmux_SSEG_CA19,
      ADR2 => hexval_24_1706,
      ADR3 => hexval_26_1805,
      ADR4 => hexval_27_1806,
      ADR5 => '1',
      O => Mmux_SSEG_CA83_1978
    );
  Mmux_SSEG_CA8125 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y83",
      INIT => X"00000220"
    )
    port map (
      ADR1 => hexval_25_1711,
      ADR0 => Mmux_SSEG_CA19,
      ADR2 => hexval_24_1706,
      ADR3 => hexval_26_1805,
      ADR4 => hexval_27_1806,
      O => Mmux_SSEG_CA8125_736
    );
  Mmux_SSEG_CA85 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y83",
      INIT => X"FF80FF80FF40FF00"
    )
    port map (
      ADR2 => hexval_21_1724,
      ADR1 => Mmux_SSEG_CA17,
      ADR5 => hexval_20_1760,
      ADR0 => hexval_22_1727,
      ADR4 => hexval_23_1759,
      ADR3 => Mmux_SSEG_CA83_1978,
      O => Mmux_SSEG_CA84_1881
    );
  Mmux_SSEG_CA16_Mmux_SSEG_CA16_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_25_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_25_0
    );
  Mmux_SSEG_CA16_Mmux_SSEG_CA16_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA17_pack_1,
      O => Mmux_SSEG_CA17
    );
  Mmux_SSEG_CA16_Mmux_SSEG_CA16_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA44_765,
      O => Mmux_SSEG_CA44_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y84"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_4_750,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_25_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y84",
      INIT => X"0303101009311A03"
    )
    port map (
      ADR1 => LED_5_OBUF_1721,
      ADR2 => LED_3_OBUF_1715,
      ADR5 => LED_2_OBUF_1716,
      ADR4 => LED_0_OBUF_1717,
      ADR0 => LED_4_OBUF_1722,
      ADR3 => LED_1_OBUF_1714,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_25_4_750
    );
  ALUPort_Mmux_ALU_output23_27_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y84",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_27_C6LUT_O_UNCONNECTED
    );
  Mmux_SSEG_CA161 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y84",
      INIT => X"2200220022002200"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Val(2),
      ADR0 => Val(1),
      ADR1 => Val(0),
      ADR5 => '1',
      O => Mmux_SSEG_CA16
    );
  Mmux_SSEG_CA171 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y84",
      INIT => X"00880088"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Val(2),
      ADR0 => Val(1),
      ADR1 => Val(0),
      O => Mmux_SSEG_CA17_pack_1
    );
  Mmux_SSEG_CA143 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y84",
      INIT => X"2400030024000300"
    )
    port map (
      ADR3 => Mmux_SSEG_CA17,
      ADR4 => hexval_22_1727,
      ADR1 => hexval_23_1759,
      ADR0 => hexval_20_1760,
      ADR2 => hexval_21_1724,
      ADR5 => '1',
      O => Mmux_SSEG_CA142_1874
    );
  Mmux_SSEG_CA44 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y84",
      INIT => X"D2008000"
    )
    port map (
      ADR3 => Mmux_SSEG_CA17,
      ADR4 => hexval_22_1727,
      ADR1 => hexval_23_1759,
      ADR0 => hexval_20_1760,
      ADR2 => hexval_21_1724,
      O => Mmux_SSEG_CA44_765
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_24_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_24_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_776,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y85"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_4_788,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_24_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y85",
      INIT => X"A0A0FF0FA0A0F000"
    )
    port map (
      ADR1 => '1',
      ADR4 => LED_5_OBUF_1721,
      ADR2 => LED_4_OBUF_1722,
      ADR0 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10,
      ADR3 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_91_0,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_1861,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_4_788
    );
  ALUPort_Mmux_ALU_output23_29_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y85",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_29_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y85",
      INIT => X"9191898991918989"
    )
    port map (
      ADR3 => '1',
      ADR1 => LED_2_OBUF_1716,
      ADR0 => LED_1_OBUF_1714,
      ADR2 => LED_0_OBUF_1717,
      ADR4 => LED_3_OBUF_1715,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_82_1861
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y85",
      INIT => X"C9C99999"
    )
    port map (
      ADR3 => '1',
      ADR1 => LED_2_OBUF_1716,
      ADR0 => LED_1_OBUF_1714,
      ADR2 => LED_0_OBUF_1717,
      ADR4 => LED_3_OBUF_1715,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_8_82_776
    );
  Mmux_SSEG_CA128 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y85",
      INIT => X"0D000D0004000400"
    )
    port map (
      ADR4 => '1',
      ADR3 => Mmux_SSEG_CA16,
      ADR2 => hexval_11_1840,
      ADR1 => hexval_8_1843,
      ADR5 => hexval_9_1815,
      ADR0 => hexval_10_1816,
      O => Mmux_SSEG_CA127_1956
    );
  hexval_22_hexval_22_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_227_o_pack_4,
      O => hexval_31_SW_4_MUX_227_o
    );
  hexval_22_hexval_22_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_233_o_pack_3,
      O => hexval_31_SW_4_MUX_233_o
    );
  hexval_22_hexval_22_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82_0
    );
  hexval_22 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y87",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_22_CLK,
      I => hexval_31_SW_4_MUX_224_o,
      O => hexval_22_1727,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_224_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y87",
      INIT => X"0A000A000A000A00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => SW_6_datamemory_127_31_wide_mux_3_OUT_22_0,
      ADR3 => BTN_1_IBUF_1709,
      ADR2 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_224_o
    );
  Mmux_hexval_31_SW_4_MUX_227_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y87",
      INIT => X"0F000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_21_0,
      ADR1 => '1',
      ADR3 => BTN_1_IBUF_1709,
      ADR2 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_227_o_pack_4
    );
  hexval_21 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y87",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_21_CLK,
      I => NlwBufferSignal_hexval_21_IN,
      O => hexval_21_1724,
      RST => GND,
      SET => GND
    );
  hexval_20 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y87",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_20_CLK,
      I => hexval_31_SW_4_MUX_230_o,
      O => hexval_20_1760,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_230_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y87",
      INIT => X"4400440044004400"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_20_0,
      ADR3 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_230_o
    );
  Mmux_hexval_31_SW_4_MUX_233_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y87",
      INIT => X"50005000"
    )
    port map (
      ADR4 => '1',
      ADR2 => SW_6_datamemory_127_31_wide_mux_3_OUT_19_0,
      ADR1 => '1',
      ADR3 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_233_o_pack_3
    );
  hexval_19 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y87",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_19_CLK,
      I => NlwBufferSignal_hexval_19_IN,
      O => hexval_19_1738,
      RST => GND,
      SET => GND
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_821 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y87",
      INIT => X"D9D99999D9D99999"
    )
    port map (
      ADR3 => '1',
      ADR0 => LED_0_OBUF_1717,
      ADR4 => LED_2_OBUF_1716,
      ADR2 => LED_3_OBUF_1715,
      ADR1 => LED_1_OBUF_1714,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_82
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_821 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y87",
      INIT => X"E0E00707"
    )
    port map (
      ADR3 => '1',
      ADR0 => LED_0_OBUF_1717,
      ADR4 => LED_2_OBUF_1716,
      ADR2 => LED_3_OBUF_1715,
      ADR1 => LED_1_OBUF_1714,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_14_82
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_22_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_22_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y90"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_4_824,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_22_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y90",
      INIT => X"E4E45555E4E40000"
    )
    port map (
      ADR3 => '1',
      ADR0 => LED_5_OBUF_1721,
      ADR4 => LED_4_OBUF_1722,
      ADR2 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_10,
      ADR1 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_91_0,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_4_824
    );
  ALUPort_Mmux_ALU_output23_28_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y90",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_28_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_821 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y90",
      INIT => X"0FF0F00F0FF0F00F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => LED_3_OBUF_1715,
      ADR4 => LED_2_OBUF_1716,
      ADR3 => LED_0_OBUF_1717,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_22_82
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_821 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y90",
      INIT => X"0055FFAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => LED_1_OBUF_1714,
      ADR2 => '1',
      ADR4 => LED_2_OBUF_1716,
      ADR3 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82
    );
  Cntr_26_GND_8_o_equal_8_o_26_4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y90",
      INIT => X"0000000044444444"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Val(0),
      ADR5 => Val(2),
      ADR0 => Val(1),
      O => N6
    );
  Val_3_Val_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_6_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_6_0
    );
  Val_3_Val_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_pack_2,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_1983
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y91"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_4_866,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_6_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y91",
      INIT => X"AF0FAF00A00FA000"
    )
    port map (
      ADR1 => '1',
      ADR2 => LED_5_OBUF_1721,
      ADR3 => LED_4_OBUF_1722,
      ADR0 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_16_10,
      ADR5 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_91,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_1983,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_4_866
    );
  ALUPort_Mmux_ALU_output23_47_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X1Y91",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_47_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_911 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y91",
      INIT => X"00550A5500550A55"
    )
    port map (
      ADR1 => '1',
      ADR0 => LED_3_OBUF_1715,
      ADR3 => LED_0_OBUF_1717,
      ADR2 => LED_2_OBUF_1716,
      ADR4 => LED_1_OBUF_1714,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_91
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y91",
      INIT => X"5A05AA55"
    )
    port map (
      ADR1 => '1',
      ADR0 => LED_3_OBUF_1715,
      ADR3 => LED_0_OBUF_1717,
      ADR2 => LED_2_OBUF_1716,
      ADR4 => LED_1_OBUF_1714,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_6_82_pack_2
    );
  Val_3 : X_FF
    generic map(
      LOC => "SLICE_X1Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Val_3_CLK,
      I => Val_3_rstpot_844,
      O => Val(3),
      RST => GND,
      SET => GND
    );
  Val_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y91",
      INIT => X"000078F00000F0F0"
    )
    port map (
      ADR5 => Val(2),
      ADR3 => Val(1),
      ADR1 => Val(0),
      ADR2 => Val(3),
      ADR0 => Cntr_26_GND_8_o_equal_8_o,
      ADR4 => Mcount_Val_val,
      O => Val_3_rstpot_844
    );
  Cntr_26_GND_8_o_equal_8_o_26_2 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y95",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => Cntr(1),
      ADR4 => Cntr(0),
      ADR5 => Cntr(2),
      ADR0 => Cntr(3),
      ADR2 => Cntr(4),
      ADR3 => Cntr(5),
      O => Cntr_26_GND_8_o_equal_8_o_26_1_1697
    );
  Cntr_5 : X_FF
    generic map(
      LOC => "SLICE_X1Y96",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_5_CLK,
      I => Cntr_5_rstpot_883,
      O => Cntr(5),
      RST => GND,
      SET => GND
    );
  Cntr_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y96",
      INIT => X"07000F0007000F00"
    )
    port map (
      ADR5 => '1',
      ADR2 => BTN_4_IBUF_1943,
      ADR3 => Result_5_0,
      ADR1 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_1_1697,
      ADR0 => Cntr_26_GND_8_o_equal_8_o_26_2_1698,
      O => Cntr_5_rstpot_883
    );
  Cntr_4 : X_FF
    generic map(
      LOC => "SLICE_X1Y96",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_4_CLK,
      I => Cntr_4_rstpot_887,
      O => Cntr(4),
      RST => GND,
      SET => GND
    );
  Cntr_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y96",
      INIT => X"07000F0007000F00"
    )
    port map (
      ADR5 => '1',
      ADR2 => BTN_4_IBUF_1943,
      ADR3 => Result_4_0,
      ADR1 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_1_1697,
      ADR0 => Cntr_26_GND_8_o_equal_8_o_26_2_1698,
      O => Cntr_4_rstpot_887
    );
  Cntr_26_GND_8_o_equal_8_o_26_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y97",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => Cntr(8),
      ADR5 => Cntr(6),
      ADR0 => Cntr(11),
      ADR2 => Cntr(10),
      ADR1 => Cntr(17),
      ADR3 => Cntr(16),
      O => Cntr_26_GND_8_o_equal_8_o_26_Q
    );
  Cntr_26_BTN_4_OR_92_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y98",
      INIT => X"FFA0FF00FFA0FF00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => BTN_4_IBUF_1943,
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR2 => Cntr_26_GND_8_o_equal_8_o_26_1_1697,
      ADR0 => Cntr_26_GND_8_o_equal_8_o_26_2_1698,
      O => Cntr_26_BTN_4_OR_92_o
    );
  clr_clr_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_15_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_15_0
    );
  clr_clr_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_91_pack_1,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_91
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y75"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_4_910,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_15_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y75",
      INIT => X"FFCC330022222222"
    )
    port map (
      ADR2 => '1',
      ADR1 => LED_5_OBUF_1721,
      ADR5 => LED_4_OBUF_1722,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_10_10,
      ADR3 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_91,
      ADR0 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_82,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_4_910
    );
  ALUPort_Mmux_ALU_output23_38_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X0Y75",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_38_C6LUT_O_UNCONNECTED
    );
  clr : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y75",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_clr_CLK,
      I => clr_D_914,
      O => clr_1732,
      RST => GND,
      SET => GND
    );
  clr_G : X_LUT6
    generic map(
      LOC => "SLICE_X0Y75",
      INIT => X"FFFFFF00FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => BTN_3_IBUF_1730,
      ADR4 => BTN_0_IBUF_1731,
      ADR5 => '1',
      O => clr_G_1985
    );
  clr_D : X_LUT5
    generic map(
      LOC => "SLICE_X0Y75",
      INIT => X"00FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => BTN_3_IBUF_1730,
      ADR4 => BTN_0_IBUF_1731,
      O => clr_D_914
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_821 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y75",
      INIT => X"6A2A6A2A6A2A6A2A"
    )
    port map (
      ADR4 => '1',
      ADR0 => LED_0_OBUF_1717,
      ADR2 => LED_3_OBUF_1715,
      ADR1 => LED_2_OBUF_1716,
      ADR3 => LED_1_OBUF_1714,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_82
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_15_911 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y75",
      INIT => X"05150515"
    )
    port map (
      ADR4 => '1',
      ADR0 => LED_0_OBUF_1717,
      ADR2 => LED_3_OBUF_1715,
      ADR1 => LED_2_OBUF_1716,
      ADR3 => LED_1_OBUF_1714,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_91_pack_1
    );
  hexval_18_hexval_18_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_239_o_pack_6,
      O => hexval_31_SW_4_MUX_239_o
    );
  hexval_18_hexval_18_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_245_o_pack_3,
      O => hexval_31_SW_4_MUX_245_o
    );
  hexval_18 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y77",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_18_CLK,
      I => hexval_31_SW_4_MUX_236_o,
      O => hexval_18_1736,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_236_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y77",
      INIT => X"4444000044440000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_18_0,
      ADR4 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_236_o
    );
  Mmux_hexval_31_SW_4_MUX_239_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y77",
      INIT => X"50500000"
    )
    port map (
      ADR3 => '1',
      ADR2 => SW_6_datamemory_127_31_wide_mux_3_OUT_17_0,
      ADR1 => '1',
      ADR4 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_239_o_pack_6
    );
  hexval_17 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y77",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_17_CLK,
      I => NlwBufferSignal_hexval_17_IN,
      O => hexval_17_1737,
      RST => GND,
      SET => GND
    );
  Mmux_SSEG_CA66 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y77",
      INIT => X"A0A0000000500000"
    )
    port map (
      ADR1 => '1',
      ADR2 => Mmux_SSEG_CA15,
      ADR3 => hexval_4_1743,
      ADR5 => hexval_6_1741,
      ADR0 => hexval_7_1742,
      ADR4 => hexval_5_1744,
      O => Mmux_SSEG_CA65_1966
    );
  hexval_16 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y77",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_16_CLK,
      I => hexval_31_SW_4_MUX_242_o,
      O => hexval_16_1735,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_242_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y77",
      INIT => X"0A000A000A000A00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => SW_6_datamemory_127_31_wide_mux_3_OUT_16_0,
      ADR3 => BTN_1_IBUF_1709,
      ADR2 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_242_o
    );
  Mmux_hexval_31_SW_4_MUX_245_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y77",
      INIT => X"0F000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_15_0,
      ADR1 => '1',
      ADR3 => BTN_1_IBUF_1709,
      ADR2 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_245_o_pack_3
    );
  hexval_15 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y77",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_15_CLK,
      I => NlwBufferSignal_hexval_15_IN,
      O => hexval_15_1751,
      RST => GND,
      SET => GND
    );
  Mmux_SSEG_CA126 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y77",
      INIT => X"CFCDCCCC00000000"
    )
    port map (
      ADR5 => Mmux_SSEG_CA110,
      ADR2 => hexval_19_1738,
      ADR4 => hexval_16_1735,
      ADR3 => hexval_17_1737,
      ADR0 => hexval_18_1736,
      ADR1 => CONV4_Mram_Y22,
      O => Mmux_SSEG_CA125_1953
    );
  Mmux_SSEG_CA144_Mmux_SSEG_CA144_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA104_pack_6,
      O => Mmux_SSEG_CA104_1988
    );
  Mmux_SSEG_CA145 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y78",
      INIT => X"0840000C0840000C"
    )
    port map (
      ADR1 => Mmux_SSEG_CA15,
      ADR4 => hexval_6_1741,
      ADR2 => hexval_7_1742,
      ADR0 => hexval_4_1743,
      ADR3 => hexval_5_1744,
      ADR5 => '1',
      O => Mmux_SSEG_CA144_1989
    );
  Mmux_SSEG_CA105 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y78",
      INIT => X"080C0888"
    )
    port map (
      ADR1 => Mmux_SSEG_CA15,
      ADR4 => hexval_6_1741,
      ADR2 => hexval_7_1742,
      ADR0 => hexval_4_1743,
      ADR3 => hexval_5_1744,
      O => Mmux_SSEG_CA104_pack_6
    );
  Mmux_SSEG_CA146 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y78",
      INIT => X"FFFF4121FFFF0000"
    )
    port map (
      ADR5 => Mmux_SSEG_CA110,
      ADR2 => hexval_18_1736,
      ADR0 => hexval_19_1738,
      ADR3 => hexval_16_1735,
      ADR1 => hexval_17_1737,
      ADR4 => Mmux_SSEG_CA144_1989,
      O => Mmux_SSEG_CA145_1739
    );
  Mmux_SSEG_CA106 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y78",
      INIT => X"FF44FF04FF4CFF00"
    )
    port map (
      ADR1 => Mmux_SSEG_CA110,
      ADR4 => hexval_16_1735,
      ADR5 => hexval_18_1736,
      ADR2 => hexval_17_1737,
      ADR0 => hexval_19_1738,
      ADR3 => Mmux_SSEG_CA104_1988,
      O => Mmux_SSEG_CA105_1733
    );
  Mmux_SSEG_CA18_Mmux_SSEG_CA18_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA110_pack_6,
      O => Mmux_SSEG_CA110
    );
  Mmux_SSEG_CA18_Mmux_SSEG_CA18_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA24_987,
      O => Mmux_SSEG_CA24_0
    );
  Mmux_SSEG_CA181 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y79",
      INIT => X"0088008800880088"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => Val(2),
      ADR1 => Val(0),
      ADR3 => Val(1),
      ADR5 => '1',
      O => Mmux_SSEG_CA18
    );
  Mmux_SSEG_CA1101 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y79",
      INIT => X"00220022"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => Val(2),
      ADR1 => Val(0),
      ADR3 => Val(1),
      O => Mmux_SSEG_CA110_pack_6
    );
  Mmux_SSEG_CA67 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y79",
      INIT => X"A0A0101000000000"
    )
    port map (
      ADR3 => '1',
      ADR5 => Mmux_SSEG_CA18,
      ADR1 => hexval_12_1749,
      ADR4 => hexval_14_1750,
      ADR0 => hexval_15_1751,
      ADR2 => hexval_13_1752,
      O => Mmux_SSEG_CA66_1747
    );
  Mmux_SSEG_CA1216 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y79",
      INIT => X"F0F0F0F0F8F0F0F0"
    )
    port map (
      ADR2 => Mmux_SSEG_CA1214_0,
      ADR0 => hexval_18_1736,
      ADR1 => hexval_16_1735,
      ADR5 => hexval_17_1737,
      ADR4 => hexval_19_1738,
      ADR3 => Mmux_SSEG_CA110,
      O => Mmux_SSEG_CA1215_1745
    );
  Mmux_SSEG_CA83 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y79",
      INIT => X"9800060098000600"
    )
    port map (
      ADR3 => Mmux_SSEG_CA110,
      ADR4 => hexval_17_1737,
      ADR1 => hexval_16_1735,
      ADR0 => hexval_18_1736,
      ADR2 => hexval_19_1738,
      ADR5 => '1',
      O => Mmux_SSEG_CA82_1824
    );
  Mmux_SSEG_CA25 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y79",
      INIT => X"40000600"
    )
    port map (
      ADR3 => Mmux_SSEG_CA110,
      ADR4 => hexval_17_1737,
      ADR1 => hexval_16_1735,
      ADR0 => hexval_18_1736,
      ADR2 => hexval_19_1738,
      O => Mmux_SSEG_CA24_987
    );
  Mmux_SSEG_CA1213_Mmux_SSEG_CA1213_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA107_pack_2,
      O => Mmux_SSEG_CA107_1990
    );
  Mmux_SSEG_CA1214 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y80",
      INIT => X"FF20FF00FF00FF00"
    )
    port map (
      ADR3 => Mmux_SSEG_CA1212_1854,
      ADR4 => hexval_26_1805,
      ADR5 => hexval_24_1706,
      ADR1 => hexval_25_1711,
      ADR2 => hexval_27_1806,
      ADR0 => Mmux_SSEG_CA19,
      O => Mmux_SSEG_CA1213_1962
    );
  Mmux_SSEG_CA148 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y80",
      INIT => X"0000180500001805"
    )
    port map (
      ADR4 => SSEG_AN_0_OBUF_1788,
      ADR3 => hexval_2_1789,
      ADR2 => hexval_3_1791,
      ADR1 => hexval_0_1790,
      ADR0 => hexval_1_1792,
      ADR5 => '1',
      O => Mmux_SSEG_CA147_1991
    );
  Mmux_SSEG_CA108 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y80",
      INIT => X"00000D4C"
    )
    port map (
      ADR4 => SSEG_AN_0_OBUF_1788,
      ADR3 => hexval_2_1789,
      ADR2 => hexval_3_1791,
      ADR1 => hexval_0_1790,
      ADR0 => hexval_1_1792,
      O => Mmux_SSEG_CA107_pack_2
    );
  Mmux_SSEG_CA149 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y80",
      INIT => X"FFFFFFFFAAAAFFFE"
    )
    port map (
      ADR4 => Val(3),
      ADR3 => Mmux_SSEG_CA145_1739,
      ADR1 => Mmux_SSEG_CA141_1803,
      ADR2 => Mmux_SSEG_CA143_1906,
      ADR0 => Mmux_SSEG_CA146_1876,
      ADR5 => Mmux_SSEG_CA147_1991,
      O => SSEG_CA_6_OBUF_1905
    );
  Mmux_SSEG_CA109 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y80",
      INIT => X"FFFFAFAFFFFFAFAE"
    )
    port map (
      ADR2 => Val(3),
      ADR1 => Mmux_SSEG_CA105_1733,
      ADR3 => Mmux_SSEG_CA101_1802,
      ADR5 => Mmux_SSEG_CA103_1841,
      ADR0 => Mmux_SSEG_CA106_1899,
      ADR4 => Mmux_SSEG_CA107_1990,
      O => SSEG_CA_4_OBUF_1904
    );
  Mmux_SSEG_CA43 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y81",
      INIT => X"FDDEECCCCCCCCCCC"
    )
    port map (
      ADR5 => Mmux_SSEG_CA41_0,
      ADR4 => hexval_30_1801,
      ADR0 => hexval_28_1798,
      ADR2 => hexval_31_1799,
      ADR3 => hexval_29_1800,
      ADR1 => Mmux_SSEG_CA4,
      O => Mmux_SSEG_CA43_1993
    );
  Mmux_SSEG_CA410 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y81",
      INIT => X"FFFFFF33FFFFFF32"
    )
    port map (
      ADR1 => Val(3),
      ADR2 => Mmux_SSEG_CA49_1907,
      ADR0 => Mmux_SSEG_CA46_1964,
      ADR5 => Mmux_SSEG_CA48_1822,
      ADR3 => Mmux_SSEG_CA42,
      ADR4 => Mmux_SSEG_CA43_1993,
      O => SSEG_CA_1_OBUF_1946
    );
  Mmux_SSEG_CA27 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y81",
      INIT => X"FFFF0080FFFF0000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA25_1902,
      ADR0 => hexval_13_1752,
      ADR5 => hexval_12_1749,
      ADR3 => hexval_14_1750,
      ADR2 => hexval_15_1751,
      ADR1 => Mmux_SSEG_CA18,
      O => Mmux_SSEG_CA26_1992
    );
  Mmux_SSEG_CA28 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y81",
      INIT => X"FFFFFFFFFFFFFF08"
    )
    port map (
      ADR4 => Mmux_SSEG_CA24_0,
      ADR5 => Mmux_SSEG_CA23_1965,
      ADR2 => hexval_10_1816,
      ADR1 => Mmux_SSEG_CA16,
      ADR0 => Mmux_SSEG_CA212,
      ADR3 => Mmux_SSEG_CA26_1992,
      O => Mmux_SSEG_CA27_1784
    );
  Mmux_SSEG_CA422_Mmux_SSEG_CA422_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA1214_1080,
      O => Mmux_SSEG_CA1214_0
    );
  Mmux_SSEG_CA422 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y82",
      INIT => X"0000000000004000"
    )
    port map (
      ADR4 => Val(2),
      ADR3 => hexval_27_1806,
      ADR2 => hexval_26_1805,
      ADR5 => Val(0),
      ADR1 => Val(1),
      ADR0 => hexval_24_1706,
      O => Mmux_SSEG_CA422_1995
    );
  Mmux_SSEG_CA424 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y82",
      INIT => X"FFFFFF20FFFFFF00"
    )
    port map (
      ADR1 => hexval_8_1843,
      ADR2 => hexval_10_1816,
      ADR0 => hexval_11_1840,
      ADR5 => Mmux_SSEG_CA16,
      ADR3 => Mmux_SSEG_CA423_1952,
      ADR4 => Mmux_SSEG_CA422_1995,
      O => Mmux_SSEG_CA424_1951
    );
  Mmux_SSEG_CA103 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y82",
      INIT => X"0A2A02000A2A0200"
    )
    port map (
      ADR0 => Mmux_SSEG_CA17,
      ADR4 => hexval_20_1760,
      ADR3 => hexval_22_1727,
      ADR1 => hexval_21_1724,
      ADR2 => hexval_23_1759,
      ADR5 => '1',
      O => Mmux_SSEG_CA102_1994
    );
  Mmux_SSEG_CA1215 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y82",
      INIT => X"20000000"
    )
    port map (
      ADR0 => Mmux_SSEG_CA17,
      ADR4 => hexval_20_1760,
      ADR3 => hexval_22_1727,
      ADR1 => hexval_21_1724,
      ADR2 => hexval_23_1759,
      O => Mmux_SSEG_CA1214_1080
    );
  Mmux_SSEG_CA104 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y82",
      INIT => X"FF0DFF4CFF00FF00"
    )
    port map (
      ADR5 => Mmux_SSEG_CA16,
      ADR1 => hexval_8_1843,
      ADR4 => hexval_10_1816,
      ADR0 => hexval_9_1815,
      ADR2 => hexval_11_1840,
      ADR3 => Mmux_SSEG_CA102_1994,
      O => Mmux_SSEG_CA103_1841
    );
  hexval_30_hexval_30_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_203_o_pack_6,
      O => hexval_31_SW_4_MUX_203_o
    );
  hexval_30_hexval_30_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_209_o_pack_3,
      O => hexval_31_SW_4_MUX_209_o
    );
  hexval_30_hexval_30_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA87_1120,
      O => Mmux_SSEG_CA87_0
    );
  hexval_30 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_30_CLK,
      I => hexval_31_SW_4_MUX_200_o,
      O => hexval_30_1801,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_200_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => X"0A0A00000A0A0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_30_0,
      ADR0 => BTN_1_IBUF_1709,
      ADR2 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_200_o
    );
  Mmux_hexval_31_SW_4_MUX_203_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => X"08080808"
    )
    port map (
      ADR3 => '1',
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_29_0,
      ADR4 => '1',
      ADR0 => BTN_1_IBUF_1709,
      ADR2 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_203_o_pack_6
    );
  hexval_29 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_29_CLK,
      I => NlwBufferSignal_hexval_29_IN,
      O => hexval_29_1800,
      RST => GND,
      SET => GND
    );
  Mmux_SSEG_CA127 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => X"4545040400000000"
    )
    port map (
      ADR3 => '1',
      ADR5 => Mmux_SSEG_CA17,
      ADR0 => hexval_23_1759,
      ADR1 => hexval_20_1760,
      ADR4 => hexval_21_1724,
      ADR2 => hexval_22_1727,
      O => Mmux_SSEG_CA126_1955
    );
  hexval_28 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_28_CLK,
      I => hexval_31_SW_4_MUX_206_o,
      O => hexval_28_1798,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_206_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => X"5050000050500000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_28_0,
      ADR2 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_206_o
    );
  Mmux_hexval_31_SW_4_MUX_209_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => X"40404040"
    )
    port map (
      ADR4 => '1',
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_27_0,
      ADR3 => '1',
      ADR2 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_209_o_pack_3
    );
  hexval_27 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_27_CLK,
      I => NlwBufferSignal_hexval_27_IN,
      O => hexval_27_1806,
      RST => GND,
      SET => GND
    );
  Mmux_SSEG_CA147 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => X"4200050042000500"
    )
    port map (
      ADR3 => Mmux_SSEG_CA41_0,
      ADR4 => hexval_30_1801,
      ADR0 => hexval_31_1799,
      ADR1 => hexval_28_1798,
      ADR2 => hexval_29_1800,
      ADR5 => '1',
      O => Mmux_SSEG_CA146_1876
    );
  Mmux_SSEG_CA88 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y83",
      INIT => X"C1002400"
    )
    port map (
      ADR3 => Mmux_SSEG_CA41_0,
      ADR4 => hexval_30_1801,
      ADR0 => hexval_31_1799,
      ADR1 => hexval_28_1798,
      ADR2 => hexval_29_1800,
      O => Mmux_SSEG_CA87_1120
    );
  hexval_31_hexval_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_212_o_pack_4,
      O => hexval_31_SW_4_MUX_212_o
    );
  hexval_31_hexval_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_218_o_pack_3,
      O => hexval_31_SW_4_MUX_218_o
    );
  hexval_31_hexval_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA63_1149,
      O => Mmux_SSEG_CA63_0
    );
  hexval_31 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_31_CLK,
      I => hexval_31_SW_4_MUX_197_o,
      O => hexval_31_1799,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_197_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => X"0000A0A00000A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => SW_6_datamemory_127_31_wide_mux_3_OUT_31_0,
      ADR2 => BTN_1_IBUF_1709,
      ADR4 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_197_o
    );
  Mmux_hexval_31_SW_4_MUX_212_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => X"0000C0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_26_0,
      ADR3 => '1',
      ADR2 => BTN_1_IBUF_1709,
      ADR4 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_212_o_pack_4
    );
  hexval_26 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_26_CLK,
      I => NlwBufferSignal_hexval_26_IN,
      O => hexval_26_1805,
      RST => GND,
      SET => GND
    );
  hexval_25 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_25_CLK,
      I => hexval_31_SW_4_MUX_215_o,
      O => hexval_25_1711,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_215_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => X"5050000050500000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => SW_6_datamemory_127_31_wide_mux_3_OUT_25_0,
      ADR4 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_215_o
    );
  Mmux_hexval_31_SW_4_MUX_218_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => X"55000000"
    )
    port map (
      ADR1 => '1',
      ADR3 => SW_6_datamemory_127_31_wide_mux_3_OUT_24_0,
      ADR2 => '1',
      ADR4 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_218_o_pack_3
    );
  hexval_24 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_24_CLK,
      I => NlwBufferSignal_hexval_24_IN,
      O => hexval_24_1706,
      RST => GND,
      SET => GND
    );
  Mmux_SSEG_CA26 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => X"0080000000800000"
    )
    port map (
      ADR4 => hexval_21_1724,
      ADR1 => hexval_20_1760,
      ADR3 => hexval_22_1727,
      ADR0 => hexval_23_1759,
      ADR2 => Mmux_SSEG_CA17,
      ADR5 => '1',
      O => Mmux_SSEG_CA25_1902
    );
  Mmux_SSEG_CA64 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => X"A0100000"
    )
    port map (
      ADR4 => hexval_21_1724,
      ADR1 => hexval_20_1760,
      ADR3 => hexval_22_1727,
      ADR0 => hexval_23_1759,
      ADR2 => Mmux_SSEG_CA17,
      O => Mmux_SSEG_CA63_1149
    );
  hexval_10_hexval_10_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_263_o_pack_4,
      O => hexval_31_SW_4_MUX_263_o
    );
  hexval_10_hexval_10_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_269_o_pack_3,
      O => hexval_31_SW_4_MUX_269_o
    );
  hexval_10 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y87",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_10_CLK,
      I => hexval_31_SW_4_MUX_260_o,
      O => hexval_10_1816,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_260_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y87",
      INIT => X"0A0A00000A0A0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_10_0,
      ADR0 => BTN_1_IBUF_1709,
      ADR2 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_260_o
    );
  Mmux_hexval_31_SW_4_MUX_263_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y87",
      INIT => X"0A000A00"
    )
    port map (
      ADR1 => '1',
      ADR3 => SW_6_datamemory_127_31_wide_mux_3_OUT_9_0,
      ADR4 => '1',
      ADR0 => BTN_1_IBUF_1709,
      ADR2 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_263_o_pack_4
    );
  hexval_9 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y87",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_9_CLK,
      I => NlwBufferSignal_hexval_9_IN,
      O => hexval_9_1815,
      RST => GND,
      SET => GND
    );
  hexval_8 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y87",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_8_CLK,
      I => hexval_31_SW_4_MUX_266_o,
      O => hexval_8_1843,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_266_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y87",
      INIT => X"4444000044440000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_8_0,
      ADR1 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_266_o
    );
  Mmux_hexval_31_SW_4_MUX_269_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y87",
      INIT => X"44004400"
    )
    port map (
      ADR4 => '1',
      ADR3 => SW_6_datamemory_127_31_wide_mux_3_OUT_7_0,
      ADR2 => '1',
      ADR1 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_269_o_pack_3
    );
  hexval_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y87",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_7_CLK,
      I => NlwBufferSignal_hexval_7_IN,
      O => hexval_7_1742,
      RST => GND,
      SET => GND
    );
  Mcount_Val_val1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y91",
      INIT => X"ECCCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => BTN_4_IBUF_1943,
      ADR2 => Val(3),
      ADR0 => N6,
      ADR5 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR3 => Cntr_26_GND_8_o_equal_8_o_26_1_1697,
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_2_1698,
      O => Mcount_Val_val
    );
  Val_2 : X_FF
    generic map(
      LOC => "SLICE_X0Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Val_2_CLK,
      I => Val_2_rstpot_1183,
      O => Val(2),
      RST => GND,
      SET => GND
    );
  Val_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y91",
      INIT => X"00006AAA00006AAA"
    )
    port map (
      ADR5 => '1',
      ADR3 => Val(1),
      ADR2 => Val(0),
      ADR0 => Val(2),
      ADR1 => Cntr_26_GND_8_o_equal_8_o,
      ADR4 => Mcount_Val_val,
      O => Val_2_rstpot_1183
    );
  Val_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Val_1_CLK,
      I => Val_1_rstpot_1193,
      O => Val(1),
      RST => GND,
      SET => GND
    );
  Val_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y91",
      INIT => X"1444444444444444"
    )
    port map (
      ADR2 => Val(0),
      ADR3 => Cntr_26_GND_8_o_equal_8_o_26_2_1698,
      ADR5 => Cntr_26_GND_8_o_equal_8_o_26_1_1697,
      ADR1 => Val(1),
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR0 => Mcount_Val_val,
      O => Val_1_rstpot_1193
    );
  Val_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y91",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Val_0_CLK,
      I => Val_0_rstpot_1197,
      O => Val(0),
      RST => GND,
      SET => GND
    );
  Val_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y91",
      INIT => X"1450145050505050"
    )
    port map (
      ADR4 => '1',
      ADR3 => Cntr_26_GND_8_o_equal_8_o_26_2_1698,
      ADR5 => Cntr_26_GND_8_o_equal_8_o_26_1_1697,
      ADR2 => Val(0),
      ADR1 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR0 => Mcount_Val_val,
      O => Val_0_rstpot_1197
    );
  Cntr_3 : X_FF
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_3_CLK,
      I => Cntr_3_rstpot_1235,
      O => Cntr(3),
      RST => GND,
      SET => GND
    );
  Cntr_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => X"040C0C0C040C0C0C"
    )
    port map (
      ADR5 => '1',
      ADR2 => BTN_4_IBUF_1943,
      ADR1 => Result_3_0,
      ADR3 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR0 => Cntr_26_GND_8_o_equal_8_o_26_1_1697,
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_2_1698,
      O => Cntr_3_rstpot_1235
    );
  Cntr_2 : X_FF
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_2_CLK,
      I => Cntr_2_rstpot_1213,
      O => Cntr(2),
      RST => GND,
      SET => GND
    );
  Cntr_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => X"1100330033003300"
    )
    port map (
      ADR2 => '1',
      ADR1 => BTN_4_IBUF_1943,
      ADR3 => Result_2_0,
      ADR5 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR0 => Cntr_26_GND_8_o_equal_8_o_26_1_1697,
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_2_1698,
      O => Cntr_2_rstpot_1213
    );
  Cntr_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_1_CLK,
      I => Cntr_1_rstpot_1229,
      O => Cntr(1),
      RST => GND,
      SET => GND
    );
  Cntr_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => X"040C0C0C040C0C0C"
    )
    port map (
      ADR5 => '1',
      ADR2 => BTN_4_IBUF_1943,
      ADR1 => Result_1_0,
      ADR3 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_1_1697,
      ADR0 => Cntr_26_GND_8_o_equal_8_o_26_2_1698,
      O => Cntr_1_rstpot_1229
    );
  Cntr_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Cntr_0_CLK,
      I => Cntr_0_rstpot_1222,
      O => Cntr(0),
      RST => GND,
      SET => GND
    );
  Cntr_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => X"050F0F0F00000000"
    )
    port map (
      ADR1 => '1',
      ADR2 => BTN_4_IBUF_1943,
      ADR5 => Result_0_0,
      ADR3 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_1_1697,
      ADR0 => Cntr_26_GND_8_o_equal_8_o_26_2_1698,
      O => Cntr_0_rstpot_1222
    );
  Cntr_26_GND_8_o_equal_8_o_26_3 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y99",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => Cntr(9),
      ADR4 => Cntr(7),
      ADR0 => Cntr(12),
      ADR2 => Cntr(13),
      ADR1 => Cntr(14),
      ADR3 => Cntr(15),
      O => Cntr_26_GND_8_o_equal_8_o_26_2_1698
    );
  Mcount_Cntr_xor_17_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y99"
    )
    port map (
      CI => Mcount_Cntr_cy_15_Q_1935,
      CYINIT => '0',
      CO(3) => NLW_Mcount_Cntr_xor_17_CO_3_UNCONNECTED,
      CO(2) => NLW_Mcount_Cntr_xor_17_CO_2_UNCONNECTED,
      CO(1) => NLW_Mcount_Cntr_xor_17_CO_1_UNCONNECTED,
      CO(0) => NLW_Mcount_Cntr_xor_17_CO_0_UNCONNECTED,
      DI(3) => NLW_Mcount_Cntr_xor_17_DI_3_UNCONNECTED,
      DI(2) => NLW_Mcount_Cntr_xor_17_DI_2_UNCONNECTED,
      DI(1) => NLW_Mcount_Cntr_xor_17_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_Mcount_Cntr_xor_17_O_3_UNCONNECTED,
      O(2) => NLW_Mcount_Cntr_xor_17_O_2_UNCONNECTED,
      O(1) => Result(17),
      O(0) => Result(16),
      S(3) => NLW_Mcount_Cntr_xor_17_S_3_UNCONNECTED,
      S(2) => NLW_Mcount_Cntr_xor_17_S_2_UNCONNECTED,
      S(1) => Cntr_17_rt_1258,
      S(0) => Cntr_16_rt_1255
    );
  Cntr_26_GND_8_o_equal_8_o_26_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y99",
      INIT => X"AAAA000000000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => Cntr_26_GND_8_o_equal_8_o_26_Q,
      ADR4 => Cntr_26_GND_8_o_equal_8_o_26_1_1697,
      ADR5 => Cntr_26_GND_8_o_equal_8_o_26_2_1698,
      O => Cntr_26_GND_8_o_equal_8_o
    );
  Cntr_17 : X_SFF
    generic map(
      LOC => "SLICE_X0Y99",
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
      LOC => "SLICE_X0Y99",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Cntr(17),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_17_rt_1258
    );
  Cntr_16 : X_SFF
    generic map(
      LOC => "SLICE_X0Y99",
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
      LOC => "SLICE_X0Y99",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Cntr(16),
      ADR4 => '1',
      ADR5 => '1',
      O => Cntr_16_rt_1255
    );
  ALUPort_Mmux_ALU_output23_20_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y99",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_20_A5LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_31_101 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y74",
      INIT => X"0000550000005500"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => LED_1_OBUF_1714,
      ADR4 => LED_3_OBUF_1715,
      ADR0 => LED_2_OBUF_1716,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_10
    );
  ProtoComp144_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X2Y74"
    )
    port map (
      O => NLW_ProtoComp144_CYINITGND_O_UNCONNECTED
    );
  ControlUnitPort_Madd_PCIncby1_xor_1_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y74"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => NLW_ControlUnitPort_Madd_PCIncby1_xor_1_CO_3_UNCONNECTED,
      CO(2) => NLW_ControlUnitPort_Madd_PCIncby1_xor_1_CO_2_UNCONNECTED,
      CO(1) => NLW_ControlUnitPort_Madd_PCIncby1_xor_1_CO_1_UNCONNECTED,
      CO(0) => NLW_ControlUnitPort_Madd_PCIncby1_xor_1_CO_0_UNCONNECTED,
      DI(3) => NLW_ControlUnitPort_Madd_PCIncby1_xor_1_DI_3_UNCONNECTED,
      DI(2) => NLW_ControlUnitPort_Madd_PCIncby1_xor_1_DI_2_UNCONNECTED,
      DI(1) => NLW_ControlUnitPort_Madd_PCIncby1_xor_1_DI_1_UNCONNECTED,
      DI(0) => '1',
      O(3) => NLW_ControlUnitPort_Madd_PCIncby1_xor_1_O_3_UNCONNECTED,
      O(2) => NLW_ControlUnitPort_Madd_PCIncby1_xor_1_O_2_UNCONNECTED,
      O(1) => ControlUnitPort_PCIncby1(1),
      O(0) => ControlUnitPort_PCIncby1(0),
      S(3) => NLW_ControlUnitPort_Madd_PCIncby1_xor_1_S_3_UNCONNECTED,
      S(2) => NLW_ControlUnitPort_Madd_PCIncby1_xor_1_S_2_UNCONNECTED,
      S(1) => ControlUnitPort_NextPCSignal_1_rt_1273,
      S(0) => ControlUnitPort_Madd_PCIncby1_lut_0_1
    );
  ControlUnitPort_NextPCSignal_1 : X_SFF
    generic map(
      LOC => "SLICE_X2Y74",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_1_CLK,
      I => ControlUnitPort_PCIncby1(1),
      O => ControlUnitPort_NextPCSignal(1),
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ControlUnitPort_NextPCSignal_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X2Y74",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR4 => '1',
      ADR5 => '1',
      O => ControlUnitPort_NextPCSignal_1_rt_1273
    );
  ControlUnitPort_NextPCSignal_0 : X_SFF
    generic map(
      LOC => "SLICE_X2Y74",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_n0257_inv_0,
      CLK => NlwBufferSignal_ControlUnitPort_NextPCSignal_0_CLK,
      I => ControlUnitPort_PCIncby1(0),
      O => ControlUnitPort_NextPCSignal(0),
      SRST => ControlUnitPort_n0247,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ControlUnitPort_Madd_PCIncby1_lut_0_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y74",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => ControlUnitPort_NextPCSignal(0),
      ADR4 => '1',
      ADR5 => '1',
      O => ControlUnitPort_Madd_PCIncby1_lut_0_1
    );
  CONV1_Mram_Y7_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y74",
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
  start_start_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_0_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_0_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y75"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_4_1287,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_0_Q,
      SEL => LED_6_OBUF_1720
    );
  start : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y75",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => '0',
      I => '0',
      O => start_1820,
      SET => BTN_3_IBUF_1730,
      RST => GND
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y75",
      INIT => X"CC00CC00FF550055"
    )
    port map (
      ADR2 => '1',
      ADR5 => LED_5_OBUF_1721,
      ADR3 => LED_4_OBUF_1722,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_91,
      ADR0 => LED_0_OBUF_1717,
      ADR1 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_4_1287
    );
  ALUPort_Mmux_ALU_output23_52_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X2Y75",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_52_C6LUT_O_UNCONNECTED
    );
  hexval_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y76",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_1_CLK,
      I => hexval_31_SW_4_MUX_287_o,
      O => hexval_1_1792,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_287_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y76",
      INIT => X"F5E4A0E4F5E4A0E4"
    )
    port map (
      ADR5 => '1',
      ADR0 => BTN_2_IBUF_1710,
      ADR3 => BTN_1_IBUF_1709,
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_1_0,
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR2 => SW_4_reg_file_31_31_wide_mux_5_OUT_1_0,
      O => hexval_31_SW_4_MUX_287_o
    );
  hexval_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y76",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_0_CLK,
      I => hexval_31_SW_4_MUX_290_o,
      O => hexval_0_1790,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_290_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y76",
      INIT => X"50555000D8DDD888"
    )
    port map (
      ADR0 => BTN_2_IBUF_1710,
      ADR3 => BTN_1_IBUF_1709,
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR2 => SW_6_datamemory_127_31_wide_mux_3_OUT_0_0,
      ADR5 => LED_4_OBUF_1722,
      ADR1 => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_0_4,
      O => hexval_31_SW_4_MUX_290_o
    );
  SSEG_AN_4_OBUF_SSEG_AN_4_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_5_OBUF_1310,
      O => SSEG_AN_5_OBUF_0
    );
  Mram_SSEG_AN41 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y79",
      INIT => X"FFFFFFDDFFFFFFDD"
    )
    port map (
      ADR2 => '1',
      ADR4 => Val(3),
      ADR1 => Val(1),
      ADR0 => Val(2),
      ADR3 => Val(0),
      ADR5 => '1',
      O => SSEG_AN_4_OBUF_1829
    );
  Mram_SSEG_AN51 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y79",
      INIT => X"FFFFBBFF"
    )
    port map (
      ADR2 => '1',
      ADR4 => Val(3),
      ADR1 => Val(1),
      ADR0 => Val(2),
      ADR3 => Val(0),
      O => SSEG_AN_5_OBUF_1310
    );
  Mmux_SSEG_CA21_Mmux_SSEG_CA21_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA61_1317,
      O => Mmux_SSEG_CA61_0
    );
  Mmux_SSEG_CA21_Mmux_SSEG_CA21_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA124_1331,
      O => Mmux_SSEG_CA124_0
    );
  Mmux_SSEG_CA22 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y80",
      INIT => X"0201001002010010"
    )
    port map (
      ADR1 => SSEG_AN_0_OBUF_1788,
      ADR2 => hexval_2_1789,
      ADR4 => hexval_0_1790,
      ADR3 => hexval_3_1791,
      ADR0 => hexval_1_1792,
      ADR5 => '1',
      O => Mmux_SSEG_CA21_2003
    );
  Mmux_SSEG_CA62 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y80",
      INIT => X"20002002"
    )
    port map (
      ADR1 => SSEG_AN_0_OBUF_1788,
      ADR2 => hexval_2_1789,
      ADR4 => hexval_0_1790,
      ADR3 => hexval_3_1791,
      ADR0 => hexval_1_1792,
      O => Mmux_SSEG_CA61_1317
    );
  Mmux_SSEG_CA29 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y80",
      INIT => X"FFFFFFCCFFFFFFFE"
    )
    port map (
      ADR5 => Val(3),
      ADR2 => Mmux_SSEG_CA27_1784,
      ADR0 => Mmux_SSEG_CA812,
      ADR3 => Mmux_SSEG_CA121,
      ADR1 => Mmux_SSEG_CA2,
      ADR4 => Mmux_SSEG_CA21_2003,
      O => SSEG_CA_0_OBUF_1783
    );
  Mmux_SSEG_CA1213 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y80",
      INIT => X"2000000020000000"
    )
    port map (
      ADR3 => hexval_6_1741,
      ADR2 => hexval_4_1743,
      ADR1 => hexval_5_1744,
      ADR4 => hexval_7_1742,
      ADR0 => Mmux_SSEG_CA15,
      ADR5 => '1',
      O => Mmux_SSEG_CA1212_1854
    );
  Mmux_SSEG_CA125 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y80",
      INIT => X"000080A8"
    )
    port map (
      ADR3 => hexval_6_1741,
      ADR2 => hexval_4_1743,
      ADR1 => hexval_5_1744,
      ADR4 => hexval_7_1742,
      ADR0 => Mmux_SSEG_CA15,
      O => Mmux_SSEG_CA124_1331
    );
  Mmux_SSEG_CA1218 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y80",
      INIT => X"F0F0F0F0F8F0F0F0"
    )
    port map (
      ADR2 => Mmux_SSEG_CA1216_1770,
      ADR4 => hexval_11_1840,
      ADR0 => hexval_10_1816,
      ADR5 => hexval_9_1815,
      ADR1 => hexval_8_1843,
      ADR3 => Mmux_SSEG_CA16,
      O => Mmux_SSEG_CA1217_1963
    );
  CONV2_Mram_Y22_CONV2_Mram_Y22_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA47_pack_3,
      O => Mmux_SSEG_CA47_2004
    );
  CONV2_Mram_Y22_CONV2_Mram_Y22_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA19_pack_1,
      O => Mmux_SSEG_CA19
    );
  CONV2_Mram_Y22_CONV2_Mram_Y22_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA22_1366,
      O => Mmux_SSEG_CA22_0
    );
  CONV2_Mram_Y221 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y81",
      INIT => X"0030003000300030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => hexval_25_1711,
      ADR3 => hexval_27_1806,
      ADR1 => hexval_26_1805,
      ADR5 => '1',
      O => CONV2_Mram_Y22
    );
  Mmux_SSEG_CA47 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y81",
      INIT => X"E0480000"
    )
    port map (
      ADR4 => Mmux_SSEG_CA19,
      ADR0 => hexval_24_1706,
      ADR2 => hexval_25_1711,
      ADR3 => hexval_27_1806,
      ADR1 => hexval_26_1805,
      O => Mmux_SSEG_CA47_pack_3
    );
  Mmux_SSEG_CA48 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y81",
      INIT => X"FFFFFFFFA8000880"
    )
    port map (
      ADR0 => Mmux_SSEG_CA18,
      ADR2 => hexval_12_1749,
      ADR3 => hexval_13_1752,
      ADR4 => hexval_15_1751,
      ADR1 => hexval_14_1750,
      ADR5 => Mmux_SSEG_CA47_2004,
      O => Mmux_SSEG_CA48_1822
    );
  Mmux_SSEG_CA151 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y81",
      INIT => X"8080808080808080"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => Val(0),
      ADR0 => Val(2),
      ADR1 => Val(1),
      ADR5 => '1',
      O => Mmux_SSEG_CA15
    );
  Mmux_SSEG_CA191 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y81",
      INIT => X"04040404"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => Val(0),
      ADR0 => Val(2),
      ADR1 => Val(1),
      O => Mmux_SSEG_CA19_pack_1
    );
  Mmux_SSEG_CA8121 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y81",
      INIT => X"0100020001000200"
    )
    port map (
      ADR3 => Mmux_SSEG_CA15,
      ADR1 => hexval_5_1744,
      ADR2 => hexval_7_1742,
      ADR4 => hexval_4_1743,
      ADR0 => hexval_6_1741,
      ADR5 => '1',
      O => Mmux_SSEG_CA8121_1813
    );
  Mmux_SSEG_CA23 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y81",
      INIT => X"40000000"
    )
    port map (
      ADR3 => Mmux_SSEG_CA15,
      ADR1 => hexval_5_1744,
      ADR2 => hexval_7_1742,
      ADR4 => hexval_4_1743,
      ADR0 => hexval_6_1741,
      O => Mmux_SSEG_CA22_1366
    );
  Mmux_SSEG_CA212_Mmux_SSEG_CA212_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA8_pack_7,
      O => Mmux_SSEG_CA8
    );
  Mmux_SSEG_CA2121 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y82",
      INIT => X"8800880088008800"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => hexval_11_1840,
      ADR0 => hexval_8_1843,
      ADR1 => hexval_9_1815,
      ADR5 => '1',
      O => Mmux_SSEG_CA212
    );
  Mmux_SSEG_CA81 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y82",
      INIT => X"80804000"
    )
    port map (
      ADR2 => Mmux_SSEG_CA16,
      ADR4 => hexval_10_1816,
      ADR3 => hexval_11_1840,
      ADR0 => hexval_8_1843,
      ADR1 => hexval_9_1815,
      O => Mmux_SSEG_CA8_pack_7
    );
  Mmux_SSEG_CA82 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y82",
      INIT => X"FFFFFFFFC0002000"
    )
    port map (
      ADR2 => hexval_5_1744,
      ADR3 => Mmux_SSEG_CA15,
      ADR4 => hexval_4_1743,
      ADR1 => hexval_6_1741,
      ADR0 => hexval_7_1742,
      ADR5 => Mmux_SSEG_CA8,
      O => Mmux_SSEG_CA81_1911
    );
  Mmux_SSEG_CA8122 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y82",
      INIT => X"FFFF0000FFFF1400"
    )
    port map (
      ADR3 => Mmux_SSEG_CA16,
      ADR5 => hexval_11_1840,
      ADR0 => hexval_9_1815,
      ADR1 => hexval_10_1816,
      ADR2 => hexval_8_1843,
      ADR4 => Mmux_SSEG_CA8121_1813,
      O => Mmux_SSEG_CA8122_2005
    );
  Mmux_SSEG_CA8126 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y82",
      INIT => X"FFFFFFAAFFFFFFAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Mmux_SSEG_CA8124_1757,
      ADR0 => Mmux_SSEG_CA8125_0,
      ADR3 => Mmux_SSEG_CA8122_2005,
      O => Mmux_SSEG_CA812
    );
  Mmux_SSEG_CA86_Mmux_SSEG_CA86_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_2_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_2_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y83"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_4_1415,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_2_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y83",
      INIT => X"88888888F5F5A0A0"
    )
    port map (
      ADR3 => '1',
      ADR5 => LED_5_OBUF_1721,
      ADR0 => LED_4_OBUF_1722,
      ADR1 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_0_10,
      ADR2 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_91_0,
      ADR4 => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_82_0,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_2_4_1415
    );
  ALUPort_Mmux_ALU_output23_50_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X2Y83",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_50_C6LUT_O_UNCONNECTED
    );
  Mmux_SSEG_CA87 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y83",
      INIT => X"00FF00FF00FF00FE"
    )
    port map (
      ADR3 => Val(3),
      ADR5 => Mmux_SSEG_CA81_1911,
      ADR0 => Mmux_SSEG_CA82_1824,
      ADR4 => Mmux_SSEG_CA84_1881,
      ADR1 => Mmux_SSEG_CA85_1761,
      ADR2 => Mmux_SSEG_CA812,
      O => Mmux_SSEG_CA86_2007
    );
  Mmux_SSEG_CA810 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y83",
      INIT => X"FFFFFFAAFFFFFFAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => Mmux_SSEG_CA87_0,
      ADR4 => Mmux_SSEG_CA88_0,
      ADR3 => Mmux_SSEG_CA86_2007,
      O => SSEG_CA_3_OBUF_1948
    );
  hexval_23_hexval_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_248_o_pack_4,
      O => hexval_31_SW_4_MUX_248_o
    );
  hexval_23_hexval_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_257_o_pack_3,
      O => hexval_31_SW_4_MUX_257_o
    );
  hexval_23 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y85",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_23_CLK,
      I => hexval_31_SW_4_MUX_221_o,
      O => hexval_23_1759,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_221_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y85",
      INIT => X"0808080808080808"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_23_0,
      ADR0 => BTN_1_IBUF_1709,
      ADR2 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_221_o
    );
  Mmux_hexval_31_SW_4_MUX_248_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y85",
      INIT => X"0A0A0000"
    )
    port map (
      ADR1 => '1',
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_14_0,
      ADR3 => '1',
      ADR0 => BTN_1_IBUF_1709,
      ADR2 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_248_o_pack_4
    );
  hexval_14 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y85",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_14_CLK,
      I => NlwBufferSignal_hexval_14_IN,
      O => hexval_14_1750,
      RST => GND,
      SET => GND
    );
  hexval_12 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y85",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_12_CLK,
      I => hexval_31_SW_4_MUX_254_o,
      O => hexval_12_1749,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_254_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y85",
      INIT => X"4040404040404040"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_12_0,
      ADR2 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      ADR5 => '1',
      O => hexval_31_SW_4_MUX_254_o
    );
  Mmux_hexval_31_SW_4_MUX_257_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y85",
      INIT => X"50500000"
    )
    port map (
      ADR3 => '1',
      ADR4 => SW_6_datamemory_127_31_wide_mux_3_OUT_11_0,
      ADR1 => '1',
      ADR2 => BTN_1_IBUF_1709,
      ADR0 => BTN_2_IBUF_1710,
      O => hexval_31_SW_4_MUX_257_o_pack_3
    );
  hexval_11 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y85",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_11_CLK,
      I => NlwBufferSignal_hexval_11_IN,
      O => hexval_11_1840,
      RST => GND,
      SET => GND
    );
  Mram_SSEG_AN111 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y91",
      INIT => X"DDDDFFFFFFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Val(1),
      ADR1 => Val(3),
      ADR5 => Val(0),
      ADR0 => Val(2),
      O => SSEG_AN_1_OBUF_1961
    );
  ControlUnitPort_n0247_ControlUnitPort_n0247_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ControlUnitPort_n0257_inv_1447,
      O => ControlUnitPort_n0257_inv_0
    );
  ControlUnitPort_n02471 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y74",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => start_1820,
      ADR1 => clr_1732,
      ADR5 => '1',
      O => ControlUnitPort_n0247
    );
  ControlUnitPort_n0257_inv : X_LUT5
    generic map(
      LOC => "SLICE_X3Y74",
      INIT => X"00303030"
    )
    port map (
      ADR0 => '1',
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR2 => start_1820,
      ADR1 => clr_1732,
      O => ControlUnitPort_n0257_inv_1447
    );
  hexval_3_hexval_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_4_reg_file_31_31_wide_mux_5_OUT_1_Q,
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_1_0
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_1_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y76"
    )
    port map (
      IA => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_0_4,
      IB => '0',
      O => SW_4_reg_file_31_31_wide_mux_5_OUT_1_Q,
      SEL => LED_4_OBUF_1722
    );
  Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_0_41 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y76",
      INIT => X"0202000002000200"
    )
    port map (
      ADR2 => LED_3_OBUF_1715,
      ADR1 => LED_2_OBUF_1716,
      ADR0 => LED_0_OBUF_1717,
      ADR5 => LED_1_OBUF_1714,
      ADR3 => IDecodePort_Reg_array_1(2),
      ADR4 => IDecodePort_Reg_array_3(3),
      O => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_0_4
    );
  ALUPort_Mmux_ALU_output23_54_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X3Y76",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_54_C6LUT_O_UNCONNECTED
    );
  hexval_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y76",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_3_CLK,
      I => hexval_31_SW_4_MUX_281_o,
      O => hexval_3_1791,
      RST => GND,
      SET => GND
    );
  BTN_2_BTN_1_OR_3_o_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y76",
      INIT => X"FFFAFFFAFFFAFFFA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => BTN_2_IBUF_1710,
      ADR2 => LED_15_OBUF_1913,
      ADR3 => BTN_1_IBUF_1709,
      ADR5 => '1',
      O => BTN_2_BTN_1_OR_3_o
    );
  Mmux_hexval_31_SW_4_MUX_281_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y76",
      INIT => X"EEAA4400"
    )
    port map (
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_3_0,
      ADR4 => SW_4_reg_file_31_31_wide_mux_5_OUT_3_0,
      ADR0 => BTN_2_IBUF_1710,
      ADR2 => '1',
      ADR3 => BTN_1_IBUF_1709,
      O => hexval_31_SW_4_MUX_281_o
    );
  hexval_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y76",
      INIT => '1'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_hexval_2_CLK,
      I => hexval_31_SW_4_MUX_284_o,
      O => hexval_2_1789,
      RST => GND,
      SET => GND
    );
  Mmux_hexval_31_SW_4_MUX_284_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y76",
      INIT => X"44004400EEAA4400"
    )
    port map (
      ADR2 => '1',
      ADR0 => BTN_2_IBUF_1710,
      ADR5 => LED_4_OBUF_1722,
      ADR4 => Mmux_SW_4_reg_file_31_31_wide_mux_5_OUT_0_4,
      ADR3 => BTN_1_IBUF_1709,
      ADR1 => SW_6_datamemory_127_31_wide_mux_3_OUT_2_0,
      O => hexval_31_SW_4_MUX_284_o
    );
  Mmux_SSEG_CA1211_Mmux_SSEG_CA1211_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA122_1484,
      O => Mmux_SSEG_CA122_0
    );
  Mmux_SSEG_CA1212 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y79",
      INIT => X"0008000000080000"
    )
    port map (
      ADR2 => hexval_1_1792,
      ADR3 => SSEG_AN_0_OBUF_1788,
      ADR1 => hexval_3_1791,
      ADR4 => hexval_0_1790,
      ADR0 => hexval_2_1789,
      ADR5 => '1',
      O => Mmux_SSEG_CA1211_1858
    );
  Mmux_SSEG_CA123 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y79",
      INIT => X"00310010"
    )
    port map (
      ADR2 => hexval_1_1792,
      ADR3 => SSEG_AN_0_OBUF_1788,
      ADR1 => hexval_3_1791,
      ADR4 => hexval_0_1790,
      ADR0 => hexval_2_1789,
      O => Mmux_SSEG_CA122_1484
    );
  SSEG_AN_2_OBUF_SSEG_AN_2_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_3_OBUF_1493,
      O => SSEG_AN_3_OBUF_0
    );
  Mram_SSEG_AN21 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y80",
      INIT => X"EEFFFFFFEEFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR0 => Val(3),
      ADR1 => Val(0),
      ADR4 => Val(1),
      ADR3 => Val(2),
      ADR5 => '1',
      O => SSEG_AN_2_OBUF_1851
    );
  Mram_SSEG_AN31 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y80",
      INIT => X"FFFFBBFF"
    )
    port map (
      ADR2 => '1',
      ADR0 => Val(3),
      ADR1 => Val(0),
      ADR4 => Val(1),
      ADR3 => Val(2),
      O => SSEG_AN_3_OBUF_1493
    );
  Mmux_SSEG_CA144 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y80",
      INIT => X"F0F0F8F0F0F8F4F4"
    )
    port map (
      ADR1 => Mmux_SSEG_CA16,
      ADR0 => hexval_10_1816,
      ADR4 => hexval_11_1840,
      ADR3 => hexval_8_1843,
      ADR5 => hexval_9_1815,
      ADR2 => Mmux_SSEG_CA142_1874,
      O => Mmux_SSEG_CA143_1906
    );
  SSEG_AN_0_OBUF_SSEG_AN_0_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA41_1503,
      O => Mmux_SSEG_CA41_0
    );
  SSEG_AN_0_OBUF_SSEG_AN_0_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA88_1527,
      O => Mmux_SSEG_CA88_0
    );
  SSEG_AN_0_OBUF_SSEG_AN_0_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA62_1526,
      O => Mmux_SSEG_CA62_0
    );
  Mram_SSEG_AN12 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y81",
      INIT => X"FFFDFFFDFFFDFFFD"
    )
    port map (
      ADR4 => '1',
      ADR3 => Val(2),
      ADR1 => Val(1),
      ADR0 => Val(3),
      ADR2 => Val(0),
      ADR5 => '1',
      O => SSEG_AN_0_OBUF_1788
    );
  Mmux_SSEG_CA411 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y81",
      INIT => X"AAB9AAB9"
    )
    port map (
      ADR4 => '1',
      ADR3 => Val(2),
      ADR1 => Val(1),
      ADR0 => Val(3),
      ADR2 => Val(0),
      O => Mmux_SSEG_CA41_1503
    );
  Mmux_SSEG_CA41 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y81",
      INIT => X"000098C0000098C0"
    )
    port map (
      ADR4 => SSEG_AN_0_OBUF_1788,
      ADR3 => hexval_0_1790,
      ADR1 => hexval_1_1792,
      ADR0 => hexval_3_1791,
      ADR2 => hexval_2_1789,
      ADR5 => '1',
      O => Mmux_SSEG_CA4
    );
  Mmux_SSEG_CA89 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y81",
      INIT => X"0000C118"
    )
    port map (
      ADR4 => SSEG_AN_0_OBUF_1788,
      ADR3 => hexval_0_1790,
      ADR1 => hexval_1_1792,
      ADR0 => hexval_3_1791,
      ADR2 => hexval_2_1789,
      O => Mmux_SSEG_CA88_1527
    );
  Mmux_SSEG_CA421 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y81",
      INIT => X"0400040004000400"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => hexval_0_1790,
      ADR0 => SSEG_AN_0_OBUF_1788,
      ADR1 => hexval_2_1789,
      ADR3 => hexval_3_1791,
      O => Mmux_SSEG_CA421_1950
    );
  Mmux_SSEG_CA49 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y81",
      INIT => X"C0804800C0804800"
    )
    port map (
      ADR1 => Mmux_SSEG_CA16,
      ADR0 => hexval_8_1843,
      ADR2 => hexval_9_1815,
      ADR4 => hexval_11_1840,
      ADR3 => hexval_10_1816,
      ADR5 => '1',
      O => Mmux_SSEG_CA49_1907
    );
  Mmux_SSEG_CA63 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y81",
      INIT => X"C0000040"
    )
    port map (
      ADR1 => Mmux_SSEG_CA16,
      ADR0 => hexval_8_1843,
      ADR2 => hexval_9_1815,
      ADR4 => hexval_11_1840,
      ADR3 => hexval_10_1816,
      O => Mmux_SSEG_CA62_1526
    );
  Mmux_SSEG_CA427 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y82",
      INIT => X"AAAA0000AAAAC000"
    )
    port map (
      ADR4 => Val(1),
      ADR5 => hexval_12_1749,
      ADR1 => Val(2),
      ADR2 => hexval_14_1750,
      ADR3 => hexval_15_1751,
      ADR0 => Mmux_SSEG_CA426_2010,
      O => Mmux_SSEG_CA427_2012
    );
  Mmux_SSEG_CA428 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y82",
      INIT => X"FFFFFFFF0F0A0A0A"
    )
    port map (
      ADR1 => '1',
      ADR2 => Val(3),
      ADR4 => Mmux_SSEG_CA427_2012,
      ADR3 => Val(0),
      ADR0 => Mmux_SSEG_CA424_1951,
      ADR5 => Mmux_SSEG_CA421_1950,
      O => Mmux_SSEG_CA42
    );
  Mmux_SSEG_CA425 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y82",
      INIT => X"AA00AA00AA00AA00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR0 => hexval_22_1727,
      ADR3 => hexval_23_1759,
      O => Mmux_SSEG_CA425_2011
    );
  Mmux_SSEG_CA426 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y82",
      INIT => X"00AA000030303030"
    )
    port map (
      ADR5 => Val(2),
      ADR1 => hexval_20_1760,
      ADR2 => Mmux_SSEG_CA425_2011,
      ADR3 => hexval_4_1743,
      ADR4 => hexval_7_1742,
      ADR0 => hexval_6_1741,
      O => Mmux_SSEG_CA426_2010
    );
  Mmux_SSEG_CA85_Mmux_SSEG_CA85_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SSEG_CA8123_pack_1,
      O => Mmux_SSEG_CA8123_2013
    );
  Mmux_SSEG_CA86 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y83",
      INIT => X"9000800090008000"
    )
    port map (
      ADR3 => hexval_13_1752,
      ADR2 => Mmux_SSEG_CA18,
      ADR1 => hexval_12_1749,
      ADR0 => hexval_14_1750,
      ADR4 => hexval_15_1751,
      ADR5 => '1',
      O => Mmux_SSEG_CA85_1761
    );
  Mmux_SSEG_CA8123 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y83",
      INIT => X"00000060"
    )
    port map (
      ADR3 => hexval_13_1752,
      ADR2 => Mmux_SSEG_CA18,
      ADR1 => hexval_12_1749,
      ADR0 => hexval_14_1750,
      ADR4 => hexval_15_1751,
      O => Mmux_SSEG_CA8123_pack_1
    );
  Mmux_SSEG_CA8124 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y83",
      INIT => X"AAAAAAAEAAAAAEAA"
    )
    port map (
      ADR1 => Mmux_SSEG_CA17,
      ADR4 => hexval_21_1724,
      ADR2 => hexval_23_1759,
      ADR3 => hexval_20_1760,
      ADR5 => hexval_22_1727,
      ADR0 => Mmux_SSEG_CA8123_2013,
      O => Mmux_SSEG_CA8124_1757
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_91_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SW_6_datamemory_127_31_wide_mux_3_OUT_23_Q,
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_23_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_91_Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_91_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_91,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_91_0
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y85"
    )
    port map (
      IA => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_4_1570,
      IB => '0',
      O => SW_6_datamemory_127_31_wide_mux_3_OUT_23_Q,
      SEL => LED_6_OBUF_1720
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_4 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y85",
      INIT => X"0500020D5504040B"
    )
    port map (
      ADR2 => LED_5_OBUF_1721,
      ADR0 => LED_3_OBUF_1715,
      ADR3 => LED_1_OBUF_1714,
      ADR4 => LED_4_OBUF_1722,
      ADR5 => LED_2_OBUF_1716,
      ADR1 => LED_0_OBUF_1717,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_23_4_1570
    );
  ALUPort_Mmux_ALU_output23_30_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X3Y85",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_ALUPort_Mmux_ALU_output23_30_C6LUT_O_UNCONNECTED
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_911 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y85",
      INIT => X"000055AA000055AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => LED_3_OBUF_1715,
      ADR3 => LED_2_OBUF_1716,
      ADR0 => LED_1_OBUF_1714,
      ADR5 => '1',
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_17_91
    );
  Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_911 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y85",
      INIT => X"005500FF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => LED_3_OBUF_1715,
      ADR3 => LED_2_OBUF_1716,
      ADR0 => LED_1_OBUF_1714,
      O => Mmux_SW_6_datamemory_127_31_wide_mux_3_OUT_24_91
    );
  IDecodePort_Reg_array_1_2_IDecodePort_Reg_array_1_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ALUPort_A_input_31_B_input_31_add_5_OUT_2_pack_4,
      O => ALUPort_A_input_31_B_input_31_add_5_OUT_2_Q
    );
  IDecodePort_Reg_array_1_2 : X_FF
    generic map(
      LOC => "SLICE_X5Y74",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_IDecodePort_Reg_array_1_2_CLK,
      I => IDecodePort_Reg_array_1_2_rstpot_1586,
      O => IDecodePort_Reg_array_1(2),
      RST => GND,
      SET => GND
    );
  IDecodePort_Reg_array_1_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y74",
      INIT => X"F0F0F0F0F3C0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => ControlUnitPort_NextPCSignal(0),
      ADR2 => IDecodePort_Reg_array_1(2),
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR3 => ALUPort_A_input_31_B_input_31_add_5_OUT_2_Q,
      O => IDecodePort_Reg_array_1_2_rstpot_1586
    );
  ProtoComp162_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X5Y74"
    )
    port map (
      O => NLW_ProtoComp162_CYINITGND_O_UNCONNECTED
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X5Y74"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_CO_3_UNCONNECTED,
      CO(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_CO_2_UNCONNECTED,
      CO(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_CO_1_UNCONNECTED,
      CO(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_CO_0_UNCONNECTED,
      DI(3) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_DI_3_UNCONNECTED,
      DI(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_DI_2_UNCONNECTED,
      DI(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_DI_1_UNCONNECTED,
      DI(0) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_DI_0_UNCONNECTED,
      O(3) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_O_3_UNCONNECTED,
      O(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_O_2_UNCONNECTED,
      O(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_O_1_UNCONNECTED,
      O(0) => ALUPort_A_input_31_B_input_31_add_5_OUT_2_pack_4,
      S(3) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_S_3_UNCONNECTED,
      S(2) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_S_2_UNCONNECTED,
      S(1) => NLW_ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_xor_2_S_1_UNCONNECTED,
      S(0) => ALUPort_Mmux_B_input11
    );
  ALUPort_Mmux_B_input111 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y74",
      INIT => X"3333111133331111"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => ControlUnitPort_NextPCSignal(0),
      ADR0 => ControlUnitPort_NextPCSignal(1),
      ADR4 => IDecodePort_Reg_array_1(2),
      O => ALUPort_Mmux_B_input11
    );
  IDecodePort_Reg_array_2_3_IDecodePort_Reg_array_2_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IDecodePort_write_register_address_1_pack_2,
      O => IDecodePort_write_register_address(1)
    );
  IDecodePort_Reg_array_2_3 : X_FF
    generic map(
      LOC => "SLICE_X6Y74",
      INIT => '0'
    )
    port map (
      CE => IDecodePort_write_register_address(1),
      CLK => NlwBufferSignal_IDecodePort_Reg_array_2_3_CLK,
      I => IDecodePort_Reg_array_2_3_dpot_1599,
      O => IDecodePort_Reg_array_2(3),
      RST => GND,
      SET => GND
    );
  IDecodePort_Reg_array_2_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y74",
      INIT => X"50D8505050FA5050"
    )
    port map (
      ADR0 => ControlUnitPort_NextPCSignal(0),
      ADR4 => ALUPort_A_input_31_B_input_31_add_5_OUT_3_0,
      ADR3 => IFetchPort_Mram_Instruction27,
      ADR2 => IDecodePort_Reg_array_2(3),
      ADR5 => IFetchPort_Mram_Instruction,
      ADR1 => IFetchPort_Mram_Instruction26,
      O => IDecodePort_Reg_array_2_3_dpot_1599
    );
  IFetchPort_Mram_Instruction1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y74",
      INIT => X"000000FF000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR5 => '1',
      O => IFetchPort_Mram_Instruction
    );
  IDecodePort_Mmux_write_register_address21 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y74",
      INIT => X"00FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR3 => ControlUnitPort_NextPCSignal(1),
      O => IDecodePort_write_register_address_1_pack_2
    );
  ControlUnitPort_Madd_PCIncby1_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y75",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => ControlUnitPort_NextPCSignal(0),
      O => ControlUnitPort_Madd_PCIncby1_lut(0)
    );
  ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y75",
      INIT => X"3333888833338888"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR0 => IDecodePort_Reg_array_2(3),
      O => ALUPort_Madd_A_input_31_B_input_31_add_5_OUT_lut_3_Q_1947
    );
  IDecodePort_Reg_array_3_3_IDecodePort_Reg_array_3_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => IFetchPort_Mram_Instruction27_pack_2,
      O => IFetchPort_Mram_Instruction27
    );
  IFetchPort_Mram_Instruction261 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y74",
      INIT => X"FFFF00FFFFFF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      ADR5 => '1',
      O => IFetchPort_Mram_Instruction26
    );
  IFetchPort_Mram_Instruction271 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y74",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ControlUnitPort_NextPCSignal(1),
      ADR4 => ControlUnitPort_NextPCSignal(0),
      O => IFetchPort_Mram_Instruction27_pack_2
    );
  IDecodePort_Reg_array_3_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y74",
      INIT => '0'
    )
    port map (
      CE => ControlUnitPort_Madd_PCIncby1_lut(0),
      CLK => NlwBufferSignal_IDecodePort_Reg_array_3_3_CLK,
      I => IDecodePort_Reg_array_3_3_dpot_1626,
      O => IDecodePort_Reg_array_3(3),
      RST => GND,
      SET => GND
    );
  IDecodePort_Reg_array_3_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y74",
      INIT => X"5511F0F00000F0F0"
    )
    port map (
      ADR4 => IDecodePort_write_register_address(1),
      ADR5 => ALUPort_A_input_31_B_input_31_add_5_OUT_3_0,
      ADR0 => IFetchPort_Mram_Instruction27,
      ADR2 => IDecodePort_Reg_array_3(3),
      ADR1 => IFetchPort_Mram_Instruction,
      ADR3 => IFetchPort_Mram_Instruction26,
      O => IDecodePort_Reg_array_3_3_dpot_1626
    );
  SSEG_AN_6_OBUF_SSEG_AN_6_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_7_OBUF_1635,
      O => SSEG_AN_7_OBUF_0
    );
  Mram_SSEG_AN61 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y80",
      INIT => X"FFFFEFEFFFFFEFEF"
    )
    port map (
      ADR3 => '1',
      ADR1 => Val(3),
      ADR0 => Val(2),
      ADR2 => Val(1),
      ADR4 => Val(0),
      ADR5 => '1',
      O => SSEG_AN_6_OBUF_1767
    );
  Mram_SSEG_AN71 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y80",
      INIT => X"FEFEFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => Val(3),
      ADR0 => Val(2),
      ADR2 => Val(1),
      ADR4 => Val(0),
      O => SSEG_AN_7_OBUF_1635
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_1856,
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
  NlwBufferBlock_LED_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_12_OBUF_1938,
      O => NlwBufferSignal_LED_12_OBUF_I
    );
  NlwBufferBlock_LED_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_11_OBUF_1939,
      O => NlwBufferSignal_LED_11_OBUF_I
    );
  NlwBufferBlock_LED_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_14_OBUF_1940,
      O => NlwBufferSignal_LED_14_OBUF_I
    );
  NlwBufferBlock_LED_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_13_OBUF_1941,
      O => NlwBufferSignal_LED_13_OBUF_I
    );
  NlwBufferBlock_LED_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_10_OBUF_1942,
      O => NlwBufferSignal_LED_10_OBUF_I
    );
  NlwBufferBlock_LED_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_15_OBUF_1913,
      O => NlwBufferSignal_LED_15_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_6_OBUF_1905,
      O => NlwBufferSignal_SSEG_CA_6_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_5_OBUF_1945,
      O => NlwBufferSignal_SSEG_CA_5_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_0_OBUF_1783,
      O => NlwBufferSignal_SSEG_CA_0_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_2_OBUF_1794,
      O => NlwBufferSignal_SSEG_CA_2_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_1_OBUF_1946,
      O => NlwBufferSignal_SSEG_CA_1_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_4_OBUF_1904,
      O => NlwBufferSignal_SSEG_CA_4_OBUF_I
    );
  NlwBufferBlock_SSEG_CA_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_CA_3_OBUF_1948,
      O => NlwBufferSignal_SSEG_CA_3_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_6_OBUF_1767,
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
      I => SSEG_AN_0_OBUF_1788,
      O => NlwBufferSignal_SSEG_AN_0_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_2_OBUF_1851,
      O => NlwBufferSignal_SSEG_AN_2_OBUF_I
    );
  NlwBufferBlock_LED_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_0_OBUF_1717,
      O => NlwBufferSignal_LED_0_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_1_OBUF_1961,
      O => NlwBufferSignal_SSEG_AN_1_OBUF_I
    );
  NlwBufferBlock_LED_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_1_OBUF_1714,
      O => NlwBufferSignal_LED_1_OBUF_I
    );
  NlwBufferBlock_SSEG_AN_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => SSEG_AN_4_OBUF_1829,
      O => NlwBufferSignal_SSEG_AN_4_OBUF_I
    );
  NlwBufferBlock_LED_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_2_OBUF_1716,
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
      I => LED_3_OBUF_1715,
      O => NlwBufferSignal_LED_3_OBUF_I
    );
  NlwBufferBlock_LED_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_4_OBUF_1722,
      O => NlwBufferSignal_LED_4_OBUF_I
    );
  NlwBufferBlock_LED_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_5_OBUF_1721,
      O => NlwBufferSignal_LED_5_OBUF_I
    );
  NlwBufferBlock_LED_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_6_OBUF_1720,
      O => NlwBufferSignal_LED_6_OBUF_I
    );
  NlwBufferBlock_LED_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_7_OBUF_1957,
      O => NlwBufferSignal_LED_7_OBUF_I
    );
  NlwBufferBlock_LED_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_8_OBUF_1959,
      O => NlwBufferSignal_LED_8_OBUF_I
    );
  NlwBufferBlock_LED_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => LED_9_OBUF_1960,
      O => NlwBufferSignal_LED_9_OBUF_I
    );
  NlwBufferBlock_hexval_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_13_CLK
    );
  NlwBufferBlock_hexval_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_5_CLK
    );
  NlwBufferBlock_hexval_5_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_275_o,
      O => NlwBufferSignal_hexval_5_IN
    );
  NlwBufferBlock_hexval_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_6_CLK
    );
  NlwBufferBlock_hexval_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_4_CLK
    );
  NlwBufferBlock_hexval_4_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_278_o,
      O => NlwBufferSignal_hexval_4_IN
    );
  NlwBufferBlock_hexval_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_22_CLK
    );
  NlwBufferBlock_hexval_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_21_CLK
    );
  NlwBufferBlock_hexval_21_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_227_o,
      O => NlwBufferSignal_hexval_21_IN
    );
  NlwBufferBlock_hexval_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_20_CLK
    );
  NlwBufferBlock_hexval_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_19_CLK
    );
  NlwBufferBlock_hexval_19_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_233_o,
      O => NlwBufferSignal_hexval_19_IN
    );
  NlwBufferBlock_Val_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Val_3_CLK
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
  NlwBufferBlock_clr_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clr_G_1985,
      O => NlwBufferSignal_clr_CLK
    );
  NlwBufferBlock_hexval_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_18_CLK
    );
  NlwBufferBlock_hexval_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_17_CLK
    );
  NlwBufferBlock_hexval_17_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_239_o,
      O => NlwBufferSignal_hexval_17_IN
    );
  NlwBufferBlock_hexval_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_16_CLK
    );
  NlwBufferBlock_hexval_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_15_CLK
    );
  NlwBufferBlock_hexval_15_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_245_o,
      O => NlwBufferSignal_hexval_15_IN
    );
  NlwBufferBlock_hexval_30_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_30_CLK
    );
  NlwBufferBlock_hexval_29_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_29_CLK
    );
  NlwBufferBlock_hexval_29_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_203_o,
      O => NlwBufferSignal_hexval_29_IN
    );
  NlwBufferBlock_hexval_28_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_28_CLK
    );
  NlwBufferBlock_hexval_27_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_27_CLK
    );
  NlwBufferBlock_hexval_27_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_209_o,
      O => NlwBufferSignal_hexval_27_IN
    );
  NlwBufferBlock_hexval_31_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_31_CLK
    );
  NlwBufferBlock_hexval_26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_26_CLK
    );
  NlwBufferBlock_hexval_26_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_212_o,
      O => NlwBufferSignal_hexval_26_IN
    );
  NlwBufferBlock_hexval_25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_25_CLK
    );
  NlwBufferBlock_hexval_24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_24_CLK
    );
  NlwBufferBlock_hexval_24_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_218_o,
      O => NlwBufferSignal_hexval_24_IN
    );
  NlwBufferBlock_hexval_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_10_CLK
    );
  NlwBufferBlock_hexval_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_9_CLK
    );
  NlwBufferBlock_hexval_9_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_263_o,
      O => NlwBufferSignal_hexval_9_IN
    );
  NlwBufferBlock_hexval_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_8_CLK
    );
  NlwBufferBlock_hexval_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_7_CLK
    );
  NlwBufferBlock_hexval_7_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_269_o,
      O => NlwBufferSignal_hexval_7_IN
    );
  NlwBufferBlock_Val_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Val_2_CLK
    );
  NlwBufferBlock_Val_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Val_1_CLK
    );
  NlwBufferBlock_Val_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_Val_0_CLK
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
  NlwBufferBlock_hexval_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_1_CLK
    );
  NlwBufferBlock_hexval_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_0_CLK
    );
  NlwBufferBlock_hexval_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_23_CLK
    );
  NlwBufferBlock_hexval_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_14_CLK
    );
  NlwBufferBlock_hexval_14_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_248_o,
      O => NlwBufferSignal_hexval_14_IN
    );
  NlwBufferBlock_hexval_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_12_CLK
    );
  NlwBufferBlock_hexval_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_11_CLK
    );
  NlwBufferBlock_hexval_11_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => hexval_31_SW_4_MUX_257_o,
      O => NlwBufferSignal_hexval_11_IN
    );
  NlwBufferBlock_hexval_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_3_CLK
    );
  NlwBufferBlock_hexval_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => BTN_2_BTN_1_OR_3_o_BUFG_1705,
      O => NlwBufferSignal_hexval_2_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_1_2_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_2_3_CLK
    );
  NlwBufferBlock_IDecodePort_Reg_array_3_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_IDecodePort_Reg_array_3_3_CLK
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

