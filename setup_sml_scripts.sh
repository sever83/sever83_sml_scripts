#!/usr/bin/env bash
#
# setup_sml_scripts.sh
#
#

rm -r /var/www/html/sml

mkdir /var/www/html/sml
mkdir /var/www/html/sml/unit

cd sever83_sml_scripts

cp index.html /var/www/html/sml/index.html

cp sml.sh /var/www/html/sml/sml.sh
cp sml-del.sh /var/www/html/sml/sml-del.sh
cp sml-update.sh /var/www/html/sml/sml-update.sh
cp sml-cron.sh /var/www/html/sml/sml-cron.sh
cp sml-getdmrid.sh /var/www/html/sml/sml-getdmrid.sh
cp sml-gethost.sh /var/www/html/sml/sml-gethost.sh

cp sml.service /var/www/html/sml/unit/sml.service
cp sml.timer /var/www/html/sml/unit/sml.timer

