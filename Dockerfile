FROM phusion/baseimage

EXPOSE 5555

RUN apt-get update && apt-get install -y rubygems-integration

RUN apt-get update && apt-get install -y ruby
RUN gem install scout_realtime

COPY ./scout-realtime.sh /etc/my_init.d/
