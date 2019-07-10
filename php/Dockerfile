FROM php:7.3-fpm-alpine

RUN apk --update add vim freetype-dev libjpeg-turbo-dev libpng-dev shadow libzip-dev && \
    docker-php-ext-install pdo_mysql mbstring gd zip

RUN apk add autoconf build-base && \
    pecl install xdebug

ARG PUID=1000
ENV PUID ${PUID}
ARG PGID=1000
ENV PGID ${PGID}

RUN groupadd -g ${PGID} laravel && \
    useradd -u ${PUID} -g laravel -m laravel && \
    usermod -p "*" laravel -s /bin/sh

# install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

USER laravel
RUN composer global require "laravel/installer" && composer global require "phpunit/phpunit"
ENV PATH $PATH:/home/laravel/.composer/vendor/bin

