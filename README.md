# Inception
<!--
This project consists of several virtualized Docker images

Service: A container for an application that can actually include several container instances running the same image
1. The containers are built from the penultimate stable version of Debian Buster

Gotta create containers for three services:
  - nginx - web server
  - mariadb - database management system
  - wordpress - content management system
  

Below is an example of the expected result:<br>

<img src="https://user-images.githubusercontent.com/83188617/154948111-0615a5d3-e90c-4dad-ab75-12c0642994f6.png" width="500">
Multi-Container Deployment of WordPress using Docker
-->

## FastCGI Proxying
Nginx doesn’t know how to run a PHP script of its own. It needs a PHP module like PHP-FPM to efficiently manage PHP scripts. PHP-FPM, on the other hand, runs outside the NGINX environment by creating its own process. Therefore when a user requests a PHP page the nginx server will pass the request to PHP-FPM service using FastCGI.</br>
The installation of php-fpm on Debian depends on PHP version. Assuming you have already installed the latest PHP 7.3, then you can install FPM using the following apt-get command.</br>
```apt-get install php7.3-fpm```</br>
The FPM service will start automatically, once the installation is over.

## Newtwork
By default Compose sets up a single network for your app. Each container for a service joins the default network and is both reachable by other containers on that network, and discoverable by them at a hostname identical to the container name.
The only way I found to change the name of the network was defining an entry under “networks”:
```
networks:
  my-network-name:
```
