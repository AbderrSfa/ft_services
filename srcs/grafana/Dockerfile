FROM alpine:3.12

RUN apk update && apk upgrade
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
&& apk add telegraf
RUN apk add vim openrc grafana

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs/telegraf.conf /etc/telegraf.conf

COPY srcs/sample.yaml /usr/share/grafana/conf/provisioning/datasources/sample.yaml
COPY srcs/grafana.db /usr/share/grafana/data/grafana.db

COPY srcs/init.sh /
CMD sh ./init.sh
