# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 20:05:02 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/09 18:34:07 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# setup phpmyadmin
# mkdir -p /usr/share/webapps/
cd /usr/share/webapps
wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
rm phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages phpmyadmin
# mv phpmyadmin /usr/share/webapps/
chmod -R 755 /usr/share/webapps/
ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin
php-fpm7
nginx -g 'daemon off;'