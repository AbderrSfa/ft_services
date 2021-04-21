FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add nginx vim openrc mysql mysql-client

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs ./srcs

RUN sh srcs/mysql_install.sh

#CMD sh ./srcs/start.sh
