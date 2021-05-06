eval $(docker-machine env default)

tput setaf 2
echo "--- Starting containers ..."
echo "--- Hold on...\n"

docker system prune -f > /dev/null
docker run --name mysql mysql & > /dev/null
docker run --name nginx -p 443:443 -p 80:80 nginx & > /dev/null
docker run --name wordpress -p 5050:5050 wordpress & > /dev/null
docker run --name phpmyadmin -p 5000:5000 phpmyadmin & > /dev/null
docker run --name influxdb -p 8086:8086 influxdb & > /dev/null
docker run --name grafana -p 3000:3000 grafana & > /dev/null
docker run --name ftps -p 20:20 -p 21:21 ftps & > /dev/null
