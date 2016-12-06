
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;      --  Dmemory module (implements the Data memory and Load and Store Instruction)
USE IEEE.STD_LOGIC_SIGNED.ALL;

ENTITY Dmemory IS
	PORT(	address 			: IN 	STD_LOGIC_VECTOR(31 DOWNTO 0);
        	DMem_write_data		: IN 	STD_LOGIC_VECTOR(31 DOWNTO 0);
        --  Instruction         : IN 	STD_LOGIC_VECTOR(31 DOWNTO 0);
	   		DMemRead, DMemwrite : IN 	STD_LOGIC;
         -- Clk     			: IN 	STD_LOGIC;
            DMem_read_data		: OUT 	STD_LOGIC_VECTOR(31 DOWNTO 0));
END Dmemory;

ARCHITECTURE behavioral of Dmemory is

Type DMemory IS ARRAY (0 to 37) of STD_LOGIC_VECTOR(31 downto 0);

SIGNAL DMem : DMemory:=DMemory'(X"00000000",X"1c200000",X"1c40fffc",X"00611010",X"2060fff8",
                                X"fc000000",X"1c200000",X"0441e7df",X"2040fff8",X"fc000000",
                                X"1c200000",X"1c40fffc",X"2822ffff",X"00611014",X"00611013",
                                X"2060fff8",X"fc000000",X"1c200000",X"1c40fffc",X"33fffffd",
                                X"00611014",X"00611013",X"2060fff8",X"fc000000",X"1c010000",
                                X"1c02fffc",X"00221810",X"00222011",X"00222812",X"00223013",
                                X"00223814",X"33fffff8",X"2001fff8",X"2826fffc",X"2001fff8",
                                X"04e8ffff",X"2008fff8",X"fc000000"); 



--SIGNAL LWD, SWD : STD_LOGIC;
SIGNAL Dread_data: STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

	DMem_read_data <= Dread_data;

    PROCESS (DMemwrite, DMemRead)

		BEGIN
	
	  		IF (DMemwrite = '1') THEN 

	  			DMem(conv_integer(address)) <= DMem_write_data;   ---- Store Instruction
			    
			ELSIF (DMemRead='1') THEN

				Dread_data <=  DMem(conv_integer(address)); ---- Load Instruction Data read from Data memory

			END IF;

	END PROCESS;

END behavioral;

