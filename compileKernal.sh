echo "Build kasm.o begin"
nasm -f elf32 kernel.asm -o kasm.o
echo "Build kasm.o is end"
echo "Build kc.o begin"
gcc -m32 -c kernel.c -o kc.o
gcc -m32 -c Drivers
echo "Build kc.o is end"
echo "Kernel core compile begin"
ld -melf_i386 -T link.ld -o kernel kasm.o kc.o
echo "Kernel core compile is complite"
echo "End of compile"
rm *.o