SRC= ../tests/v42.ml

OPT= -without-runtime -no-alias-deps   -no-app-funct \
	 -no-check-prims   -noassert    -noautolink    -nolabels -nopervasives

all:	tmp
	ocamlc -I ../stdlib ../stdlib/CustomStdlib.ml \
                     ../stdlib/list.ml \
                     ../stdlib/array.ml \
                     ../stdlib/string.ml \
	                 ../stdlib/camlinternalOO.ml \
	                 $(SRC) $(OPT)
	ocamlclean a.out
	dune exec bcprepare a.out

tmp:
	mkdir tmp

clean:
	rm -rf a.out
	rm -rf tmp/code.txt
	dune clean
