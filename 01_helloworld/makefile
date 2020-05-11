hello: main.asm
	nasm -f elf main.asm
	ld -m elf_i386 main.o -o hello

clean:
	rm hello
	rm main.o

.PHONY: clean