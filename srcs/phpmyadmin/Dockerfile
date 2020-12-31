# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 18:12:19 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/29 17:24:17 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN apk update
RUN apk add nginx
RUN apk add openrc
RUN apk add lighttpd php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
RUN apk add php-fpm;
RUN apk add php-mysqli
RUN apk add php-session

RUN mkdir -p /usr/share/webapps
RUN mkdir -p /run/nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
# RUN chmod 755 -R /usr/share/webapps
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /usr/share/webapps/

#telegraf install and conf
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
RUN tar -xvf telegraf-1.13.3-static_linux_amd64.tar.gz
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY ./config.inc.php /config.inc.php
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 5000

ENTRYPOINT [ "sh", "start.sh" ]
