#ifndef __H_MEMORY_
#define __H_MEMORY_

class memory
{
	unsigned char ** mem;
	long long memory_size;
	long long page_size;
	long long page_num;
public:
	memory();
	void *get_address (unsigned int address);
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

void* memory::get_address (unsigned int address)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		return 0;
	else
		return &mem[page_index][sub_address];
}

unsigned long long memory::read_double_word (unsigned int address)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		return 0;
	else
		return *(unsigned long long*)(mem[page_index] + sub_address);
		//maybe the solution below won't work on big-endian machines
		//return mem[page_index][sub_address + 7] * 0x100000000000000 + mem[page_index][sub_address + 6] * 0x1000000000000 + mem[page_index][sub_address + 5] * 0x10000000000 + mem[page_index][sub_address + 4] * 0x100000000
		//	+ mem[page_index][sub_address + 3] * 0x1000000 + mem[page_index][sub_address + 2] * 0x10000 + mem[page_index][sub_address + 1] * 0x100 + mem[page_index][sub_address + 0];
}

unsigned long long memory::read_word(unsigned int address)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		return 0;
	else
		return *(unsigned int*)(mem[page_index] + sub_address);
		//return mem[page_index][sub_address + 3] * 0x1000000 + mem[page_index][sub_address + 2] * 0x10000 + mem[page_index][sub_address + 1] * 0x100 + mem[page_index][sub_address + 0];
}

unsigned long long  memory::read_half_word(unsigned int address)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		return 0;
	else
		return *(unsigned short*)(mem[page_index] + sub_address);
		//return mem[page_index][sub_address + 1] * 0x100 + mem[page_index][sub_address + 0];
}

unsigned long long  memory::read_byte(unsigned int address)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		return 0;
	else
		return *(unsigned char*)(mem[page_index] + sub_address);
		//return mem[page_index][sub_address + 0];
}

void memory::write_double_word(unsigned int address, unsigned long long data)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		mem[page_index] = new unsigned char[page_size];
	unsigned long long *p = (unsigned long long*)(mem[page_index] + sub_address);
	*p = data;
	/*mem[page_index][sub_address + 7] = (data & 0xFF00000000000000) / 0x100000000000000;
	mem[page_index][sub_address + 6] = (data & 0x00FF000000000000) / 0x1000000000000;
	mem[page_index][sub_address + 5] = (data & 0x0000FF0000000000) / 0x100000000000;
	mem[page_index][sub_address + 4] = (data & 0x000000FF00000000) / 0x100000000;
	mem[page_index][sub_address + 3] = (data & 0x00000000FF000000) / 0x1000000;
	mem[page_index][sub_address + 2] = (data & 0x0000000000FF0000) / 0x10000;
	mem[page_index][sub_address + 1] = (data & 0x000000000000FF00) / 0x100;
	mem[page_index][sub_address + 0] = (data & 0x00000000000000FF);*/
}

void memory::write_word(unsigned int address, unsigned long long data)
{
	//cout << "save word " << address << ' ' << data << endl;
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		mem[page_index] = new unsigned char[page_size];
	unsigned int *p = (unsigned int*)(mem[page_index] + sub_address);
	*p = data;
	/*mem[page_index][sub_address + 3] = (data & 0xFF000000) / 0x1000000;
	mem[page_index][sub_address + 2] = (data & 0x00FF0000) / 0x10000;
	mem[page_index][sub_address + 1] = (data & 0x0000FF00) / 0x100;
	mem[page_index][sub_address + 0] = (data & 0x000000FF);*/
}

void memory::write_half_word(unsigned int address, unsigned long long data)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		mem[page_index] = new unsigned char[page_size];
	unsigned short *p = (unsigned short*)(mem[page_index] + sub_address);
	*p = data;
	/*mem[page_index][sub_address + 1] = (data & 0x0000FF00) / 0x100;
	mem[page_index][sub_address + 0] = (data & 0x000000FF);*/
}

void memory::write_byte(unsigned int address, unsigned long long data)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		mem[page_index] = new unsigned char[page_size];
	unsigned char *p = (unsigned char*)(mem[page_index] + sub_address);
	*p = data;
	//mem[page_index][sub_address] = (data & 0x000000FF);
}


#endif