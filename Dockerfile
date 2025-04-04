# Dockerfile
FROM php:8.2-cli

# Install required dependencies
RUN apt-get update -y && apt-get install -y \
    libmcrypt-dev \
    libonig-dev \
    php-zip \
    unzip \
    wget \
    git

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install PHP extensions
RUN docker-php-ext-install pdo mbstring

# Install Symfony CLI
RUN wget https://get.symfony.com/cli/installer -O - | bash && \
    mv /root/.symfony*/bin/symfony /usr/local/bin/symfony

WORKDIR /app
COPY . /app

RUN composer install

EXPOSE 8000
CMD ["symfony", "server:start", "--no-tls", "--port=8000", "--allow-http", "--listen-ip=0.0.0.0"]