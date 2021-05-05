FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add vim openrc influxdb telegraf

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs/telegraf.conf /etc/telegraf.conf

COPY srcs/start.sh /
CMD sh ./start.sh