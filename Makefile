.PHONY: all clean

all: helloworld helloworld2

helloworld: helloworld.f90
	gfortran -o helloworld helloworld.f90

helloworld2: helloworld2.f90
	gfortran -o helloworld2 helloworld2.f90

clean:
	rm -f helloworld helloworld2
