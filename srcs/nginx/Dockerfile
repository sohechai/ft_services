# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 18:12:19 by sofiahechai       #+#    #+#              #
#    Updated: 2020/11/24 16:03:29 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

LABEL maintainer="<sohechai@student.42lyon.fr>"

# install
RUN apk update
RUN	apk add nginx
RUN apk add openssl

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

# conf & start
COPY ./nginx.conf /etc/nginx/conf.d/
COPY ./start.sh /start.sh
RUN chmod +x /start.sh
EXPOSE 80 443

CMD sh ./start.sh
