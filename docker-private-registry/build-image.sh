#!/usr/bin/env bash
TAG=latest
if [[ $1 != "" ]]; then
  TAG=$1
fi
# echo ${TAG}
docker image build -f caddy-for-registry.Dockerfile -t mrzli/caddy-for-registry:${TAG} .
