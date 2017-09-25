RISC-V Simulator
===
# Introduction
This simulator implement the loading and 
cuting process of an ELF file based on RISC-V ISA. This simulator is developed in C++. First, it will analyze the ELF file, extract messages from ELF headers, program header table and section header table, and load the data segment and the code segment to the virtual memory of the simulator.Then, it will begin to execute each instruction from the entry of the program called "e_entry"(0x10000) to complete the function of the program. The simulator implement the decoding of the RISC-V instruction set, including basic sets (RV32I and RV64I), and basic extended sets(F set and M set). The instructions will be run on the virtual memory and virtual register files of the simulator. The simulator can complete the execution of program like Quick-Sort, Ackerman Function and Drystone.

# How To Use The Simulator
The simulator is a class which wrap the virtual CPU class. The program will create a simulator object at the begining, and run the debug process and execute the simulation through this simulator object. Then it will read the ELF file through the "parse_elf" function, preprocess the file and then run into the "run function". "run" function will receive the user's input instructions and then run the CPU, set the breakpoints, output the register's value, print the memory.
![](https://github.com/Zihua-Liu/RISCV-Simulator/blob/master/img/instruction.jpg)

# Example
The following example shows the simulator executing a Quick-Sort program. The inital array is {3, 10, 7, 11, 19, 20, 1, 8, 6, 15, 2, 14, 4, 5, 12, 18, 9, 13, 16, 17}.
