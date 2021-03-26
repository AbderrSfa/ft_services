#!/bin/sh

cd /var/www/localhost/ft_services/

wget https://dl.grafana.com/oss/release/grafana-7.4.5.linux-amd64.tar.gz

tar -xvf grafana-7.4.5.linux-amd64.tar.gz

rm -rf grafana-7.4.5.linux-amd64.tar.gz

mv grafana-7.4.5/ grafana
