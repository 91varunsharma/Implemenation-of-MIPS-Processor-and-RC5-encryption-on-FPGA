--  IDecode module (implements the register file )

LIBRARY IEEE; 			
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY IDecode IS
	  PORT(	clk     	: IN 	STD_LOGIC;
	  		Instruction : IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			read_data 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			ALU_result	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			RegWrite 	: IN 	STD_LOGIC;
			LW 	        : IN 	STD_LOGIC;
			Rtype 		: IN 	STD_LOGIC;
			read_data1	: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			read_data2	: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			ALUOp       : OUT   STD_LOGIC_VECTOR (2 DOWNTO 0);
			OPcode      : OUT   STD_LOGIC_VECTOR (5 downto 0);
			SignExtImm  : OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 ));
END IDecode;


ARCHITECTURE behavioral of IDecode is

	TYPE register_file IS ARRAY ( 0 TO 31 ) OF STD_LOGIC_VECTOR( 31 DOWNTO 0 );

	Signal Reg_array: register_file := (X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000");

	SIGNAL OP_code                       : STD_LOGIC_VECTOR( 5 DOWNTO 0 );
	SIGNAL ALU_Op                       : STD_LOGIC_VECTOR( 2 DOWNTO 0);
	SIGNAL write_register_address 		: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL read_register_1_address		: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL read_register_2_address		: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL write_register_address_R		: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL write_register_address_I		: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL write_data					: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	SIGNAL Instruction_immediate_value	: STD_LOGIC_VECTOR( 15 DOWNTO 0 );

BEGIN
    
    OP_code                     <= Instruction( 31 DOWNTO 26 );
	read_register_1_address 	<= Instruction( 25 DOWNTO 21 );
   	read_register_2_address 	<= Instruction( 20 DOWNTO 16 );
   	write_register_address_R	<= Instruction( 15 DOWNTO 11 );
   	write_register_address_I 	<= Instruction( 20 DOWNTO 16 );
   	ALU_Op                      <= Instruction( 2 DOWNTO 0 );

   	Instruction_immediate_value <= Instruction( 15 DOWNTO 0 );

					
	read_data1 <= register_array( CONV_INTEGER( read_register_1_address ));  -- Read Register 1 Operation

							 
	read_data2 <= register_array( CONV_INTEGER( read_register_2_address )) WHEN Rtype = '1'  -- Read Register 2 Operation
		  ELSE    SignExtImm;
					
    write_register_address <= write_register_address_R WHEN Rtype = '1'   -- To select write Register Address
                      ELSE    write_register_address_I;


	write_data <= ALU_result( 31 DOWNTO 0 ) WHEN ( LW = '0' ) 	-- Mux to bypass data memory for Rtype instruction
		  ELSE    read_data;


    SignExtImm <= X"0000" & Instruction_immediate_value WHEN Instruction_immediate_value(15) = '0'  -- Sign Extend 16-bits to 32-bits
		ELSE	  X"FFFF" & Instruction_immediate_value;

	
    Opcode <= Op_code;

	ALUOp <= ALU_Op;

	PROCESS (clk)

		BEGIN

		IF (clk'EVENT AND clk = '1') then
	
	  		IF (RegWrite = '1' AND write_register_address /= 0) THEN                  -- Write back to register but don't write to register 0
			    Reg_array( CONV_INTEGER( write_register_address)) <= write_data;

			END IF;

		END IF;

	END PROCESS;

END behavioral;


