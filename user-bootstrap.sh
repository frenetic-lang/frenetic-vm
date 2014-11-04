#!/bin/bash
set -x

opam init -y
opam config env
echo 'eval `opam config env`' >> /home/vagrant/.profile
opam install -y async quickcheck cmdliner ipaddr ulex cstruct ocamlgraph \
  base64 yojson oasis

(cd ocaml-cohttp; make; make install)
(cd packet; ./configure --enable-quickcheck; make; make install)

