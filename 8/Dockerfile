FROM lephare/php:8.0
RUN apt-get update \
   && docker-php-ext-install pdo_mysql mysqli
RUN apt-get update && apt-get install -y \
    libxslt1-dev \
    && docker-php-ext-install xsl \
    && docker-php-ext-enable xsl