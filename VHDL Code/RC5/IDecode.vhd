 
--  IDecode and Register File module (Decodes instruction and implements the register file )

LIBRARY IEEE; 			
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY IDecode IS
	  PORT(
	  		Instruction : IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );   
			write_data  : IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );   --------Data to be written to the reister file
			WriteEn 	: IN 	STD_LOGIC;                         --To be made '1' when register file needs to be updated
			read_data1	: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );   --------Operand1 
			read_data2	: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );   --------Operand2
		--	ALUOp       : OUT   STD_LOGIC_VECTOR (2 DOWNTO 0);     --------Type of ALU operation
		--	Opcode      : OUT   STD_LOGIC_VECTOR (5 downto 0);     --------Type of Instruction (R/I/J)
		--	SignExtImm  : OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			 Rtype     : in  STD_LOGIC;
           LW        : in  STD_LOGIC;
			  SW      : in std_logic;
			  BLT:in std_logic;
			  BNE:in std_logic;
			  BEQ:in std_logic;
			  reg_arr: out std_logic_vector(31 downto 0)
			);  
END IDecode;



ARCHITECTURE behavioral of IDecode is

	TYPE register_file IS ARRAY ( 0 TO 31 ) OF STD_LOGIC_VECTOR( 31 DOWNTO 0 );

	Signal Reg_array: register_file := (X"00000000",X"00000001",X"00000004",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
								        X"00000000",X"00000000");

--	SIGNAL OP_code                      : STD_LOGIC_VECTOR( 5 DOWNTO 0 );
--	SIGNAL ALU_Op                       : STD_LOGIC_VECTOR( 2 DOWNTO 0);
	SIGNAL write_register_address 		: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL read_register_1_address		: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL read_register_2_address		: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL write_register_address_R		: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL write_register_address_I		: STD_LOGIC_VECTOR( 4 DOWNTO 0 );
	SIGNAL ALU_result    				: STD_LOGIC_VECTOR( 31 DOWNTO 0);
	SIGNAL DMem_read_data               : STD_LOGIC_VECTOR( 31 DOWNTO 0);
	SIGNAL Immediate_value          	: STD_LOGIC_VECTOR( 15 DOWNTO 0);
--	SIGNAL LW                           : STD_LOGIC;
--	SIGNAL Rtype                        : STD_LOGIC;
	SIGNAL SignEx                       : STD_LOGIC_VECTOR(31 downto 0);
	--SIGNAL write_data_signal            : STD_LOGIC_VECTOR( 31 DOWNTO 0);
	


BEGIN
    
 --   OP_code                     <= Instruction( 31 DOWNTO 26 );
	read_register_1_address 	<= Instruction( 25 DOWNTO 21 );
   	read_register_2_address 	<= Instruction( 20 DOWNTO 16 );
   	write_register_address_R	<= Instruction( 15 DOWNTO 11 );
   	write_register_address_I 	<= Instruction( 20 DOWNTO 16 );
   	Immediate_value             <= Instruction( 15 DOWNTO 0 );
  -- 	ALU_Op                  <= Instruction( 2 DOWNTO 0 );
--write_data_signal<=write_data;
	
 --   Opcode <= Op_code;

 --	ALUOp <= ALU_Op;

	SignEx <= X"0000" & Immediate_value  WHEN Immediate_value(15) = '0'               -- Sign Extend 16-bits to 32-bits
		ELSE	  X"FFFF" & Immediate_value;
					
	read_data1 <= Reg_array( CONV_INTEGER(read_register_1_address));                 -- Read Register 1

							 
	read_data2 <= Reg_array(CONV_INTEGER(read_register_2_address)) WHEN (Rtype='1' OR BEQ='1' OR BLT='1' OR BNE='1')  -- Read Register 2 for Rtypr instruction 
		  ELSE    SignEx;                                                             -- Take Sign Extended Immediate as Operand2 for I type instruction
					
    write_register_address <= write_register_address_R WHEN Rtype = '1'              -- To select write Register Address for R type or I type
                      ELSE    write_register_address_I;
	reg_arr<= reg_array(2);

--	write_data_signal <= ALU_result( 31 DOWNTO 0 ) WHEN LW = '0'           -- ALU result to be written in register file
--		  ELSE    DMem_read_data;                                         --Data read from Dmem for load instruction and to be written in register file

	

--	PROCESS (WriteEN,write_register_address)
--
--		BEGIN

--	  		IF (WriteEn = '1') THEN      -- Write back to register when Write Enable =1 but don't write to 'register 0'
			    Reg_array( CONV_INTEGER( write_register_address)) <= write_data when (WriteEN='1');

--			END IF;
--
--	END PROCESS;

END behavioral;


