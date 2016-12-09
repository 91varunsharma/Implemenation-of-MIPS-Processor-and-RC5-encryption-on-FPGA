# AHD-Project-2016
NYU-6463 Processor
MIPS based processor &amp; its implementation on FPGA

I think the R-type instructions are working fine. The result is updated in the Destination Register after 2 clock cycles. We need to make changes so that it updates after 1 clock cycle and not 2. See if you remove clk from any process and the destination register is updated in next clock cycle (and Not after 2 cycles).

Try running consecutive R-type instructions for testing. Start the Instruction from index 1 (Not 0). Give all Zeros at index 0 of Imem. Just have to give the Clk and instructions will start fetching.

I-Type, Jump and Branch needs to be checked! Try doing that tomorrow!
