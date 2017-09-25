#ifndef __H_CPU_
#define __H_CPU_

#include <string>
#include <stdlib.h>
#include <ctype.h>
#include <cmath>
#include <set>
#include <iostream>
#include <stdio.h>
#include "syscall.h"
using namespace std;

//CPU states
#define CPU_READY 1
#define CPU_RUNNING 2
#define CPU_BREAKPOINT 3
#define CPU_ERROR 4
#define CPU_FINISHED 5

//Instrution type
#define LUI 0
#define AUIPC 1
#define JAL_JALR 2
#define BRANCH 3
#define LOAD 4
#define STORE 5
#define ADD_SUB 6
#define MUL 7
#define DIV 8
#define BITWISE 9
#define SET 10
#define FLOAD 11
#define FSTORE 12
#define FADD_FSUB 13
#define FMUL 14
#define FDIV 15
#define FSQRT 16
#define F_MIN_F_MAX 17
#define FCVT 18
#define FSGN 19
#define FMV 20
#define FCMP 21
#define FSCLASSIFY 22
#define FMIX 23
#define MSYSTEM 24

//Register Name
static char reg_alias[32][5] = {"zr", "ra", "sp", "gp", "tp", "t0", "t1", "t2", "s0",
	"s1", "a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7", "s2", "s3", "s4", "s5",
	"s6", "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"};
static char f_reg_alias[32][5] = {"ft0", "ft1", "ft2", "ft3", "ft4", "ft5", "ft6", "ft7",
	"fs0", "fs1", "fa0", "fa1", "fa2", "fa3", "fa4", "fa5", "fa6", "fa7", "fs2", 
	"fs3", "fs4", "fs5", "fs6", "fs7", "fs8", "fs9", "fs10", "fs11", "ft8",
	"ft9", "ft10", "ft11"};

class cpu
{
private:
	memory* mem;
	set<unsigned int> breakpoints;
	

public:
	unsigned int pc;
	long long reg[32];
	double f_reg[32];
	int state;
	int exit_code;
	int ins_count[25];
	char* ins_name[25];

	/* Constructor, link the cpu with memory */
	cpu(memory* main_memory, unsigned int init_PC);

	/* Show the value of PC register */
	void show_pc();

	/* Set the PC register */
	void set_pc(unsigned int pc_value);

	/* Show the value of a register */
	void show_register(unsigned int register_num, bool floating);

	void show_register_by_alias(char *name);

	/* Set the value of a register */
	void set_register(unsigned int register_num, unsigned int register_value);

	void show_memory(unsigned int address, int bytes);

	/* Execute numbers of instruction */
	void execute();

	/* Cancel the breakpoint */
	void clear_breakpoint(unsigned int address);

	/* Cancel all breakpoints */
	void clear_all_breakpoint();

	/* Set the breakpoint at an address */
	void set_breakpoint(unsigned int address);

	/* Get arguments by instruction type
	     Argument means rd, rs1, rs2, im
	 */
	int get_argument(unsigned int instruction, char type, long long argument[4]);

	/* Get some bits of an instruction */
	int get_bits(unsigned int instruction, int high, int low);

	//Convert float type to binary representation
	unsigned int floatToInt(float f);

	//Convert binary representation of float to float 
	float intToFloat(unsigned int i);

	//Expand 32 bit float type to 64 bit double type
	double floatToDouble(float f);

	//Truncate 64 bit double type to 32 bit float type
	float doubleToFloat(double d);

	//Get the high and low representation of 64 bit double type
	unsigned long long doubleToLongInt(double d);

	double longIntToDouble(unsigned long long li);

	double intToDouble(unsigned int i);

	unsigned int doubleToInt(double d);

	float longIntToFloat(unsigned long long li);

	unsigned long long floatToLongInt(float f);

};

cpu::cpu(memory* main_memory, unsigned int init_PC)
{
	mem = main_memory;
	set_pc(init_PC);
	breakpoints.clear();
	for (int i = 0; i < 32; i++)
	{
		reg[i] = 0;
	}
	for ( int i=0; i<32; i++ )
	{
		f_reg[i]=0;
	}
	for(int i = 0; i < 25; i++)
	{
		ins_count[i] = 0;
	}
	ins_name[0] = (char *)"LUI:        ";
	ins_name[1] = (char *)"AUIPC:      ";
	ins_name[2] = (char *)"JAL(R):     ";
	ins_name[3] = (char *)"BRANCH:     ";
	ins_name[4] = (char *)"LOAD:       ";
	ins_name[5] = (char *)"STORE:      ";
	ins_name[6] = (char *)"ADD/SUB:    ";
	ins_name[7] = (char *)"MUL:        ";
	ins_name[8] = (char *)"DIV:        ";
	ins_name[9] = (char *)"BITWISE:    ";
	ins_name[10] = (char *)"SET:        ";
	ins_name[11] = (char *)"FLOAD:      ";
	ins_name[12] = (char *)"FSTORE:     ";
	ins_name[13] = (char *)"FADD/FSUB:  ";
	ins_name[14] = (char *)"FMUL:      ";
	ins_name[15] = (char *)"FDIV:       ";
	ins_name[16] = (char *)"FSQRT:      ";
	ins_name[17] = (char *)"F_MIN/F_MAX:";
	ins_name[18] = (char *)"FCVT:       ";
	ins_name[19] = (char *)"FSGN:       ";
	ins_name[20] = (char *)"FMV:        ";
	ins_name[21] = (char *)"FCMP:       ";
	ins_name[22] = (char *)"FSCLASSIFY: ";
	ins_name[23] = (char *)"FMIX:       ";
	ins_name[24] = (char *)"SYS CALL:   ";
	state = CPU_READY;
	exit_code = -1;
}

void cpu::show_pc()
{
	cout << "PC register value: " << hex << pc << endl;
}

void cpu::set_pc(unsigned int pc_value)
{
	pc = pc_value;
}

void cpu::show_register(unsigned int register_num, bool floating)
{
	if (!floating)
		cout << "$" << reg_alias[register_num] << " value: 0x" << hex << reg[register_num] << endl;
	else
		cout << "$" << f_reg_alias[register_num] << " value: " << f_reg[register_num] << ", 0x" << hex << *(long*)(&f_reg[register_num]) << endl;	
}

void cpu::show_register_by_alias(char *name)
{
	for (int i = 0; i < 32; ++i){
		if (!strcmp(name, reg_alias[i]))
			return show_register(i, false);
	}
	for (int i = 0; i < 32; ++i){
		if (!strcmp(name, f_reg_alias[i]))
			return show_register(i, true);
	}
	cout << "no such register: " << name << endl;
}

void cpu::set_register(unsigned int register_num, unsigned int register_value)
{
	if (register_num != 0)
		reg[register_num] = register_value;
}

void cpu::show_memory(unsigned int address, int bytes){
	int tmp = (bytes + 8 - 1) / 8;
	for (int i = 0; i < tmp; ++i)
	{
		cout << "0x" << hex << address << ": 0x" << mem->read_double_word(address) << endl;
		address += 8;
	}
}

void cpu::execute()
{
	if (state != CPU_BREAKPOINT)	//if it begins at last breakpoint, then skip the check
	 {
		if (breakpoints.find(pc) != breakpoints.end())
		{
			state = CPU_BREAKPOINT;
			return;
		}
	}
	state = CPU_RUNNING;

	unsigned int instruction = mem->read_word(pc);
	pc = pc + 4;
	int opcode = get_bits(instruction, 6, 0);
	int func3 = get_bits(instruction, 14, 12);
	int func7 = get_bits(instruction, 31, 25);
	long long argument[4];

	//variables for integer instructions and system instructions
	unsigned long long temp_uint;
	long long temp_int;
	long a0, a1, a2, a3, a4, a5, ret;
	unsigned long n;

	//variables for mutiplication and division instructions
	long long multiplicand, multiplier;
	unsigned long long multiplicand_u, multiplier_u;
	int sign_a, sign_b, sign;
	unsigned long long a, b, c, d, ans;
	long long a_s, b_s, ans_s;
	int devidend, devisor;
	unsigned int devidend_u, devisor_u, ans_u;

	//variables for floating operation instructions
	int imm, imm7, imm5;
	double d1,d2,d3,tmp_d;
	float f1,f2,f3,tmp_f;
	unsigned int rs1, rs2, rs3, rd;
	int width;
	long long src_addr, dst_addr;
	unsigned long long tmp_l;
	unsigned int tmp_i;
	float sum_f, sub_f, mul_f, div_f;
	double sum_d, sub_d, mul_d, div_d;
	int func2;

	rs1=get_bits(instruction, 19, 15);
	rs2=get_bits(instruction, 24, 20);
	rs3=get_bits(instruction, 31, 27);
	rd = get_bits(instruction, 11, 7);
	imm7=get_bits(instruction, 31, 25);
	imm5=get_bits(instruction, 11, 7);
	imm=get_bits(instruction, 31, 20);
	func2=get_bits(instruction, 26,25);

	bool not_found = false;	//instruction unimplemented

	switch (opcode)
	{
		case 55: //LUI
			ins_count[LUI]++;
			get_argument(instruction, 'U', argument);
			reg[argument[0]] = argument[3];
			break;
		case 23: // AUIPC
			ins_count[AUIPC]++;
			get_argument(instruction, 'U', argument);
			reg[argument[0]] = pc + argument[3] - 4;
			break;
		case 111: // JAL
			ins_count[JAL_JALR]++;
			get_argument(instruction, 'J', argument);
			if (argument[0] != 0) // j instruction sets rd as x0
				reg[argument[0]] = pc;
			pc += argument[3] - 4;
			break;
		case 103: // JALR
			ins_count[JAL_JALR]++;
			get_argument(instruction, 'I', argument);
			if (argument[0] != 0) // ret instruction sets rd as x0
				reg[argument[0]] = pc;
			pc = (argument[3] + reg[argument[1]]) & 0xFFFFFFFE;
			break;
		case 99: //BRANCH
			ins_count[BRANCH]++;
			get_argument(instruction, 'B', argument);
			switch (func3)
			{
				case 0: // BEQ
					if (reg[argument[1]] == reg[argument[2]])
						pc += argument[3] - 4;
					break;
				case 1: // BNE
					if (reg[argument[1]] != reg[argument[2]])
						pc += argument[3] - 4;
					break;
				case 4: // BLT
					if (reg[argument[1]] < reg[argument[2]])
						pc += argument[3] - 4;
					break;
				case 5: // BGE
					if (reg[argument[1]] >= reg[argument[2]])
						pc += argument[3] - 4;
					break;
				case 6: // BLTU
					if ((unsigned long long)reg[argument[1]] < (unsigned long long)reg[argument[2]])
						pc += argument[3] - 4;
					break;
				case 7: // BGEU
					if ((unsigned long long)reg[argument[1]] >= (unsigned long long)reg[argument[2]])
						pc += argument[3] - 4;
					break;
				default:
					not_found = true;
					break;
			}
			break;
		case 3: //LOAD
			ins_count[LOAD]++;
			get_argument(instruction, 'I', argument);
			switch (func3)
			{
				case 0: // LB
					temp_uint = mem->read_byte(reg[argument[1]] + argument[3]);
					if (temp_uint & 0x00000080)
						reg[argument[0]] = (temp_uint | 0xFFFFFFFFFFFFFF00);
					else
						reg[argument[0]] = (temp_uint & 0x00000000000000FF);
					break;
				case 1: // LH
					temp_uint = mem->read_half_word(reg[argument[1]] + argument[3]);
					if (temp_uint & 0x00008000)
						reg[argument[0]] = (temp_uint | 0xFFFFFFFFFFFF0000);
					else
						reg[argument[0]] = (temp_uint & 0x000000000000FFFF);
					break;
				case 2: // LW
					temp_uint = mem->read_word(reg[argument[1]] + argument[3]);
					if (temp_uint & 0x80000000)
						reg[argument[0]] = (temp_uint | 0xFFFFFFFF00000000);
					else
						reg[argument[0]] = (temp_uint & 0x00000000FFFFFFFF);
					break;
				case 3: // LD
					temp_uint = mem->read_double_word(reg[argument[1]] + argument[3]);
					reg[argument[0]] = temp_uint;
					break;
				case 4: // LBU
					temp_uint = mem->read_byte(reg[argument[1]] + argument[3]);
					reg[argument[0]] = (temp_uint & 0x00000000000000FF);
					break;
				case 5: // LHU
					temp_uint = mem->read_half_word(reg[argument[1]] + argument[3]);
					reg[argument[0]] = (((unsigned long long)temp_uint) & 0x000000000000FFFF);
					break;
				case 6: // LWU
					temp_uint = mem->read_word(reg[argument[1]] + argument[3]);
					reg[argument[0]] = (temp_uint & 0x00000000FFFFFFFF);
					break;
				default:
					not_found = true;
					break;
			}
			break;
		case 35: //STORE
			ins_count[STORE]++;
			get_argument(instruction, 'S', argument);
			switch (func3)
			{
				case 0: // SB
					mem->write_byte(reg[argument[1]] + argument[3], reg[argument[2]]);
					break;
				case 1: // SH
					mem->write_half_word(reg[argument[1]] + argument[3], reg[argument[2]]);
					break;
				case 2: // SW
					mem->write_word(reg[argument[1]] + argument[3], reg[argument[2]]);
					break;
				case 3: // SD
					mem->write_double_word(reg[argument[1]] + argument[3], reg[argument[2]]);
					break;
				default:
					not_found = true;
					break;
			}
			break;
		case 19:
			get_argument(instruction, 'I', argument);
			switch(func3)
			{
				case 0: // ADDI
					ins_count[ADD_SUB]++;
					reg[argument[0]] = reg[argument[1]] + argument[3];
					break;
				case 2: // SLTI
					ins_count[SET]++;
					reg[argument[0]] = (reg[argument[1]] < argument[3]);
					break;
				case 3: // SLTIU
					ins_count[SET]++;
					reg[argument[0]] = ((unsigned long long)reg[argument[1]] < (unsigned long long)argument[3]);
					break;
				case 4: // XORI
					ins_count[BITWISE]++;
					reg[argument[0]] = reg[argument[1]] ^ argument[3];
					break;
				case 6: // ORI
					ins_count[BITWISE]++;
					reg[argument[0]] = reg[argument[1]] | argument[3];
					break;
				case 7: // ANDI
					ins_count[BITWISE]++;
					reg[argument[0]] = reg[argument[1]] & argument[3];
					break;
				case 1: // SLLI
					ins_count[BITWISE]++;
					func7 = get_bits(instruction, 31, 26);
					if (!func7)
					{
						temp_int = argument[3] & 0x01F;
						temp_int |= (get_bits(instruction,25, 25) << 5);
						reg[argument[0]] = reg[argument[1]] << temp_int;
					}
					break;
				case 5:
					ins_count[BITWISE]++;
					func7 = get_bits(instruction, 31, 26);
					switch (func7)
					{
						case 0: // SRLI
							temp_int = argument[3] & 0x01F;
							temp_int |= (get_bits(instruction,25, 25) << 5);
							reg[argument[0]] = ((unsigned long long) reg[argument[1]]) >> temp_int;
							break;
						case 16: // SRAI
							temp_int = argument[3] & 0x01F;
							temp_int |= (get_bits(instruction,25, 25) << 5);
							reg[argument[0]] = reg[argument[1]] >> temp_int;
							break;
					}
					break;
				default:
					not_found = true;
					break;
			}
			break;
		case 51:
			get_argument(instruction, 'R', argument);
			switch (func3)
			{
				case 0:
					switch (func7)
					{
						case 0: //ADD
							ins_count[ADD_SUB]++;
							reg[argument[0]] = reg[argument[1]] + reg[argument[2]];
							break;
						case 32: //SUB
							ins_count[ADD_SUB]++;
							reg[argument[0]] = reg[argument[1]] - reg[argument[2]];
							break;
						case 1:  //MUL rd, rs1, rs2
							ins_count[MUL]++;
							temp_int = reg[argument[1]] * reg[argument[2]];
							reg[argument[0]] = temp_int;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 1:
					switch (func7)
					{
						case 0:  // SLL
							ins_count[BITWISE]++;
							temp_int = reg[argument[2]] & 0x01F;
							reg[argument[0]] = reg[argument[1]] << temp_int;
							break;
						case 1:  //MULH rd, rs1, rs2
							ins_count[MUL]++;
							multiplicand = reg[argument[1]];
							multiplier = reg[argument[2]];
							sign_a = (multiplicand & 0x8000000000000000) >> 63;
							sign_b = (multiplier & 0x8000000000000000) >> 63;
							if((sign_a == 1 && sign_b == 0) || (sign_a == 0 && sign_b == 1))
								sign = 1;
							else sign = 0;
							a = (multiplicand & 0x7FFFFFFF00000000) >> 32;
							b = multiplicand & 0x00000000FFFFFFFF;
							c = (multiplier & 0x7FFFFFFF00000000) >> 32;
							d = multiplier & 0x00000000FFFFFFFF;
							ans = a * c + ((a * d + b * c) >> 32);
							ans += (unsigned long long)sign << 63;
							reg[argument[0]] = ans;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 2: 
					switch (func7){
						case 0:  // SLT
							ins_count[SET]++;
							//reg[argument[0]] = (int(reg[argument[1]]) < int(reg[argument[2]]));
							reg[argument[0]] = (reg[argument[1]] < reg[argument[2]]);
							break;
						case 1:  // MULHSU rd, rs1, rs2
							ins_count[MUL]++;
							multiplicand = reg[argument[1]];
							multiplier_u = (unsigned long long)reg[argument[2]];
							sign_a = (multiplicand & 0x8000000000000000) >> 63;
							a = (multiplicand & 0x7FFFFFFF00000000) >> 32;
							b = multiplicand & 0x00000000FFFFFFFF;
							c = (multiplier_u & 0xFFFFFFFF00000000) >> 32;
							d = multiplier_u & 0x00000000FFFFFFFF;
							ans = a * c + ((a * d + b * c) >> 32);
							ans += (unsigned long long)sign_a << 63;
							reg[argument[0]] = ans;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 3:
					switch (func7){
						case 0:  // SLTU
							ins_count[SET]++;
							reg[argument[0]] = ((unsigned long long)reg[argument[1]] < (unsigned long long)reg[argument[2]]);
							break;
						case 1:  // MULHU rd, rs1, rs2
							ins_count[MUL]++;
							multiplicand_u = (unsigned long long)reg[argument[1]];
							multiplier_u = (unsigned long long)reg[argument[2]];
							a = (multiplicand_u & 0xFFFFFFFF00000000) >> 32;
							b = multiplicand_u & 0x00000000FFFFFFFF;
							c = (multiplier_u & 0xFFFFFFFF00000000) >> 32;
							d = multiplier_u & 0x00000000FFFFFFFF;
							ans = a * c + ((a * d + b * c) >> 32);
							reg[argument[0]] = ans;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 4:
					switch (func7){
						case 0:  // XOR
							ins_count[BITWISE]++;
							reg[argument[0]] = reg[argument[1]] ^ reg[argument[2]];
							break;
						case 1:  // DIV rd, rs1, rs2
							ins_count[DIV]++;
							temp_int = reg[argument[1]] / reg[argument[2]];
							reg[argument[0]] = temp_int;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 5:
					switch (func7)
					{
						case 0: // SRL
							ins_count[BITWISE]++;
							temp_int = reg[argument[2]] & 0x01F;
							reg[argument[0]] = ((unsigned long long)reg[argument[1]]) >> temp_int;
							break;
						case 32: // SRA
							ins_count[BITWISE]++;
							temp_int = reg[argument[2]] & 0x01F;
							reg[argument[0]] = reg[argument[1]] >> temp_int;
							break;
						case 1:  // DIVU rd, rs1, rs2
							ins_count[DIV]++;
							temp_uint = (unsigned long long)reg[argument[1]] / (unsigned long long)reg[argument[2]];
							reg[argument[0]] = temp_uint;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 6:
					switch (func7){
						case 0:  // OR
							ins_count[BITWISE]++;
							reg[argument[0]] = reg[argument[1]] | reg[argument[2]];
							break;
						case 1:  // REM rd, rs1, rs2
							ins_count[DIV]++;
							temp_int = reg[argument[1]] % reg[argument[2]];
							reg[argument[0]] = temp_int;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 7:
					switch (func7){
						case 0:  // AND
							ins_count[BITWISE]++;
							reg[argument[0]] = reg[argument[1]] & reg[argument[2]];
							break;
						case 1:  // REMU rd, rs1, rs2
							ins_count[DIV]++;
							temp_uint = (unsigned long long)reg[argument[1]] % (unsigned long long)reg[argument[2]];
							reg[argument[0]] = temp_uint;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				default:
					not_found = true;
					break;
			}
			break;
		case 27:
			get_argument(instruction, 'I', argument);
			switch (func3)
			{
				case 0: // ADDIW
					ins_count[ADD_SUB]++;
					reg[argument[0]] = (long long)((int)reg[argument[1]] + (int)argument[3]);
					break;
				case 1 : // SLLIW
					if (!func7)
					{
						ins_count[BITWISE]++;
						temp_int = argument[3] & 0x01F;
						reg[argument[0]] = (long long)(((int)reg[argument[1]]) << temp_int);
					}
					break;
				case 5:
					switch (func7)
					{
						case 0: // SRLIW
							ins_count[BITWISE]++;
							reg[argument[0]] = (long long)(((unsigned int)reg[argument[1]]) >> (argument[3] & 0x01F));
							break;
						case 32: // SRAIW
							ins_count[BITWISE]++;
							reg[argument[0]] = (long long)(((int)reg[argument[1]]) >> (argument[3] & 0x01F));
							break;
						default:
							not_found = true;
							break;
					}
					break;
				default:
					not_found = true;
					break;
			}
			break;
		case 59:
			get_argument(instruction, 'R', argument);
			switch (func3)
			{
				case 0:
					switch (func7)
					{
						case 0: //ADDW
							ins_count[ADD_SUB]++;
							reg[argument[0]] = (long long)((int)reg[argument[1]] + (int)reg[argument[2]]);
							break;
						case 32: //SUBW
							ins_count[ADD_SUB]++;
							reg[argument[0]] = (long long)((int)reg[argument[1]] - (int)reg[argument[2]]);
							break;
						case 1:  // MULW rd, rs1, rs2
							ins_count[MUL]++;
							multiplicand = reg[argument[1]] & 0x00000000FFFFFFFF;
							multiplier = reg[argument[2]] & 0x00000000FFFFFFFF;
							sign_a = (multiplicand & 0x80000000) >> 32;
							sign_b = (multiplier & 0x80000000) >> 32;
							if((sign_a == 1 && sign_b == 0) || (sign_a == 0 && sign_b == 1))
								sign = 1;
							else sign = 0;
							a_s = multiplicand & 0x000000007FFFFFFF;
							b_s = multiplier & 0x000000007FFFFFFF;
							ans_s = (a_s * b_s) & 0x000000007FFFFFFF;
							if(sign)
								ans_s = ans_s | 0xFFFFFFFF80000000;
							reg[argument[0]] = ans_s;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 1: // SLLW
					if (!func7)
					{
						ins_count[BITWISE]++;
						temp_int = reg[argument[2]] & 0x01F;
						reg[argument[0]] = (long long)(((int)reg[argument[1]]) << temp_int);
					}
					break;
				case 4:
					switch (func7)
					{
						case 1:  // DIVW rd, rs1, rs2
							ins_count[DIV]++;
							devidend = (int)(reg[argument[1]] & 0x00000000FFFFFFFF);
							devisor = (int)(reg[argument[2]] & 0x00000000FFFFFFFF);
							reg[argument[0]] = (long long)(devidend / devisor);
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 5:
					switch (func7)
					{
						case 0: // SRLW
							ins_count[BITWISE]++;
							temp_int = reg[argument[2]] & 0x01F;
							reg[argument[0]] = (long long)(((unsigned int)reg[argument[1]]) >> temp_int);
							break;
						case 32: // SRAW
							ins_count[BITWISE]++;
							temp_int = reg[argument[2]] & 0x01F;
							reg[argument[0]] = (long long)(((int)reg[argument[1]]) >> temp_int);
							break;
						case 1:  // DIVUW rd, rs1, rs2
							ins_count[DIV]++;
							devidend_u = (unsigned int)(reg[argument[1]] & 0x00000000FFFFFFFF);
							devisor_u = (unsigned int)(reg[argument[2]] & 0x00000000FFFFFFFF);
							ans_u = devidend_u / devisor_u;
							reg[argument[0]] = (long long)ans_u;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 6:
					switch (func7)
					{
						case 1:  // REMW rd, rs1, rs2
							ins_count[DIV]++;
							devidend = (int)(reg[argument[1]] & 0x00000000FFFFFFFF);
							devisor = (int)(reg[argument[2]] & 0x00000000FFFFFFFF);
							reg[argument[0]] = (long long)(devidend % devisor);
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 7:
					switch (func7)
					{
						case 1:  // REMUW rd, rs1, rs2
							ins_count[DIV]++;
							devidend_u = (unsigned int)(reg[argument[1]] & 0x00000000FFFFFFFF);
							devisor_u = (unsigned int)(reg[argument[2]] & 0x00000000FFFFFFFF);
							ans_u = devidend_u % devisor_u;
							reg[argument[0]] = (long long)ans_u;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				default:
					not_found = true;
					break;
			}
			break;
		case 7://Load floating point single & double
			ins_count[FLOAD]++;
			width = get_bits(instruction, 14, 12);
			imm = get_bits(instruction, 31, 20);
			imm = (imm<<20)>>20;
			rs1=get_bits(instruction, 19, 15);
			rd=get_bits(instruction, 11, 7);
			src_addr=reg[rs1];
			src_addr=src_addr+imm;
			if( width==2 )	//32 bit floating point
			{
				tmp_l= mem->read_word(src_addr);
				tmp_i=tmp_l;
				tmp_d = intToDouble(tmp_i);
				f_reg[rd]=tmp_d;
			}
			if( width==3 )	//64 bit double point
			{
				tmp_l=mem->read_double_word(src_addr);
				tmp_d = longIntToDouble(tmp_l);
				f_reg[rd]=tmp_d;
			}
			break;
		case 39://Store floating point single&double
			ins_count[STORE]++;
			width = get_bits(instruction, 14,12);
			imm7 = get_bits(instruction, 31, 25);
			imm5 = get_bits(instruction, 11, 7);
			imm=(imm7<<5)+imm5;
			imm=(imm<<20)>>20;
			rs1=get_bits(instruction, 19, 15);
			rs2=get_bits(instruction, 24, 20);
			rd=get_bits(instruction, 11, 7);
			dst_addr=reg[rs1]+imm;
			if( width==2 )	//32 bit floating point
			{
				tmp_d=f_reg[rs2];
				tmp_i=doubleToInt(tmp_d);
				//printf("store: data is %x\n", tmp_i);
				mem->write_word(dst_addr, tmp_i);
			}
			if( width==3 )	//64 bit double
			{
				tmp_d=f_reg[rs2];
				tmp_l=doubleToLongInt(tmp_d);
				mem->write_double_word(dst_addr, tmp_l);
			}
			break;
		case 0b1010011://floating point op
			rs2=get_bits(instruction, 24, 20);
			rs1=get_bits(instruction, 19, 15);
			rd=get_bits(instruction, 11, 7);
			switch( func7 ){
				case 0://floating add
					ins_count[FADD_FSUB]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					f1=doubleToFloat(d1);
					f2=doubleToFloat(d2);
					sum_f=f1+f2;
					tmp_d = floatToDouble(sum_f);
					f_reg[rd]=tmp_d;
					break;
				case 4://floating sub
					ins_count[FADD_FSUB]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					f1=doubleToFloat(d1);
					f2=doubleToFloat(d2);
					sub_f=f1-f2;
					tmp_d=floatToDouble(sub_f);
					f_reg[rd]=tmp_d;
					break;
				case 8://floating mul
					ins_count[FMUL]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					f1=doubleToFloat(d1);
					f2=doubleToFloat(d2);
					mul_f=f1*f2;
					tmp_d=floatToDouble(mul_f);
					f_reg[rd]=tmp_d;
					break;
				case 12://floating div
					ins_count[FDIV]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					f1=doubleToFloat(d1);
					f2=doubleToFloat(d2);
					div_f=f1/f2;
					tmp_d=floatToDouble(div_f);
					f_reg[rd]=tmp_d;
					break;
				case 1://double add
					ins_count[FADD_FSUB]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					sum_d=d1+d2;
					f_reg[rd]=sum_d;
					break;
				case 5://double sub
					ins_count[FADD_FSUB]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					sub_d=d1-d2;
					f_reg[rd]=sub_d;
					break;
				case 9://double mul
					ins_count[FMUL]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					mul_d=d1*d2;
					f_reg[rd]=mul_d;
					break;
				case 13://doulbe div
					ins_count[FDIV]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					div_d=d1/d2;
					f_reg[rd]=div_d;
					break;
				case 0b0101100://single sqrt
					ins_count[FSQRT]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					f1=doubleToFloat(d1);
					f2=doubleToFloat(d2);
					tmp_f=sqrt(f1);
					tmp_d = floatToDouble(tmp_f);
					f_reg[rd]=tmp_d;
					break;
				case 0b0101101://double sqrt
					ins_count[FSQRT]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					tmp_d=sqrt(d1);
					f_reg[rd]=tmp_d;
					break;
				case 0b0010100://single f_min&f_max
					ins_count[F_MIN_F_MAX]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					f1=doubleToFloat(d1);
					f2=doubleToFloat(d2);
					if( func3==0 )//f_min
						if( f1<f2 )
							tmp_f=f1;
						else
							tmp_f=f2;
					else//f_max
						if( f1<f2 )
							tmp_f=f2;
						else
							tmp_f=f1;
					f_reg[rd] = floatToDouble(tmp_f);
					break;
				case 0b0010101://double f_min&f_max
					ins_count[F_MIN_F_MAX]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					if( func3==0 )
						if( d1<d2 )
							tmp_d=d1;
						else
							tmp_d=d2;
					else
						if( d1<d2 )
							tmp_d=d2;
						else
							tmp_d=d1;
					f_reg[rd] = tmp_d;
					break;
				case 0b0010000:	//single sign-injection
				{
					ins_count[FSGN]++;
					unsigned long long content = doubleToLongInt(f_reg[rs1]) & 0x000000007FFFFFFF;
					unsigned long long sign1 = doubleToLongInt(f_reg[rs1]) >>31;
					unsigned long long sign2 = doubleToLongInt(f_reg[rs2]) >>31;
					unsigned long long sign;
					switch (func3)
					{
						case 0b000://FSGNJ
							sign=sign2;
							break;
						case 0b001://FSGNJN
							sign=(~sign2)&0x0000000000000001;
							break;
						case 0b010://FSGNJX
							sign=(sign1^sign2)&0x0000000000000001;
							break;
						default:
							not_found = true;
							break;
					}
					if (!not_found)
					{
						sign = sign<<31;
						f_reg[rd]=intToFloat(sign|content);
					}
					break;
				}
				case 0b0010001:	//double sign-injection
				{
					ins_count[FSGN]++;
					unsigned long long content = doubleToLongInt(f_reg[rs1])&0x7FFFFFFFFFFFFFFF;
					unsigned long long sign1 = doubleToLongInt(f_reg[rs1])>>63;
					unsigned long long sign2 = doubleToLongInt(f_reg[rs2])>>63;
					unsigned long long sign;
					switch (func3)
					{
						case 0b000://FSGNJ
							sign=sign2;
							break;
						case 0b001://FSGNJN
							sign=(~sign2)&0x0000000000000001;
							break;
						case 0b010://FSGNJX
							sign=(sign1^sign2)&0x0000000000000001;
							break;
						default:
							not_found = true;
							break;
					}
					if (!not_found)
					{
						sign = sign<<63;
						f_reg[rd]=longIntToDouble(sign|content);
					}
					break;
				}
				//FCVT
				case 0b1100000:	// FCVT single to xxxxx
				{
					ins_count[FCVT]++;
					switch (rs2){
						case 0b00000://single to signed int
						{
							union intAndLongLong
							{
								int n;
								long long ll;
							} a ;
							d1=f_reg[rs1];
							float f=doubleToFloat(d1);
							a.n=(int)f;
							reg[rd]=a.ll;
							break;
						}
						case 0b00001://single to unsigned int
						{
							union unsignedIntAndLongLong
							{
								unsigned int in;
								long long ll;
							} a ;
							d1=f_reg[rs1];
							f1=doubleToFloat(d1);
							a.in=(unsigned int)f1;
							reg[rd]=a.ll;
							break;
						}
						case 0b00010://single to signed long
						{
							d1=f_reg[rs1];
							f1=doubleToFloat(d1);
							reg[rd]=(long long)f1;
							break;
						}
						case 0b00011://single to unsigned long long
						{
							union unsignedLongLongAndLongLong
							{
								unsigned long long ull;
								long long ll;
							} a ;
							d1=f_reg[rs1];
							f1=doubleToFloat(d1);
							a.ull=(unsigned long long)f1;
							reg[rd]=a.ll;
							break;
						}
					}
					break;
				}
				case 0b1101000:	//FCVT xxxxx to single
				{
					ins_count[FCVT]++;
					switch (rs2){
						case 0b00000://signed int to single
						{
							union intAndLongLong
							{
								int n;
								long long ll;
							} a ;
							a.ll=reg[rs1];
							f1=(float)a.n;
							d1=floatToDouble(f1);
							f_reg[rd]=d1;
							break;
						}
						case 0b00001://unsigned int to single
						{
							union unsignedIntAndLongLong
							{
								unsigned int un;
								long long ll;
							} a ;
							a.ll=reg[rs1];
							f1=(float)a.un;
							d1=floatToDouble(f1);
							f_reg[rd]=d1;
							break;
						}
						case 0b00010://signed long to single
						{
							long long ll=reg[rs1];
							f1=(float)ll;
							d1=floatToDouble(f1);
							f_reg[rd]=d1;
							break;
						}
						case 0b00011://unsigned long to single
						{
							union unsignedLongLongAndLongLong
							{
								long long ll;
								unsigned long long ull;
							} a ;
							a.ll=reg[rs1];
							f1=(float)a.ull;
							d1=floatToDouble(f1);
							f_reg[rd]=d1;
							break;
						}
					}
					break;
				}
				case 0b0100000://FCVT double to single
					ins_count[FCVT]++;
					d1=f_reg[rs1];
					f1=(float)d1;
					tmp_d=floatToDouble(f1);
					f_reg[rd]=tmp_d;
					break;
				case 0b0100001://FCVT single to double
					ins_count[FCVT]++;
					tmp_d=f_reg[rs1];
					f1=doubleToFloat(tmp_d);
					d1=(double)f1;
					f_reg[rd]=d1;
					break;
				case 0b1100001://FCVT double to xxxxx
				{
					ins_count[FCVT]++;
					switch (rs2)
					{
						case 0b00000://double to signed int
						{
							union signedIntAndLongLong
							{
								signed int signedInt;
								long long longLong;
							} a ;
							d1=f_reg[rs1];
							a.signedInt=(int)d1;
							reg[rd]=a.longLong;
							break;
						}
						case 0b00001://double to unsigned int
						{
							union unsignedIntAndLongLong
							{
								unsigned int unsignedInt;
								long long longLong;
							} a ;
							d1=f_reg[rs1];
							a.unsignedInt=(unsigned int)d1;
							reg[rd]=a.longLong;
							break;
						}
						case 0b00010://double to signed long
						{
							long long ll;
							ll=(long long)f_reg[rs1];
							reg[rd]=ll;
							break;
						}
						case 0b00011://double to unsigned long
						{
							union longLongAndUnsignedLongLong
							{
								long long ll;
								unsigned long long ull;
							} a ;
							a.ull = (unsigned long long)f_reg[rs1];
							reg[rd]=a.ll;
							break;
						}
						default:
							not_found = true;
							break;
					}
					break;
				}
				case 0b1101001://FCVT xxxxx to double
				{
					ins_count[FCVT]++;
					switch (rs2)
					{
						case 0b00000://signed int to double
						{
							union signedIntAndLongLong
							{
								int signedInt;
								long long longLong;
							} a ;
							a.longLong = reg[rs1];
							d1=(double)a.signedInt;
							f_reg[rd]=d1;
							break;
						}
						case 0b00001://unsigned int to double
						{
							union unsignedIntAndLongLong
							{
								unsigned int unsignedInt;
								long long longLong;
							} a ;
							a.longLong = reg[rs1];
							d1=(double)a.unsignedInt;
							f_reg[rd]=d1;
							break;
						}
						case 0b00010://signed long to double
						{
							long long ll=reg[rs1];
							f_reg[rd]=(double)ll;
							break;
						}
						case 0b00011://unsigned long to double
						{
							union unsignedLongLongAndLongLong
							{
								long long ll;
								unsigned long long ull;
							} a ;
							a.ll=reg[rs1];
							d1=(double)a.ull;
							f_reg[rd]=d1;
							break;
						}
						default:
							not_found = true;
							break;
					}
					break;
				}
				//FMV & double classify
				case 0b1111001://FMV.D.X
				{
					ins_count[FMV]++;
					union doubleToLongLong
					{
						double d;
						long long longLong;
					} a ;
					a.longLong = reg[rs1];
					f_reg[rd]=a.d;
					break;
				}
				case 0b1110001://FMV.X.D & classify
				{
					ins_count[FMV]++;
					switch (func3){
						case 0b000://FMV.X.D
						{
							union doubleToLongLong
							{
								double d;
								long long longLong;
							} a ;
							a.d = f_reg[rs1];
							reg[rd]=a.longLong;
							break;
						}
						case 0b001://double classify
						{
							unsigned long long sign = doubleToLongInt(f_reg[rs1])>>63;
							unsigned long long exp = doubleToLongInt(f_reg[rs1])>>52;
							exp = exp&0x7FF;
							unsigned long long m=doubleToLongInt(f_reg[rs1]);
							m=m&0xFFFFFFFFFFFFF;
							unsigned int c0=0, c1=0,c2=0,c3=0,c4=0, c5=0,c6=0,c7=0,c8=0,c9=0;
							if( sign==1 && exp==0x7FF && m==0 )
								c0=1;
							if( sign==1 && exp!=0x7FF && exp!=0 )
								c1=1;
							if( sign==1 && exp==0 && m!=0 )
								c2=1;
							if( sign==1 && exp==0 && m==0 )
								c3=1;
							if( sign==0 && exp==0 && m==0 )
								c4=1;
							if( sign==0 && exp==0 && m!=0 )
								c5=1;
							if( sign==0 && exp!=0 && exp!=0x7FF )
								c6=1;
							if( sign==0 && exp==0x7FF && m==0 )
								c7=1;
							if( sign==1 && exp==0x7FF && m!=0 )
								c8=1;
							if( sign==0 && exp==0x7FF && m!=0 )
								c9=1;
							reg[rd]=c0 + (c1<<1) + (c2<<2) + (c3<<3) + (c4<<4) + (c5<<5) + (c6<<6) + (c7<<7) + (c8<<8) +(c9<<9);
							break;
						}
						default:
							not_found = true;
							break;
					}
					break;
				}
				case 0b1010000://FCMP.S
					ins_count[FCMP]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					f1=doubleToFloat(d1);
					f2=doubleToFloat(d2);
					switch (func3)
					{
						case 0b000://FLE.S
							if( f1<=f2 )
								reg[rd]=1;
							else
								reg[rd]=0;
							break;
						case 0b001://FLT.S
							if( f1<f2 )
								reg[rd]=1;
							else
								reg[rd]=0;
							break;
						case 0b010://FEQ.S
							if( f1==f2 )
								reg[rd]=1;
							else
								reg[rd]=0;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 0b1010001://FCMP.D
					ins_count[FCMP]++;
					d1=f_reg[rs1];
					d2=f_reg[rs2];
					switch (func3)
					{
						case 0b000://FLE.D
							if( d1<=d2 )
								reg[rd]=1;
							else
								reg[rd]=0;
							break;
						case 0b001://FLT.D
							if( d1<d2 )
								reg[rd]=1;
							else
								reg[rd]=0;
							break;
						case 0b010://FEQ.D
							if( d1==d2 )
								reg[rd]=1;
							else
								reg[rd]=0;
							break;
						default:
							not_found = true;
							break;
					}
					break;
				case 0b1110000://single classify
				{
					ins_count[FSCLASSIFY]++;
					unsigned long long sign = doubleToLongInt(f_reg[rs1])>>31;
					unsigned long long exp = doubleToLongInt(f_reg[rs1])>>23;
					exp = exp&0xFF;
					unsigned long long m=doubleToLongInt(f_reg[rs1]);
					m=m&0x7FFFFF;
					unsigned int c0=0, c1=0,c2=0,c3=0,c4=0, c5=0,c6=0,c7=0,c8=0,c9=0;
					if( sign==1 && exp==0x7FF && m==0 )
						c0=1;
					if( sign==1 && exp!=0x7FF && exp!=0 )
						c1=1;
					if( sign==1 && exp==0 && m!=0 )
						c2=1;
					if( sign==1 && exp==0 && m==0 )
						c3=1;
					if( sign==0 && exp==0 && m==0 )
						c4=1;
					if( sign==0 && exp==0 && m!=0 )
						c5=1;
					if( sign==0 && exp!=0 && exp!=0x7FF )
						c6=1;
					if( sign==0 && exp==0x7FF && m==0 )
						c7=1;
					if( sign==1 && exp==0x7FF && m!=0 )
						c8=1;
					if( sign==0 && exp==0x7FF && m!=0 )
						c9=1;
					reg[rd]=c0 + (c1<<1) + (c2<<2) + (c3<<3) + (c4<<4) + (c5<<5) + (c6<<6) + (c7<<7) + (c8<<8) +(c9<<9);
					break;
				}
				default:
					not_found = true;
					break;
			}
			break;
		case 0b1000011://FMADD
			ins_count[FMIX]++;
			rs3=get_bits(instruction, 31, 27);
			if( func2==0 )//single
			{
				d1=f_reg[rs1];
				d2=f_reg[rs2];
				d3=f_reg[rs3];
				f1=doubleToFloat(d1);
				f2=doubleToFloat(d2);
				f3=doubleToFloat(d3);
				tmp_f=f1*f2+f3;
				tmp_d=floatToDouble(tmp_f);
				f_reg[rd]=tmp_d;
			}
			if( func2==1 )//double
			{
				d1=f_reg[rs1];
				d2=f_reg[rs2];
				d3=f_reg[rs3];
				tmp_d=d1*d2+d3;
				f_reg[rd]=tmp_d;
			}
			break;
		case 0b1000111://FMSUB
			ins_count[FMIX]++;
			rs3=get_bits(instruction, 31, 27);
			if( func2==0 )//single
			{
				d1=f_reg[rs1];
				d2=f_reg[rs2];
				d3=f_reg[rs3];
				f1=doubleToFloat(d1);
				f2=doubleToFloat(d2);
				f3=doubleToFloat(d3);
				tmp_f=f1*f2-f3;
				tmp_d=floatToDouble(tmp_f);
				f_reg[rd]=tmp_d;
			}
			if( func2==1 )//double
			{
				d1=f_reg[rs1];
				d2=f_reg[rs2];
				d3=f_reg[rs3];
				tmp_d=d1*d2-d3;
				f_reg[rd]=tmp_d;
			}
			break;
		case 0b1001111://FNMADD
			ins_count[FMIX]++;
			rs3=get_bits(instruction, 31, 27);
			if( func2==0 )//single
			{
				d1=f_reg[rs1];
				d2=f_reg[rs2];
				d3=f_reg[rs3];
				f1=doubleToFloat(d1);
				f2=doubleToFloat(d2);
				f3=doubleToFloat(d3);
				tmp_f=-(f1*f2+f3);
				tmp_d=floatToDouble(tmp_f);
				f_reg[rd]=tmp_d;
			}
			if( func2==1 )//double
			{
				d1=f_reg[rs1];
				d2=f_reg[rs2];
				d3=f_reg[rs3];
				tmp_d=-(d1*d2+d3);
				f_reg[rd]=tmp_d;
			}
			break;
		case 0b1001011://FNMSUB
			ins_count[FMIX]++;
			rs3=get_bits(instruction, 31, 27);
			if( func2==0 )//single
			{
				d1=f_reg[rs1];
				d2=f_reg[rs2];
				d3=f_reg[rs3];
				f1=doubleToFloat(d1);
				f2=doubleToFloat(d2);
				f3=doubleToFloat(d3);
				tmp_f=-(f1*f2-f3);
				tmp_d=floatToDouble(tmp_f);
				f_reg[rd]=tmp_d;
			}
			if( func2==1 )//double
			{
				d1=f_reg[rs1];
				d2=f_reg[rs2];
				d3=f_reg[rs3];
				tmp_d=-(d1*d2-d3);
				f_reg[rd]=tmp_d;
			}
			break;
		case 115: //SYSTEM
			ins_count[MSYSTEM]++;
			if (reg[17] == sys_exit)
			{
				state = CPU_FINISHED;
				exit_code = reg[10];
				break;
			}
			else
				ret = do_syscall(mem, reg[10], reg[11], reg[12], reg[13], reg[14], reg[15], reg[17]);
				reg[10] = ret;
			break;
		default:
			not_found = true;
			break;
	}
	if (not_found)
	{
		pc -= 4;	//undo the pc increment
		show_pc();
		cout << "unimplemented instruction: " << hex << instruction << endl;
		state = CPU_ERROR;
	}

}

void cpu::clear_breakpoint(unsigned int address)
{
	breakpoints.erase(address);
}

void cpu::clear_all_breakpoint(){
	breakpoints.clear();
}

void cpu::set_breakpoint(unsigned int address)
{
	breakpoints.insert(address);
}

int cpu::get_argument(unsigned int instruction, char type, long long argument[4])
{
	int sign_ext = 0;
	switch (type)
	{
		case 'R':
			argument[0] = get_bits(instruction, 11, 7); 
			argument[1] = get_bits(instruction, 19, 15); 
			argument[2] = get_bits(instruction, 24, 20); 
			argument[3] = 0; 
			break;	
		case 'I':
			argument[0] = get_bits(instruction, 11, 7);   
			argument[1] = get_bits(instruction, 19, 15);  
			argument[2] = 0;  
			argument[3] = get_bits(instruction, 31, 20);  
			sign_ext = get_bits(instruction, 31, 31)*(20 + 32);
			break;
		case 'S':
			argument[0] = 0; 
			argument[1] = get_bits(instruction, 19, 15); 
			argument[2] = get_bits(instruction, 24, 20);  
			argument[3] = get_bits(instruction, 31, 25)*0x20 + get_bits(instruction, 11, 7);  
			sign_ext = get_bits(instruction, 31, 31)*(20 + 32);
			break;
		case 'B':
			argument[0] = 0;  
			argument[1] = get_bits(instruction, 19, 15); 
			argument[2] = get_bits(instruction, 24, 20); 
			argument[3] = get_bits(instruction, 31, 31)*0x1000 + get_bits(instruction, 7, 7)  *0x800 + get_bits(instruction, 30, 25)*0x20 + get_bits(instruction, 11, 8) *0x2; 
			sign_ext = get_bits(instruction, 31, 31)*(19 + 32);
			break;
		case 'U':
			argument[0] = get_bits(instruction, 11, 7);  
			argument[1] = 0;
			argument[2] = 0;
			argument[3] = get_bits(instruction, 31, 12)*0x1000;
			break;
		case 'J':
			argument[0] = get_bits(instruction, 11, 7);   
			argument[1] = 0;
			argument[2] = 0;
			//argument[3] = get_bits(instruction, 31, 31)*0x100000 + get_bits(instruction, 19, 12)*0x1000 + get_bits(instruction, 20, 20)*0x800 + get_bits(instruction, 30, 21)*0x10; 
			argument[3] = ((get_bits(instruction, 31, 31) << 19) | (get_bits(instruction, 20, 20) << 10) | (get_bits(instruction, 19, 12) << 11) | get_bits(instruction, 30, 21)) << 1;
			sign_ext = get_bits(instruction, 31, 31)*(11 + 32);
			break;
	}
	for (int i = 0; i < sign_ext; i++)
	{
		argument[3] += (long long)pow(2,63-i);
	}

}

int cpu::get_bits(unsigned int instruction, int high, int low)
{
	int ans = 0;
	for (int i = low; i <= high; i++) 
	{
		if (instruction & int(pow(2,i)))
			ans += pow(2,i - low);
	}
	return ans;
}

unsigned int cpu::floatToInt(float f){
	unsigned int* p = (unsigned int*)(&f);
	return *p;
}
float cpu::intToFloat(unsigned int i){
	float* pf=(float*)(&i);
	return *pf;
}
double cpu::floatToDouble(float f){
	unsigned int* pi=(unsigned int*)(&f);
	unsigned int i=*pi;
	unsigned long long li=(unsigned long long)i;
	double *pd=(double*)(&li);
	return *pd;
}
float cpu::doubleToFloat(double d){
	unsigned long long* pl=(unsigned long long*)(&d);
	unsigned long long li=*pl;
	unsigned int i=(unsigned int)li;
	float* pf = (float*)(&i);
	return *pf;
}
unsigned long long cpu::doubleToLongInt(double d){
	unsigned long long* pl=(unsigned long long*)(&d);
	return *pl;
}

double cpu::longIntToDouble(unsigned long long li){
	double *pd = (double*)(&li);
	return *pd;
}

float cpu::longIntToFloat(unsigned long long li){
	double tmp_d=longIntToDouble(li);
	return doubleToFloat(tmp_d);
}

unsigned long long cpu::floatToLongInt(float f){
	double tmp_d=floatToDouble(f);
	return doubleToLongInt(tmp_d);
}

double cpu::intToDouble(unsigned int i){
	unsigned long long li=i;
	return longIntToDouble(li);
}

unsigned int cpu::doubleToInt(double d){
	float tmp_f=doubleToFloat(d);
	return floatToInt(tmp_f);
}

#endif