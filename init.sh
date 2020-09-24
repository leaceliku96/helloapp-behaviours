#!/bin/sh
chmod 777 /var/www/html/images
/usr/sbin/apache2ctl -D FOREGROUND -k start
