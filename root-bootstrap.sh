#!/bin/bash
set -x

apt-get update

apt-get install -y \
  m4 \
  mininet \
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
