--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:03:36 12/14/2016
-- Design Name:   
-- Module Name:   C:/Users/Parteek Khushdil/Documents/GitHub/AHD-Project-2016/VHDL Code/RC5/top_testbench.vhd
-- Project Name:  RC5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TopModule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE	IEEE.STD_LOGIC_TEXTIO.ALL;
USE	STD.TEXTIO.ALL;

 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY top_testbench IS
END top_testbench;
 
ARCHITECTURE behavior OF top_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TopModule
    PORT(
         SW : IN  std_logic_vector(15 downto 0);
         BTN : IN  std_logic_vector(4 downto 0);
         CLK : IN  std_logic;
         LED : OUT  std_logic_vector(15 downto 0);
         SSEG_CA : OUT  std_logic_vector(7 downto 0);
         SSEG_AN : OUT  std_logic_vector(7 downto 0);
         output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SW : std_logic_vector(15 downto 0) := (others => '0');
   signal BTN : std_logic_vector(4 downto 0) := (others => '0');
   signal CLK : std_logic := '0';

 	--Outputs
   signal LED : std_logic_vector(15 downto 0);
   signal SSEG_CA : std_logic_vector(7 downto 0);
   signal SSEG_AN : std_logic_vector(7 downto 0);
   signal output : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TopModule PORT MAP (
          SW => SW,
          BTN => BTN,
          CLK => CLK,
          LED => LED,
          SSEG_CA => SSEG_CA,
          SSEG_AN => SSEG_AN,
          output => output
        );

 
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
--
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for CLK_period*10;
--
--      -- insert stimulus here 
--		wait for 110ns;
--		btn(3)<='1';
--		wait for 93000ns;
--		btn(3)<='0';
--		btn(1)<='1';
--		sw(4 downto 0)<="11001";
--		assert (output = /x"65046380")  report "Test failed!" severity ERROR;
--
--      wait;
--   end process;
	readcmd: process

        -- This process loops through a file and reads one line
        -- at a time, parsing the line to get the values and
        -- expected result.

        file cmdfile: TEXT is in "value1.txt";       -- Define the file 'handle'
		  file outfile: TEXT is out "output3.txt"; 
        variable L: Line;         -- Define the line buffer
		  variable outline: Line;
        variable good: boolean; --status of the read operation

        variable start: std_logic;
        variable skey25: std_logic_vector(4 downto 0); 
        variable enc_msb: std_logic_vector(5 downto 0);
		  variable enc_lsb: std_logic_vector(5 downto 0);
		  variable dec_msb: std_logic_vector(5 downto 0);
		  variable dec_lsb: std_logic_vector(5 downto 0);
		  variable skeyresult,enc_msb_result,enc_lsb_result,dec_lsb_result,dec_msb_result:std_logic_vector(31 downto 0);

    begin

      --   Open the command file...

       -- FILE_OPEN(cmdfile,"value1.txt",READ_MODE);

        loop

            if endfile(cmdfile) then  -- Check EOF
                assert false
                    report "End of file encountered; exiting."
                    severity NOTE;
                exit;
            end if;

            readline(cmdfile,L);          
					next when L'length = 0;  
					read(L,start,good);     
            assert good
                report "Text I/O read error"
                severity ERROR;
				read(L,skey25,good);     
            assert good
                report "Text I/O read error"
                severity ERROR;

            read(L,enc_msb,good);    
            assert good
                report "Text I/O read error"
                severity ERROR;

            read(L,enc_lsb,good);    
            assert good
                report "Text I/O read error"
                severity ERROR;

           read(L,dec_msb,good);     
            assert good
                report "Text I/O read error"
                severity ERROR;
					 
				read(L,dec_lsb,good);    
            assert good
                report "Text I/O read error"
                severity ERROR;
				read(L,skeyresult,good); 
            assert good
                report "Text I/O read error"
                severity ERROR;
				read(L,enc_msb_result,good);  
            assert good
                report "Text I/O read error"
                severity ERROR;
				read(L,enc_lsb_result,good);  
            assert good
                report "Text I/O read error"
                severity ERROR;
				read(L,dec_msb_result,good);  
            assert good
                report "Text I/O read error"
                severity ERROR;
			 	read(L,dec_lsb_result,good);  
            assert good
                report "Text I/O read error"
                severity ERROR;
				wait for 10ns;
           btn(3) <= '1';
			
			wait for 93000ns;
			  btn(3)<='0';
		     btn(1)<='1';
			  sw(4 downto 0)<=skey25;
    			wait for 10ns;
	      	assert (output =skeyresult)
                report "skey is wrong"
                    severity ERROR;
				write(outline,output);
            
				btn(1)<='1';
				sw(5 downto 0)<=enc_lsb;
				
				wait for 10ns;
				assert (output = enc_lsb_result)
                report "enc lsb is wrong"
                    severity ERROR;
            write(outline,output); 
				
				btn(1)<='1';
				sw(5 downto 0)<=enc_msb;
				
				wait for 10ns;
				assert (output = enc_msb_result)
                report "enc msb is wrong"
                    severity ERROR;
				write(outline,output);
					
            
				btn(1)<='1';
				sw(5 downto 0)<=dec_lsb;
				
				wait for 10ns;
				assert (output = dec_lsb_result)
                report "dec lsb is wrong"
                    severity ERROR;
            write(outline,output);
				
				btn(1)<='1';
				sw(5 downto 0)<=dec_msb;	
            wait for 10ns;
				assert (output =dec_msb_result)
                report "dec msb is wrong"
                    severity ERROR;
            write(outline,output); 
			writeline(outfile, outline);	 
        end loop;

        wait;

    end process;


END;
