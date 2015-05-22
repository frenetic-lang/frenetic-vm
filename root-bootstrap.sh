#!/bin/bash
set -x

apt-get update

apt-get install -y \
  wireshark \
  m4 \
  git \
  xterm \
  fortune \
  python-pip \
  libcurl4-openssl-dev \
  python-dev \
  vim \
  python-lxml \
  python-flask \
  python-tornado \
  python-pycurl \
  python-networkx \
  software-properties-common \

# Install Mininet from source to get the latest version, > 2.2.1.  The API on the packaged version, 2.1, doesn't work
# with the latest openvswitch.  https://github.com/frenetic-lang/frenetic-vm/issues/4
cd /usr/local/src
git clone git://github.com/mininet/mininet
cd mininet
util/install.sh -nfv

add-apt-repository -y ppa:avsm/ppa
apt-get update
apt-get install -y ocaml ocaml-native-compilers camlp4-extra opam

pip install ryu

# Stop OVS Controller so we can run Frenetic
service openvswitch-controller stop
update-rc.d openvswitch-controller disable
