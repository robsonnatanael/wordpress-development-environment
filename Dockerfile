FROM wordpress:php8.5-apache

# Adjust the UID/GID of the www-data user to match the host
ARG USER_ID=1000
ARG GROUP_ID=1000
RUN usermod -u ${USER_ID} www-data && groupmod -g ${GROUP_ID} www-data

WORKDIR /var/www/html

# Installs system dependencies required for Composer and PHP_CodeSniffer (PHPCS)
RUN apt-get update && apt-get install -y \
    git \
    libzip-dev \
    zip \
    && docker-php-ext-install zip \
    && rm -rf /var/lib/apt/lists/*

COPY /config/custom.ini $PHP_INI_DIR/conf.d/
COPY --from=composer /usr/bin/composer /usr/bin/composer
