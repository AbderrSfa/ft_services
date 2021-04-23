FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add nginx vim openrc php7 php7-fpm php7-mysqli php7-phar php7-json php7-mbstring influxdb 

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs/default.conf /etc/nginx/conf.d/default.conf

#RUN wget https://dl.influxdata.com/influxdb/releases/influxdb2-2.0.4-linux-amd64.tar.gz \
#&& tar -xvf influxdb2-2.0.4-linux-amd64.tar.gz \
#&& rm -rf influxdb2-2.0.4-linux-amd64.tar.gz \
#&& mv influxdb2-2.0.4-linux-amd64/ var/www/influxdb

COPY srcs/start.sh /

#CMD sh ./start.sh
