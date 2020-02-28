#!/usr/bin/env bash

if [ -z ${1} ]
then
  echo 'No project specified'
  exit 1
fi

if [ -z ${2} ]
then
  TAG="latest"
else
  TAG=${2}
fi

PROJECT=${1}

case ${PROJECT} in
    arch-dev)
      docker build --force-rm --no-cache -t docker.apporc.org/arch-dev:${TAG} -f arch-dev/Dockerfile .
      ;;
    ubuntu-dev)
      docker build --force-rm --no-cache -t docker.apporc.org/ubuntu-dev:${TAG} -f ubuntu-dev/Dockerfile .
      ;;
    *)
      echo 'Unknown project'
      ;;
esac
