----------------------------------------------------------------------------------
-- Author       :   Starboyz
-- Project      :   NYU-6463 MIPS Processor
-- Create Date  :   12/05/2016
-- Design       :   NYU-6463 MIPS Processor Top Module
-- FileName     :   TopModule.vhd
-- Description  :   VHDL code that contains the top module
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.datamemory.all;
use work.register_file.all;


entity TopModule is
    Port (
            SW      :   IN  STD_LOGIC_VECTOR (15 downto 0);
            BTN     :   IN  STD_LOGIC_VECTOR (4 downto 0);
            CLK     :   IN  STD_LOGIC;
            LED     :   OUT STD_LOGIC_VECTOR (15 downto 0);
            SSEG_CA :   OUT STD_LOGIC_VECTOR (7 downto 0);
            SSEG_AN :   OUT STD_LOGIC_VECTOR (7 downto 0)
    );
end TopModule;

architecture Behavioral of TopModule is
 
    component ALU
            Port (  read_data1  : IN    STD_LOGIC_VECTOR (31 downto 0);
                    read_data2  : IN    STD_LOGIC_VECTOR (31 downto 0);
                    SignEx      : IN    STD_LOGIC_VECTOR (31 downto 0);
                    ALUOp       : IN    STD_LOGIC_VECTOR (2 downto 0);
                    ALUSrc      : IN    STD_LOGIC;
                    ALU_Result  : OUT   STD_LOGIC_VECTOR (31 downto 0));
    end component;

    component ControlUnit
        Port (  Clk         :   in  STD_LOGIC;
                Instruction :   in  STD_LOGIC_VECTOR(31 DOWNTO 0);
                skip		:   in  STD_LOGIC;
                Read_Data1  :   in  STD_LOGIC_VECTOR (31 downto 0);
                Read_Data2  :   in  STD_LOGIC_VECTOR (31 downto 0);
                start       :   in  STD_LOGIC;
                ALUOp       :   out STD_LOGIC_VECTOR (2 downto 0);
                NextPC      :   out STD_LOGIC_VECTOR (31 downto 0);
                Rtype       :   out STD_LOGIC;
                LW          :   out STD_LOGIC;
                SW          :   out STD_LOGIC;
                WriteEn     :   out STD_LOGIC;
                DMemRead    :   out STD_LOGIC;
                clr         :   in  STD_LOGIC;
                DMemWrite   :   out STD_LOGIC;
                BranchNE    :   out STD_LOGIC;
                BranchLT    :   out STD_LOGIC;
                Branch      :   out STD_LOGIC;
                ALUSrc      :   out STD_LOGIC);
    end component;

    component Dmemory
        PORT(
            clk             :   IN  STD_LOGIC;
            DMem_address    :   IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
            DMem_write_data :   IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
            DMemRead        :   IN  STD_LOGIC;
            DMemwrite       :   IN  STD_LOGIC;
            DMem_read_data  :   OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            DMem_out_data   :   OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            Data_memory     :   out data_output;
            DMem_addressout :   out STD_LOGIC_VECTOR(6 DOWNTO 0)
            );
    END component;

    component IDecode
        PORT(	Clk         :   In  std_logic;
                Instruction :   IN  STD_LOGIC_VECTOR( 31 DOWNTO 0 );
                write_data  :   IN  STD_LOGIC_VECTOR( 31 DOWNTO 0 );   -- Data to be written to the reister file
                WriteEn     :   IN 	STD_LOGIC;  -- To be made '1' when register file needs to be updated
                read_data1	:   OUT STD_LOGIC_VECTOR( 31 DOWNTO 0 );  -- Operand1
                read_data2  :   OUT STD_LOGIC_VECTOR( 31 DOWNTO 0 );  -- Operand2
                SignEx      :   OUT STD_LOGIC_VECTOR( 31 DOWNTO 0 );
                Rtype       :   in  STD_LOGIC;
                LW          :   in  STD_LOGIC;
                SW          :   in  STD_LOGIC;
                BLT         :   in  std_logic;
                BNE         :   in  std_logic;
                BEQ         :   in  std_logic;
                reg_arr     :   out std_logic_vector(31 downto 0);
                skip        : out std_logic;
                reg_file    : out register_output);
    END component;

    component IFetch
        Port (
                NextPC      :   in  STD_LOGIC_VECTOR (31 downto 0);
                Instruction :   out STD_LOGIC_VECTOR (31 downto 0));
    End component;
 
    signal instruction,NextPC,ReadData1,ReadData2,ALUResult,Write_data,DMemReadData,DMemOutData, reg_arr,SignEx : std_logic_vector(31 downto 0);
    signal ALUop: std_logic_vector(2 downto 0);
    signal dmem_addressout: std_logic_vector(6 downto 0);
    signal RType,LW,SWD,WriteEN,DMemRead,DMemWrite,BEQ,BLT,BNE, ALUSrc, skip: std_logic;
    signal clr,start: std_logic:='0';
    Signal datamemory: data_output;
    Signal reg_file: register_output;

    component Hex2LED
        port (  CLK :   in  STD_LOGIC;
                X   :   in  STD_LOGIC_VECTOR (3 downto 0);
                Y   :   out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    type arr is array(0 to 22) of std_logic_vector(7 downto 0);
    signal NAME: arr;
    constant CNTR_MAX : std_logic_vector(23 downto 0) := x"030D40"; --100,000,000 = clk cycles per second
    constant VAL_MAX : std_logic_vector(3 downto 0) := "1001"; --9
    constant RESET_CNTR_MAX : std_logic_vector(17 downto 0) := "110000110101000000";-- 100,000,000 * 0.002 = 200,000 = clk cycles per 2 ms
    signal Cntr : std_logic_vector(26 downto 0) := (others => '0');
    signal Val : std_logic_vector(3 downto 0) := (others => '0');
    signal hexval: std_logic_vector(31 downto 0):=x"0123ABCD";
    signal clk_cntr_reg : std_logic_vector (4 downto 0) := (others=>'0');


begin

    write_data <= DMemReadData when LW='1'
        Else    ALUResult;
    led<=sw;
    process(btn,sw)
        begin
            if(btn(0)='1')then
                clr<='1';
            end if;

            if(sw(15)='1') then
                hexval<=NextPC;
            end if;

            if(btn(3)='1') then
                clr<='0';
                start<='1';
            end if;
            if(btn(1)='1')then
                hexval<=Datamemory(conv_integer(sw(6 downto 0)));
            end if;

            if(btn(2)='1')then
                hexval<=reg_file(conv_integer(sw(4 downto 0)));
            end if;
    end process;

    timer_counter_process : process (CLK)
        begin
            if (rising_edge(CLK)) then
                if ((Cntr = CNTR_MAX) or (BTN(4) = '1')) then
                    Cntr <= (others => '0');
                else
                    Cntr <= Cntr + 1;
                end if;
            end if;
end process;


    timer_inc_process : process (CLK)
        begin
            if (rising_edge(CLK)) then
                if (BTN(4) = '1') then
                    Val <= (others => '0');
                elsif (Cntr = CNTR_MAX) then
                    if (Val = VAL_MAX) then
                        Val <= (others => '0');
                    else
                        Val <= Val + 1;
                    end if;
                end if;
            end if;
    end process;

 
    with Val select
        SSEG_AN <= "01111111" when "0001",
                      "10111111" when "0010",
                      "11011111" when "0011",
                      "11101111" when "0100",
                      "11110111" when "0101",
                      "11111011" when "0110",
                      "11111101" when "0111",
                      "11111110" when "1000",
                      "11111111" when others;

    with Val select
        SSEG_CA <= NAME(0) when "0001",
                      NAME(1) when "0010",
                      NAME(2)when "0011",
                      NAME(3) when "0100",
                      NAME(4) when "0101",
                      NAME(5) when "0110",
                      NAME(6) when "0111",
                      NAME(7) when "1000",
                      NAME(0) when others;

    IDecodePort:IDecode port map(Clk, Instruction,write_data,WriteEN,ReadData1,ReadData2,SignEx,
                RType,LW,SWD,BLT,BNE,BEQ,reg_arr,skip, reg_file);

    ALUPort: ALU port map(ReadData1,ReadData2, SignEx, ALUop,ALUSrc, ALUResult);

    ControlUnitPort:ControlUnit port map(Clk,Instruction,skip,Readdata1,Readdata2,start,ALUop,
                    NextPC,RType,LW,SWD,WriteEN,DMemRead,clr,DMemWrite,BNE,BLT,BEQ, ALUSrc);

    IFetchPort: IFetch port map(NextPC,Instruction);

    DMemoryPort:DMemory port map(Clk, ALUResult,ReadData2,DMemRead,DMemWrite,DMemReadData, DMemOutData, datamemory,
                DMem_addressout);

    CONV1: Hex2LED port map (CLK => CLK, X => HexVal(31 downto 28), Y => NAME(0));
    CONV2: Hex2LED port map (CLK => CLK, X => HexVal(27 downto 24), Y => NAME(1));
    CONV3: Hex2LED port map (CLK => CLK, X => HexVal(23 downto 20), Y => NAME(2));
    CONV4: Hex2LED port map (CLK => CLK, X => HexVal(19 downto 16), Y => NAME(3));
    CONV5: Hex2LED port map (CLK => CLK, X => HexVal(15 downto 12), Y => NAME(4));
    CONV6: Hex2LED port map (CLK => CLK, X => HexVal(11 downto 8), Y => NAME(5));
    CONV7: Hex2LED port map (CLK => CLK, X => HexVal(7 downto 4), Y => NAME(6));
    CONV8: Hex2LED port map (CLK => CLK, X => HexVal(3 downto 0), Y => NAME(7));
end Behavioral;
			 

