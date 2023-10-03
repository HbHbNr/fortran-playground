# disable default rules and default variables
MAKEFLAGS += --no-builtin-rules --no-builtin-variables

.PHONY: all runall info clean

SRC := src
OBJ := obj
BIN := bin
FC := gfortran
FFLAGS := -J $(OBJ)
SOURCES := $(sort $(wildcard $(SRC)/*.f90))
OBJECTS := $(SOURCES:$(SRC)/%.f90=$(OBJ)/%.o)
BINARIES := $(filter-out $(BIN)/helloworld2_main,$(SOURCES:$(SRC)/%.f90=$(BIN)/%))

all: $(BINARIES)

runall: $(BINARIES)
	for BINARY in $(BINARIES); do echo "********** $${BINARY} **********"; $${BINARY}; done

$(OBJ)/helloworld2_main.o: $(OBJ)/helloworld2.o
$(BIN)/helloworld2: $(OBJ)/helloworld2_main.o $(OBJ)/helloworld2.o

$(BIN)/%: $(OBJ)/%.o
	$(FC) -o $@ $^

$(OBJ)/%.o: $(SRC)/%.f90
	$(FC) $(FFLAGS) -c -o $@ $<

info:
	@echo 'SOURCES="$(SOURCES)"'
	@echo 'OBJECTS="$(OBJECTS)"'
	@echo 'BINARIES="$(BINARIES)"'

clean:
	rm -f bin/* obj/*
