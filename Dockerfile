FROM php:7.1.9-apache
MAINTAINER Lorenzo Aiello <lorenzo@6c61.com>

RUN docker-php-source extract \
&& apt-get update \
&& apt-get install libmcrypt-dev libldap2-dev nano -y \
&& rm -rf /var/lib/apt/lists/* \
&& docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu \
&& docker-php-ext-install ldap pdo pdo_mysql \
&& a2enmod rewrite \
&& a2enmod ssl \
&& docker-php-source delete
