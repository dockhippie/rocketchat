local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/rocketchat';

[
  pipeline.build(name, 'latest', 'latest', 'amd64'),
  pipeline.build(name, 'latest', 'latest', 'arm32v7'),
  pipeline.build(name, 'latest', 'latest', 'arm64v8'),
  pipeline.manifest('latest', 'latest', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, 'v2.2', '2.2', 'amd64'),
  pipeline.build(name, 'v2.2', '2.2', 'arm32v7'),
  pipeline.build(name, 'v2.2', '2.2', 'arm64v8'),
  pipeline.manifest('v2.2', '2.2', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, 'v2.1', '2.1', 'amd64'),
  pipeline.build(name, 'v2.1', '2.1', 'arm32v7'),
  pipeline.build(name, 'v2.1', '2.1', 'arm64v8'),
  pipeline.manifest('v2.1', '2.1', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.microbadger(['latest', '2.2', '2.1']),
]
