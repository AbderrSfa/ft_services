FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add vim openrc vsftpd openssl lftp

RUN openrc
RUN touch run/openrc/softlevel

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt -subj "/C=MA/ST=Beni Mellal-Khenifra/L=Khouribga/O=1337/CN=ft_services"

COPY srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY srcs/vsftpd.userlist /etc/vsftpd/vsftpd.userlist