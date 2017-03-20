#!/bin/bash

source /etc/apache2/envvars
tail -F /var/log/apache2/error.log &
exec apache2 -D FOREGROUND
