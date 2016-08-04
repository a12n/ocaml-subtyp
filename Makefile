.PHONY: clean install lib uninstall utop
.SUFFIXES: .cma .cmxa .ml

LIB = subtyp

lib: ${LIB}.cma ${LIB}.cmxa

clean:
	ocamlbuild -clean

install: lib
	ocamlfind install ${LIB}	\
		*.mli	\
		META	\
		_build/*.a	\
		_build/*.cma	\
		_build/*.cmi	\
		_build/*.cmx	\
		_build/*.cmxa

uninstall:
	ocamlfind remove ${LIB}

utop: ${LIB}.cma
	utop -I _build

.ml.cma:
	ocamlbuild $@

.ml.cmxa:
	ocamlbuild $@
