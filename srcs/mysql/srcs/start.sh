#!bin/sh

# Start Nginx.
# Variables store output from last command. 0 if successful, non-zero if failed.

service nginx start
ENGINEX=$?

service mariadb start
MYSQL=$?

echo " ---> Server is running..."

# While services are running, the container remains up.
while [ "$ENGINEX" = 0 ] && [ "$MYSQL" = 0 ]
do
	sleep 15
	service nginx status > /dev/null
	ENGINEX=$?
	service mariadb status > /dev/null
	MYSQL=$?
done

# If an error occurs, all services are stopped and container exits.
service nginx stop
service mariadb stop

echo " ---> Stopping server..."
echo " ---> Exiting container..."
