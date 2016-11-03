#include <stdio.h>
#include <stdlib.h>
#include <elf.h>
#include <fcntl.h>
#include <unistd.h>
#include <iostream>
using namespace std;

/*Get the elf header from elf file*/
Elf64_Ehdr* obtain_elf_header(const char * filename)
{
	char *buff_ehdr = new char[64];
	Elf64_Ehdr* p_ehdr;
	int fd = open(filename, O_RDONLY);
	read(fd, buff_ehdr, 64);
	p_ehdr = (Elf64_Ehdr*) buff_ehdr;
	close(fd);
	return p_ehdr;
}

/*Get the segment header from elf file*/
Elf64_Phdr* obtain_segment_header(const char * filename)
{
	Elf64_Ehdr* elf_header = obtain_elf_header(filename);
	long long e_phoff = (long long)elf_header->e_phoff;
	int e_phentsize = (int)elf_header->e_phentsize;
	int fd = open(filename, O_RDONLY);
	char * buff = new char[e_phentsize];
	read(fd, buff, e_phoff);
	read(fd, buff, e_phentsize);
	Elf64_Phdr* p_phdr = (Elf64_Phdr *) buff;
	close(fd);
	return p_phdr;

}

/*Get the number of section of elf file*/
int section_number(const char * filename)
{
	return (int)(obtain_elf_header(filename)->e_shnum);
}

/*Get all section header from elf file*/
Elf64_Shdr** obtain_section_header(const char * filename)
{
	Elf64_Ehdr* elf_header = obtain_elf_header(filename);
	long long e_shoff = (long long)elf_header->e_shoff;
	int e_shentsize = (int)elf_header->e_shentsize;
	int e_shnum = (int)elf_header->e_shnum;
	int fd = open(filename, O_RDONLY);
	char * buff = new char[e_shoff];
	read(fd, buff, e_shoff);
	delete[] buff;
	Elf64_Shdr** result = new Elf64_Shdr*[e_shnum];
	for (int i = 0; i < e_shnum; i++)
	{
		buff = new char[e_shentsize];
		read(fd, buff, e_shentsize);
		Elf64_Shdr* temp = (Elf64_Shdr*)buff;
		//cout << temp->sh_addralign << endl;
		result[i] = temp;
	}
	close(fd);
	return result;
}



