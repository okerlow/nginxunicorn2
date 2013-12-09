#!/bin/sh

set -e

mkdir -p /run/unicorn/app/
chown -R www-data:www-data /run/unicorn/
cd /opt/sinatra
sudo -u www-data ABOUTMEAPP_ROOT=/app/ unicorn -c ./config/unicorn.rb -E development
