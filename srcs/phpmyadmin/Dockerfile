# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 18:12:19 by sofiahechai       #+#    #+#              #
#    Updated: 2020/11/21 18:46:42 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN	apk update && apk upgrade
RUN apk add php7 php7-fpm php7-opcache
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl
RUN apk add unzip
RUN apk add wget

COPY ./config.inc.php /config.inc.php
COPY ./start.sh /start.sh
RUN chmod +x /start.sh
EXPOSE 5000

CMD sh ./start.sh