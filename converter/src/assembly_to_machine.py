

def get_address(register_number, n):
    str_init = "00000000000000000000000000"
    binary = "{0:b}".format(register_number)
    binary_str = str_init + str(binary)

    if n == 5:
        return binary_str[-5:]
    elif n == 6:
        return binary_str[-6:]
    elif n == 16:
        return binary_str[-16:]
    elif n == 26:
        return binary_str[-26:]


def get_rtype_string(ins_t, func_type):

    if ins_t[1][0] != 'R' or ins_t[2][0] != 'R' or ins_t[3][0] != 'R':
        print "Invalid Operands"
    else:
        func_number = 0
        binarystring = ""
        opcode = int("00", 16)

        if func_type == "add":
            func_number = get_address(int("10", 16), 6)
        elif func_type == "sub":
            func_number = get_address(int("11", 16), 6)
        elif func_type == "and":
            func_number = get_address(int("12", 16), 6)
        elif func_type == "or":
            func_number = get_address(int("13", 16), 6)
        elif func_type == "nor":
            func_number = get_address(int("14", 16), 6)

        binarystring += get_address(opcode, 6)
        rs = get_address(int(ins_t[1][1:]), 5)
        rt = get_address(int(ins_t[2][1:]), 5)
        rd = get_address(int(ins_t[3][1:]), 5)
        shamt = get_address(0, 5)

        binarystring += rs + rt + rd + shamt + func_number
        return binarystring


def get_itype_string(ins_t, func_type):

    if ins_t[1][0] != 'R' or ins_t[2][0] != 'R':
        print "Invalid Operands"
    else:
        binarystring = ""
        opcode = 0
        if func_type == "addi":
            opcode = int("01", 16)

        elif func_type == "subi":
            opcode = int("02", 16)

        elif func_type == "andi":
            opcode = int("03", 16)

        elif func_type == "ori":
            opcode = int("04", 16)

        elif func_type == "shl":
            opcode = int("05", 16)

        elif func_type == "shr":
            opcode = int("06", 16)

        elif func_type == "lw":
            opcode = int("07", 16)

        elif func_type == "sw":
            opcode = int("08", 16)

        elif func_type == "blt":
            opcode = int("09", 16)

        elif func_type == "beq":
            opcode = int("0A", 16)

        elif func_type == "bne":
            opcode = int("0B", 16)

        binarystring += get_address(opcode, 6)
        rs = get_address(int(ins_t[1][1:]), 5)
        rt = get_address(int(ins_t[2][1:]), 5)
        imm = int(ins_t[3])
        imm_final = ""

        if imm<0 :
            imm_value = 65535 + 1 + imm
            imm_final = get_address(imm_value, 16)
        else:
            imm_final = get_address(imm, 16)

        binarystring += rs + rt + str(imm_final)
        return binarystring


def get_jtype_string(ins_t):
    opcode = int("0C", 16)
    binary_str = ""
    binary_str += get_address(opcode, 6)

    addr = int(ins_t[1])
    jaddress = ""

    if addr < 0:
        addr_value = 67108864 + 1 + addr
        jaddress = get_address(addr_value, 26)
    else:
        jaddress = get_address(addr, 26)

    binary_str += jaddress

    return binary_str

if __name__ == '__main__':

    read_file = "/Users/ADDY/Google Drive/github/AHD-Project-2016/converter/test/asm/test_6_all.txt"
    write_file = "/Users/ADDY/Google Drive/github/AHD-Project-2016/converter/test/machine/test_6_all_machine.txt"
    read_from = open(read_file)
    write_to = open(write_file, 'w')
    ins_num = 0

    for f in read_from:
        binary_ins = ""
        ins = f.split(' ')
        ins_type = ins[0].lower()
        ins_num += 1

        if f == '\n' or f == ' ' or f == '\t':
            binary_ins = "00000000000000000000000000000000\n"
            print ins_num, binary_ins
            write_to.write(binary_ins)

        elif ins_type == "hal" or ins_type == "hal\n":
            binary_ins = "11111100000000000000000000000000"
            print ins_num, ins[0], binary_ins
            write_to.write(binary_ins+"\n")

        elif ins_type == "add" or ins_type == "sub" or ins_type == "and" or ins_type == "or" or ins_type == "nor":
            binary_ins = get_rtype_string(ins, ins_type)
            if binary_ins != None:
                if ins[3][-1:] == '\n':
                    print ins_num, ins[0], ins[1],  ins[2], ins[3][:-1], binary_ins
                else : print ins_num, ins[0], ins[1],  ins[2], ins[3], binary_ins
                write_to.write(binary_ins + "\n")
            else:
                print "cannot write to file. Unsupported text"

        elif ins_type == "addi" or ins_type == "subi" or ins_type == "andi" or ins_type == "ori" or \
                        ins_type == "lw" or ins_type == "sw" or ins_type == "shl" or ins_type == "shr" or \
                        ins_type == "blt" or ins_type == "beq" or ins_type == "bne":

            binary_ins = get_itype_string(ins, ins_type)
            if binary_ins != None:
                if ins[3][-1:] == '\n':
                    print ins_num, ins[0], ins[1],  ins[2], ins[3][:-1], binary_ins
                else : print ins_num, ins[0], ins[1],  ins[2], ins[3], binary_ins
                write_to.write(binary_ins + "\n")

        elif ins_type == "jmp":
            binary_ins = get_jtype_string(ins)
            if binary_ins != None:
                if ins[1][-1:] == '\n':
                    print ins_num, ins[0], ins[1][:-1], binary_ins
                else : print ins_num, ins[0], ins[1], binary_ins
                write_to.write(binary_ins + "\n")

    read_from.close()
    write_to.close()
