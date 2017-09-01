FROM webhippie/ubuntu:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/var/lib/rocketchat"]

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/bin/s6-svscan", "/etc/s6"]
EXPOSE 3000
WORKDIR /srv/www

ENV ROCKETCHAT_VERSION 0.57.3
ENV ROCKETCHAT_TARBALL https://rocket.chat/releases/${ROCKETCHAT_VERSION}/download

RUN apt-get update -y && \
  mkdir -p \
    /srv/www && \
  groupadd \
    -g 1000 \
    rocketchat && \
  useradd \
    -u 1000 \
    -d /srv/www \
    -g rocketchat \
    -s /bin/bash \
    -M \
    rocketchat && \
  apt-get install -y \
    nodejs \
    nodejs-legacy \
    npm \
    build-essential \
    git && \
  rm -rf \
    /var/lib/apt/lists/*

RUN curl -sLo - ${ROCKETCHAT_TARBALL} | tar -xzf - --strip 0 -C /srv/www && \
  chown -R rocketchat:rocketchat /srv/www && \
  cd /srv/www/bundle/programs/server && \
  npm install

ADD rootfs /
