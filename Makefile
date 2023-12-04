NS=50000   # number of clock cycles (for simulation)

FLAGS=
SRC=ocaml-vm/tests/fibo.ml

all: byte vm
	echo "done"


ECLAT_COMPILER=eclat-compiler
OCAML_VM=ocaml-vm
VM_FROM_ECLAT_COMPILER=../$(OCAML_VM)
TARGET="target"
MAKE_BYTECODE=$(OCAML_VM)/bc

byte:
	(cd $(MAKE_BYTECODE) ; make SRC=../../$(SRC))


CUSTOM=
CUSTOM_PATH=$(foreach f,$(CUSTOM),../$(f))$

CLK=clk

vm:	byte $(ECLAT_COMPILER)/eclat
	(cd $(ECLAT_COMPILER); ./eclat -intel-max10 $(FLAGS) \
	        $(VM_FROM_ECLAT_COMPILER)/mlvalue.ecl \
	        $(VM_FROM_ECLAT_COMPILER)/ram.ecl \
	        $(VM_FROM_ECLAT_COMPILER)/runtime.ecl \
			$(VM_FROM_ECLAT_COMPILER)/debug.ecl \
	        $(VM_FROM_ECLAT_COMPILER)/alloc.ecl \
	        $(VM_FROM_ECLAT_COMPILER)/prims.ecl $(CUSTOM_PATH) \
			$(VM_FROM_ECLAT_COMPILER)/bytecode.ecl \
			$(VM_FROM_ECLAT_COMPILER)/vm.ecl \
			$(VM_FROM_ECLAT_COMPILER)/IOs.ecl \
			$(VM_FROM_ECLAT_COMPILER)/main.ecl)

$(ECLAT_COMPILER)/eclat:
	(cd $(ECLAT_COMPILER); make)

simul:
	(cd $(TARGET); make NS=$(NS))

clean:
	(cd $(MAKE_BYTECODE) ; make -f Makefile clean)
	rm -f `find . -name "*.cmo"`
	rm -f `find . -name "*.cmi"`
	(cd $(TARGET); make -f Makefile clean)

