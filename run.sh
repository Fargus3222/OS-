make -f Makefile.mk 
ld -melf_i386 -T Core/link.ld -o kernel *.o Core/*.o
qemu-system-i386 -kernel kernel
rm *.o