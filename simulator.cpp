#include "simulator.h"
using namespace std;

int main(int argc, char *argv[])
{
	if (argc != 2)
	{
		cout << "Usage: ./simulator <file>" << endl;
		return 0;
	}

	simulator *simul = new simulator();
	simul->parse_elf(argv[1]);
	simul->run();
	delete simul;
	return 0;
}