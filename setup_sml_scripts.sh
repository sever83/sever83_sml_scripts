#!/usr/bin/env bash
#
# setup_sml_scripts.sh
#
#

rm -r /var/www/xlxd/sml

mkdir /var/www/xlxd/sml
mkdir /var/www/xlxd/sml/unit

#cd sever83_sml_scripts

cp index.html /var/www/xlxd/sml/index.html
cp index2.html /var/www/xlxd/sml/unit/index.html

cp sml.sh /var/www/xlxd/sml/sml.sh
cp sml-del.sh /var/www/xlxd/sml/sml-del.sh
cp sml-update.sh /var/www/xlxd/sml/sml-update.sh
cp sml-cron.sh /var/www/xlxd/sml/sml-cron.sh
cp sml-getdmrid.sh /var/www/xlxd/sml/sml-getdmrid.sh
cp sml-gethost.sh /var/www/xlxd/sml/sml-gethost.sh

cp sml.service /var/www/xlxd/sml/unit/sml.service
cp sml.timer /var/www/xlxd/sml/unit/sml.timer
