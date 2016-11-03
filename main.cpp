#include <iostream>
#include "parse_elf.h"
#include "temp.h"
#include <stdio.h>
#include <stdlib.h>
#include <elf.h>
#include <fcntl.h>
#include <unistd.h>
using namespace std;

int main()
{
	Elf64_Ehdr* elf_header = obtain_elf_header("hello");
	//Elf64_Phdr* segment_header = obtain_segment_header("hello");
	int section_num = section_number("hello");
	Elf64_Shdr** section_header = obtain_section_header("hello");
	memory* mem = new memory();
	cpu* processor = new cpu(mem, 0x10164);

	/*if (segment_header->p_type == PT_LOAD)
	{
		unsigned int segment_size = segment_header->p_filesz;
		unsigned int p_vaddr = segment_header->p_vaddr;
		unsigned int p_offset = segment_header->p_offset;
		unsigned char* buff = new unsigned char[p_offset];
		int fd = open("hello", O_RDONLY);
		read(fd, buff, p_offset);
		delete buff;
		buff = new unsigned char[segment_size];
		read(fd, buff, segment_size);
		close(fd);
		for (unsigned int i = 0; i < segment_size; i++)
			mem->write_byte(p_vaddr + i, buff[i]);	
	}*/

	for (int i = 0; i < elf_header->e_shnum; i++)
	{
		Elf64_Shdr* section_ptr = section_header[i];
		if (section_ptr->sh_addr != 0)
		{
			unsigned int section_size = section_ptr->sh_size;
			unsigned int sh_addr = section_ptr->sh_addr;
			unsigned int sh_offset = section_ptr->sh_offset;
			unsigned char* buff = new unsigned char[sh_offset];
			int fd = open("hello", O_RDONLY);
			read(fd, buff, sh_offset);
			delete buff;
			buff = new unsigned char[section_size];
			read(fd, buff, section_size);
			close(fd);
			for (unsigned int j = 0; j < section_size; j++)
				mem->write_byte(sh_addr + j, buff[j]);	
			
		}
	}

	//unsigned int pc_limit = (unsigned int)segment_header->p_vaddr + (unsigned int)segment_header->p_memsz;
	//while(processor->pc <= 6656000)
	for (int i = 0; i < 10; i++)
	{
		processor->execute(false);
		cout << processor->reg[15] << endl;
	}
	return 0;
}