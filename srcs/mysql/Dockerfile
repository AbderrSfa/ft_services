FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add nginx vim openrc mysql mysql-client telegraf

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs/create_tables.sql /

RUN /etc/init.d/mariadb setup \
&& service mariadb start \
&& mysql -e "CREATE DATABASE wordpress;" \
&& mysql -e "CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';" \
&& mysql -e "GRANT ALL ON wordpress.* TO 'admin'@'localhost';" \
&& mysql -e "GRANT ALL ON phpmyadmin.* TO 'admin'@'localhost';" \
&& mysql < create_tables.sql \
&& mysql -e "FLUSH PRIVILEGES;" \
&& service mariadb stop

COPY srcs/start.sh /
CMD sh ./start.sh
