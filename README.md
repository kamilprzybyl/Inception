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
One of the main use-cases of FastCGI proxying within Nginx is for PHP processing. Apache, which can handle PHP processing directly with the use of the mod_php module, Nginx must rely on a separate PHP processor to handle PHP requests. Most often, this processing is handled with ***php-fpm***, a PHP processor that has been extensively tested to work with Nginx.

## Newtwork
By default Compose sets up a single network for your app. Each container for a service joins the default network and is both reachable by other containers on that network, and discoverable by them at a hostname identical to the container name.
The only way I found to change the name of the network was defining an entry under “networks”:
```
networks:
  my-network-name:
```
