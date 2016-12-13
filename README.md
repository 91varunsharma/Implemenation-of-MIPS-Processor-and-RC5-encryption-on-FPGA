# AHD-Project-2016
NYU-6463 Processor
MIPS based processor &amp; its implementation on FPGA

Apart from designing the specified processor as per the guidelines given in `EL6463.pdf` we also were required to implement the complete RC5 encryption decryption algorithm on the processor designed.

The project involves 4 parts. Implementing the processor in VHDL, Implementing the designed processor on FPGA Board, writing the assembly code using the instruction set provided and verification of design.

####Dependencies:

1. `Xilinx ISE`
2. `Xilinx ISIM`
3. `Adept`

####Directory structure

1. VHDL and FPGA Implementation can be found in the directory `AHD-Project-2016/VHDL Code`.
  i. Each block written in VHDL can be found in subdirectory `src`.
  ii. Complete project of ISE implemented on internal clock signal of FPGA can de found in RC5.
  iii. Complete project of ISE implemented on clock signal given as button event of FPGA can de found in `RC5 clock event`.
2. Assembly implementation can be found in the directory `AHD-Project-2016/VHDL Code/assembly_rc5`.
  i. Final instruction memory along with their assembly code and machine code can be found in `asm_machine`.
3. Assembly code was verified using the C++ based simulator which can be found in `AHD-Project-2016/MIPS Simulator`.
4. Conversion code written in Python can be found in `AHD-Project-2016/VHDL Code/coverter`.


