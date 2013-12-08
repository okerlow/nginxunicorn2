#!/bin/sh

set -e

mkdir -p /run/unicorn/app/
cd /opt/sinatra
ABOUTMEAPP_ROOT=/app/ unicorn -c ./config/unicorn.rb -E development
