FROM webhippie/ubuntu:xenial
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/var/lib/rocketchat"]

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/bin/s6-svscan", "/etc/s6"]
EXPOSE 3000
WORKDIR /srv/www

ENV ROCKETCHAT_VERSION 0.62.1
ENV ROCKETCHAT_TARBALL https://cdn-download.rocket.chat/build/rocket.chat-${ROCKETCHAT_VERSION}.tgz

RUN apt-get update -y && apt-get install -y apt-transport-https && rm -rf /var/lib/apt/lists/*

RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
  echo "deb https://deb.nodesource.com/node_8.x xenial main" | tee /etc/apt/sources.list.d/node.list

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
    build-essential \
    git && \
  rm -rf \
    /var/lib/apt/lists/*

RUN curl -sLo - ${ROCKETCHAT_TARBALL} | tar -xzf - --strip 0 -C /srv/www && \
  chown -R rocketchat:rocketchat /srv/www && \
  cd /srv/www/bundle/programs/server && \
  npm install

ADD rootfs /
