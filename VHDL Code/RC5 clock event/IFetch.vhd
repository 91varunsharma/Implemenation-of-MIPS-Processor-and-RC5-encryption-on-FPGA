----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:12:06 12/05/2016 
-- Design Name: 
-- Module Name:    IFetch - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

Entity IFetch is
    Port (
           NextPC      : in  STD_LOGIC_VECTOR (31 downto 0);
           --PC          : out  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
End IFetch;


architecture Behavioral of IFetch is
    
--SIGNAL Program_Counter : STD_LOGIC_VECTOR (31 downto 0);
-- change array index to 1023 later
Type IMemory IS ARRAY (0 to 9) of STD_LOGIC_VECTOR(31 downto 0);

 CONSTANT IMem : IMemory:=IMemory'(X"04020001",X"04050003",X"04010000",
 X"20010001",X"1c430000",X"00431810",X"28650001",X"30000005",
X"20430000",X"fc000000");          
     
begin
   
   Instruction <= IMem(conv_integer(NextPC));
   --PC <= NextPC;

End Behavioral;

