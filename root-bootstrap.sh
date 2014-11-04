#!/bin/bash
set -x

apt-get update
apt-get upgrade -yq

apt-get install -y \
  virtualbox-guest-x11 \
  opam \
  ocaml-native-compilers \
  camlp4-extra \
  wireshark \
  m4 \
  mininet \
  git \
  xterm \
  fortune \
  python-pip \
  libcurl4-openssl-dev \
  python-dev \
  vim \
  python-lxml

pip install flask tornado pycurl ryu networkx

# Stop OVS Controller so we can run Frenetic
service openvswitch-controller stop
update-rc.d openvswitch-controller disable
