exp1: multiply.o add.o main.o 
	gcc multiply.o add.o main.o -o exp1

main.i:
	gcc -E main.c -o main.i
	@echo $@ done.

main.s: main.i
	gcc -S main.i
	@echo $@ done.

main.o: main.s
	gcc -c main.s
	@echo $@ done.

add.i:
	gcc -E add.c -o add.i
	@echo $@ done.

add.s: add.i
	gcc -S add.i
	@echo $@ done.

add.o: add.s add.h
	gcc -c add.s
	@echo $@ done.

multiply.i:
	gcc -E multiply.c -o multiply.i
	@echo $@ done.

multiply.s: multiply.i
	gcc -S multiply.i
	@echo $@ done.

multiply.o: multiply.h multiply.s
	gcc -c multiply.s
	@echo $@ done.

clean:
	-rm -f *.o *.i *.s exp1