local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/rocketchat';

[
  pipeline.build(name, 'latest', 'latest', 'amd64'),
  pipeline.build(name, 'latest', 'latest', 'arm32v7'),
  pipeline.build(name, 'latest', 'latest', 'arm64v8'),
  pipeline.manifest('latest', 'latest', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, 'v2.1', '2.1', 'amd64'),
  pipeline.build(name, 'v2.1', '2.1', 'arm32v7'),
  pipeline.build(name, 'v2.1', '2.1', 'arm64v8'),
  pipeline.manifest('v2.1', '2.1', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, 'v2.0', '2.0', 'amd64'),
  pipeline.build(name, 'v2.0', '2.0', 'arm32v7'),
  pipeline.build(name, 'v2.0', '2.0', 'arm64v8'),
  pipeline.manifest('v2.0', '2.0', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, 'v1.3', '1.3', 'amd64'),
  pipeline.build(name, 'v1.3', '1.3', 'arm32v7'),
  pipeline.build(name, 'v1.3', '1.3', 'arm64v8'),
  pipeline.manifest('v1.3', '1.3', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, 'v1.2', '1.2', 'amd64'),
  pipeline.build(name, 'v1.2', '1.2', 'arm32v7'),
  pipeline.build(name, 'v1.2', '1.2', 'arm64v8'),
  pipeline.manifest('v1.2', '1.2', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, 'v1.1', '1.1', 'amd64'),
  pipeline.build(name, 'v1.1', '1.1', 'arm32v7'),
  pipeline.build(name, 'v1.1', '1.1', 'arm64v8'),
  pipeline.manifest('v1.1', '1.1', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, 'v1.0', '1.0', 'amd64'),
  pipeline.build(name, 'v1.0', '1.0', 'arm32v7'),
  pipeline.build(name, 'v1.0', '1.0', 'arm64v8'),
  pipeline.manifest('v1.0', '1.0', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, 'v0.74', '0.74', 'amd64'),
  pipeline.build(name, 'v0.74', '0.74', 'arm32v7'),
  pipeline.build(name, 'v0.74', '0.74', 'arm64v8'),
  pipeline.manifest('v0.74', '0.74', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, 'v0.65', '0.65', 'amd64'),
  pipeline.build(name, 'v0.65', '0.65', 'arm32v7'),
  pipeline.build(name, 'v0.65', '0.65', 'arm64v8'),
  pipeline.manifest('v0.65', '0.65', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.microbadger(['latest', '2.1', '2.0', '1.3', '1.2', '1.1', '1.0', '0.74', '0.65']),
]
