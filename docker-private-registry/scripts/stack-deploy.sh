#!/usr/bin/env bash
USERNAME=user
PASSWORD=pass
if [[ $1 != "" ]]; then
  USERNAME=$1
fi
if [[ $2 != "" ]]; then
  PASSWORD=$2
fi
# echo ${USERNAME} ${PASSWORD}
CADDY_BASIC_AUTH_USERNAME=${USERNAME} CADDY_BASIC_AUTH_PASSWORD=${PASSWORD} bash -c "docker stack deploy -c docker-compose.yml reg"
