# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/28 16:56:41 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/29 17:25:21 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

openrc
touch /run/openrc/softlevel
./telegraf/telegraf & rc-service influxdb start

while true; do
    sleep 1;
done