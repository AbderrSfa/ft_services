#!bin/sh

# Start services.
# Variables store output from last command. 0 if successful, non-zero if failed.

service vsftpd start
FTPS=$?
service telegraf start
TELEGRAF=$?

echo " ---> Server is running..."

# While services are running, the container remains up.
while [ "$FTPS" = 0 ] && [ "$TELEGRAF" = 0 ]
do
	sleep 15
	service vsftpd status > /dev/null
	FTPS=$?
	service telegraf status > /dev/null
	TELEGRAF=$?
done

# If an error occurs, all services are stopped and container exits.
service vsftpd stop
service telegraf stop

echo " ---> Stopping server..."
echo " ---> Exiting container..."
