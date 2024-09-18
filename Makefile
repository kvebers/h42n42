setup:
	opam switch create . ocaml-base-compiler.5.2.0
	touch dune_project
	echo "(lang dune 2.8)" > dune_project
	echo "(name h42n42)" > dune_project
	mkdir src
	touch src/dune


install:
	brew install opam
	opam init
	opam switch create 5.2.0
	eval $(opam env)
	opam install js_of_ocaml
	opam install eliom
	mkdir h42n42
	cd h42n42
	opam switch create . ocaml-base-compiler.5.2.0
	eliom-init h42n42
	dune build
	brew install gmp
	dune exec -- ./h42n42.byte




