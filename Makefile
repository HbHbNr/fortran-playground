.PHONY: all info clean

SRC = src
OBJ = obj
BIN = bin
FC = gfortran
FFLAGS = -J $(OBJ)
SOURCES = $(wildcard $(SRC)/*.f90)
OBJECTS = $(SOURCES:$(SRC)/%.f90=$(OBJ)/%.o)

all: $(BIN) $(OBJ) $(BIN)/helloworld $(BIN)/helloworld2

$(BIN)/helloworld: $(OBJ)/helloworld.o
$(BIN)/helloworld2: $(OBJ)/helloworld2_run.o $(OBJ)/helloworld2.o $(OBJ)/fruit.o

$(BIN):
	mkdir -v $@

$(OBJ):
	mkdir -v $@

$(BIN)/%: $(OBJ)/%.o
	$(FC) -o $@ $^

$(OBJ)/%.o: $(SRC)/%.f90
	$(FC) $(FFLAGS) -c -o $@ $<

info:
	@echo 'SOURCES="$(SOURCES)"'
	@echo 'OBJECTS="$(OBJECTS)"'

clean:
	rm -f bin/* obj/*
