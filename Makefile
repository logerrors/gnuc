all: if-else if-else-main


if-else: if-else.c
	gcc -Og -S if-else.c -o if-else.s

if-else-main: if-else-main.c
	gcc -Og -g if-else-main.c -o if-else-main

do-while-main: do-while-main.c
	gcc -Og -g do-while-main.c -o do-while-main

do-while-main.s: do-while-main.c
	gcc -Og -S do-while-main.c -o do-while-main.s
while.s: while.c
	gcc -Og -S while.c

for.s: for.c
	gcc -Og -S for.c

switch.s: switch.c
	gcc -Og -S switch.c

switch-simp.s: switch-simp.c
	gcc -Og -S switch-simp.c

call-params.s: call-params.c
	gcc -Og -S call-params.c

call-params: call-params.c
	gcc -Og -g call-params.c -o call-params