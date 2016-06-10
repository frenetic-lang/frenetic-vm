#!/bin/bash
DATESTAMP=`date +"%Y%m%d"` packer build --only=virtualbox-iso --force template.json
