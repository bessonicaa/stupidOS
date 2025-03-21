nasm Boot.asm -f bin -o bin\bootsect.bin
nasm Kernel_Entry.asm -f elf -o bin\Entry.bin
nasm IDT.asm -f elf -o bin\IDT.bin
nasm atadriv.asm -f elf -o bin\atadriv.bin

gcc -m32 -ffreestanding -c main.c -o bin\kernel.o

ld -T NUL -o bin\Kernel.img -Ttext 0x1000 bin\Entry.bin bin\kernel.o bin\IDT.bin bin\atadriv.bin

objcopy -O binary -j .text  bin\kernel.img bin\kernel.bin
copy /b /Y bin\bootsect.bin+bin\kernel.bin bin\os-image
