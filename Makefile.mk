SOURSES = $(wildcard *.c Drivers/*.c)
HEADERS = $(wildcard *.h Drivers/*.h)
ASM = $(wildcard Core/*.asm)
#ASMO = $(ASM:.)
LINK = $(wildcard Core/*.ld)
OBJECTS = $(wildcard *.o)

#ASM:.asm=.o

all:
	g++ -c  $(SOURSES)
	nasm -f elf32 $(ASM)
	ld -elf32-i386 -T Core/link.ld -o kernel $(OBJECTS)
	


	

	
