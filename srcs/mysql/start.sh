# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/20 18:40:49 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/29 17:25:39 by sofiahechai      ###   ########lyon.fr    #
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
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'admin'@'%';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

./telegraf/telegraf & rc-service mariadb restart

while true; do
    sleep 1;
done