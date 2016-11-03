#include <string>
#include <stdlib.h>
#include <ctype.h>
#include <cmath>
#include <iostream>
using namespace std;


class memory
{
	unsigned char ** mem;
	long long memory_size;
	long long page_size;
	long long page_num;
public:
	memory();
	unsigned long long read_double_word (unsigned int address);
	unsigned long long read_word (unsigned int address);
	unsigned long long read_half_word (unsigned int address);
	unsigned long long read_byte (unsigned int address);
	void write_double_word(unsigned int address, unsigned long long data);
	void write_word(unsigned int address, unsigned long long data);
	void write_half_word(unsigned int address, unsigned long long data);
	void write_byte(unsigned int address, unsigned long long data);
};

memory::memory()
{
	memory_size = 4294967296; // 2^32
	page_size = 65536; // 2^16
	page_num = memory_size / page_size;
	mem = new unsigned char*[page_num];
}

unsigned long long memory::read_double_word (unsigned int address)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		return 0;
	else
		return mem[page_index][sub_address + 7] * 0x100000000000000 + mem[page_index][sub_address + 6] * 0x1000000000000 + mem[page_index][sub_address + 5] * 0x10000000000 + mem[page_index][sub_address + 4] * 0x100000000
			+ mem[page_index][sub_address + 3] * 0x1000000 + mem[page_index][sub_address + 2] * 0x10000 + mem[page_index][sub_address + 1] * 0x100 + mem[page_index][sub_address + 0];
}

unsigned long long memory::read_word(unsigned int address)
{
	cout << "read word " << address << endl;
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		return 0;
	else
		return mem[page_index][sub_address + 3] * 0x1000000 + mem[page_index][sub_address + 2] * 0x10000 + mem[page_index][sub_address + 1] * 0x100 + mem[page_index][sub_address + 0];
}

unsigned long long  memory::read_half_word(unsigned int address)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		return 0;
	else
		return mem[page_index][sub_address + 1] * 0x100 + mem[page_index][sub_address + 0];
}

unsigned long long  memory::read_byte(unsigned int address)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		return 0;
	else
		return mem[page_index][sub_address + 0];
}

void memory::write_double_word(unsigned int address, unsigned long long data)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		mem[page_index] = new unsigned char[page_size];
	mem[page_index][sub_address + 7] = (data & 0xFF00000000000000) / 0x100000000000000;
	mem[page_index][sub_address + 6] = (data & 0x00FF000000000000) / 0x1000000000000;
	mem[page_index][sub_address + 5] = (data & 0x0000FF0000000000) / 0x100000000000;
	mem[page_index][sub_address + 4] = (data & 0x000000FF00000000) / 0x100000000;
	mem[page_index][sub_address + 3] = (data & 0x00000000FF000000) / 0x1000000;
	mem[page_index][sub_address + 2] = (data & 0x0000000000FF0000) / 0x10000;
	mem[page_index][sub_address + 1] = (data & 0x000000000000FF00) / 0x100;
	mem[page_index][sub_address + 0] = (data & 0x00000000000000FF);
}

void memory::write_word(unsigned int address, unsigned long long data)
{
	cout << "save word " << address << ' ' << data << endl;
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		mem[page_index] = new unsigned char[page_size];
	mem[page_index][sub_address + 3] = (data & 0xFF000000) / 0x1000000;
	mem[page_index][sub_address + 2] = (data & 0x00FF0000) / 0x10000;
	mem[page_index][sub_address + 1] = (data & 0x0000FF00) / 0x100;
	mem[page_index][sub_address + 0] = (data & 0x000000FF);
}

void memory::write_half_word(unsigned int address, unsigned long long data)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		mem[page_index] = new unsigned char[page_size];
	mem[page_index][sub_address + 1] = (data & 0x0000FF00) / 0x100;
	mem[page_index][sub_address + 0] = (data & 0x000000FF);
}

void memory::write_byte(unsigned int address, unsigned long long data)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		mem[page_index] = new unsigned char[page_size];
	mem[page_index][sub_address] = (data & 0x000000FF);
}















class cpu
{
private:
	memory* mem;
	unsigned int breakpoint;
	

public:
	unsigned int pc;
	long long reg[32];

	/* Constructor, link the cpu with memory */
	cpu(memory* main_memory, unsigned int init_PC);

	/* Show the value of PC register */
	void show_pc();

	/* Set the PC register */
	void set_pc(unsigned int pc_value);

	/* Show the value of a register */
	void show_register(unsigned int register_num);

	/* Set the value of a register */
	void set_register(unsigned int register_num, unsigned int register_value);

	/* Execute numbers of instruction */
	void execute(bool breakpoint_check);

	/* Cancel the breakpoint */
	void clear_breakpoint();

	/* Set the breakpoint at an address */
	void set_breakpoint(unsigned int address);

	/* Get arguments by instruction type
	     Argument means rd, rs1, rs2, im
	 */
	int get_argument(unsigned int instruction, char type, long long argument[4]);

	/* Get some bits of an instruction */
	int get_bits(unsigned int instruction, int high, int low);
};

cpu::cpu(memory* main_memory, unsigned int init_PC)
{
	mem = main_memory;
	set_pc(init_PC);
	clear_breakpoint();
	for (int i = 0; i < 32; i++)
	{
		reg[i] = 0;
	}
}

void cpu::show_pc()
{
	cout << "PC register value: " << pc << endl;
}

void cpu::set_pc(unsigned int pc_value)
{
	pc = pc_value;
}

void cpu::show_register(unsigned int register_num)
{
	cout << "register " << register_num << " value: " << reg[register_num] << endl;	
}

void cpu::set_register(unsigned int register_num, unsigned int register_value)
{
	if (register_num != 0)
	{
		reg[register_num] = register_value;
	}
}

void cpu::execute(bool breakpoint_check)
{
	if (breakpoint_check)
	{
		if (breakpoint == pc)
			return;
	}

	unsigned int instruction = mem->read_word(pc);
	cout << pc << ' ' << instruction << endl;
	pc = pc + 4;
	int opcode = get_bits(instruction, 6, 0);
	int func3 = get_bits(instruction, 14, 12);
	int func7 = get_bits(instruction, 31, 25);
	cout << "opcode: " << opcode << endl;
	long long argument[4];

	unsigned long long temp_uint;
	long long temp_int;
	switch (opcode)
	{
		case 55: //LUI
			get_argument(instruction, 'U', argument);
			reg[argument[0]] = argument[3];
			break;
		case 23: // AUIPC
			get_argument(instruction, 'U', argument);
			pc += argument[3];
			reg[argument[0]] = pc;
			break;
		case 111: // JAL
			get_argument(instruction, 'J', argument);
			reg[argument[0]] = pc;
			pc += argument[3];
			break;
		case 103: // JALR
			if (func3 != 0)
			{
				get_argument(instruction, 'I', argument);
				reg[argument[0]] = pc;
				pc = (argument[3] + reg[argument[1]]) & 0xFFFFFFFE;
			}
			break;
		case 99:
			get_argument(instruction, 'B', argument);
			switch (func3)
			{
				case 0: // BEQ
					if (reg[argument[1]] == reg[argument[2]])
						pc += argument[3];
					break;
				case 1: // BNE
					if (reg[argument[1]] != reg[argument[2]])
						pc += argument[3];
					break;
				case 4: // BLT
					if (int(reg[argument[1]]) < int(reg[argument[2]]))
						pc += argument[3];
					break;
				case 5: // BGE
					if (int(reg[argument[1]]) >= int(reg[argument[2]]))
						pc += argument[3];
					break;
				case 6: // BLTU
					if (reg[argument[1]] < reg[argument[2]])
						pc += argument[3];
					break;
				case 7: // BGEU
					if (reg[argument[1]] >= reg[argument[2]])
						pc += argument[3];
					break;
			}
			break;
		case 3:
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
			}
			break;
		case 35:
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
			}
		case 19:
			get_argument(instruction, 'I', argument);
			switch(func3)
			{
				case 0: // ADDI
					reg[argument[0]] = reg[argument[1]] + argument[3];
					break;
				case 2: // SLTI
					reg[argument[0]] = (int(reg[argument[1]]) < argument[3]);
					break;
				case 3: // SLTIU
					reg[argument[0]] = (reg[argument[1]] < (unsigned int)(argument[3]));
					break;
				case 4: // XORI
					reg[argument[0]] = reg[argument[1]] ^ argument[3];
					break;
				case 6: // ORI
					reg[argument[0]] = reg[argument[1]] | argument[3];
					break;
				case 7: // ANDI
					reg[argument[0]] = reg[argument[1]] & argument[3];
					break;
				case 1: // SLLI
					if (!func7)
					{
						temp_int = argument[3] & 0x01F;
						reg[argument[0]] = reg[argument[1]] << temp_int;
					}
					break;
				case 5:
					switch (func7)
					{
						case 0: // SRLI
							reg[argument[0]] = ((unsigned long long)reg[argument[1]]) >> (argument[3] & 0x01F);
							break;
						case 32: // SRAI
							reg[argument[0]] = reg[argument[1]] >> (argument[3] & 0x01F);
							break;
					}
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
							reg[argument[0]] = reg[argument[1]] + reg[argument[2]];
							break;
						case 32: //SUB
							reg[argument[0]] = reg[argument[1]] - reg[argument[2]];
							break;
					}
					break;
				case 1: // SLL
					if (!func7)
					{
						temp_int = reg[argument[2]] & 0x01F;
						reg[argument[0]] = reg[argument[1]] << temp_int;
					}
					break;
				case 2: // SLT
					if (!func7)
						reg[argument[0]] = (int(reg[argument[1]]) < int(reg[argument[2]]));
					break;
				case 3: // SLTU
					if (!func7)
						reg[argument[0]] = (reg[argument[1]] < reg[argument[2]]);
					break;
				case 4: // XOR
					if (!func7)
						reg[argument[0]] = reg[argument[1]] ^ reg[argument[2]];
					break;
				case 5:
					switch (func7)
					{
						case 0: // SRL
							temp_int = reg[argument[2]] & 0x01F;
							reg[argument[0]] = ((unsigned long long)reg[argument[1]]) >> temp_int;
							break;
						case 32: // SRA
							temp_int = reg[argument[2]] & 0x01F;
							reg[argument[0]] = reg[argument[1]] >> temp_int;
							break;

					}
					break;
				case 6: // OR
					if (!func7)
						reg[argument[0]] = reg[argument[1]] | reg[argument[2]];
					break;
				case 7: // AND
					if (!func7)
						reg[argument[0]] = reg[argument[1]] & reg[argument[2]];
					break;
			}
			break;
		case 27:
			get_argument(instruction, 'I', argument);
			switch (func3)
			{
				case 0: // ADDIW
					reg[argument[0]] = (int)(reg[argument[1]] + argument[3]);
					break;
				case 1 : // SLLIW
					if (!func7)
					{
						temp_int = argument[3] & 0x01F;
						reg[argument[0]] = reg[argument[1]] << temp_int;
					}
					break;
				case 5:
					switch (func7)
					{
						case 0: // SRLIW
							reg[argument[0]] = ((unsigned long long)reg[argument[1]]) >> (argument[3] & 0x01F);
							break;
						case 32: // SRAIW
							reg[argument[0]] = reg[argument[1]] >> (argument[3] & 0x01F);
							break;
					}
					break;
			}
		case 59:
			get_argument(instruction, 'R', argument);
			switch (func3)
			{
				case 0:
					switch (func7)
					{
						case 0: //ADDW
							reg[argument[0]] = ((long long)((int)(reg[argument[1]] + reg[argument[2]])));
							break;
						case 32: //SUBW
							reg[argument[0]] = ((long long)((int)(reg[argument[1]] - reg[argument[2]])));
							break;
					}
					break;
				case 1: // SLLW
					if (!func7)
					{
						temp_int = reg[argument[2]] & 0x01F;
						reg[argument[0]] = reg[argument[1]] << temp_int;
					}
					break;
				case 5:
					switch (func7)
					{
						case 0: // SRLW
							temp_int = reg[argument[2]] & 0x01F;
							reg[argument[0]] = ((unsigned long long)reg[argument[1]]) >> temp_int;
							break;
						case 32: // SRAW
							temp_int = reg[argument[2]] & 0x01F;
							reg[argument[0]] = reg[argument[1]] >> temp_int;
							break;

					}
					break;
			}
			break;

	}

}

void cpu::clear_breakpoint()
{
	breakpoint = 0;
}

void cpu::set_breakpoint(unsigned int address)
{
	breakpoint = address;
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
			argument[3] = get_bits(instruction, 31, 31)*0x100000 + get_bits(instruction, 19, 12)*0x1000 + get_bits(instruction, 20, 20)*0x800 + get_bits(instruction, 30, 21)*0x10; 
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