#!/usr/bin/env bash

mount -o remount,rw /

SMLFOLDER=/tmp/sml
DMRIDSFILE=/usr/local/etc/DMRIds.dat

wget -q -N -P ${SMLFOLDER}/data/ http://212.3.149.253/sml/DMRIdsSML.dat
wget -q -N -P ${SMLFOLDER}/data/ http://212.3.149.253/downloads/DMRIds.dat
cp ${SMLFOLDER}/data/DMRIds.dat ${SMLFOLDER}/temp/DMRIds.dat
cat ${SMLFOLDER}/data/DMRIdsSML.dat ${SMLFOLDER}/temp/DMRIds.dat > ${DMRIDSFILE}

exit 0
