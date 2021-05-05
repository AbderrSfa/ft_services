#!bin/sh

tput setaf 2
echo "--- Stopping containers ..."
echo "--- Hang tight. This may take a while ...\n"
tput init

docker stop ftps
docker stop grafana
docker stop influxdb
docker stop mysql
docker stop phpmyadmin
docker stop wordpress
docker stop nginx

docker system prune -f > /dev/null
