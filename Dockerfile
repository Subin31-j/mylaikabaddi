FROM php:8.2-apache
COPY . index.html reg.php sub.html /var/www/html/
RUN a2enmod rewrite headers
RUN docker-php-ext-install mysqli pdo pdo_mysql
EXPOSE 80
CMD ["apache2-foreground"]
