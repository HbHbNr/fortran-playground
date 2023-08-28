.PHONY: all clean

all: bin/helloworld bin/helloworld2

bin/helloworld: src/helloworld.f90
	gfortran -o bin/helloworld src/helloworld.f90

bin/helloworld2: src/helloworld2.f90
	gfortran -o bin/helloworld2 src/helloworld2.f90

clean:
	rm -f bin/*
