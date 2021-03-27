cd /var/www/localhost/ft_services/

wget https://files.phpmyadmin.net/phpMyAdmin/4.9.5/phpMyAdmin-4.9.5-english.tar.gz

tar -xvf phpMyAdmin-4.9.5-english.tar.gz

mv phpMyAdmin-4.9.5-english phpmyadmin

rm -rf phpMyAdmin-4.9.5-english.tar.gz /var/www/localhost/ft_services/phpmyadmin/config.sample.inc.php

mv /srcs/config.inc.php /var/www/localhost/ft_services/phpmyadmin
