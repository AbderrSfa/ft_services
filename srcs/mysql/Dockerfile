FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx vim openrc mysql mysql-client

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
&& apk add telegraf

RUN openrc
RUN touch run/openrc/softlevel

RUN sed -i 's/skip-networking/#skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf

COPY srcs/create_tables.sql /
COPY srcs/start.sh /

CMD sh ./start.sh
