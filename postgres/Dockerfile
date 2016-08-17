FROM sameersbn/postgresql:9.4
MAINTAINER Remigijus Jarmalavičius <dev@jarmalavicius.lt>
LABEL Description="postgres" Vendor="ini" Version="1.0"

ADD configs/pg_hba.conf /etc/postgresql/9.4/main/pg_hba.conf
RUN chown postgres:postgres /etc/postgresql/9.4/main/pg_hba.conf
