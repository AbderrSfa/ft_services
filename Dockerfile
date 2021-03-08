FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add nginx vim openrc php7 php7-fpm php7-mysqli php7-phar php7-json

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs ./srcs

RUN mkdir -p /var/www/localhost/ft_services
RUN mv /srcs/index.html /var/www/localhost/ft_services/
RUN mv /srcs/default.conf /etc/nginx/conf.d/default.conf

