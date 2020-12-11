# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 18:12:19 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/01 22:27:41 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN	apk update
RUN apk add openrc --no-cache
RUN apk add mysql mysql-client && rm -f /var/cache/apk/*

COPY ./mariadb-server.cnf /etc/my.cnf.d/
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["sh", "start.sh" ]
# CMD	sh start.sh

# # ENTRYPOINT ["tail", "-f", "/dev/null"]

EXPOSE 3306
