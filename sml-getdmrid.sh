#!/usr/bin/env bash
#
# sml-getdmrid.sh
#
# http://212.3.149.253/sml/sml-getdmrid.sh
#

mount -o remount,rw /

SMLFOLDER=/sml
DMRIDSFILE=/usr/local/etc/DMRIds.dat

wget -q -N -P ${SMLFOLDER}/data/ https://212.3.149.253/sml/DMRIdsSML.dat
wget -q -N -P ${SMLFOLDER}/data/ http://www.pistar.uk/downloads/DMRIds.dat

cp ${SMLFOLDER}/data/DMRIds.dat ${SMLFOLDER}/temp/DMRIds.dat
sed -i "/^103.*/d" ${SMLFOLDER}/temp/DMRIds.dat
cat ${SMLFOLDER}/data/DMRIdsSML.dat ${SMLFOLDER}/temp/DMRIds.dat > ${DMRIDSFILE}

exit 0
