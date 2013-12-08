#!/bin/bash

mkdir -p /srv/www/foo.com/logs/
tail -F /srv/www/foo.com/logs/{access,error}.log \
    /var/log/nginx/{access,error}.log &
mkdir -p /run/unicorn/app/
nginx

