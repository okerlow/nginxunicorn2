FROM    ubuntu:12.04

RUN rm /etc/apt/sources.list
RUN echo deb http://archive.ubuntu.com/ubuntu precise main universe multiverse > /etc/apt/sources.list

RUN apt-get update
RUN apt-get install nginx -y

RUN mkdir -p /srv/www/foo.com/logs/

ADD nginx.conf /etc/nginx/nginx.conf
ADD foo.com.conf /etc/nginx/sites-enabled/foo.com
ADD run_nginx.sh /bin/

RUN chmod u+x /bin/run_nginx.sh

EXPOSE 80

CMD /bin/run_nginx.sh
