# Starting Minikube
minikube start --driver='virtualbox'

# Installing MetalLB
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

# Build containers
eval $(minikube -p minikube docker-env)
docker build -t nginx:abderr ./srcs/nginx
docker build -t grafana:abderr ./srcs/grafana
docker build -t influxdb:abderr ./srcs/influxdb
docker build -t mysql:abderr ./srcs/mysql
docker build -t phpmyadmin:abderr ./srcs/phpmyadmin
docker build -t wordpress:abderr ./srcs/wordpress
docker build -t ftps:abderr ./srcs/ftps

# Start services
kubectl apply -f ./srcs/metallb.yaml
kubectl apply -f ./srcs/mysql.yaml
kubectl apply -f ./srcs/influxdb.yaml
kubectl apply -f ./srcs/phpmyadmin.yaml
kubectl apply -f ./srcs/wordpress.yaml
kubectl apply -f ./srcs/grafana.yaml
kubectl apply -f ./srcs/nginx.yaml
kubectl apply -f ./srcs/ftps.yaml
