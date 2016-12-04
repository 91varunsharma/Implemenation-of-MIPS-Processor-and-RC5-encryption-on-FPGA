library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is
    Port ( Instruction : in STD_LOGIC_VECTOR(31 DOWNTO 0); 
    	   Opcode    : in   STD_LOGIC_VECTOR (5 downto 0);
           ALUOp     : out   STD_LOGIC_VECTOR (2 downto 0);
           Rtype     : out  STD_LOGIC;
           LW        : out  STD_LOGIC;
           WriteEn   : out  STD_LOGIC;
           DMemRead  : out  STD_LOGIC;
           DMemWrite : out  STD_LOGIC;
		   Jump      : out  STD_LOGIC;
		   BranchNE  : out  STD_LOGIC;
		   BranchLT  : out  STD_LOGIC;
           Branch    : out  STD_LOGIC );
end ControlUnit;

architecture Behavioral of ControlUnit is
	SIGNAL R_type, LWD, SWD, BEQ, ADDI, SUBI, ANDI, ORI, BNE, BLT, SHL, SHR : STD_LOGIC;
	SIGNAL ALU_Op : STD_LOGIC_VECTOR( 2 DOWNTO 0);

begin

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
	Jump   <= '1' when Opcode = "001100" else '0';

	Process (R_type, ADDI, SUBI, ANDI, ORI, LWD, SWD, )
	begin
		If (R_type='1') then
		ALU_Op <= Instruction(2 downto 0);
		ELSIF((ADDI='1' | LWD ='1' | SWD ='1') and R_type='0') then
			ALU_Op <= "000";
		ELSIF (SUBI='1'and R_type='0') then
			ALU_Op <= "001";
		ELSIF (ANDI='1'and R_type='0') then
			ALU_Op <= "010";
		ELSIF (ORI='1' and R_type='0') then
			ALU_Op <= "011";
		END IF;
	END Process;

	ALUOp <= ALU_Op;

	Branch <= BEQ;
	BranchNE <= BNE;
	BranchLT <= BLT;
	LW <= LWD;
	Rtype <= R_type;
	DMemRead <= LWD;            -----Read Data memory when load instruction
	DMemWrite <= SWD;           ----- Write to Data memory
	WriteEn <= NOT(SWD);        -----Don't write to register file when Store Instruction
	

end Behavioral;

