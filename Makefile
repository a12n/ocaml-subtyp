.PHONY: clean install lib uninstall utop
.SUFFIXES: .cma .cmxa .ml

LIB = subtyp

lib: ${LIB}.cma ${LIB}.cmxa

clean:
	ocamlbuild -clean

install: lib
	ocamlfind install ${LIB}	\
		META	\
		_build/${LIB}.cma	\
		_build/${LIB}.cmi	\
		_build/${LIB}.cmxa

uninstall:
	ocamlfind remove ${LIB}

utop: ${LIB}.cma
	utop -I _build

.ml.cma:
	ocamlbuild $@

.ml.cmxa:
	ocamlbuild $@
