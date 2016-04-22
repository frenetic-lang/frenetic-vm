#!/bin/bash
source ./SECRETS
printenv
packer build --only=virtualbox-iso --force template.json