# Rocket.Chat

[![Build Status](https://cloud.drone.io/api/badges/dockhippie/rocketchat/status.svg)](https://cloud.drone.io/dockhippie/rocketchat)
[![](https://images.microbadger.com/badges/image/webhippie/rocketchat.svg)](https://microbadger.com/images/webhippie/rocketchat "Get your own image badge on microbadger.com")

These are docker images for [Rocket.Chat](https://rocket.chat) running on an [Ubuntu container](https://registry.hub.docker.com/u/webhippie/ubuntu/).


## Versions

* [latest](./latest) available as `webhippie/rocketchat:latest`
* [1.2](./v1.2) available as `webhippie/rocketchat:1.2`
* [1.1](./v1.1) available as `webhippie/rocketchat:1.1`
* [1.0](./v1.0) available as `webhippie/rocketchat:1.0`
* [0.74](./v0.74) available as `webhippie/rocketchat:0.74`
* [0.65](./v0.65) available as `webhippie/rocketchat:0.65`


## Volumes

* /var/lib/rocketchat


## Ports

* 3000


## Available environment variables

```bash
ROCKETCHAT_AVATARS_PATH = ${ROCKETCHAT_BASE_PATH}/avatars
ROCKETCHAT_BASE_PATH = /var/lib/rocketchat
ROCKETCHAT_HEALTHCHECK_CODE = 200
ROCKETCHAT_HEALTHCHECK_URL = http://localhost:3000
ROCKETCHAT_MONGO_AUTH_SOURCE =
ROCKETCHAT_MONGO_DATABASE = rocketchat
ROCKETCHAT_MONGO_HOST = db
ROCKETCHAT_MONGO_OPLOG_AUTH_SOURCE =
ROCKETCHAT_MONGO_OPLOG_PASSWORD =
ROCKETCHAT_MONGO_OPLOG_USERNAME =
ROCKETCHAT_MONGO_PASSWORD =
ROCKETCHAT_MONGO_PORT = 27017
ROCKETCHAT_MONGO_REPL_DATABASE = local
ROCKETCHAT_MONGO_REPL_SET = rs01
ROCKETCHAT_MONGO_TEST_FAIL = true
ROCKETCHAT_MONGO_TIMEOUT = 30
ROCKETCHAT_MONGO_USERNAME =
ROCKETCHAT_ROOT_URL = http://localhost:3000
ROCKETCHAT_SKIP_CHOWN = false
```


## Inherited environment variables

* [webhippie/ubuntu](https://github.com/dockhippie/ubuntu#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
