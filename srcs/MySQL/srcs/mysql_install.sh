/etc/init.d/mariadb setup

/etc/init.d/mariadb start

mysql -e "CREATE DATABASE wordpress;"

mysql -e "CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';"

mysql -e "GRANT ALL ON wordpress.* TO 'admin'@'localhost';"

mysql -e "GRANT ALL ON phpmyadmin.* TO 'admin'@'localhost';"

mysql < /srcs/create_tables.sql

mysql -e "FLUSH PRIVILEGES;"

