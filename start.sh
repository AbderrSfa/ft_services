eval $(docker-machine env default)

docker run mysql
docker run -p 443:443 -p 80:80 nginx &
docker run -p 5050:5050 wordpress &
docker run -p 5000:5000 phpmyadmin &
docker run -p 4242:4242 -p 8086:8086 influxdb &
#docker run -p 4343:4343 -p 3000:3000 grafana &
