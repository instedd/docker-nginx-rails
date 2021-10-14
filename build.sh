#!/bin/bash
set -eo pipefail

SHORT_COMMIT=${CURRENT_COMMIT::7}

build-image() {
  cd ruby-$1
  docker build -t ${DOCKER_REPOSITORY}:${1}-${SHORT_COMMIT} .
  docker tag ${DOCKER_REPOSITORY}:${1}-${SHORT_COMMIT} ${DOCKER_REPOSITORY}:${1}
  cd -
}

build-image 1.9
build-image 2.0
build-image 2.1
build-image 2.2
build-image 2.3
