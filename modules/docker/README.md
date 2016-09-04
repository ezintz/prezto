# Docker

Defines [docker][1], [docker-compose][2] and [docker-machine][3] aliases and
functions.

## Aliases

### `docker`

- `dex` execute an interactive command in a running container.
- `di` lists the images.
- `dip` an alias for the function `docker-ip`.
- `dpa` lists all containers.
- `dps` lists running containers.
- `drd` runs a deamonized container.
- `dri` runs a interactive container.
- `drm` removes a container.
- `drma` removes all containers.
- `drmf` stops and removes all containers.
- `drmi` removes all dangling images.
- `dsa` stops all containers.

### `docker-compose`

- `dc` a simple alias to `docker-compose`
- `dcb` build or rebuild services
- `dcd` stop and remove containers, networks, images, and volumes
- `dcps` list running containers
- `dcu` creates and start the containers

### `docker-machine`

- `dm` a simple alias to `docker-machine`
- `dmc` create a new machine
- `dmip` returns the ip of the machine
- `dml` list all machines
- `dmrc` regnerates the certificates
- `dms` starts a machine
- `dmu` upgrade a machine

## Functions

- `docker-ip` returns the IP address of a container.

## Authors

*The authors of this module should be contacted via the [issue tracker][4].*

  - [Eduard Zintz](https://github.com/ezintz)

[1]: https://docs.docker.com/engine/reference/commandline/cli/
[2]: https://docs.docker.com/compose/reference/overview/
[3]: https://docs.docker.com/machine/reference/
[4]: https://github.com/sorin-ionescu/prezto/issues
