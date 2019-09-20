#!/bin/bash
set -x
set -e

opam init -y --comp 4.06.0
eval `opam config env`
echo 'eval `opam config env`' >> $HOME/.profile

cd src
git clone https://github.com/frenetic-lang/frenetic
cd ..

opam pin add frenetic src/frenetic -n -k git

opam install -y frenetic

sudo pip install -e  src/frenetic/src/lang/python
