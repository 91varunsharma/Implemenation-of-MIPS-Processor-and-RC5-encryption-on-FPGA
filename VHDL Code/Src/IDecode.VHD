 
--  IDecode and Register File module (Decodes instruction and implements the register file )

LIBRARY IEEE; 			
    USE IEEE.STD_LOGIC_1164.ALL;
    USE IEEE.STD_LOGIC_ARITH.ALL;
    USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY IDecode IS
	  PORT( Clk         : In std_logic;
	  		Instruction : IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );   
			write_data  : IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );   --------Data to be written to the reister file
			WriteEn 	: IN 	STD_LOGIC;                         --To be made '1' when register file needs to be updated
			read_data1	: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );   --------Operand1 
			read_data2	: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );   --------Operand2
		    SignEx      : OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Rtype       : in  STD_LOGIC;
            LW          : in  STD_LOGIC;
			SW          : in std_logic;
			BLT         : in std_logic;
			BNE         : in std_logic;
			BEQ         : in std_logic;
			reg_arr     : out std_logic_vector(31 downto 0)
			);  
END IDecode;


ARCHITECTURE behavioral of IDecode is

	TYPE register_file IS ARRAY ( 0 TO 31 ) OF STD_LOGIC_VECTOR( 31 DOWNTO 0 );

	Signal Reg_array: register_file := (X"00000000",X"00000001",X"00000002",X"00000000",X"00000004",X"00000005",
								        X"00000006",X"00000007",X"00000008",X"00000009",X"0000000A",X"0000000B",
								        X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000");

	SIGNAL write_register_address 		: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL ALU_result    			   	: STD_LOGIC_VECTOR( 31 DOWNTO 0);
	SIGNAL DMem_read_data               : STD_LOGIC_VECTOR( 31 DOWNTO 0);
	SIGNAL Immediate_value            	: STD_LOGIC_VECTOR( 15 DOWNTO 0);


BEGIN
    
    read_data1 <= Reg_array( CONV_INTEGER(Instruction( 25 DOWNTO 21 )));                 -- Read Register 1
	read_data2 <= Reg_array(CONV_INTEGER(Instruction( 20 DOWNTO 16 )));

   	Immediate_value             <= Instruction( 15 DOWNTO 0 );

	SignEx <= X"0000" & Immediate_value  WHEN Immediate_value(15) = '0'               -- Sign Extend 16-bits to 32-bits
		ELSE	  X"FFFF" & Immediate_value;

    write_register_address <= Instruction( 15 DOWNTO 11 ) WHEN Rtype = '1'              -- To select write Register Address for R type or I type
                      ELSE    Instruction( 20 DOWNTO 16 );
							 
	reg_arr<= reg_array(3);

	PROCESS (WriteEN,Clk)
 	    BEGIN
  		    IF (Clk'event and clk ='1') THEN      -- Write back to register when Write Enable =1 but don't write to 'register 0'
				If (WriteEN='1') then
					Reg_array( CONV_INTEGER( write_register_address)) <= write_data;
			    end if;
		    END IF;
	END PROCESS;

END behavioral;


