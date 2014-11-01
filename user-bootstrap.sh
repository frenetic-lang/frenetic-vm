#!/bin/bash
set -x

opam init -y
opam config env
echo 'eval `opam config env`' >> /home/vagrant/.profile
opam install -y async quickcheck cmdliner ipaddr ulex cstruct ocamlgraph
