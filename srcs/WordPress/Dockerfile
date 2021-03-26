FROM ft_services:latest

RUN apk add php7 php7-fpm php7-mysqli php7-phar php7-json php7-mbstring

RUN mv /srcs/WordPress/srcs/default.conf /etc/nginx/conf.d/default.conf

RUN sh /srcs/WordPress/srcs/wordpress_install.sh
