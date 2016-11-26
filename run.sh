#!/bin/bash

rm -f /etc/apache2/webdav.password
(echo -n "$USERNAME:webdav:" && echo -n "$USERNAME:webdav:$PASSWORD" | md5sum | cut -d' ' -f1) > /etc/apache2/webdav.password
chown root:www-data /etc/apache2/webdav.password
chmod 640 /etc/apache2/webdav.password

apache2 -D FOREGROUND
