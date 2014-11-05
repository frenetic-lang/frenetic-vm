#!/bin/bash
set -x

opam init -y
eval `opam config env`
echo 'eval `opam config env`' >> /home/vagrant/.profile
opam install -y async quickcheck cmdliner ipaddr ulex cstruct ocamlgraph \
  base64 yojson oasis uri conduit

(cd src/ocaml-cohttp; make; sudo make reinstall)
(cd src/packet; ./configure --enable-quickcheck; make; make reinstall)
(cd src/openflow; make; make reinstall)
(cd src/topology; make; make reinstall)
(cd src/frenetic; make; make reinstall)

