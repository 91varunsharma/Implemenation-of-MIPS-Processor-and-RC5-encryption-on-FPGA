---------------------------------------------------------------------------------------------------
-- Author       :   Starboyz
-- Project      :   NYU-6463 MIPS Processor
-- Create Date  :   12/01/2016
-- Design       :   Data Memory
-- Filename     :   dmemory.vhd
-- Description  :   VHD code to implement the Data memory and Load and Store Instruction
--
----------------------------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.datamemory.all;

ENTITY Dmemory IS
    PORT(   clk             :   IN  STD_LOGIC;
            DMem_address    :   IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
            DMem_write_data :   IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
            DMemRead        :   IN  STD_LOGIC;
            DMemwrite       :   IN  STD_LOGIC;
            DMem_read_data  :   OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            DMem_out_data   :   OUT STD_LOGIC_VECTOR(31 downto 0);
            Data_memory     :   OUT data_output;
            DMem_addressout :   OUT STD_LOGIC_VECTOR(6 DOWNTO 0) );
END Dmemory;

ARCHITECTURE behavioral of Dmemory is
    SIGNAL DMem : data_output : =
    data_output'(X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000");

BEGIN
    PROCESS (DMemwrite, clk)
        BEGIN
            If(clk'event and clk = '1') then
                IF (DMemwrite = '1') THEN
                    DMem(conv_integer(unsigned(DMem_address(6 downto 0)))) <= DMem_write_data; ---- Store Instruction
                END IF;
            End If;
    END PROCESS;

    Data_memory <= DMem;
    DMem_addressout(6 downto 0) <= DMem_address(6 downto 0);
 
    DMem_read_data <= X"00000000" when DMemRead='0'
	            else DMem(conv_integer(unsigned(DMem_address(6 downto 0))));
END behavioral;

