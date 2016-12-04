
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;


entity ALU is
    Port ( read_data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           read_data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUOp      : in  std_logic_vector(2 downto 0);
           Opcode     : in  STD_LOGIC_VECTOR (5 downto 0);
           ALU_Result : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

	SIGNAL A_input, B_input : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL ALU_output : STD_LOGIC_VECTOR (31 DOWNTO 0);	
	SIGNAL Zero : out  STD_LOGIC;

begin

	A_input <= read_data1;
	B_input <= read_data2;
				  
	Zero <= '1' when (ALU_output = X"00000000") else '0';

	ALU_Result <= ALU_output;
						
	process(ALUOp, A_input, B_input)
	begin

		case ALUOp is
			when "000" => ALU_output <= A_input  +  B_input;       -----ADD Operation
			when "001" => ALU_output <= A_input  -  B_input;       -----SUB Operation
			when "010" => ALU_output <= A_input AND B_input;       -----AND Operation
			when "011" => ALU_output <= A_input  OR B_input;       -----OR  Operation
			when "100" => ALU_output <= NOT(A_input OR B_input);   -----NOR Operation
			when others => ALU_output <= X"00000000";

		end case;
	end process;

end Behavioral;

