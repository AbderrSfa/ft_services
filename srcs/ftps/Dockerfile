FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add vim openrc vsftpd openssl lftp

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
&& apk add telegraf

RUN openrc
RUN touch run/openrc/softlevel

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt -subj "/C=MA/ST=Beni Mellal-Khenifra/L=Khouribga/O=1337/CN=ft_services"

COPY srcs/telegraf.conf /etc/telegraf.conf

COPY srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN adduser abderr -D && echo "abderr:admin" | chpasswd

COPY srcs/start.sh /start.sh
CMD sh start.sh