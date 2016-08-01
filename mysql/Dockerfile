FROM mysql:5.6
MAINTAINER Arminas Zukauskas <arminas@ini.lt>
LABEL Description="mysql" Vendor="ini" Version="1.0"
USER root

RUN apt-get update && apt-get install -y --force-yes vim

ADD configs/mysql.cnf /etc/mysql/conf.d/mysql.cnf
RUN chmod 0644 /etc/mysql/conf.d/mysql.cnf
