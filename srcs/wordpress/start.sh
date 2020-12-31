# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 20:05:02 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/29 17:26:15 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# setup wordpress
mkdir -p /usr/share/webapps/
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
mv /wordpress /usr/share/webapps/
mv /wp-config.php /usr/share/webapps/wordpress
chmod 777 /usr/share/webapps/wordpress
rm latest.tar.gz
ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress
openrc
touch /run/openrc/softlevel
php-fpm7
./telegraf/telegraf & nginx -g 'daemon off;'
