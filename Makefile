.PHONY: clean lib utop
.SUFFIXES: .cma .cmxa .ml

LIB = subtyp

lib: ${LIB}.cma ${LIB}.cmxa

clean:
	ocamlbuild -clean

utop: ${LIB}.cma
	utop -I _build

.ml.cma:
	ocamlbuild $@

.ml.cmxa:
	ocamlbuild $@
