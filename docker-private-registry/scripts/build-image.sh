#!/usr/bin/env bash
TAG=latest
if [[ $1 != "" ]]; then
  TAG=$1
fi
# echo ${TAG}
PROJ_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null 2>&1 && pwd)"
docker image build \
  -f "${PROJ_DIR}/caddy-for-registry.Dockerfile" \
  -t mrzli/caddy-for-registry:${TAG} \
  "${PROJ_DIR}"
