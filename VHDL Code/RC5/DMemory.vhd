
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 
--use ieee.numeric_std.all   ;  --  Dmemory module (implements the Data memory and Load and Store Instruction)
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.datamemory.all;

ENTITY Dmemory IS
	PORT(clk             : in STD_LOGIC;
			DMem_address        : IN 	STD_LOGIC_VECTOR(31 DOWNTO 0);
        DMem_write_data	 : IN 	STD_LOGIC_VECTOR(31 DOWNTO 0);
	     DMemRead: IN 	STD_LOGIC;
		   DMemwrite : IN 	STD_LOGIC;
             DMem_read_data	 : OUT 	STD_LOGIC_VECTOR(31 DOWNTO 0);
				 DMem_out_data	: OUT 	STD_LOGIC_VECTOR(31 downto 0);
				 Data_memory: out data_output;
			DMem_addressout        : out 	STD_LOGIC_VECTOR(6 DOWNTO 0) );
END Dmemory;

ARCHITECTURE behavioral of Dmemory is

SIGNAL DMem : data_output:=data_output'(X"9bbbd8c8",X"1a37f7fb",X"46f8e8c5",X"460c6085",X"70f83b8a",X"284b8303",X"513e1454",X"f621ed22",
X"3125065d",X"11a83a5d",X"d427686b",X"713ad82d",X"4b792f99",X"2799a4dd",X"a7901c49",X"dede871a",
X"36c03196",X"a7efc249",X"61a78bb8",X"3b0a1d2b",X"4dbfca76",X"ae162167",X"30d76b0a",X"43192304",
X"f6cc1431",X"65046380",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"ffffffff",X"ffffffff",X"00000000",X"4c719eca",X"593eff1f",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000"); 



--SIGNAL LWD, SWD : STD_LOGIC;

BEGIN

    PROCESS (DMemwrite, clk)
	   BEGIN                                                   -----add clock
	    If(clk'event and clk = '1') then
	     IF (DMemwrite = '1') THEN 
				
		     DMem(conv_integer(unsigned(DMem_address(6 downto 0)))) <= DMem_write_data; 		---- Store Instruction
			  
	     END IF;
      End If;
   END PROCESS;

--DMem_out_data <=  DMem(conv_integer(DMem_address));
Data_memory <= DMem;
DMem_addressout(6 downto 0) <= DMem_address(6 downto 0);
 
    --PROCESS (DMemRead, clk)
	   --BEGIN -----add clock
	    --If(clk'event and clk = '1') then
			--IF (DMemRead='1') THEN

		     -- DMem_read_data <=  DMem(conv_integer(DMem_address)); --when DMemRead='1'
						--ELSE X"00000000";---- Load Instruction Data read from Data memory

	   -- END IF;
		--End if;
	--End Process;
DMem_read_data <= X"00000000" when DMemRead='0'
	else DMem(conv_integer(unsigned(DMem_address(6 downto 0)))); --when 
						--ELSE X"00000000";


END behavioral;

