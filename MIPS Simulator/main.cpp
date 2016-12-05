#include<iostream>
#include<string>
#include<vector>
#include<bitset>
#include<fstream>
using namespace std;
#define ADD 1
#define SUB 2
#define AND 3
#define OR  4
#define NOR 5
#define SHL 6
#define SHR 7


#define MemSize 500 // memory size, in reality, the memory size should be 2^32, but for this lab, for the space reason,
//we keep it as this large number, but the memory is still 32-bit addressable.

class RF
{
public:
    bitset<32> ReadData1, ReadData2;
    RF()
    {
        Registers.resize(32);
        Registers[0] = bitset<32> (0);
    }

    void ReadWrite(bitset<5> RdReg1, bitset<5> RdReg2, bitset<5> WrtReg, bitset<32> WrtData, bitset<1> WrtEnable)
    {
        // perform read operation
        ReadData1 = Registers[RdReg1.to_ulong()];
        ReadData2 = Registers[RdReg2.to_ulong()];

        if(WrtEnable.to_ulong() == 1){
            Registers[WrtReg.to_ulong()] = WrtData; // perform write operation
        }
    }

    void OutputRF() {
        ofstream rfout;
        rfout.open("/Users/ADDY/Google Drive/github/AHD-Project-2016/MIPS Simulator/RFresult.txt",std::ios_base::app);
        if (rfout.is_open())
        {
            rfout<<"A state of RF:"<<endl;
            for (int j = 0; j<32; j++) rfout << Registers[j]<<endl;
        }
        else cout<<"Unable to open file";
        rfout.close();
    }

private:
    vector<bitset<32> >Registers;
};

class ALU
{
public:
    bitset<32> ALUresult;
    bitset<32> ALUOperation (bitset<3> ALUOP, bitset<32> oprand1, bitset<32> oprand2)
    {
        if(ALUOP.to_ulong() == (unsigned long)ADD){ // performing ADD operation
            ALUresult = bitset<32> (oprand1.to_ulong() + oprand2.to_ulong());
        }
        else if(ALUOP.to_ulong() == (unsigned long)SUB){// performing SUB operation
            ALUresult = bitset<32> (oprand1.to_ulong() - oprand2.to_ulong());
        }
        else if(ALUOP.to_ulong() == (unsigned long)AND){// performing AND operation
            ALUresult = bitset<32> (oprand1.to_ulong() & oprand2.to_ulong());
        }
        else if(ALUOP.to_ulong() == (unsigned long)OR){// performing OR operation
            ALUresult = bitset<32> (oprand1.to_ulong() | oprand2.to_ulong());
        }
        else if(ALUOP.to_ulong() == (unsigned long)NOR){// performing NOR operation
            ALUresult = bitset<32> (~(oprand1.to_ulong() | oprand2.to_ulong()));
        }
        else if(ALUOP.to_ulong() == (unsigned long)SHL){// performing SHL operation
            ALUresult = bitset<32> (oprand1.to_ulong() << oprand2.to_ulong());
        }
        else if(ALUOP.to_ulong() == (unsigned long)SHR){// performing SHR operation
            ALUresult = bitset<32> (oprand1.to_ulong() >> oprand2.to_ulong());
        }
        return ALUresult;
    }
};

bitset<32> readFromAddress(bitset<32> address, vector<bitset<8> > &memoryType){
    unsigned long index= address.to_ulong();
    string data="";
    for(int i=0;i<4;i++){
        data += memoryType[index].to_string();
        index++;
    }
    bitset<32> readData(data);
    return readData;
}


class INSMem
{
public:
    bitset<32> Instruction;
    INSMem()
    {
        IMem.resize(MemSize);
        ifstream imem;
        string line;
        int i=0;
        imem.open("/Users/ADDY/Google Drive/github/AHD-Project-2016/MIPS Simulator/imem.txt");
        if (imem.is_open())
        {
            while (getline(imem,line))
            {
                IMem[i] = bitset<32>(line);
                i++;
            }

        }
        else cout<<"Unable to open file";
        imem.close();
    }

    bitset<32> ReadMemory (unsigned long ReadAddress)
    {
        Instruction = IMem[ReadAddress];
        return Instruction;
    }
private:
    vector<bitset<32> > IMem;
};

class DataMem
{
public:
    bitset<32> readdata;
    DataMem()
    {
        DMem.resize(MemSize);
        ifstream dmem;
        string line;
        int i=0;
        dmem.open("/Users/ADDY/Google Drive/github/AHD-Project-2016/MIPS Simulator/dmem.txt");
        if (dmem.is_open())
        {
            while (getline(dmem,line))
            {
                DMem[i] = bitset<32>(line);
                i++;
            }
        }
        else cout<<"Unable to open file";
        dmem.close();
    }

    bitset<32> MemoryAccess (bitset<32> Address, bitset<32> WriteData, bitset<1> readmem, bitset<1> writemem)
    {
        unsigned long index = Address.to_ulong();
        if((readmem.to_ulong() == 1) && (writemem.to_ulong() == 0)) {//perform read operation
            readdata = DMem[index];
        }
        else if((readmem.to_ulong() == 0) && (writemem.to_ulong() == 1)){// perform write operation
            DMem[index] =  WriteData;
        }
        return readdata;
    }

    void OutputDataMem() {
        ofstream dmemout;
        dmemout.open("/Users/ADDY/Google Drive/github/AHD-Project-2016/MIPS Simulator/dmemresult.txt");
        if (dmemout.is_open())
        {
            for (unsigned long j = 0; j< 500; j++) dmemout << DMem[j]<<endl;
        }
        else cout<<"Unable to open file";
        dmemout.close();
    }
private:
    vector<bitset<32> > DMem;
};

string getins_type(string opcode){
    if(opcode == "000000") return "R";
    else if(opcode == "000001") return "addi";
    else if( opcode == "000010") return "subi";
    else if(opcode == "000011") return "andi";
    else if(opcode == "000100") return "ori";
    else if(opcode == "000101") return "shl";
    else if(opcode == "000110") return "shr";
    else if(opcode == "000111") return "lw";
    else if(opcode == "001000") return "sw";
    else if(opcode == "001001") return "blt";
    else if(opcode == "001010") return "beq";
    else if(opcode == "001011") return "bne";
    else if(opcode == "001100") return "jmp";
    else if(opcode == "111111") return "hal";
    else return "Invalid Opcode";
}

string getFunctionType(bitset<32> instruction){
    string aluOp = instruction.to_string().substr(26,6);
    cout<<aluOp<<endl;
    if(aluOp == "010000") return "add";
    else if (aluOp == "010001") return "sub";
    else if (aluOp == "010010") return "and";
    else if (aluOp == "010011") return "or";
    else if (aluOp == "010100") return "nor";
    else return "Invalid Alu Operation";
}

vector<string> getOperandAddr(bitset<32> instruction, string ins_type){
    vector<string> OperandAddr(3);
    OperandAddr[0] = instruction.to_string().substr(6,5);  // getting Rs
    OperandAddr[1] = instruction.to_string().substr(11,5); // getting Rt
    if(ins_type == "R"){
        OperandAddr[2] = instruction.to_string().substr(16,5); // getting Rd
    }
    else if(ins_type == "I"){
        OperandAddr[2] = instruction.to_string().substr(16,16); // getting imm addr
    }
    return OperandAddr;
}

string decodeInstruction(bitset<32> instruction){
    string opcode = instruction.to_string().substr(0,6);
    string ins_type = getins_type(opcode);
    cout<<ins_type<<endl;
    return ins_type;
}

unsigned long incrementprogram_counter(unsigned long &program_counter){
    program_counter += 1;
    return program_counter;
}
bitset<32> valueOfRsReg,valueOfRtReg, AluResult;

unsigned long executeRInstruction(bitset<32> instruction, unsigned long &program_counter,RF &myRF, ALU &myALU){
    vector<string> RAddresses(3);
    string funcType;
    RAddresses= getOperandAddr(instruction,"R"); //getting Operands Address
    bitset<5> RsAddr(RAddresses[0]),RtAddr(RAddresses[1]),RdAddr(RAddresses[2]); //Assigning Operands Address
    funcType = getFunctionType(instruction);
    //geting operand Values
    myRF.ReadWrite(RsAddr,RtAddr,NULL,NULL,0);
    valueOfRsReg = myRF.ReadData1;
    valueOfRtReg = myRF.ReadData2;

    // performing ALU operation
    if(funcType == "add") AluResult = myALU.ALUOperation(bitset<3>(ADD), valueOfRsReg, valueOfRtReg);
    else if(funcType == "and") AluResult = myALU.ALUOperation(bitset<3>(AND), valueOfRsReg, valueOfRtReg);
    else if(funcType == "or") AluResult = myALU.ALUOperation(bitset<3>(OR), valueOfRsReg, valueOfRtReg);
    else if(funcType == "nor") AluResult = myALU.ALUOperation(bitset<3>(NOR), valueOfRsReg, valueOfRtReg);
    else if(funcType == "sub") AluResult = myALU.ALUOperation(bitset<3>(SUB), valueOfRsReg, valueOfRtReg);
    cout<<" "<<funcType;
    myRF.ReadWrite(NULL, NULL, RdAddr, AluResult, 1); //write result to write regiter

    program_counter = incrementprogram_counter(program_counter);
    return program_counter;
}

unsigned long executeIInstruction(bitset<32> instruction,unsigned long &program_counter, string ins_type,RF &myRF, ALU &myALU, DataMem &myDataMem){
    vector<string> IAddressess(3);
    IAddressess = getOperandAddr(instruction,"I"); //getting Operands Address
    bitset<5> RsIAddr(IAddressess[0]), RtIAddr(IAddressess[1]); // getting Address of Rs & Rt Registers
    bitset<16> ImmIAddr(IAddressess[2]); // getting Imm value

    myRF.ReadWrite(RsIAddr, RtIAddr, NULL, NULL, 0); //getting Operands Value
    valueOfRsReg = myRF.ReadData1;
    valueOfRtReg = myRF.ReadData2;
    //calculating sign extended value of Imm
    string signExtImmStr;
    if (ImmIAddr.to_string().at(0) == '0') {
        signExtImmStr = "0000000000000000" + ImmIAddr.to_string();
    } else if (ImmIAddr.to_string().at(0) == '1') {
        signExtImmStr = "1111111111111111" + ImmIAddr.to_string();
    }

//    int signExtImm = stoi(signExtImmStr, nullptr, 2);

    AluResult = myALU.ALUOperation(bitset<3>(ADD), valueOfRsReg, bitset<32>(signExtImmStr)); //finding effective address of memory

    if(ins_type == "lw") {
        bitset<32> operandValue = myDataMem.MemoryAccess(AluResult, NULL, 1, 0); //get value from Data Memory
        myRF.ReadWrite(NULL, NULL, RtIAddr, operandValue, 1); //load value into the register
    }
    else if(ins_type == "sw"){
        myDataMem.MemoryAccess(AluResult,valueOfRtReg,0,1); //store value to data memory
    }
    else if(ins_type == "addi"){
        AluResult = myALU.ALUOperation(bitset<3>(ADD), valueOfRsReg, bitset<32>(signExtImmStr));
        myRF.ReadWrite(NULL,NULL,RtIAddr,AluResult,1);
    }
    else if(ins_type == "subi"){
        AluResult = myALU.ALUOperation(bitset<3>(SUB), valueOfRsReg, bitset<32>(signExtImmStr));
        myRF.ReadWrite(NULL,NULL,RtIAddr,AluResult,1);
    }
    else if(ins_type == "andi"){
        AluResult = myALU.ALUOperation(bitset<3>(AND), valueOfRsReg, bitset<32>(signExtImmStr));
        myRF.ReadWrite(NULL,NULL,RtIAddr,AluResult,1);
    }
    else if(ins_type == "ori"){
        AluResult = myALU.ALUOperation(bitset<3>(OR), valueOfRsReg, bitset<32>(signExtImmStr));
        myRF.ReadWrite(NULL,NULL,RtIAddr,AluResult,1);
    }
    else if(ins_type == "shl"){
        AluResult = myALU.ALUOperation(bitset<3>(SHL), valueOfRsReg, bitset<32>(signExtImmStr));
        myRF.ReadWrite(NULL,NULL,RtIAddr,AluResult,1);
    }
    else if(ins_type == "shr"){
        AluResult = myALU.ALUOperation(bitset<3>(SHR), valueOfRsReg, bitset<32>(signExtImmStr));
        myRF.ReadWrite(NULL,NULL,RtIAddr,AluResult,1);
    }
    else if(ins_type == "beq"){
        if(valueOfRsReg.to_ulong() == valueOfRtReg.to_ulong()){
            program_counter = program_counter + 1 + ImmIAddr.to_ulong();
            return program_counter;
        }
    }
    else if(ins_type == "blt"){
        if(valueOfRsReg.to_ulong() < valueOfRtReg.to_ulong()){
            program_counter = program_counter + 1 + ImmIAddr.to_ulong();
            return program_counter;
        }
    }
    else if(ins_type == "bne"){
        if(valueOfRsReg.to_ulong() != valueOfRtReg.to_ulong()){
            program_counter = program_counter + 1 + ImmIAddr.to_ulong();
            return program_counter;
        }
    }
    program_counter = incrementprogram_counter(program_counter);
    return program_counter;
}

unsigned long executeJInstruction(bitset<32> instruction, unsigned long &program_counter){

    bitset<26> JAddress((instruction.to_string()).substr(6,26));
    program_counter = incrementprogram_counter(program_counter);
    bitset<32> pc(program_counter);
    bitset<6> pc6MSB(pc.to_string().substr(0,6));
    bitset<32> newPc(pc6MSB.to_string() + JAddress.to_string());
    program_counter = newPc.to_ulong();
    return program_counter;
}

unsigned long executeInstruction(bitset<32> instruction,unsigned long &program_counter, string ins_type, RF &myRF, ALU &myALU, DataMem &myDataMem){

    if(ins_type == "R"){
        program_counter= executeRInstruction(instruction, program_counter,myRF, myALU);
    }
    else if(ins_type == "lw" || ins_type == "sw" || ins_type == "addi" || ins_type == "subi" || ins_type == "andi"
            || ins_type == "ori" || ins_type == "beq" || ins_type == "blq" || ins_type == "bne" || ins_type == "shl"
            || ins_type == "shr" ){
        program_counter =  executeIInstruction(instruction, program_counter, ins_type, myRF, myALU, myDataMem);
    }
    else if (ins_type == "J"){
        program_counter =  executeJInstruction(instruction, program_counter);
    }
    return program_counter;
}

int main() {
    RF myRF;
    ALU myALU;
    INSMem myInsMem;
    DataMem myDataMem;
    bitset<32> instruction, haltCondition(4227858432);
    unsigned long program_counter =0;
    string ins_type;

    while (1) {
        instruction = myInsMem.ReadMemory(program_counter); // Fetch instruction
        if(instruction == haltCondition) break; //check for halt condition
        cout<<instruction;
        ins_type =  decodeInstruction(instruction); // decode instruction & get instruction type
        program_counter = executeInstruction(instruction,program_counter,ins_type,myRF,myALU,myDataMem); //execute instruction
        myRF.OutputRF(); // writing state of regiters to a file
    }
    myDataMem.OutputDataMem(); // writing memory data to a file
    return 0;
}
