# disable default rules and default variables
MAKEFLAGS += --no-builtin-rules --no-builtin-variables

.PHONY: all run info clean

SRC := src
OBJ := obj
BIN := bin
FC := gfortran
FFLAGS := -J $(OBJ)
SOURCES := $(wildcard $(SRC)/*.f90)
OBJECTS := $(SOURCES:$(SRC)/%.f90=$(OBJ)/%.o)
BINARIES := $(BIN)/helloworld $(BIN)/helloworld2

all: $(BINARIES)

run: $(BINARIES)
	for BINARY in $(BINARIES); do $${BINARY}; done

$(BIN)/helloworld: $(OBJ)/helloworld.o
$(BIN)/helloworld2: $(OBJ)/helloworld2_main.o $(OBJ)/helloworld2.o $(OBJ)/fruit.o

$(BIN)/%: $(OBJ)/%.o
	$(FC) -o $@ $^

$(OBJ)/%.o: $(SRC)/%.f90
	$(FC) $(FFLAGS) -c -o $@ $<

info:
	@echo 'SOURCES="$(SOURCES)"'
	@echo 'OBJECTS="$(OBJECTS)"'

clean:
	rm -f bin/* obj/*
