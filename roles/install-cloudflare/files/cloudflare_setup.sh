#!/bin/bash
echo "Grabbing Files"
cd /usr/local/src
wget --no-check-certificate https://github.com/cloudflare/mod_cloudflare/raw/master/mod_cloudflare.c

echo "Installing Cloudflare Module"
apxs -a -i -c mod_cloudflare.c

echo "Restarting Apache"
service httpd restart

echo "Distilling Apache Config for EasyApache"
/usr/local/cpanel/bin/apache_conf_distiller --update

echo "Done with Cloudflare Module Install - Goodbye"
exit