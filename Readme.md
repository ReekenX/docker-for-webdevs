# Docker containers for Web Development

Docker containers (Apache, PHP, Mysql, Postgres, Memcache, Redis, ElasticSearch) for Web Development.

Uses [docker-compose] to instantly ship you development environment.

After installation you will have (optional):

* apache2
* php
* mysql
* memcached
* redis
* elasticsearch
* postgres

## Installation

1. Clone repo (git clone https://github.com/ReekenX/docker-for-webdevs.git)
2. Check `docker-compose.yml` and extend with `docker-compose.override.yml` like that:

    version: '2'
    services:
      web:
        volumes:
          - ./storage-for-images/apache-configs:/etc/apache2/sites-enabled
          - /home/remigijus/Work:/home/remigijus/Work

3. Run `docker-compose up`.
4. Enjoy it!

## Usage

After successful installation check if you can see list of docker containers running `docker ps`.

Normally you should be able to connect into containers with `172.18.0.1` IP.

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`.
3. Commit your changes: `git commit -am 'Some feature X'`.
4. Push to the branch: `git push origin my-new-feature`.
5. Submit a pull request.

This setup originally was created by [Arminas Žukauskas library called docker-lamp], but I extended/changed it to suit my own needs.

## License

[MIT]

[docker-compose]: https://docs.docker.com/compose/
[mit]: https://tldrlegal.com/license/mit-license
[Arminas Žukauskas library called docker-lamp]:https://github.com/ziogas/docker-lamp
