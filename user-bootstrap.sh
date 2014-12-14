#!/bin/bash
set -x
set -e

opam init -y
eval `opam config env`
echo 'eval `opam config env`' >> /home/vagrant/.profile

opam install -y ulex cmdliner ocamlgraph quickcheck async yojson cohttp base64

mkdir src
cd src
git clone https://github.com/frenetic-lang/ocaml-packet
git clone https://github.com/frenetic-lang/ocaml-topology
git clone https://github.com/frenetic-lang/ocaml-openflow
git clone https://github.com/frenetic-lang/frenetic
cd ..

opam pin add packet src/ocaml-packet -n -k git
opam pin add topology src/ocaml-topology -n -k git
opam pin add openflow src/ocaml-openflow -n -k git
opam pin add frenetic src/frenetic -n -k git

opam install -y frenetic
