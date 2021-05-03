FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add nginx vim openrc telegraf

RUN apk add php7-fpm php7-common php7-iconv php7-json php7-gd php7-curl \
   php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql \
   php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap \
   php7-ctype php7-dom php7-session php7-mbstring

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs/default.conf /etc/nginx/conf.d/default.conf

RUN wget https://wordpress.org/latest.tar.gz \
&& tar -xvf latest.tar.gz \
&& mv wordpress /var/www/wordpress \
&& rm -rf latest.tar.gz /var/www/wordpress/wp-config-sample.php
COPY srcs/wp-config.php /var/www/wordpress/
RUN chown -R nginx:nginx /var/www/wordpress/

COPY srcs/start.sh /
#CMD sh ./start.sh
