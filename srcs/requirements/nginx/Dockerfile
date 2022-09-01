FROM debian:buster

RUN apt-get update -y
RUN apt-get install nginx -y

COPY ./conf/nginx.conf /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]