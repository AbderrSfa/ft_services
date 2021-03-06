#!bin/sh

# Start services.
# Variables store output from last command. 0 if successful, non-zero if failed.

service nginx start
ENGINEX=$?

service telegraf start
TELEGRAF=$?

echo " ---> Server is running..."

# While services are running, the container remains up.
while [ "$ENGINEX" = 0 ] && [ "$TELEGRAF" = 0 ]
do
	sleep 15
	service nginx status > /dev/null
	ENGINEX=$?
	service telegraf status > /dev/null
	TELEGRAF=$?
done

# If an error occurs, all services are stopped and container exits.
service nginx stop
service telegraf stop

echo " ---> Stopping server..."
echo " ---> Exiting container..."
