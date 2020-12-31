# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 20:05:02 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/29 17:25:00 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

rc-update add vsftpd default
./telegraf/telegraf & rc-service vsftpd restart

while true; do
    sleep 1;
done