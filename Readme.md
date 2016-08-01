# Docker LAMP stack environment

Docker config utilizing [docker-compose] to instantly build and have LAMP environment.
After installation you will have:
* apache2
* php5.5
* mysql 5.6
* memcached
* redis
* elasticsearch

## Installation

1. `git clone https://github.com/ziogas/docker-lamp.git`
1. Edit `lamp.yaml` file and modify you environment paths in `context` and `volumes` sections.
1. Remove all the not needed services from `lamp.yaml`
1. Run `docker-compose -f path/to/lamp.yaml up`

## Usage

After initial build you will be able to fully manage your docker LAMP environment with just two commands: `docker-compose -f path/to/lamp.yaml up` and `docker-compose -f path/to/lamp.yaml down`

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request

## License

[MIT]

[docker-compose]: https://docs.docker.com/compose/
[mit]: https://tldrlegal.com/license/mit-license
