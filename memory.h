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
	unsigned int read_word (unsigned int address);
	void write_word(unsigned int address, unsigned int data, unsigned int mask);
	void write_byte(unsigned int address, unsigned char data);
};

memory::memory()
{
	memory_size = 4294967296; // 2^32
	page_size = 65536; // 2^16
	page_num = memory_size / page_size;
	mem = new unsigned char*[page_num];
}

unsigned int memory::read_word(unsigned int address)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		return 0;
	else
		return mem[page_index][sub_address + 0] * 0x1000000 + mem[page_index][sub_address + 1] * 0x10000 + mem[page_index][sub_address + 2] * 0x100 + mem[page_index][sub_address + 3];
}

void memory::write_word(unsigned int address, unsigned int data, unsigned int mask)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		mem[page_index] = new unsigned char[page_size];
	data = data & mask;
	mem[page_index][sub_address + 0] = (data & 0xFF000000) / 0x1000000;
	mem[page_index][sub_address + 1] = (data & 0x00FF0000) / 0x10000;
	mem[page_index][sub_address + 2] = (data & 0x0000FF00) / 0x100;
	mem[page_index][sub_address + 3] = (data & 0x000000FF);
}

void memory::write_byte(unsigned int address, unsigned char data)
{
	int page_index = int(address / ((unsigned int)page_size));
	int sub_address = address % ((unsigned int)page_size);
	if (mem[page_index] == NULL)
		mem[page_index] = new unsigned char[page_size];
	mem[page_index][sub_address] = data;
}
