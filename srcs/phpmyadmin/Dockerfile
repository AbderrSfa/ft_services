FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add nginx vim openrc 
#RUN apk add php7-common php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom

RUN apk add php7-fpm php7-common php7-iconv php7-json php7-gd php7-curl \
   php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql \
   php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap \
   php7-ctype php7-dom php7-session php7-mbstring

RUN openrc

RUN touch run/openrc/softlevel

COPY srcs ./srcs

RUN mkdir -p /var/www/localhost/ft_services

RUN mv /srcs/default.conf /etc/nginx/conf.d/default.conf

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz \
&&  tar -xzvf phpMyAdmin-5.1.0-all-languages.tar.gz \
&&  rm phpMyAdmin-5.1.0-all-languages.tar.gz \
&&  mv phpMyAdmin-5.1.0-all-languages /var/www/localhost/ft_services/phpmyadmin

#RUN sh /srcs/phpMyAdmin_install.sh

EXPOSE 5000

#CMD sh ./srcs/start.sh
#Works with regular redirect but not with proxy pass
