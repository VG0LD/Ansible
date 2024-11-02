# Dockerfile
FROM php:7.4-fpm

# Установка необходимых расширений PHP
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html
COPY . .

CMD ["php-fpm"]
