#!/usr/bin/env bash
#
# sml-gethost.sh
#
# http://212.3.149.253/sml/sml-gethost.sh
#

mount -o remount,rw /
sed -i "/^391.*/d" /usr/local/etc/XLXHosts.txt
echo "391;212.3.149.253;4004" >> /usr/local/etc/XLXHosts.txt

sed -i "/^39100.*/d" /usr/local/etc/YSFHosts.txt
echo "39100;XLX391;XLX SMK-MSK;212.3.149.253;42000;001;http://212.3.149.253:88;0" >> /usr/local/etc/YSFHosts.txt
echo "39100;XLX391;XLX SMK-MSK;212.3.149.253;42000;001;http://212.3.149.253:88;0" > /root/YSFHosts.txt

sed -i "/^XLX_391.*/d" /usr/local/etc/DMR_Hosts.txt
echo "XLX_391 0000 212.3.149.253 passw0rd 62030" >> /usr/local/etc/DMR_Hosts.txt

sed -i "/^SMK.*/d" /usr/local/etc/XLXHosts.txt
echo "SMK;212.3.149.253;4004" >> /usr/local/etc/XLXHosts.txt
echo "SMK;212.3.149.253;4004" > /root/XLXHosts.txt

sed -i "/^XLX_SMK.*/d" /usr/local/etc/DMR_Hosts.txt
echo "XLX_SMK 0000 212.3.149.253 passw0rd 62030" >> /usr/local/etc/DMR_Hosts.txt
echo "XLX_SMK 0000 212.3.149.253 passw0rd 62030" > /root/DMR_Hosts.txt

sed -i "/^SMK*/d" /usr/local/etc/P25Hosts.txt
echo "SMK 212.3.149.253 41000" >> /usr/local/etc/P25Hosts.txt
echo "SMK 212.3.149.253 41000" > /root/P25Hosts.txt

exit 0
