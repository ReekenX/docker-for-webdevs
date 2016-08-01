FROM elasticsearch:2.3
MAINTAINER Arminas Zukauskas <arminas@ini.lt>
LABEL Description="elasticsearch" Vendor="ini" Version="1.0"
USER root

RUN apt-get update && apt-get install -y --force-yes vim

ADD configs/elasticsearch.yml /usr/share/elasticsearch/configs/elasticsearch.yml

RUN /usr/share/elasticsearch/bin/plugin install royrusso/elasticsearch-HQ
RUN /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head
