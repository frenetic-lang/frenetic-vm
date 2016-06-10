#!/bin/bash

apt-get install -y \
  lubuntu-core \
  lxterminal \
  vim-gtk \
  emacs \
  m4 \
  git \
  libappindicator1 \
  xterm \
  fortune \
  libcurl4-openssl-dev \
  graphviz \
  python-dev \
  python-pip \
  python-networkx \
  python-lxml \
  python-flask \
  python-tornado \
  python-pycurl 

# Remove junk
apt-get remove -y xterm
rm /var/cache/apt/archives/*.deb

# Auto-Login
cat << EOF > /etc/lightdm/lightdm.conf
[SeatDefaults]
autologin-user=frenetic
autologin-user-timeout=0
user-session=Lubuntu
greeter-session=lightdm-gtk-greeter
EOF

# Latest package for Ubuntu 14.04 is 2.1.  Install from source to get Mininet 2.2, which solves
# some port numbering problems, etc.
git clone git://github.com/mininet/mininet.git
cd mininet/util
./install.sh
cd

# Necessary to get Wireshark 1.12 with OpenFlow support in Ubuntu 14.04
add-apt-repository -y ppa:wireshark-dev/stable
apt-get update
apt-get install -y wireshark

add-apt-repository -y ppa:avsm/ppa
apt-get update
apt-get install -y ocaml ocaml-native-compilers camlp4-extra opam

pip install ryu

# Stop OVS Controller so we can run Frenetic
service openvswitch-controller stop
update-rc.d openvswitch-controller disable

# Download and install build scripts
cd /usr/local/bin
wget https://raw.githubusercontent.com/frenetic-lang/tutorials/master/scripts/ox-build
wget https://raw.githubusercontent.com/frenetic-lang/tutorials/master/scripts/netkat-build
chmod a+x ox-build
chmod a+x netkat-build
