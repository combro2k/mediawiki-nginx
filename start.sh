#!/bin/bash
# Starts up Nginx and PHP within the container.

DATADIR="/data"

# Don't continue if we catch an error.
set -e

service php5-fpm start
chmod 666 /var/run/php5-fpm.sock
/usr/sbin/nginx