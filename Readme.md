# Docker containers for Web Development

Docker containers (Apache, PHP, Mysql, Postgres, Memcache, Redis, ElasticSearch) for Web Development.

Uses [docker-compose] to instantly ship you development environment.

After installation you will have:

* apache2
* php
* mysql
* memcached
* redis
* elasticsearch
* postgres

## Installation

1. Clone repo.
2. Check `docker-compose.yml` file and modify you environment paths in `context` and `volumes` sections.
3. Run `docker-compose up`

## Usage

After successful installation check if you can see list of docker containers running `docker ps`.

Normally you should be able to connect into containers with `172.18.0.1` IP.

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`.
3. Commit your changes: `git commit -am 'Some feature X'`.
4. Push to the branch: `git push origin my-new-feature`.
5. Submit a pull request.

Main idea and most of the code I borrowed from [Arminas Žukauskas library called docker-lamp].

## License

[MIT]

[docker-compose]: https://docs.docker.com/compose/
[mit]: https://tldrlegal.com/license/mit-license
[Arminas Žukauskas library called docker-lamp]:https://github.com/ziogas/docker-lamp
