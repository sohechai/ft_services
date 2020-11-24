# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 20:05:02 by sofiahechai       #+#    #+#              #
#    Updated: 2020/11/24 18:51:33 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# setup wordpress
mkdir -p /usr/share/webapps/
cd /usr/share/webapps/
wget http://wordpress.org/latest.tar.gz
mv /wordpress /usr/share/webapps/
tar -xzvf latest.tar.gz
rm latest.tar.gz
ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress
openrc
touch /run/openrc/softlevel
php-fpm7
nginx -g 'daemon off;'
