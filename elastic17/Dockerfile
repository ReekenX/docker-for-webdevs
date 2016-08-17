FROM elasticsearch:1.7
MAINTAINER Arminas Zukauskas <arminas@ini.lt>
LABEL Description="elasticsearch" Vendor="ini" Version="1.0"

ADD configs/elasticsearch.yml /usr/share/elasticsearch/configs/elasticsearch.yml
RUN /usr/share/elasticsearch/bin/plugin install royrusso/elasticsearch-HQ
RUN /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head
