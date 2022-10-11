FROM php:7.2-fpm-stretch
COPY index.php /usr/share/nginx/html/
RUN apt-get update
RUN apt-get install -y libcurl4-openssl-dev ssh nano pkg-config libssl-dev
RUN echo "session.save_path=\"/app/tmp\"" >> "$PHP_INI_DIR/php.ini"
