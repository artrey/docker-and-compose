ARG DOCKER_IMAGE=docker
ARG DOCKER_VERSION=latest
FROM ${DOCKER_IMAGE}:${DOCKER_VERSION}

ARG DOCKER_IMAGE
ARG DOCKER_VERSION
ARG COMPOSE_VERSION=

RUN apk add --no-cache py-pip
RUN pip install "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}"

LABEL \
  maintainer="Alexander Ivanov <oz.sasha.ivanov@gmail.com>" \
  description="This docker image installs docker-compose on top of the docker image." \
  licenses="MIT" \
  source="https://github.com/artrey/docker-and-compose" \
  title="Docker image with installed docker-compose" \
  version="${DOCKER_IMAGE}:${DOCKER_VERSION} with docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}"
