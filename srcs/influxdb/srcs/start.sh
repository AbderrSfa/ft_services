#!bin/sh

# Start services.
# Variables store output from last command. 0 if successful, non-zero if failed.

service influxdb start
INFLUX=$?
service telegraf start
TELEGRAF=$?

influx -execute "CREATE DATABASE grafana"
influx -execute "CREATE USER admin WITH PASSWORD 'admin'"
influx -execute "GRANT ALL ON grafana TO admin"

echo " ---> Server is running..."

# While services are running, the container remains up.
while [ "$INFLUX" = 0 ] && [ "$TELEGRAF" = 0 ]
do
	sleep 15
	service influxdb status > /dev/null
	INFLUX=$?
	service telegraf status > /dev/null
	TELEGRAF=$?
done

# If an error occurs, all services are stopped and container exits.
service influxdb stop
service telegraf stop

echo " ---> Stopping server..."
echo " ---> Exiting container..."
