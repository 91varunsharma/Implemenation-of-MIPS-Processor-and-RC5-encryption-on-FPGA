
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
--use IEEE.NUMERIC_STD.ALL;


entity ALU is
    Port ( read_data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           read_data2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  SignEx     : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUOp      : in  std_logic_vector(2 downto 0);
			  ALUSrc     : in  std_logic;
           ALU_Result : out STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

	SIGNAL A_input, B_input : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL ALU_output : STD_LOGIC_VECTOR (31 DOWNTO 0);
	Signal shift_left:STD_LOGIC_VECTOR (31 DOWNTO 0);
	Signal shift_right:STD_LOGIC_VECTOR (31 DOWNTO 0);

begin

	A_input <= read_data1;
	
	B_input <= read_data2 when ALUSrc = '0'
	  Else     SignEx;

	shift_left <= to_stdlogicvector(to_bitvector(A_input) sll conv_integer(unsigned(B_input(4 downto 0))));
	shift_right <=  to_stdlogicvector(to_bitvector(A_input) srl conv_integer(unsigned(B_input(4 downto 0))));
	ALU_Result <= ALU_output;
						
	process(ALUOp, A_input, B_input,shift_left,shift_right)
	begin

		case ALUOp is
			when "000" => ALU_output <= A_input  +  B_input;    -----ADD Operation
			when "001" => ALU_output <= A_input  -  B_input;    -----SUB Operation
			when "010" => ALU_output <= A_input AND B_input;    -----AND Operation
			when "011" =>  ALU_output <= A_input  OR B_input;    -----OR  Operation
			when "100" => ALU_output <= NOT(A_input OR B_input);-----NOR Operation
			when "101" => ALU_output <= shift_left;             ----- Left Shift
			when "110" => ALU_output <= shift_right;            ----- Right Shift
			when others => ALU_output <= X"00000000";

		end case;
	end process;

end Behavioral;

