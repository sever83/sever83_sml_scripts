#!/usr/bin/env bash
#
# sml.sh
#
# http://212.3.149.253/sml/sml.sh
#
echo "Script version 2025-01-16"
wget -P /home/pi-star/ http://212.3.149.253/sml/sml-del.sh #&>/dev/null
wget -P /home/pi-star/ http://212.3.149.253/sml/sml-update.sh #&>/dev/null
chmod +x /home/pi-star/sml-*.sh
/home/pi-star/sml-del.sh #&>/dev/null
/home/pi-star/sml-update.sh #&>/dev/null
echo "Progress: 1/5"
sml-cron #&>/dev/null
echo "end Progress: 1/5"
echo "Progress: 2/5"
sml-gethost #&>/dev/null
echo "end Progress: 2/5"
echo "Progress: 3/5"
sml-getdmrid #&>/dev/null
echo "end Progress: 3/5"
echo "Progress: 4/5"
rm -rf /home/pi-star/sml-*.sh
rm -rf /home/pi-star/sml.sh
echo "end Progress: 4/5"
echo "Progress: 5/5"
sml-update #&>/dev/null
echo "end Progress: 5/5"
echo "-----<===== FINISH =====>-----"
exit 0
