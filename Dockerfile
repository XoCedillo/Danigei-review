FROM wordpress:latest
COPY ./pagina-ejemplo /var/www/html
RUN curl -O https://downloads.wordpress.org/plugin/akismet.latest-stable.zip \
    && unzip akismet.latest-stable.zip -d /var/www/html/wp-content/plugins/ \
    && rm akismet.latest-stable.zip
    RUN chown -R www-data:www-data /var/www/html
