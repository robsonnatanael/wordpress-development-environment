FROM wordpress:php8.5-apache

# Ajusta o UID/GID do usuário www-data para bater com o host
ARG USER_ID=1000
ARG GROUP_ID=1000
RUN groupmod -g ${GROUP_ID} www-data && \ 
    usermod -u ${USER_ID} -g ${GROUP_ID} www-data

WORKDIR /var/www/html

# Instala dependências do sistema necessárias para o Composer e PHPCS
RUN apt-get update && apt-get install -y \
    git \
    libzip-dev \
    zip \
    && docker-php-ext-install zip \
    && rm -rf /var/lib/apt/lists/*

COPY /config/custom.ini $PHP_INI_DIR/conf.d/
COPY --from=composer /usr/bin/composer /usr/bin/composer
