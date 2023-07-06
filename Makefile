# Makefile
all: sum-test

sum-test: sum.o main.o
	g++ -o sum-test sum.o main.o

main.o: sum.h main.cpp
	g++ -c main.cpp -o main.o

sum.o: sum.h sum.cpp
	g++ -c sum.cpp -o sum.o

clean:
	rm -f sum-test
	rm -f *.o
