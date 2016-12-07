library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_arith.all;

entity ControlUnit is
   Port ( Clk        : in   STD_LOGIC;
    	  Instruction: in   STD_LOGIC_VECTOR(31 DOWNTO 0); 
         --  PC        : in   STD_LOGIC_VECTOR (31 downto 0);
		   Read_Data1: in   STD_LOGIC_VECTOR (31 downto 0);
		   Read_Data2: in   STD_LOGIC_VECTOR (31 downto 0);
           ALUOp     : out  STD_LOGIC_VECTOR (2 downto 0);
           NextPC    : out  STD_LOGIC_VECTOR (31 downto 0);
           Rtype     : out  STD_LOGIC;
           LW        : out  STD_LOGIC;
		   SW        : out  STD_LOGIC;
           WriteEn   : out  STD_LOGIC;
           DMemRead  : out  STD_LOGIC;
		   clr       : in  STD_LOGIC;
           DMemWrite : out  STD_LOGIC;
           BranchNE  : out  STD_LOGIC;
           BranchLT  : out  STD_LOGIC;
           Branch    : out  STD_LOGIC);
end ControlUnit;

architecture Behavioral of ControlUnit is

	SIGNAL R_type, LWD, SWD, BEQ, ADDI, SUBI, ANDI, ORI, BNE, BLT, SHL, SHR, JUMP, ALU_ROp, ADD, SUB, AND, OR, NOR : STD_LOGIC;
	SIGNAL A_input, B_input                     : STD_LOGIC_VECTOR (31 DOWNTO 0);
--	SIGNAL ALU_Op                               : STD_LOGIC_VECTOR(2 DOWNTO 0 );
	SIGNAL Immediate_value_initial              : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL Immediate_value                      : STD_LOGIC_VECTOR(15 DOWNTO 0);
--	SIGNAL read_register_1_address_Branch       : STD_LOGIC_VECTOR(4 DOWNTO 0 );
--	SIGNAL read_register_2_address_Branch       : STD_LOGIC_VECTOR(4 DOWNTO 0 );
	SIGNAL PCIncby1                             : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL JumpAddress                          : STD_LOGIC_VECTOR(25 DOWNTO 0);
--	SIGNAL read_data1_Branch                    : STD_LOGIC_VECTOR(31 downto 0);
--  SIGNAl read_data2_Branch                    : STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL Opcode                               : STD_LOGIC_VECTOR(5 downto 0);
	Signal PC        :   STD_LOGIC_VECTOR (31 downto 0):=x"00000000";
signal numeric_immediate,numeric_immediate1 : INTEGER;

--	TYPE register_file IS ARRAY ( 0 TO 31 ) OF STD_LOGIC_VECTOR( 31 DOWNTO 0 );

--	Signal Reg_array: register_file := (X"00000000",X"00000001",X"00000002",X"00000000",X"00000000",X"00000000",
--					    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
--					    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
--					    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
--					    X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
--					    X"00000000",X"00000000");


begin

	Immediate_value_initial <= Instruction( 15 DOWNTO 0 );
	JumpAddress <= Instruction( 25 DOWNTO 0);
	Opcode<=Instruction(31 downto 26);
	ALU_ROp<=Instruction(2 downto 0);

--	read_register_1_address_Branch 	<= Instruction( 25 DOWNTO 21 );
 --  	read_register_2_address_Branch 	<= Instruction( 20 DOWNTO 16 );
	
	numeric_immediate<=conv_integer(Immediate_value_initial);
--	numeric_immediate1<=NUMERIC_IMMEDIATE - 65536;
		
		
   	Immediate_value <= conv_std_logic_vector((NUMERIC_IMMEDIATE - 65536), 16)  WHEN Immediate_value_initial(15) = '1'
			   ELSE     Immediate_value_initial;

   --	read_data1_Branch <= reg_array( CONV_INTEGER(read_register_1_address_Branch));  -- Read Register Rs for Branch

--	read_data2_Branch <= reg_array(CONV_INTEGER(read_register_2_address_Branch));   -- Read Register Rt for Branch

	PCIncby1 <= PC + X"00000001";

	A_input <= read_data1;
	B_input <= read_data2;
   
	R_type <= '1' when Opcode = "000000" else '0';
	ADDI   <= '1' when Opcode = "000001" else '0';
	SUBI   <= '1' when Opcode = "000010" else '0';
	ANDI   <= '1' when Opcode = "000011" else '0';
	ORI    <= '1' when Opcode = "000100" else '0';
	SHL    <= '1' when Opcode = "000101" else '0';
	SHR    <= '1' when Opcode = "000110" else '0';
	LWD    <= '1' when Opcode = "000111" else '0';
	SWD    <= '1' when Opcode = "001000" else '0';
	BLT    <= '1' when Opcode = "001001" else '0';
	BEQ    <= '1' when Opcode = "001010" else '0';
	BNE    <= '1' when Opcode = "001011" else '0';
	JUMP   <= '1' when Opcode = "001100" else '0';
	ADD    <= '1' when ALU_ROp ="000" else '0';
	SUB    <= '1' when ALU_ROp ="001" else '0';
    AND    <= '1' when ALU_ROp ="010" else '0';
	OR     <= '1' when ALU_ROp ="011" else '0';
	NOR    <= '1' when ALU_ROp ="100" else '0';

    Process (Clk, Jump, BNE, BEQ, BLT,clr)
    begin
--	   If (Clr ='1') then
--				PC <= X"00000000";
		If (Clk'EVENT AND Clk = '1') then
			 If ((BEQ ='1' and (A_input=B_input)) or (BLT ='1' and (A_input < B_input)) or (BNE ='1' and (A_input /= B_input))) then
					NextPC <= conv_std_logic_vector(conv_integer(PCIncby1) + conv_integer(Immediate_value),32);
			 Elsif (Jump = '1') then
					NextPC <= PCIncby1(31 DOWNTO 26) & JumpAddress;
			 Else
					NextPC <= PCIncby1;
			End if;
	    End If;
   -- End if;

    End Process;


--	Process (R_type, ADDI, SUBI, ANDI, ORI, LWD, SWD )
--	   begin
--		If (R_type='1') then
--		   ALU_Op <= Instruction(2 downto 0);
--		ELSIF((ADDI='1' or LWD ='1' or SWD ='1') and R_type='0') then
--			ALU_Op <= "000";
--		ELSIF (SUBI='1'and R_type='0') then
--			ALU_Op <= "001";
--		ELSIF (ANDI='1'and R_type='0') then
--			ALU_Op <= "010";
--		ELSIF (ORI='1' and R_type='0') then
--			ALU_Op <= "011";
--		ELSIF (SHL='1' and R_type='0') then
--         ALU_Op <= "101";
--		ELSIF (SHR='1' and R_type='0') then
--         ALU_Op <= "110";
--		END IF;
--	END Process;
--	ALUOp <= ALU_Op;

   --ALUOp <= Instruction(2 downto 0) when (R_type='1' );
	ALUOp <= "000" when (((ADDI='1' or LWD ='1' or SWD ='1') and R_type='0') Or (ADD ='1' and R_type='1'));
	ALUOp <= "001" when ((SUBI='1'and R_type='0') Or (SUB='1'and R_type='1'));
	ALUOp <= "010" when ((ANDI='1'and R_type='0') Or (AND='1'and R_type='1'));
	ALUOp <= "011" when ((ORI='1'and R_type='0') Or (OR='1'and R_type='1'));
	ALUOp <= "100" when (NOR='1'and R_type='1');
	ALUOp <= "101" when (SHL='1'and R_type='0');
	ALUOp <= "110" when (SHR='1'and R_type='0');
	
    Branch <= BEQ;
    BranchNE <= BNE;
	BranchLT <= BLT;
    SW <= SWD;
	LW <= LWD;
	Rtype <= R_type;
	DMemRead <= LWD;            -----Read Data memory when load instruction
	DMemWrite <= SWD;           ----- Write to Data memory
	WriteEn <= NOT(SWD OR BEQ OR BLT OR BNE OR JUMP) ;        -----Don't write to register file when Store Instruction


end Behavioral;

