FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add nginx vim openrc php7 php7-fpm php7-mysqli php7-phar php7-json php7-mbstring 
RUN apk add lighttpd php7-common php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs ./srcs

RUN mkdir -p /var/www/localhost/ft_services

RUN mv /srcs/default.conf /etc/nginx/conf.d/default.conf

RUN sh /srcs/wordpress_install.sh

CMD sh ./srcs/start.sh
