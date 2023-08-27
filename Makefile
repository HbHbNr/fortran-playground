.PHONY: all clean

all: helloworld

helloworld: helloworld.f90
	gfortran -o helloworld helloworld.f90

clean:
	rm helloworld
