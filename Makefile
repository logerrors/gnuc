all: if-else if-else-main


if-else: if-else.c
	gcc -Og -S if-else.c -o if-else.s

if-else-main: if-else-main.c
	gcc -Og -g if-else-main.c -o if-else-main