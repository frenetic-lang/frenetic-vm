#!/bin/bash

# Install Guest Additions, which were downloaded by Packer to the ssh dir.  Needs to be installed
# after frenetic.sh which installs XOrg, otherwise Guest video drivers are not installed.  

VBOX_ISO=/home/frenetic/VBoxGuestAdditions.iso
apt-get install -y dkms
mount -o loop $VBOX_ISO /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
