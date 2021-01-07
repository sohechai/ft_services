# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 18:12:19 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/31 18:03:41 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

LABEL maintainer="<sohechai@student.42lyon.fr>"

# install
RUN apk update
RUN	apk add nginx
RUN apk add openssl
RUN apk add openssh
RUN apk add openrc

# create user and give permissions
RUN adduser -D -g 'www' www
RUN mkdir -p /www
RUN mkdir -p /run/nginx
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

COPY ./index.html /var/www/

# SSL setup
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj \
	'/C=FR/ST=69/L=Lyon/O=42/CN=sohechai' \
	-keyout /etc/ssl/certs/localhost.key -out \
	/etc/ssl/certs/localhost.crt

#telegraf install and conf
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
RUN tar -xvf telegraf-1.13.3-static_linux_amd64.tar.gz
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

# conf & start
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /www/index.html
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80 443

CMD sh ./start.sh
