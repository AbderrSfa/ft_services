eval $(minikube -p minikube docker-env)

docker build -t nginx-abderr ./srcs/nginx
docker build -t grafana-abderr ./srcs/grafana
docker build -t influxdb-abderr ./srcs/influxdb
docker build -t mysql-abderr ./srcs/mysql
docker build -t phpmyadmin-abderr ./srcs/phpmyadmin
docker build -t wordpress-abderr ./srcs/wordpress
docker build -t ftps-abderr ./srcs/ftps