#!bin/sh

# Start Nginx.
# Variables store output from last command. 0 if successful, non-zero if failed.

service nginx start
ENGINEX=$?

service php-fpm7 start
PHP_FPM=$?

service influxdb start
INFLUX=$?

echo " ---> Server is running..."

# While services are running, the container remains up.
while [ "$ENGINEX" = 0 ] && [ "$PHP_FPM" = 0 ]  && [ "$INFLUX" = 0 ]
do
	sleep 15

	service nginx status > /dev/null
	ENGINEX=$?

	service php-fpm7 status > /dev/null
	PHP_FPM=$?

	service influxdb status > /dev/null
	INFLUX=$?
done

# If an error occurs, all services are stopped and container exits.
service nginx stop
service php-fpm7 stop

echo " ---> Stopping server..."
echo " ---> Exiting container..."
