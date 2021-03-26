#!/bin/sh

cd /var/www/localhost/ft_services/

wget https://wordpress.org/latest.tar.gz

tar -xvf latest.tar.gz

rm -rf latest.tar.gz /var/www/localhost/ft_services/wordpress/wp-config-sample.php

mv /srcs/WordPress/srcs/wp-config.php /var/www/localhost/ft_services/wordpress/

chown -R nginx:nginx /var/www/localhost/ft_services/wordpress/
