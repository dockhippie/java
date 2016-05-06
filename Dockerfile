FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk update && \
  apk add \
    nss \
    openjdk7 && \
  rm -rf /var/cache/apk/*

ADD rootfs /

WORKDIR /app
CMD ["bash"]
