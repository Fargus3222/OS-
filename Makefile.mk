SOURSES = $(wildcard *.c Drivers/*.c Core/*.c)
HEADERS = $(wildcard *.h Drivers/*.h Core/*.h)
ASM = $(wildcard Core/*.asm *.asm)
ASMO = $(ASM:.asm=.o)
LINK = Core/link.ld
OBJECTS = $(wildcard *.o)


#ASM:.asm=.o
#gcc -m32 -c kernel.c -o kc.o
#gcc -m32 -c Drivers/System.c -o kc.o
#

all:
	
	nasm -f elf32 $(ASM)
	gcc -m32 -c $(SOURSES)
	
	
