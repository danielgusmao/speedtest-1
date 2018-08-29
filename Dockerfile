FROM php:7.1-apache
EXPOSE 80
WORKDIR /var/www/html/
COPY . /var/www/html
RUN chown -hR www-data:www-data /var/www/html \
    && ln -s /var/www/html /var/www/html/speedtest \
    && apt install libpng-dev \
    && docker-php-ext-install gd

CMD ["/usr/local/bin/apache2-foreground"]
