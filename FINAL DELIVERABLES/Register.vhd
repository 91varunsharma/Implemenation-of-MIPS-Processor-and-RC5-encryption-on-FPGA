----------------------------------------------------------------------------------
-- Author       :   Starboyz
-- Project      :   NYU-6463 MIPS Processor
-- Create Date  :   12/10/2016
-- Design       :   Register File Package
-- FileName     :   Register.vhd
-- Description  :   VHDL code that contains the register file package
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package register_file is
    type register_output is array(0 to 31) of std_logic_vector(31 downto 0);
end package;

