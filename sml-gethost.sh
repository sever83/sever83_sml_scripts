#!/usr/bin/env bash

mount -o remount,rw /
sed -i "/^391.*/d" /usr/local/etc/XLXHosts.txt
echo "391;212.3.149.253;4004" >> /usr/local/etc/XLXHosts.txt

sed -i "/^11400.*/d" /usr/local/etc/YSFHosts.txt
echo "39100;RU-C4FM SMOLENSK;@XLXSMK;212.3.149.253;42000" >> /usr/local/etc/YSFHosts.txt
echo "39100;RU-C4FM SMOLENSK;@XLXSMK;212.3.149.253;42000" > /root/YSFHosts.txt

sed -i "/^XLX_114.*/d" /usr/local/etc/DMR_Hosts.txt
echo "XLX_391				0000	212.3.149.253				passw0rd	62030" >> /usr/local/etc/DMR_Hosts.txt
echo "XLX_391				0000	212.3.149.253				passw0rd	62030" > /root/DMR_Hosts.txt

sed -i "/^XLX_SMK.*/d" /usr/local/etc/DMR_Hosts.txt
echo "XLX_SMK				0000	212.3.149.253				passw0rd	62030" >> /usr/local/etc/DMR_Hosts.txt
echo "XLX_SMK				0000	212.3.149.253				passw0rd	62030" > /root/DMR_Hosts.txt



sed -i "/^SMK.*/d" /usr/local/etc/XLXHosts.txt
echo "SMK;212.3.149.253;4004" >> /usr/local/etc/XLXHosts.txt
echo "SMK;212.3.149.253;4004" > /root/XLXHosts.txt


sed -i "/^391*/d" /usr/local/etc/P25Hosts.txt
echo "39100	212.3.149.253	41000" >> /usr/local/etc/P25Hosts.txt
echo "39100	212.3.149.253	41000" > /root/P25Hosts.txt


exit 0
