
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;      --  Dmemory module (implements the Data memory and Load and Store Instruction)
USE IEEE.STD_LOGIC_SIGNED.ALL;
use work.datamemory.all;

ENTITY Dmemory IS
	PORT(clk             : in STD_LOGIC;
			DMem_address        : IN 	STD_LOGIC_VECTOR(31 DOWNTO 0);
        DMem_write_data	 : IN 	STD_LOGIC_VECTOR(31 DOWNTO 0);
	     DMemRead: IN 	STD_LOGIC;
		   DMemwrite : IN 	STD_LOGIC;
             DMem_read_data	 : OUT 	STD_LOGIC_VECTOR(31 DOWNTO 0);
				 DMem_out_data	: OUT 	STD_LOGIC_VECTOR(31 downto 0);
				 Data_memory: out data_output );
END Dmemory;

ARCHITECTURE behavioral of Dmemory is

SIGNAL DMem : data_output:=data_output'(X"00000000",X"1c200000",X"1c40fffc",X"00611010",X"2060fff8",
                                X"fc000000",X"1c200000",X"0441e7df",X"2040fff8",X"fc000000",
                                X"1c200000",X"1c40fffc",X"2822ffff",X"00611014",X"00611013",
                                X"2060fff8",X"fc000000",X"1c200000",X"1c40fffc",X"33fffffd",
                                X"00611014",X"00611013",X"2060fff8",X"fc000000",X"1c010000",
                                X"1c02fffc",X"00221810", X"2060fff8",X"fc000000",X"1c010000",
                                X"1c02fffc",X"00221810"); 



--SIGNAL LWD, SWD : STD_LOGIC;

BEGIN

    PROCESS (DMemwrite, clk)
	   BEGIN                                                   -----add clock
	    If(clk'event and clk = '1') then
	     IF (DMemwrite = '1') THEN 
				
		     DMem(conv_integer(DMem_address)) <= DMem_write_data; 		---- Store Instruction
			  DMem_out_data <=  DMem(conv_integer(DMem_address));
	     END IF;
      End If;
   END PROCESS;
	
 Data_memory <= DMem;
 
    PROCESS (DMemRead, clk)
	   BEGIN -----add clock
	    If(clk'event and clk = '1') then
			IF (DMemRead='1') THEN

		      DMem_read_data <=  DMem(conv_integer(DMem_address));       ---- Load Instruction Data read from Data memory

	      END IF;
			End if;
			End Process;

END behavioral;

