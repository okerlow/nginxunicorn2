#!/bin/bash

set -e
set -x

nginx_container=$(sudo docker run -d -v ${makeitwork+/tmp/run/unicorn:}/run/unicorn -v /srv/www:/srv/www -p 80:80 -t foo/nginx)
echo $nginx_container
sleep 1;
sudo docker run -d -volumes-from $nginx_container -t foo/app
