# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 20:05:02 by sofiahechai       #+#    #+#              #
#    Updated: 2020/11/20 17:38:52 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# setup wordpress
# wget -c https://wordpress.org/latest.tar.gz
# mkdir /var/www/html/wordpress
# tar -xvzf latest.tar.gz --strip-components=1 -C /var/www/html/wordpress
# mv /tmp/wp-config.php /var/www/html/wordpress
# ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/

# setup my sql
# service mysql start
# echo "CREATE DATABASE wordpress;" | mysql -u root
# echo "CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password';" | mysql -u root
# echo "SET PASSWORD FOR root@localhost=PASSWORD('password');" | mysql -u root
# echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'admin'@'localhost';" | mysql -u root
# echo "FLUSH PRIVILEGES;" | mysql -u root

# setup phpmyadmin
# wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz
# mkdir /var/www/html/phpmyadmin
# tar xzf phpMyAdmin-4u.9.0.1-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin
# mv /tmp/config.inc.php /var/www/html/phpmyadmin/config.sample.inc.php

#  ssl certification


# droit
# chown -R www-data:www-data /var/www/*
# chmod -R 755 /var/www/*

nginx -g 'daemon off;'