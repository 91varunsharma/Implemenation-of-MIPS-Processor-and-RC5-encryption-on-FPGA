---------------------------------------------------------------------------------------------------
-- Author       :   Starboyz
-- Project      :   NYU-6463 MIPS Processor
-- Create Date  :   12/01/2016
-- Design       :   Control Unit
-- Filename     :   ControlUnit.vhd
-- Description  :   VHD code to implement the Control Unit
--
----------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_arith.all;

entity ControlUnit is
   Port (   Clk         : in    STD_LOGIC;
    	    Instruction : in    STD_LOGIC_VECTOR(31 DOWNTO 0);
            skip	: in    STD_LOGIC;
            Read_Data1  : in    STD_LOGIC_VECTOR (31 downto 0);
            Read_Data2  : in    STD_LOGIC_VECTOR (31 downto 0);
            start	: in    STD_LOGIC;
            ALUOp       : out   STD_LOGIC_VECTOR (2 downto 0);
            NextPC      : out   STD_LOGIC_VECTOR (31 downto 0);
            Rtype       : out   STD_LOGIC;
            LW          : out   STD_LOGIC;
            SW          : out   STD_LOGIC;
            WriteEn     : out   STD_LOGIC;
            DMemRead    : out   STD_LOGIC;
            clr         : in    STD_LOGIC;
            DMemWrite   : out   STD_LOGIC;
            BranchNE    : out   STD_LOGIC;
            BranchLT    : out   STD_LOGIC;
            Branch      : out   STD_LOGIC;
            ALUSrc      : out   STD_LOGIC);
end ControlUnit;

architecture Behavioral of ControlUnit is

    	SIGNAL R_type, LWD, SWD, BEQ, ADDI, SUBI, ANDI, ORI, BNE, BLT, SHL, SHR, JUMP, R_ADD, R_SUB, R_AND, R_OR, R_NOR, HAL : STD_LOGIC;
	SIGNAL A, B                                         : STD_LOGIC_VECTOR(31 DOWNTO 0);
    	SIGNAL ALU_ROp , ALU_Op                             : STD_LOGIC_VECTOR(2 DOWNTO 0 );
    	SIGNAL Immediate_value_initial                      : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL Immediate_value                              : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL PCIncby1                                     : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL JumpAddress                                  : STD_LOGIC_VECTOR(25 DOWNTO 0);
	SIGNAL Opcode                                       : STD_LOGIC_VECTOR(5 downto 0);
    	SIGNAL numeric_immediate,integer_immediate_N, Imm   : INTEGER;
    	SIGNAL NextPCSignal                                 : STD_logic_vector(31 downto 0):=X"00000000";

begin

	Immediate_value_initial <= Instruction( 15 DOWNTO 0 );
	JumpAddress             <= Instruction( 25 DOWNTO 0);
	Opcode                  <= Instruction(31 downto 26);
	ALU_ROp                 <= Instruction(2 downto 0);

	
	integer_immediate_N <=conv_integer(Immediate_value_initial) - 65536;
	Imm <= (conv_integer(Immediate_value_initial) - 65536)  WHEN Immediate_value_initial(15) = '1'
                                                            ELSE     conv_integer(Immediate_value_initial);
	PCIncby1 <= NextPCSignal + X"00000001";

	A <= read_data1;
	B <= read_data2;
   
	R_type  <= '1' when Opcode = "000000" else '0';
	ADDI    <= '1' when Opcode = "000001" else '0';
	SUBI    <= '1' when Opcode = "000010" else '0';
	ANDI    <= '1' when Opcode = "000011" else '0';
	ORI     <= '1' when Opcode = "000100" else '0';
	SHL     <= '1' when Opcode = "000101" else '0';
	SHR     <= '1' when Opcode = "000110" else '0';
	LWD     <= '1' when Opcode = "000111" else '0';
	SWD     <= '1' when Opcode = "001000" else '0';
	BLT     <= '1' when Opcode = "001001" else '0';
	BEQ     <= '1' when Opcode = "001010" else '0';
	BNE     <= '1' when Opcode = "001011" else '0';
	JUMP    <= '1' when Opcode = "001100" else '0';
	HAL	<= '1' when Opcode = "111111" else '0';
	R_ADD   <= '1' when ALU_ROp ="000" else '0';
	R_SUB   <= '1' when ALU_ROp ="001" else '0';
    	R_AND   <= '1' when ALU_ROp ="010" else '0';
	R_OR    <= '1' when ALU_ROp ="011" else '0';
	R_NOR   <= '1' when ALU_ROp ="100" else '0';

    Process (Clk, Jump, BNE, BEQ, BLT, Clr)
       begin
	        If (Clk'EVENT AND Clk = '1') then
		        If (Clr ='1' and start='0') then
			        NextPCSignal <= X"00000000";
		        end if;
		
			if(start='1' and clr='0') then
			    If ((BEQ ='1' and (A=B)) or (BLT ='1' and (A < B)) or (BNE ='1' and (A /= B))) then
				NextPCSignal <= conv_std_logic_vector(conv_integer(PCIncby1) + Imm,32);
			    Elsif (Jump = '1') then
				NextPCSignal <= PCincby1(31 downto 26) & JumpAddress;
			    Elsif (skip ='1') then
				NextPCSignal <=NextPCSignal + '1' ;
			    Elsif (HAL ='1') then
				NextPCSignal <=NextPCSignal;
			    Else
				NextPCSignal <=NextPCSignal + '1' ;
			    End if;
			end if;
            End if;
    End Process;

    Process (R_type, ADDI, SUBI, ANDI, ORI, LWD, SWD, R_AND, R_OR, R_NOR, R_SUB, R_ADD, SHL, SHR)
        begin
            IF(((ADDI='1' or LWD ='1' or SWD ='1') and R_type='0') OR (R_ADD ='1' and R_type='1')) then
		    	ALU_Op <= "000";
            ELSIF ((SUBI='1'and R_type='0') OR (R_SUB='1'and R_type='1')) then
		        ALU_Op <= "001";
            ELSIF ((ANDI='1'and R_type='0') OR (R_AND='1'and R_type='1'))then
		        ALU_Op <= "010";
            ELSIF ((ORI='1' and R_type='0') Or (R_OR='1'and R_type='1'))then
                ALU_Op <= "011";
            ELSIF (R_NOR='1'and R_type='1') then
	            ALU_Op <= "100";
            ELSIF (SHL='1' and R_type='0') then
                ALU_Op <= "101";
            ELSIF (SHR='1' and R_type='0') then
                ALU_Op <= "110";
            else
                ALU_Op <= "111";
            END IF;
    END Process;
	
    ALUOp <= ALU_Op;

    Branch    <= BEQ;
    BranchNE  <= BNE;
    BranchLT  <= BLT;
    SW        <= SWD;
    LW        <= LWD;
    Rtype     <= R_type;
    DMemRead  <= LWD;            -----Read Data memory when load instruction
    DMemWrite <= SWD;            ----- Write to Data memory
	        
    NextPC<=NextPCSignal;
    ALUSrc <= LWD Or SWD Or ADDI Or SUBI Or ANDI Or ORI Or SHL Or SHR;

    Process(SWD, BEQ, BLT, BNE, JUMP)
        begin
            if ((SWD OR BEQ OR BLT OR BNE OR JUMP)='1') then
                WriteEn <='0';
            else
                WriteEn <= '1';
            end if;
    end process;
end Behavioral;

