FROM ubuntu:trusty
MAINTAINER Remigijus Jarmalavičius <dev@jarmalavicius.lt>
LABEL Description="Apache/PHP" Vendor="ini" Version="1.0"

# Update the system packages cache
RUN apt-get update

# Update packages needed to install custom PHP version
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq language-pack-en python-software-properties software-properties-common build-essential

# Install PPA which has list of PHP versions
RUN LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php \
    && apt-get update \
    && apt-get upgrade -y --force-yes

# Install packages needed for web development (aka LAMP)
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq --force-yes --fix-missing \
    apache2 \
    libapache2-mod-php5.6 \
    mysql-client \
    imagemagick \
    php-mongo \
    php-mongodb \
    php5.6-mbstring \
    php5.6-mysql \
    php5.6-mcrypt \
    php5.6-curl \
    php5.6-cli \
    php5.6-gd \
    php5.6-cli \
    php5.6-json \
    php5.6-imagick \
    php5.6-xsl \
    php5.6-memcached \
    php5.6-imap \
    php5.6-memcached \
    php-xml-dtd \
    php-xml-rpc \
    php-xml-serializer \
    vim

RUN a2enmod rewrite ssl expires headers

ADD configs/php.ini /etc/php5/apache2/conf.d/php.ini
ADD configs/php.ini /etc/php5/cli/conf.d/php.ini

ADD run.sh /run.sh
RUN chmod 755 /run.sh

EXPOSE 80
CMD ["/run.sh"]
