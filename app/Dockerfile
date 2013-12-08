FROM    ubuntu:12.04

RUN rm /etc/apt/sources.list
RUN echo deb http://archive.ubuntu.com/ubuntu precise main universe multiverse > /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y ruby rubygems
RUN gem install bundler
RUN mkdir /opt/sinatra

ADD serve.rb /opt/sinatra/serve.rb
ADD Gemfile /opt/sinatra/Gemfile
ADD config.ru /opt/sinatra/config.ru
ADD config /opt/sinatra/config
ADD .env /opt/sinatra/.env
ADD run_unicorn.sh /bin/

RUN cd /opt/sinatra && bundle install
CMD ["sh", "/bin/run_unicorn.sh"]

