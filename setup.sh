#!bin/sh

docker-machine create --driver virtualbox default
eval $(docker-machine env default)
docker build -t nginx ./srcs/nginx
docker build -t grafana ./srcs/grafana
docker build -t influxdb ./srcs/influxdb
docker build -t mysql ./srcs/mysql
docker build -t phpmyadmin ./srcs/phpmyadmin
docker build -t wordpress ./srcs/wordpress
docker build -t ftps ./srcs/ftps