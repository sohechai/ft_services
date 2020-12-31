# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 20:05:02 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/29 17:25:12 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

wget https://dl.grafana.com/oss/release/grafana-7.3.6.linux-amd64.tar.gz
tar -zxvf grafana-7.3.6.linux-amd64.tar.gz
cd /grafana-7.3.6/bin/
./telegraf/telegraf & ./grafana-server