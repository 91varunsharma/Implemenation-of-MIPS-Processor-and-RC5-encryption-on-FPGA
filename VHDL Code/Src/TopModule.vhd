library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TopModule is
    Port ( SW 			: in  STD_LOGIC_VECTOR (15 downto 0);
           BTN 			: in  STD_LOGIC_VECTOR (4 downto 0);
           CLK 			: in  STD_LOGIC;
           LED 			: out  STD_LOGIC_VECTOR (15 downto 0);
           SSEG_CA 		: out  STD_LOGIC_VECTOR (7 downto 0);
           SSEG_AN 		: out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end TopModule;

architecture Behavioral of TopModule is


component Hex2LED 
port (CLK: in STD_LOGIC; X: in STD_LOGIC_VECTOR (3 downto 0); Y: out STD_LOGIC_VECTOR (7 downto 0)); 
end component; 

type arr is array(0 to 22) of std_logic_vector(7 downto 0);
signal NAME: arr;

constant CNTR_MAX : std_logic_vector(23 downto 0) := x"030D40"; --100,000,000 = clk cycles per second
constant VAL_MAX : std_logic_vector(3 downto 0) := "1001"; --9

constant RESET_CNTR_MAX : std_logic_vector(17 downto 0) := "110000110101000000";-- 100,000,000 * 0.002 = 200,000 = clk cycles per 2 ms


--This is used to determine when the 7-segment display should be
--incremented
signal Cntr : std_logic_vector(26 downto 0) := (others => '0');

--This counter keeps track of which number is currently being displayed
--on the 7-segment.
signal Val : std_logic_vector(3 downto 0) := (others => '0');

--This is the signal that holds the hex value to be diplayed
signal hexval: std_logic_vector(31 downto 0):=x"0123ABCD";


signal clk_cntr_reg : std_logic_vector (4 downto 0) := (others=>'0'); 


begin
with BTN(4) select --btn4 IS BTNU
	LED <= SW 			when '0',
			 "0000000000000000" when others;
HexvalDisplay: process(btn(0),clk)
begin
	if(btn(0)='1') then
		hexval<='Enter the value needed to be displayed';
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

--This select statement selects the value of HexVal to the necessary
--cathode signals to display it on the 7-segment
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


CONV1: Hex2LED port map (CLK => CLK, X => HexVal(31 downto 28), Y => NAME(0));
CONV2: Hex2LED port map (CLK => CLK, X => HexVal(27 downto 24), Y => NAME(1));
CONV3: Hex2LED port map (CLK => CLK, X => HexVal(23 downto 20), Y => NAME(2));
CONV4: Hex2LED port map (CLK => CLK, X => HexVal(19 downto 16), Y => NAME(3));		
CONV5: Hex2LED port map (CLK => CLK, X => HexVal(15 downto 12), Y => NAME(4));
CONV6: Hex2LED port map (CLK => CLK, X => HexVal(11 downto 8), Y => NAME(5));
CONV7: Hex2LED port map (CLK => CLK, X => HexVal(7 downto 4), Y => NAME(6));
CONV8: Hex2LED port map (CLK => CLK, X => HexVal(3 downto 0), Y => NAME(7));

end Behavioral;
			 

