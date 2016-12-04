import sys


def get_r_ins(instruction):

    asm_instruction = ""
    func_type = format(int(instruction[-6:], 2), 'x')

    if func_type == '10':
        asm_instruction += "ADD "
    elif func_type == '11':
        asm_instruction += "SUB "
    elif func_type == '12':
        asm_instruction += "AND "
    elif func_type == '13':
        asm_instruction += "OR "
    elif func_type == '14':
        asm_instruction += "NOR "

    rs = "R"+str(int(instruction[6:11], 2))+" "
    asm_instruction += rs

    rt = "R" + str(int(instruction[11:16], 2)) + " "
    asm_instruction += rt

    rd = "R" + str(int(instruction[16:21], 2)) + "\n"
    asm_instruction += rd

    return asm_instruction


def get_i_ins(opcode, instruction):

    asm_instruction = ""

    if opcode == '1':
        asm_instruction += "ADDI "

    elif opcode == '2':
        asm_instruction += "SUBI "

    elif opcode == '3':
        asm_instruction += "ANDI "

    elif opcode == '4':
        asm_instruction += "ORI "

    elif opcode == '5':
        asm_instruction += "SHL "

    elif opcode == '6':
        asm_instruction += "SHR "

    elif opcode == '7':
        asm_instruction += "LW "

    elif opcode == '8':
        asm_instruction += "SW "

    elif opcode == '9':
        asm_instruction += "BLT "

    elif opcode == 'a':
        asm_instruction += "BEQ "

    elif opcode == 'b':
        asm_instruction += "BNE "

    rs = "R" + str(int(instruction[6:11], 2)) + " "
    asm_instruction += rs

    rt = "R" + str(int(instruction[11:16], 2)) + " "
    asm_instruction += rt

    imm = ""
    sign_bit = instruction[16:17]
    if sign_bit == '0':
        imm = str(int(instruction[16:32], 2))
    else:
        imm = str(int(instruction[16:32], 2) - 65536)

    asm_instruction += imm + "\n"

    return asm_instruction


if __name__ == '__main__':

    if sys.argv.__len__() != 3:
        raise ValueError("Please provide valid input/output filename")

    else:

        read_file = sys.argv[1]
        write_file = sys.argv[2]
        read_from = open(read_file)
        write_to = open(write_file, 'w')
        ins_num = 0

        for f in read_from:
            asm_ins = ""
            ins = f.split('\n')[0]
            ins_num += 1

            opc_str = ins[0:6]
            opc = format(int(opc_str, 2), 'x')

            if opc == '3f':
                asm_ins = "HAL\n"
                write_to.write(asm_ins)

            elif opc == '0':
                asm_ins = get_r_ins(ins)
                print asm_ins
                write_to.write(asm_ins)

            elif opc == '1' or opc == '2' or opc == '3' or opc == '4' or opc == '5' or opc == '6' \
                    or opc == '7' or opc == '8' or opc == '9' or opc == 'a' or opc == 'b':
                asm_ins = get_i_ins(opc, ins)
                print asm_ins
                write_to.write(asm_ins)

            elif opc == 'c':
                asm_ins = "JMP " + str(int(ins[6:32], 2)) + "\n"
                print asm_ins
                write_to.write(asm_ins)

    read_from.close()
    write_to.close()