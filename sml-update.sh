#!/usr/bin/env bash

mount -o remount,rw /

SMLFOLDER=/tmp/sml

mkdir -p ${SMLFOLDER}
mkdir -p ${SMLFOLDER}/scripts
mkdir -p ${SMLFOLDER}/temp
mkdir -p ${SMLFOLDER}/data
mkdir -p ${SMLFOLDER}/unit
wget -q -N -P ${SMLFOLDER}/scripts/ http://212.3.149.253/sml/sml-cron.sh
wget -q -N -P ${SMLFOLDER}/scripts/ http://212.3.149.253/sml/sml-del.sh
wget -q -N -P ${SMLFOLDER}/scripts/ http://212.3.149.253/sml/sml-getdmrid.sh
wget -q -N -P ${SMLFOLDER}/scripts/ http://212.3.149.253/sml/sml-gethost.sh
wget -q -N -P ${SMLFOLDER}/scripts/ http://212.3.149.253/sml/sml-update.sh
ln -s ${SMLFOLDER}/scripts/sml-cron.sh /usr/local/bin/sml-cron
ln -s ${SMLFOLDER}/scripts/sml-del.sh /usr/local/bin/sml-del
ln -s ${SMLFOLDER}/scripts/sml-getdmrid.sh /usr/local/bin/sml-getdmrid
ln -s ${SMLFOLDER}/scripts/sml-gethost.sh /usr/local/bin/sml-gethost
ln -s ${SMLFOLDER}/scripts/sml-update.sh /usr/local/bin/sml-update
chmod +x ${SMLFOLDER}/scripts/*.sh
wget -q -N -P ${SMLFOLDER}/unit/ http://212.3.149.253/sml/unit/sml.service
wget -q -N -P ${SMLFOLDER}/unit/ http://212.3.149.253/sml/unit/sml.timer

exit 0
