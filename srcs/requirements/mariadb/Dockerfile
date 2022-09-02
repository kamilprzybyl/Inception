FROM debian:buster

RUN apt-get update -y
RUN apt-get install mariadb-server -y

COPY ./setup.sql ./
RUN service mysql start && mysql < setup.sql

CMD mysqld_safe
