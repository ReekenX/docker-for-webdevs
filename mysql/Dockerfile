FROM mysql:5.7
MAINTAINER Arminas Zukauskas <arminas@ini.lt>
LABEL Description="mysql" Vendor="ini" Version="1.0"

ADD configs/mysql.cnf /etc/mysql/conf.d/mysql.cnf
RUN chmod 0644 /etc/mysql/conf.d/mysql.cnf
