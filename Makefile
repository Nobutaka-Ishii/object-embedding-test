all: dat2embed.o datPrint.o
	gcc dat2embed.o datPrint.o -o datPrint

dat2embed.o : dat2embed.txt
	objcopy --input binary --output elf64-x86-64 --binary-architecture i386:x86-64 dat2embed.txt dat2embed.o

datPrint.o : datPrint.c
	gcc -c datPrint.c

clean:
	rm dat2embed.o datPrint.o datPrint

