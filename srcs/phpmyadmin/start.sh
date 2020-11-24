# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 20:05:02 by sofiahechai       #+#    #+#              #
#    Updated: 2020/11/21 18:44:05 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# setup phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz
mkdir /var/www/html/phpmyadmin
tar xzf phpMyAdmin-4u.9.0.1-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin
mv /tmp/config.inc.php /var/www/html/phpmyadmin/config.sample.inc.php

rc-service php-fpm7 restart