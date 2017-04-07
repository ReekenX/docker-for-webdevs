FROM ubuntu:trusty

RUN apt-get update && apt-get install -y --force-yes vim fabric gettext nodejs-legacy mysql-client git python-virtualenv gcc postgresql memcached libpq-dev python-werkzeug python-mysqldb python-dev libpq-dev python-pylibmc python-imaging python-m2crypto wget python3-werkzeug pv build-essential libssl-dev libffi-dev python-pyparsing libxml2-dev libxslt1-dev libxslt1.1 libxmlsec1-dev libmysqlclient-dev libldap2-dev libsasl2-dev python3-dev libmemcached-dev libjpeg8 libjpeg8-dev libfreetype6 libfreetype6-dev zlib1g-dev python-imaging vpnc

# Fix SSL issues with PYPI
RUN apt-get --reinstall install python-pyasn1 python-pyasn1-modules

# Fix pip installation from SSL issue (https://urllib3.readthedocs.io/en/latest/advanced-usage.html#ssl-warnings)
# RUN python -m pip install --upgrade --force pip
# RUN python -m pip install setuptools==33.1.1
# RUN pip2.7 install --upgrade ndg-httpsclient


ENTRYPOINT ["/bin/ping"]
CMD ["localhost"]
