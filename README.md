# Docker with docker-compose

[![Docker Pulls](https://img.shields.io/docker/pulls/artrey/docker-and-compose.svg)](https://hub.docker.com/r/artrey/docker-and-compose/)
[![GitHub issues](https://img.shields.io/github/issues/artrey/docker-and-compose.svg)](https://github.com/artrey/docker-and-compose/issues)
[![GitHub stars](https://img.shields.io/github/stars/artrey/docker-and-compose.svg?style=social&label=Star)](https://github.com/artrey/docker-and-compose)

This docker image installs docker-compose on top of the `docker` image.
This is very useful for CI pipelines, which leverage "Docker in Docker".

## Usage instructions for GitLab CI

You may use it like this in your `.gitlab-ci.yml` file.

```yaml
image: artrey/docker-and-compose:latest

services:
  - docker:dind

before_script:
  - docker info
  - docker-compose --version

build image:
  stage: build
  script:
    - docker-compose build
```
