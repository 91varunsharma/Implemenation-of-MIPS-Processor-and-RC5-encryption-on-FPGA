library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
--TYPE register_file IS ARRAY ( 0 TO 31 ) OF STD_LOGIC_VECTOR( 31 DOWNTO 0 );
entity TopModule is
    Port ( SW 			: in  STD_LOGIC_VECTOR (15 downto 0);
           BTN 			: in  STD_LOGIC_VECTOR (4 downto 0);
       --    CLK 			: in  STD_LOGIC;
           LED 			: out  STD_LOGIC_VECTOR (15 downto 0);
           SSEG_CA 		: out  STD_LOGIC_VECTOR (7 downto 0);
           SSEG_AN 		: out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end TopModule;

architecture Behavioral of TopModule is
 
component ALU 
    Port ( read_data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           read_data2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  SignEx     : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUOp      : in  std_logic_vector(2 downto 0);
			  ALUSrc     : in std_logic;
           ALU_Result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
component ControlUnit 
   Port (  Clk        : in   STD_LOGIC;
			  Instruction: in   STD_LOGIC_VECTOR(31 DOWNTO 0); 
			  -- PC        : in   STD_LOGIC_VECTOR (31 downto 0);
			  Read_Data1: in   STD_LOGIC_VECTOR (31 downto 0);
			  Read_Data2: in   STD_LOGIC_VECTOR (31 downto 0);
           ALUOp     : out  STD_LOGIC_VECTOR (2 downto 0);
           NextPC    : out  STD_LOGIC_VECTOR (31 downto 0);
           Rtype     : out  STD_LOGIC;
           LW        : out  STD_LOGIC;
			  SW        : out  STD_LOGIC;
           WriteEn   : out  STD_LOGIC;
           DMemRead  : out  STD_LOGIC;
			  clr 		: in  STD_LOGIC;
           DMemWrite : out  STD_LOGIC;
           BranchNE  : out  STD_LOGIC;
           BranchLT  : out  STD_LOGIC;
           Branch    : out  STD_LOGIC;
			  ALUSrc    : out  STD_LOGIC);
end component;
component Dmemory
	PORT(clk                 : IN 	STD_LOGIC;
		  DMem_address        : IN 	STD_LOGIC_VECTOR(31 DOWNTO 0);
        DMem_write_data	    : IN 	STD_LOGIC_VECTOR(31 DOWNTO 0);
	     DMemRead            : IN 	STD_LOGIC; 
		  DMemwrite           : IN 	STD_LOGIC;
        DMem_read_data	    : OUT 	STD_LOGIC_VECTOR(31 DOWNTO 0);
		  DMem_out_data		 : OUT 	STD_LOGIC_VECTOR(31 DOWNTO 0));
END component;

component IDecode 
  PORT(	Clk       : In std_logic;
	  		Instruction : IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );   
			write_data  : IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );   --------Data to be written to the reister file
			WriteEn 	   : IN 	STD_LOGIC;                         --To be made '1' when register file needs to be updated
			read_data1	: OUT STD_LOGIC_VECTOR( 31 DOWNTO 0 );   --------Operand1 
			read_data2	: OUT STD_LOGIC_VECTOR( 31 DOWNTO 0 );   --------Operand2
		--	ALUOp       : OUT   STD_LOGIC_VECTOR (2 DOWNTO 0);     --------Type of ALU operation
		--	Opcode      : OUT   STD_LOGIC_VECTOR (5 downto 0);     --------Type of Instruction (R/I/J)
		    SignEx     : OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			 Rtype      : in  STD_LOGIC;
           LW        : in  STD_LOGIC;
			  SW        : in  STD_LOGIC;
  			  BLT       : in std_logic;
			  BNE       : in std_logic;
			  BEQ       : in std_logic;
			  reg_arr   : out std_logic_vector(31 downto 0));  
END component;

component IFetch
    Port ( 
           NextPC      : in  STD_LOGIC_VECTOR (31 downto 0);
           --PC          : out  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
End component;
 
signal instruction,NextPC,ReadData1,ReadData2,ALUResult,Write_data,DMemReadData,DMemOutData, reg_arr,SignEx: std_logic_vector(31 downto 0);
signal ALUop: std_logic_vector(2 downto 0);
signal RType,LW,SWD,WriteEN,DMemRead,DMemWrite,BEQ,BLT,BNE,clr, Clk, ALUSrc: std_logic;

begin

write_data <= DMemReadData when LW='1'
    Else    ALUResult;

IDecodePort: IDecode port map(Clk, Instruction,write_data,WriteEN,ReadData1,ReadData2,SignEx,
									   RType,LW,SWD,BLT,BNE,BEQ,reg_arr);
									
ALUPort: ALU port map(ReadData1,ReadData2, SignEx, ALUop,ALUSrc, ALUResult);

ControlUnitPort: ControlUnit port map(Clk,Instruction,Readdata1,Readdata2,ALUop,
										NextPC,RType,LW,SWD,WriteEN,DMemRead,clr,DMemWrite,BNE,BLT,BEQ, ALUSrc);
										
IFetchPort: IFetch port map(NextPC,Instruction);

DMemoryPort:DMemory port map(Clk, ALUResult,ReadData2,DMemRead,DMemWrite,DMemReadData, DMemOutData);


end Behavioral;
			 

