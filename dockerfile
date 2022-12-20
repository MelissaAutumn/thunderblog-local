FROM wordpress:php7.4-apache
# We only use this image for development, so copy the default dev ini
RUN cp "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
# Install an xdebug compatible with php 7.4
RUN pecl install xdebug-3.1.6 && docker-php-ext-enable xdebug

RUN touch /var/log/xdebug.log && chown www-data.www-data /var/log/xdebug.log
COPY docker/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini