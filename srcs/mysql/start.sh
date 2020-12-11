# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/20 18:40:49 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/09 18:56:54 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

mysql_install_db --user=mysql --datadir=/var/lib/mysql
# /etc/init.d/mariadb start
mkdir /run/openrc
touch /run/openrc/softlevel
openrc
rc-service mariadb start

echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'admin'@'%' IDENTIFIED BY 'password';" | mysql -u root
# echo "SET PASSWORD FOR root@localhost=PASSWORD('password');" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'admin'@'%';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

rc-service mariadb restart
# rc-update add mariadb default

while true; do
    sleep 1;
done