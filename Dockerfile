FROM php:7.1.9-apache
MAINTAINER Lorenzo Aiello <lorenzo@6c61.com>

RUN apt-get update docker-php-ext-install memcache memcached ldap
