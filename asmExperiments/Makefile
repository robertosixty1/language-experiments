all: at

at: main.o
	ld -o at main.o

main.o:
	yasm -felf64 main.asm
