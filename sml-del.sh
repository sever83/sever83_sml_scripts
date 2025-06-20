#!/usr/bin/env bash

mount -o remount,rw /

systemctl disable sml.timer sml.service &>/dev/null
systemctl stop sml.timer sml.service &>/dev/null

unlink /etc/systemd/system/sml.service
unlink /etc/systemd/system/sml.timer

systemctl daemon-reload

sed -i "s/^\/usr\/local\/sbin\/HostFilesUpdate.sh.*/\/usr\/local\/sbin\/HostFilesUpdate.sh/" /usr/local/sbin/pistar-daily.cron

find /usr/local/bin/ -type l -name "sml-*" -delete

rm -rf /sml

wget -O /usr/local/etc/DMRIds.dat https://www.radioid.net/static/dmrid.dat

sed -i -e 's/;/\t/g' /usr/local/etc/DMRIds.dat

rm -rf /etc/cron.d/smlcron
rm -rf /usr/local/bin/sml
rm -rf /usr/local/bin/del-sml
rm -rf /usr/local/etc/DMRIdsSML.dat
rm -rf /usr/local/etc/DMRIds.dat-export

exit 0
