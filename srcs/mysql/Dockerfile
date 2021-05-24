FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx vim openrc mysql mysql-client

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
&& apk add telegraf

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs/telegraf.conf /etc/telegraf.conf
COPY srcs/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

COPY srcs/create_tables.sql srcs/wordpress.sql /
COPY srcs/start.sh /

CMD sh ./start.sh
