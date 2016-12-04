library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IFetch is
    Port ( clk : in STD_LOGIC;
    		address : in  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end IFetch;

architecture Behavioral of IFetch is

Type IMemory IS ARRAY (0 to 1023) of STD_LOGIC_VECTOR(31 downto 0);

 CONSTANT IMem : IMemory:=IMemory'(  
                                    X"00000000",X"1c200000",X"1c40fffc",X"00611010",X"2060fff8",X"fc000000",X"1c200000",
									X"0441e7df",X"2040fff8",X"fc000000",X"1c200000",X"1c40fffc",X"2822ffff",X"00611014",
									X"00611013",X"2060fff8",X"fc000000",X"1c200000",X"1c40fffc",X"33fffffd",X"00611014",
									X"00611013",X"2060fff8",X"fc000000",X"1c010000",X"1c02fffc",X"00221810",X"00222011",
									X"00222812",X"00223013",X"00223814",X"33fffff8",X"2001fff8",X"2826fffc",X"2001fff8",										X"04e8ffff",X"2008fff8",X"fc000000");
											

											
begin

	process(clk)

	begin

		if (clk'event and clk='1') then

			Instruction <= IMem(to_integer(unsigned(address)));

		end if;

	end process;

end Behavioral;