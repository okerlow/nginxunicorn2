Run "make" top level dir to build docker images

Set in /etc/hosts

    127.0.0.1   www.foo.com foo.com

then ./run.sh, navigate to foo.com/app/. Notice bad gateway.

Compare with host volume mapping:
    
    mkdir -p /tmp/run/unicorn
    makeitwork=1 ./run.sh


    