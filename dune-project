(lang dune 2.9)

(version 2.2.0)
(source (github a12n/ocaml-subtyp))
(license MIT)
(authors "Anton Yabchinskiy")
(maintainers "Anton Yabchinskiy")

(package
 (name subtyp)
 (depends
  (ocaml (>= 4.12))
  (qtest :with-test)))

(generate_opam_files true)
