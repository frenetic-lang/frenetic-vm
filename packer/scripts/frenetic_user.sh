#!/bin/bash
# This has to be run as frenetic user.  Note that since this is run under sudo as root
# the $USER variable isn't changed and opam complains it's running as root  - it's not, so
# ignore it.

su --login --shell /bin/bash frenetic << EOF
cd ~
opam init --auto-setup

mkdir src
cd src
git clone https://github.com/frenetic-lang/frenetic
cd ..

opam pin add frenetic src/frenetic -n -k git

opam install -y frenetic

sudo pip install -e  src/frenetic/lang/python

EOF

