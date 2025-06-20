#!/usr/bin/env bash
#
# sml-pistar.sh
#
# http://212.3.149.253/sml/sml-pistar.sh
#

mount -o remount,rw /


sed -i "s/Banners=dd4b39/Banners=272362/" /etc/pistar-css.ini

sed -i "s#<h1>Pi-Star <?php echo \$lang\['digital_voice'\].\" \".\$lang\['dashboard_for'].\" \".\$MYCALL; ?><\/h1>#<h1>XLXSMK <?php echo \$lang[''].\" \".\$lang\[''].\" \".\$MYCALL; ?></h1>#" /var/www/dashboard/index.php

exit 0
