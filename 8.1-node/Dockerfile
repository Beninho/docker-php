FROM beninho/php:8.1

# Install nodejs + npm
RUN apt-get update && apt-get install -y nodejs npm

COPY . /var/www/symfony
RUN npm install