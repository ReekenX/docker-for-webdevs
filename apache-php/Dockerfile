FROM tutum/apache-php
MAINTAINER Arminas Zukauskas <arminas@ini.lt>
LABEL Description="Apache/php" Vendor="ini" Version="1.0"

ENV ALLOW_OVERRIDE=true

# Update the system
RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y language-pack-en python-software-properties software-properties-common build-essential

RUN add-apt-repository -y ppa:ondrej/php && \
    apt-get update && apt-get upgrade -y --force-yes

# install php with a set of most widely used extensions
RUN apt-get install -y --force-yes --fix-missing \
    vim \
	mysql-client \
    imagemagick \
    php-mongo \
    php-mongodb \
    php5-mysql \
    php5-mhash \
    php5-mcrypt \
    php5-curl \
    php5-cli \
    php5-gd \
    php5-cli \
    php5-json \
    php5-imagick \
    php5-xsl \
    php5-memcached \
    php-xml-dtd \
    php-xml-rpc \
    php-xml-serializer \
    php5-imap \
    php5-memcached

RUN a2enmod rewrite ssl expires headers

ADD configs/php.ini /etc/php5/apache2/conf.d/php.ini
ADD configs/php.ini /etc/php5/cli/conf.d/php.ini
