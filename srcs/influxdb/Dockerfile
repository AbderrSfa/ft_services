FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add vim openrc influxdb

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
&& apk add telegraf

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs/telegraf.conf /etc/telegraf.conf

COPY srcs/start.sh /
CMD sh ./start.sh