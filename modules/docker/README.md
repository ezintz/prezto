Docker
======

Defines [docker][1], [docker-compose][2] and [docker-machine][3] aliases and
functions.

Aliases
-------

- `dex` executes an interactive container.
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

Functions
---------

- `docker-ip` returns the IP address of a container.

Authors
-------

*The authors of this module should be contacted via the [issue tracker][4].*

  - [Eduard Zintz](https://github.com/ezintz)

[1]: hhttps://docs.docker.com/engine/reference/commandline/cli/
[2]: https://docs.docker.com/compose/reference/overview/
[3]: https://docs.docker.com/machine/reference/
[4]: https://github.com/sorin-ionescu/prezto/issues
