#include<iostream>
#include<string>
#include<vector>
#include<bitset>
#include<fstream>
using namespace std;
#define ADDU 1
#define SUBU 3
#define AND 4
#define OR  5
#define NOR 7
#define MemSize 65536 // memory size, in reality, the memory size should be 2^32, but for this lab, for the space reason,
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
        rfout.open("/Users/ADDY/ClionProjects/CA_Lab1/RFresult.txt",std::ios_base::app);
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
        if(ALUOP.to_ulong() == (unsigned long)ADDU){ // performing ADDU operation
            ALUresult = bitset<32> (oprand1.to_ulong() + oprand2.to_ulong());
        }
        else if(ALUOP.to_ulong() == (unsigned long)SUBU){// performing SUBU operation
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
        imem.open("/Users/ADDY/ClionProjects/CA_Lab1/imem.txt");
        if (imem.is_open())
        {
            while (getline(imem,line))
            {
                IMem[i] = bitset<8>(line);
                i++;
            }

        }
        else cout<<"Unable to open file";
        imem.close();
    }

    bitset<32> ReadMemory (bitset<32> ReadAddress)
    {
        Instruction = readFromAddress(ReadAddress,IMem);
        return Instruction;
    }
private:
    vector<bitset<8> > IMem;
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
        dmem.open("/Users/ADDY/ClionProjects/CA_Lab1/dmem.txt");
        if (dmem.is_open())
        {
            while (getline(dmem,line))
            {
                DMem[i] = bitset<8>(line);
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
            readdata = readFromAddress(Address,DMem);
        }
        else if((readmem.to_ulong() == 0) && (writemem.to_ulong() == 1)){// perform write operation
            for(unsigned long i= 0;i<32;i=i+8){
                DMem[index] =  bitset<8> (WriteData.to_string().substr(i,8));
                index++;
            }
        }
        return readdata;
    }

    void OutputDataMem() {
        ofstream dmemout;
        dmemout.open("/Users/ADDY/ClionProjects/CA_Lab1/dmemresult.txt");
        if (dmemout.is_open())
        {
            for (int j = 0; j< 1000; j++) dmemout << DMem[j]<<endl;
        }
        else cout<<"Unable to open file";
        dmemout.close();
    }
private:
    vector<bitset<8> > DMem;
};

string getInstructionType(string opcode){
    if(opcode == "000000") return "R";
    else if(opcode == "000010") return "J";
    else if(opcode == "111111") return "halt";
    else if( opcode == "001001") return "addiu";
    else if(opcode == "000100") return "beq";
    else if(opcode == "100011") return "lw";
    else if(opcode == "101011") return "sw";
    else return "Invalid Opcode";
}

string getFunctionType(bitset<32> instruction){
    string aluOp = instruction.to_string().substr(29,3);
    if(aluOp == "001") return "addu";
    else if (aluOp == "011") return "subu";
    else if (aluOp == "100") return "and";
    else if (aluOp == "101") return "or";
    else if (aluOp == "111") return "nor";
    else return "Invalid Alu Operation";
}

vector<string> getOperandAddr(bitset<32> instruction, string instructionType){
    vector<string> OperandAddr(3);
    OperandAddr[0] = instruction.to_string().substr(6,5);  // getting Rs
    OperandAddr[1] = instruction.to_string().substr(11,5); // getting Rt
    if(instructionType == "R"){
        OperandAddr[2] = instruction.to_string().substr(16,5); // getting Rd
    }
    else if(instructionType == "I"){
        OperandAddr[2] = instruction.to_string().substr(16,16); // getting imm addr
    }
    return OperandAddr;
}

string decodeInstruction(bitset<32> instruction){
    string opcode = instruction.to_string().substr(0,6);
    string instructionType = getInstructionType(opcode);
    cout<<"\n"<<instructionType;
    return instructionType;
}

bitset<32> incrementProgramCounter(bitset<32> &programCounter){
    programCounter = bitset<32> (programCounter.to_ulong()+4);
    return programCounter;
}
bitset<32> valueOfRsReg,valueOfRtReg, AluResult;

bitset<32> executeRInstruction(bitset<32> instruction,bitset<32> &programCounter,RF &myRF, ALU &myALU){
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
    if(funcType == "addu") AluResult = myALU.ALUOperation(bitset<3>(ADDU), valueOfRsReg, valueOfRtReg);
    else if(funcType == "and") AluResult = myALU.ALUOperation(bitset<3>(AND), valueOfRsReg, valueOfRtReg);
    else if(funcType == "or") AluResult = myALU.ALUOperation(bitset<3>(OR), valueOfRsReg, valueOfRtReg);
    else if(funcType == "nor") AluResult = myALU.ALUOperation(bitset<3>(NOR), valueOfRsReg, valueOfRtReg);
    else if(funcType == "subu") AluResult = myALU.ALUOperation(bitset<3>(SUBU), valueOfRsReg, valueOfRtReg);
    cout<<" "<<funcType;
    myRF.ReadWrite(NULL, NULL, RdAddr, AluResult, 1); //write result to write regiter

    programCounter = incrementProgramCounter(programCounter);
    return programCounter;
}

bitset<32> executeIInstruction(bitset<32> instruction,bitset<32> &programCounter, string instructionType,RF &myRF, ALU &myALU, DataMem &myDataMem){
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
    AluResult = myALU.ALUOperation(bitset<3>(ADDU), valueOfRsReg, bitset<32>(signExtImmStr)); //finding effective address of memory

    if(instructionType == "lw") {
        bitset<32> operandValue = myDataMem.MemoryAccess(AluResult, NULL, 1, 0); //get value from Data Memory
        myRF.ReadWrite(NULL, NULL, RtIAddr, operandValue, 1); //load value into the register
    }
    else if(instructionType == "sw"){
        myDataMem.MemoryAccess(AluResult,valueOfRtReg,0,1); //store value to data memory
    }
    else if(instructionType == "addiu"){
        AluResult = myALU.ALUOperation(bitset<3>(ADDU), valueOfRsReg, bitset<32>(signExtImmStr));
        myRF.ReadWrite(NULL,NULL,RtIAddr,AluResult,1);
    }
    else if(instructionType == "beq"){
        if(valueOfRsReg.to_ulong() == valueOfRtReg.to_ulong()){
            bitset<32> signExtImm(signExtImmStr.substr(0,30)+"00");
            cout<<" "<<programCounter.to_ulong()<<" "<<signExtImm.to_ulong();
            programCounter = bitset<32> (programCounter.to_ulong()+4+signExtImm.to_ulong());
            cout<<" pc "<<programCounter.to_ulong();
            return programCounter;
        }
    }
    programCounter = incrementProgramCounter(programCounter);
    return programCounter;
}

bitset<32> executeJInstruction(bitset<32> instruction, bitset<32> &programCounter){

    bitset<26> JAddress((instruction.to_string()).substr(6,26));
    programCounter = incrementProgramCounter(programCounter);
    bitset<4> pc4MSB(programCounter.to_string().substr(0,4));
    programCounter = bitset<32> (pc4MSB.to_string() + JAddress.to_string() + "00");
    return programCounter;
}

bitset<32> executeInstruction(bitset<32> instruction,bitset<32> &programCounter, string instructionType, RF &myRF, ALU &myALU, DataMem &myDataMem){

    if(instructionType == "R"){
        programCounter= executeRInstruction(instruction, programCounter,myRF, myALU);
    }
    else if(instructionType == "lw" || instructionType == "sw" || instructionType == "addiu" || instructionType == "beq"){
        programCounter =  executeIInstruction(instruction, programCounter, instructionType,myRF, myALU, myDataMem);
    }
    else if (instructionType == "J"){
        programCounter =  executeJInstruction(instruction, programCounter);
    }
    return programCounter;
}

int main() {
    RF myRF;
    ALU myALU;
    INSMem myInsMem;
    DataMem myDataMem;
    bitset<32> programCounter(0),instruction, haltCondition(4294967295) ;
    string instructionType;

    while (1) {
        instruction = myInsMem.ReadMemory(programCounter); // Fetch instruction
        if(instruction == haltCondition) break; //check for halt condition
        instructionType =  decodeInstruction(instruction); // decode instruction & get instruction type
        programCounter = executeInstruction(instruction,programCounter,instructionType,myRF,myALU,myDataMem); //execute instruction
        myRF.OutputRF(); // writing state of regiters to a file
    }
    myDataMem.OutputDataMem(); // writing memory data to a file
    return 0;
}
