FROM tutum/apache-php
MAINTAINER Arminas Zukauskas <arminas@ini.lt>
LABEL Description="Apache/php" Vendor="ini" Version="1.0"
USER root

ENV ALLOW_OVERRIDE=true

# Update the system
RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y language-pack-en python-software-properties software-properties-common build-essential

RUN LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php && \
    apt-get update && apt-get upgrade -y --force-yes

# install php with a set of most widely used extensions
RUN apt-get install -y --force-yes --fix-missing \
    vim \
    mysql-client \
    imagemagick \
    php-mongo \
    php-mongodb \
    php5-mcrypt \
    php5-curl \
    php5-cli \
    php5-gd \
    php5-cli \
    php5-json \
    php5-imagick \
    php5-xsl \
    php5-imap \
    php5-memcached

RUN echo "extension=/usr/lib/php/20121212/mongo.so" > /etc/php5/mods-available/mongo.ini && php5enmod mongo

RUN sudo php5enmod imap
RUN a2enmod rewrite ssl

ADD configs/php.ini /etc/php5/apache2/conf.d/php.ini
ADD configs/php.ini /etc/php5/cli/conf.d/php.ini
VOLUME /app
