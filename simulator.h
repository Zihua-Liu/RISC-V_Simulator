#include <cstring>
#include <stdlib.h>
#include <string.h>
#include "parse_elf.h"
#include "cpu.h"
using namespace std;

#define MAX_ARGC_NUM 3
#define MAX_ARGC_LENGTH 20

struct cmdline_tokens
{
	int argc;
	char *argv[MAX_ARGC_NUM];
};

class simulator
{
private:
	memory *mem;
	cpu *processor;
	unsigned int total_ins_cnt;
public:
	simulator()
	{
		mem = NULL;
		processor = NULL;
		total_ins_cnt = 0;
	}

	void parse_elf(char *file)
	{
		Elf64_Ehdr* elf_header = obtain_elf_header(file);
		//Elf64_Phdr* segment_header = obtain_segment_header(file);
		int section_num = section_number(file);
		Elf64_Shdr** section_header = obtain_section_header(file);
		mem = new memory();
		processor = new cpu(mem, 0x10000);

		/*if (segment_header->p_type == PT_LOAD)
		{
			unsigned int segment_size = segment_header->p_filesz;
			unsigned int p_vaddr = segment_header->p_vaddr;
			unsigned int p_offset = segment_header->p_offset;
			unsigned char* buff = new unsigned char[p_offset];
			int fd = open(file, O_RDONLY);
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
				int fd = open(file, O_RDONLY);
				read(fd, buff, sh_offset);
				delete buff;
				buff = new unsigned char[section_size];
				read(fd, buff, section_size);
				close(fd);
				for (unsigned int j = 0; j < section_size; j++)
					mem->write_byte(sh_addr + j, buff[j]);	
				
			}
		}
	}

	void print_usage()
	{
		cout << "-----------------------------------------------------------------------------------------------------\n";
		cout << "Usage: [option] <arg0> <arg1>\n";
		cout << "\tbreak addr\t\t---- set breakpoint at address addr\n";
		cout << "\tclear addr/all\t\t---- clear breakpoint at address addr or clear all breakpoints\n";
		cout << "\tstep <steps>\t\t---- execute <steps> instructions, default as 1\n";
		cout << "\trun\t\t\t---- run until the program finishes or encounters a breakpoint\n";
		cout << "\tpc\t\t\t---- show current pc, where stores the next instruction\n";
		cout << "\treg name/all\t\t---- show one or all registers\n";
		cout << "\tmem addr bytes\t\t---- show the content in memory\n";
		cout << "\thelp\t\t\t---- display this information\n";
		cout << "\texit\t\t\t---- exit the simulator\n";
		cout << "-----------------------------------------------------------------------------------------------------\n";
	}

	bool hex_string_to_int(char *s, unsigned int &ret)
	{
		int len = strlen(s);
		if (len == 0)
			return false;
		ret = 0;
		int tmp = 1;
		for (int i = len - 1; i >= 0; --i){
			if (s[i] >= '0' && s[i] <= '9')
				ret += (s[i] - '0') * tmp;
			else if (s[i] >= 'a' && s[i] <= 'f')
				ret += (s[i] - 'a' + 10) * tmp;
			else if (s[i] >= 'A' && s[i] <= 'F')
				ret += (s[i] - 'A' + 10) * tmp;
			else
				return false;
			tmp *= 16;
		}
		return true;
	}

	void parse_cmd(string cmd, cmdline_tokens *tok)
	{
		int l = 0, r = 0, len = cmd.length();
		tok->argc = 0;
		while (cmd[l] == ' '){ ++l; }

		while (l < len && r < len){
			r = cmd.find(' ', l);
			if (r == -1){
				strcpy(tok->argv[tok->argc++], cmd.substr(l, len - l + 1).c_str());
				break;
			}

			strcpy(tok->argv[tok->argc++], cmd.substr(l, r - l).c_str());
			if (tok->argc == MAX_ARGC_NUM)
				break;
			l = r + 1;
			while (cmd[l] == ' '){ ++l; }
		}
	}

	void cpu_run(int steps)
	{
		int cur_ins_cnt = 0;
		//unsigned int pc_limit = (unsigned int)segment_header->p_vaddr + (unsigned int)segment_header->p_memsz;
		long long last = 0;
		do{
			processor->execute();
			if (steps > 0)
				--steps;
			++cur_ins_cnt;
		}while (steps != 0 && processor->state != CPU_BREAKPOINT && processor->state != CPU_ERROR && processor->state != CPU_FINISHED);
		total_ins_cnt += cur_ins_cnt;
		cout << "executed " << dec << cur_ins_cnt << " instructions (" 
			<< total_ins_cnt << " instructions for now)" << endl;
	}

	void run()
	{
		string cmd;
		cmdline_tokens *tok = new cmdline_tokens;
		for (int i = 0; i < MAX_ARGC_NUM; ++i)
			tok->argv[i] = new char[MAX_ARGC_LENGTH];
		print_usage();
		while (true){
			cout << "$ > ";
			getline(cin, cmd);
			parse_cmd(cmd, tok);
			if (tok->argc == 0)
				continue;
			if (!strcmp(tok->argv[0], "exit"))
				break;
			else if (!strcmp(tok->argv[0], "break")){
				if (tok->argc != 2){
					cout << "Usage: break addr" << endl;
					continue;
				}
				unsigned int br;
				if (!hex_string_to_int(tok->argv[1], br) || br % 4 != 0)
					cout << "please input a valid address" << endl;
				else{
					cout << "set breakpoint 0x" << hex << br << endl;;
					processor->set_breakpoint(br);
				}
			}
			else if (!strcmp(tok->argv[0], "clear")){
				if (tok->argc != 2){
					cout << "Usage: clear addr/all" << endl;
					continue;
				}
				if (!strcmp(tok->argv[1], "all")){
					cout << "clear all breakpoints" << endl;
					processor->clear_all_breakpoint();
				}
				else{
					unsigned int br;
					if (!hex_string_to_int(tok->argv[1], br) || br % 4 != 0)
						cout << "please input a valid address" << endl;
					else{
						cout << "clear breakpoint 0x" << hex << br << endl;;
						processor->clear_breakpoint(br);
					}
				}
			}
			else if (!strcmp(tok->argv[0], "step")){
				if (tok->argc > 2){
					cout << "Usage: step [steps]" << endl;
					continue;
				}
				if (tok->argc == 1){
					cout << "execute 1 instruction" << endl;
					cpu_run(1);
				}
				else if (tok->argc == 2){
					int steps = atoi(tok->argv[1]);
					cout << "execute " << dec << steps <<" instructions" << endl;
					cpu_run(steps);
				}
			}
			else if (!strcmp(tok->argv[0], "run")){
				cpu_run(-1);
				if (processor->state != CPU_BREAKPOINT){
					cout << "cpu state: " << processor->state << endl;
					cout << "program exited, exit code: " << dec << processor->exit_code << endl;
					cout << endl;
					cout << "Here is the percentage for every type of instructions:" << endl;
					for(int i = 0; i < 25; i++){
						cout << processor->ins_name[i] << "\t" << (double)processor->ins_count[i] / total_ins_cnt * 100 << "%" << endl;
					}
					break;
				}
				else
					cout << "program stops at breakpoint, ";
					processor->show_pc();
			}
			else if (!strcmp(tok->argv[0], "pc"))
				processor->show_pc();
			else if (!strcmp(tok->argv[0], "reg")){
				if (tok->argc != 2){
					cout << "Usage: reg name/all" << endl;
					continue;
				}
				if (!strcmp(tok->argv[1], "all")){
					for (int i = 0; i < 32; ++i)
						processor->show_register(i, false);
					for (int i = 0; i < 32; ++i)
						processor->show_register(i, true);
				}
				else
					processor->show_register_by_alias(tok->argv[1]);
			}
			else if (!strcmp(tok->argv[0], "mem")){
				if (tok->argc != 3){
					cout << "Usage: mem addr bytes" << endl;
					continue;
				}
				unsigned int addr;
				if (!hex_string_to_int(tok->argv[1], addr))
					cout << "please input a valid address" << endl;
				int bytes = atoi(tok->argv[2]);
				processor->show_memory(addr, bytes);
			}
			else if (!strcmp(tok->argv[0], "help"))
				print_usage();
			else
				cout << "command \"" << tok->argv[0] << "\" not found. type help to see more" << endl;
		}

		for (int i = 0; i < MAX_ARGC_NUM; ++i)
			delete[](tok->argv[i]);
		delete tok;
	}
	
};