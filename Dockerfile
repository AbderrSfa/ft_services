FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add nginx vim openrc openssl php7 php7-fpm php7-mysqli php7-phar php7-json php7-mbstring mysql mysql-client

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs ./srcs

RUN mkdir -p /var/www/localhost/ft_services
RUN mv /srcs/index.html /var/www/localhost/ft_services/
RUN mv /srcs/default.conf /etc/nginx/conf.d/default.conf

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned-ft_services.key -out /etc/ssl/certs/selfsigned-ft_services.crt -subj "/C=MA/ST=Beni Mellal-Khenifra/L=Khouribga/O=1337/CN=ft_services"

