----------------------------------------------------------------------------------
-- Author       :   Starboyz
-- Project      :   NYU-6463 MIPS Processor
-- Create Date  :   12/05/2016
-- Design       :   Instruction Fetch
-- FileName     :   IFetch.vhd
-- Description  :   VHDL code that fetches an instruction
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity IFetch is
    Port (  NextPC      :   in  STD_LOGIC_VECTOR (31 downto 0);
            Instruction :   out STD_LOGIC_VECTOR (31 downto 0));
End IFetch;


architecture Behavioral of IFetch is
    
    Type IMemory IS ARRAY (0 to 20) of STD_LOGIC_VECTOR(31 downto 0);

    CONSTANT IMem : IMemory:=IMemory'(X"04010002",X"0403000a",X"0404000e",X"04050002",X"20640002",X"20630001",
    X"00642011",X"08040001",X"00622012",X"0c44000a",X"00622013",X"1c620001",X"1044000a",X"00622014",
    X"1444000a",X"1844000a",X"2805fffe",X"24850000",X"2c850000",X"30000014",X"fc000000");
     
begin
   Instruction <= IMem(conv_integer(NextPC));
End Behavioral;

