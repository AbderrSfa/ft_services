FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add vim openrc grafana telegraf

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs/init.sh /
CMD sh ./init.sh