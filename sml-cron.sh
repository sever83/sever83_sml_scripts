#!/usr/bin/env bash
#
# sml-crom.sh
#
# http://212.3.149.253/sml/sml-crom.sh
#
mount -o remount,rw /
SMLFOLDER=/sml
if [ -f /usr/local/sbin/pistar-daily.cron ]; then
    sed -i "s/^\/usr\/local\/sbin\/HostFilesUpdate.sh.*/\/usr\/local\/sbin\/HostFilesUpdate.sh;sml-gethost;sml-getdmrid;/" /usr/local/sbin/pistar-daily.cron
fi
if [ ! -L /etc/systemd/system/sml.service ]; then
    ln -s ${SMLFOLDER}/unit/sml.service /etc/systemd/system/sml.service
fi
if [ ! -L /etc/systemd/system/sml.timer ]; then
    ln -s ${SMLFOLDER}/unit/sml.timer /etc/systemd/system/sml.timer
fi
systemctl daemon-reload
systemctl enable sml.timer &>/dev/null
systemctl start sml.timer
exit 0
