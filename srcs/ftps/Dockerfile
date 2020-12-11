# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 18:12:19 by sofiahechai       #+#    #+#              #
#    Updated: 2020/12/11 17:38:21 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN	apk update
RUN 

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 5000

ENTRYPOINT [ "sh", "start.sh" ]