# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sofiahechaichi <sofiahechaichi@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 18:12:19 by sofiahechai       #+#    #+#              #
#    Updated: 2020/11/16 19:19:33 by sofiahechai      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM	alpin:3.9

LABEL	maintainer="<sohechai@student.42lyon.fr>"

RUN		apt-get update && apt-get upgrade -y
RUN 	curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN		chmod +x ./kubectl
RUN 	apt-get install mariadb-server mariadb-client -y
RUN 	apt-get install php-fpm php-mysql -y
RUN 	apt-get install php-cgi php-common php-pear php-net-socket php-xml-util -y
RUN 	apt-get install php-mbstring php-zip php-gd php-xml  php-gettext php-bcmath -y
RUN 	apt-get install libnss3-tools -y
RUN 	apt-get install unzip wget -y
RUN 	apt-get purge apache2 -y

COPY	srcs/wp-config.php /tmp/
COPY	srcs/config.inc.php /tmp/
COPY	srcs/nginx.conf /etc/nginx/sites-available/
COPY	srcs/wordpress.conf /etc/nginx/sites-available/
COPY	srcs/script.sh ./

EXPOSE	80 443

CMD		bash script.sh