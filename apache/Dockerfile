FROM ubuntu:artful

# Update the system packages cache
RUN apt-get update

# Update packages needed to install custom PHP version
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --fix-missing language-pack-en python-software-properties software-properties-common build-essential

# Install packages needed for web development (aka LAMP)
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --fix-missing \
    apache2 \
    libapache2-mod-php7.1 \
    mysql-client \
    imagemagick \
    php7.1-mbstring \
    php7.1-mysql \
    php7.1-mcrypt \
    php7.1-curl \
    php7.1-cli \
    php7.1-gd \
    php7.1-cli \
    php7.1-json \
    php7.1-imagick \
    php7.1-xsl \
    php7.1-memcached \
    php7.1-imap \
    vim

RUN a2enmod rewrite ssl expires headers

ADD configs/php.ini /etc/php/7.1/cli/php.ini
ADD configs/php.ini /etc/php/7.1/apache2/php.ini

ADD run.sh /run.sh
RUN chmod 755 /run.sh

EXPOSE 80
CMD ["/run.sh"]
