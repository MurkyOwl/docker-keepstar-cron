#!/bin/sh
set -e

while [ ! -f /var/www/Keepstar/vendor/autoload.php ]
do
    echo "keepstar code volume might not be ready yet... sleeping..."
    sleep 10
done

/usr/sbin/crond -f -d 7