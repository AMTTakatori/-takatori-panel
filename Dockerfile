FROM php:8.2-apache

# Cài đặt extension cURL cho PHP
RUN apt-get update && apt-get install -y libcurl4-openssl-dev \
    && docker-php-ext-install curl

# Copy toàn bộ code vào thư mục web
COPY . /var/www/html/

# Mở cổng 80
EXPOSE 80
