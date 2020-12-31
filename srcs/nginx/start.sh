# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 20:05:02 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/28 18:47:30 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

/usr/sbin/sshd
./telegraf/telegraf & nginx -g 'pid /tmp/nginx.pid; daemon off;'
