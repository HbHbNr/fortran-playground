# disable default rules and default variables
MAKEFLAGS += --no-builtin-rules --no-builtin-variables

.PHONY: all runall info clean

SRC := src
OBJ := obj
BIN := bin
FC := gfortran
FFLAGS := -J $(OBJ) -Wall -Wextra -fcheck=all -g -std=f2018
SOURCES := $(sort $(wildcard $(SRC)/*.f90))
OBJECTS := $(SOURCES:$(SRC)/%.f90=$(OBJ)/%.o)
BINARIES := $(filter-out $(BIN)/helloworld2_main $(BIN)/regex,$(SOURCES:$(SRC)/%.f90=$(BIN)/%))

all: $(BINARIES)

runall: $(BINARIES)
	for BINARY in $(BINARIES); do echo "********** $${BINARY} **********"; $${BINARY}; done

$(OBJ)/helloworld2_main.o: $(OBJ)/helloworld2.o
$(BIN)/helloworld2: $(OBJ)/helloworld2_main.o $(OBJ)/helloworld2.o

$(OBJ)/regex_test.o: $(OBJ)/regex.o
$(BIN)/regex_test: $(OBJ)/regex_test.o $(OBJ)/regex.o

$(BIN)/%: $(OBJ)/%.o
	$(FC) -o $@ $^

$(OBJ)/%.o: $(SRC)/%.f90
	$(FC) $(FFLAGS) -c -o $@ $<

info:
	@echo 'SOURCES="$(SOURCES)"'
	@echo 'OBJECTS="$(OBJECTS)"'
	@echo 'BINARIES="$(BINARIES)"'

# download regex.f90 from github.com
$(SRC)/regex.f90:
	curl -sS https://raw.githubusercontent.com/perazz/fortran-regex/83a409ca9443990759395731732733ded013e1f3/src/regex.f90 > $@

clean:
	rm -f bin/* obj/*
