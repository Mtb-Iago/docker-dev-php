FROM php:8.0-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli && docker-php-ext-install pdo_mysql
RUN apt-get update && apt-get upgrade -y

RUN a2enmod rewrite