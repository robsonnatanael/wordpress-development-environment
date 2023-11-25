FROM wordpress:latest

WORKDIR /var/www/html

COPY /config/custom.ini $PHP_INI_DIR/conf.d/
COPY --from=composer /usr/bin/composer /usr/bin/composer
