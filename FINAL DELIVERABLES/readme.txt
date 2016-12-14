The Folder contains:-
1. Complete assembly code with file name: “complete_rc5_asm.txt”
	The file has the code for all, the key expansion,. encryption and decryption.
	The program runs the key expansion first and stores the key from location 0-25 in data memory. The encryption then runs after that and picks the key from the location mentioned above. Also the data for encryption is picked from the memory. The encrypted output is then saved in the memory and that then becomes the input for the decryption part. The decrypted value which is basically same as the input for encryption is then saved in memory for verification.

2. The program with the functionality of running on every clock cycle with button press can be found in the folder named: “RC5ButtonClock”. The uff file for both however remains same.

3. Test-benches: The ‘value0’, ‘value1’ and ‘value2’ are the input files for the testbench and output is stored in files ‘output’, ‘output1’, ‘output2’ respectively.

4. YouTube links:

Part 1:https://youtu.be/VIa4VFz5DRE

Part 2: https://youtu.be/pK5Rt0CFo9g

