#!/usr/bin/env bash
#
# setup_sml_scripts.sh
#
#

rm -r /var/www/html/xlxd/sml

mkdir /var/www/html/xlxd/sml
mkdir /var/www/html/xlxd/sml/unit

#cd sever83_sml_scripts

cp index.html /var/www/html/xlxd/sml/index.html
cp index2.html /var/www/html/xlxd/sml/unit/index.html

cp sml.sh /var/www/html/xlxd/sml/sml.sh
cp sml-del.sh /var/www/html/xlxd/sml/sml-del.sh
cp sml-update.sh /var/www/html/xlxd/sml/sml-update.sh
cp sml-cron.sh /var/www/html/xlxd/sml/sml-cron.sh
cp sml-getdmrid.sh /var/www/html/xlxd/sml/sml-getdmrid.sh
cp sml-gethost.sh /var/www/html/xlxd/sml/sml-gethost.sh

cp sml.service /var/www/html/xlxd/sml/unit/sml.service
cp sml.timer /var/www/html/xlxd/sml/unit/sml.timer

