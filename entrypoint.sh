#!/bin/sh

if ! [ -f /etc/icingaweb2/setup.token ]
then
    echo "#####################"
    echo "Creating setup token:"
    /usr/bin/icingacli setup token create
    echo "#####################"
fi

echo "date.timezone = ${TIMEZONE}" > /usr/local/etc/php/conf.d/timezone.ini

/usr/bin/supervisord
