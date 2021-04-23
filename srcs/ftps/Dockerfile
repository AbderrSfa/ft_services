FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add vim openrc vsftpd

RUN openrc
RUN touch run/openrc/softlevel

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
