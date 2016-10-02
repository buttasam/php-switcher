#!/bin/bash
#disabled version

DISABLE=5
UPGRADE=7.0

if [ "$1" = "-d" ]; then
DISABLE=7.0
UPGRADE=5
fi

sudo a2dismod php$DISABLE;
#disabled version
sudo a2enmod php$UPGRADE;
#apply changes
sudo service apache2 restart
