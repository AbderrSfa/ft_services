FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add nginx vim openrc influxdb telegraf

RUN apk add php7-fpm php7-common php7-iconv php7-json php7-gd php7-curl \
   php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql \
   php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap \
   php7-ctype php7-dom php7-session php7-mbstring

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs/default.conf /etc/nginx/conf.d/default.conf
COPY srcs/telegraf.conf /etc/telegraf.conf

#RUN service influxdb start && service telegraf start \
#&& influx -execute "CREATE USER telegraf WITH PASSWORD 'password';" \
#&& influx -execute "GRANT ALL ON telegraf TO telegraf;"

#RUN wget https://dl.influxdata.com/influxdb/releases/influxdb2-2.0.4-linux-amd64.tar.gz \
#&& tar -xvf influxdb2-2.0.4-linux-amd64.tar.gz \
#&& rm -rf influxdb2-2.0.4-linux-amd64.tar.gz \
#&& mv influxdb2-2.0.4-linux-amd64/ var/www/influxdb

COPY srcs/start.sh /

#CMD sh ./start.sh
