#include "Drivers/System.h"

void ClearScreen();

struct System
{
	char *vidptr;

	unsigned int pointer;
}sys;


void kmain(void)
{

	sys.vidptr = (char *)0xb8000; // System video buffer
	sys.pointer = 0;			  // System Coloumn pointer

	ClearScreen();

	int i = 0;

	for (i = 0; i < 100; i++)
	{
		
	}

	return;
}

void ClearScreen()
{
	unsigned int i = 0;

	while (sys.pointer < 80 * 25 * 2)
	{
		sys.vidptr[sys.pointer] = ' ';
		sys.vidptr[sys.pointer + 1] = 0x07;
		sys.pointer = sys.pointer + 2;
	}

	sys.pointer = 0;
}
