#!/bin/bash
set -x
set -e

opam init -y
eval `opam config env`
echo 'eval `opam config env`' >> /home/vagrant/.profile

opam pin add packet src/packet -n
opam pin add openflow src/openflow -n
opam pin add topology src/topology -n
opam pin add frenetic src/frenetic -n

opam install -y async yojson cohttp base64 frenetic
