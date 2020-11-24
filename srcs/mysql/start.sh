# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/20 18:40:49 by sofiahechai       #+#    #+#              #
#    Updated: 2020/11/21 16:38:05 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

service mysql start

echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password';" | mysql -u root
echo "SET PASSWORD FOR root@localhost=PASSWORD('password');" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'admin'@'localhost';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
