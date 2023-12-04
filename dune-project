(lang dune 2.9)

(version 2.3.0)
(source (github a12n/ocaml-subtyp))
(license MIT)
(authors "Anton Yabchinskiy")
(maintainers "Anton Yabchinskiy")

(package
 (name subtyp)
 (depends
  (ocaml (>= 4.12))))

(package
 (name subtyp_zarith)
 (depends
  (ocaml (>= 4.12))
  (zarith (>= 1.1))))

(generate_opam_files true)
