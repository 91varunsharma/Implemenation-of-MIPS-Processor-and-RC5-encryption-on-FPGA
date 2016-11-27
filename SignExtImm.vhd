----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:33:38 04/01/2013 
-- Design Name: 
-- Module Name:    SignExtImm - Behavioral 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SignExtImm is
    Port ( Input : in  STD_LOGIC_VECTOR (15 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end SignExtImm;

architecture Behavioral of SignExtImm is

begin
	
	Output <= std_logic_vector(resize(signed(Input), Output'length));

end Behavioral;

