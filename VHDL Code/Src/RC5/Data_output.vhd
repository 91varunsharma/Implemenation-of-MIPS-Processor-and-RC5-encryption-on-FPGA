----------------------------------------------------------------------------------
-- Author       :   Starboyz
-- Project      :   NYU-6463 MIPS Processor
-- Create Date  :   12/10/2016
-- Design       :   DMem Output Package
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package datamemory is
        type data_output is array(0 to 127) of std_logic_vector(31 downto 0);
end package;


