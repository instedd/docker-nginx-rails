#!/bin/bash
set -eo pipefail

STABLE_PUSH=${1}
SHORT_COMMIT=${CURRENT_COMMIT::7}

push-image() {
  docker push ${DOCKER_REPOSITORY}:${1}-${SHORT_COMMIT}
  if [ "--stable" = "${STABLE_PUSH}" ]
  then
    docker push ${DOCKER_REPOSITORY}:${1}
  fi
}

push-image 1.9
push-image 2.0
push-image 2.1
push-image 2.2
push-image 2.3
