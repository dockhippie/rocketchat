# RocketChat

[![](https://images.microbadger.com/badges/image/webhippie/rocketchat.svg)](https://microbadger.com/images/webhippie/rocketchat "Get your own image badge on microbadger.com")

These are docker images for [Rocket.Chat](https://rocket.chat) running on an [Ubuntu container](https://registry.hub.docker.com/u/webhippie/ubuntu/).


## Versions

To get an overview about the available versions please take a look at the [GitHub branches](https://github.com/dockhippie/rocketchat/branches/all) or our [Docker Hub tags](https://hub.docker.com/r/webhippie/rocketchat/tags/), these lists are always up to date.


## Volumes

* /var/lib/rocketchat


## Ports

* 3000


## Available environment variables

```bash
ROCKETCHAT_ROOT_URL http://localhost:3000
ROCKETCHAT_MONGO_TIMEOUT 30
ROCKETCHAT_MONGO_TEST_FAIL true
ROCKETCHAT_MONGO_HOST db
ROCKETCHAT_MONGO_PORT 27017
ROCKETCHAT_MONGO_USERNAME
ROCKETCHAT_MONGO_PASSWORD
ROCKETCHAT_MONGO_DATABASE rocketchat
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
Copyright (c) 2015-2017 Thomas Boerger <http://www.webhippie.de>
```
