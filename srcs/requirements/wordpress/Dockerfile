FROM debian:buster

RUN apt-get update -y
# RUN apt-get install php7.2-cli php7.2-fpm php7.2-mysql php7.2-json php7.2-opcache php7.2-mbstring php7.2-xml php7.2-gd php7.2-curl
RUN apt install php php-{fpm,pear,cgi,common,zip,mbstring,net-socket,gd,xml-util,mysql,bcmath}
RUN apt install wget -y
# RUN wget https://wordpress.org/latest.tar.gz
# RUN tar xvf latest.tar.gz
# RUN mv wordpress /var/www/html/myblog
# RUN cd /var/www/html/myblog
# RUN cp wp-config-sample.php wp-config.php
RUN cd /var/www/html
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mv wordpress yourdomain.com
RUN cd yourdomain.com
RUN cp wp-config-sample.php wp-config.php