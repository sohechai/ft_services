# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/28 16:53:44 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/29 17:23:55 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN apk update
RUN apk add influxdb
RUN apk add openrc

#telegraf install and conf
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
RUN tar -xvf telegraf-1.13.3-static_linux_amd64.tar.gz
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

CMD sh ./start.sh

EXPOSE 8086