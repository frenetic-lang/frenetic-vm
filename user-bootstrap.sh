#!/bin/bash
set -x
set -e

opam init -y --comp 4.03.0
eval `opam config env`
echo 'eval `opam config env`' >> $HOME/.profile

cd src
if [ ! -d frenetic ]; then
  git clone https://github.com/frenetic-lang/frenetic
else
  cd frenetic
  git pull
  cd ..
fi
cd ..

opam pin add frenetic src/frenetic -n -k git

opam install -y frenetic

sudo pip install -e  src/frenetic/lang/python
