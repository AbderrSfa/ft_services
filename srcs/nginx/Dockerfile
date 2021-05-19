FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add nginx vim openrc openssl

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
&& apk add telegraf

RUN openrc
RUN touch run/openrc/softlevel

COPY srcs/index.html /var/lib/nginx/html/index.html
COPY srcs/default.conf /etc/nginx/conf.d/default.conf

COPY srcs/telegraf.conf /etc/telegraf.conf

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned-ft_services.key -out /etc/ssl/certs/selfsigned-ft_services.crt -subj "/C=MA/ST=Beni Mellal-Khenifra/L=Khouribga/O=1337/CN=ft_services"

COPY srcs/start.sh /
CMD sh ./start.sh