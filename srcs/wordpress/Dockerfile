# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 18:12:19 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/29 17:24:29 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN	apk update
RUN apk add wget

RUN apk add nginx
RUN adduser -D -g 'www' www
RUN mkdir -p /www
RUN mkdir -p /run/nginx
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

#telegraf install and conf
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
RUN tar -xvf telegraf-1.13.3-static_linux_amd64.tar.gz
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

RUN apk add openrc
RUN apk add php-fpm
RUN apk add php7-common php7-iconv php7-json php7-gd php7-curl php7-xml
RUN apk add php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql
RUN apk add php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext
RUN apk add php7-ldap php7-ctype php7-dom


COPY ./wp-config.php /wp-config.php
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 5050

CMD sh ./start.sh