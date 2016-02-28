#!/bin/bash
set -x
set -e

opam init -y
eval `opam config env`
echo 'eval `opam config env`' >> $HOME/.profile

cd src
if [ ! -d frenetic ]; then
  git clone https://github.com/frenetic-lang/frenetic
else
  cd frenetic
  git pull
fi
cd ..

opam pin add frenetic src/frenetic -n -k git

opam install -y frenetic
