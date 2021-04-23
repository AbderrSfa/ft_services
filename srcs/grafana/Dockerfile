FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add nginx vim openrc php7 php7-fpm php7-mysqli php7-phar php7-json php7-mbstring grafana 

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs/default.conf /etc/nginx/conf.d/default.conf

#RUN wget https://dl.grafana.com/oss/release/grafana-7.4.5.linux-amd64.tar.gz \
#&& tar -xvf grafana-7.4.5.linux-amd64.tar.gz \
#&& rm -rf grafana-7.4.5.linux-amd64.tar.gz \
#&& mv grafana-7.4.5/ /var/www/grafana

COPY srcs/start.sh /
#CMD sh ./start.sh