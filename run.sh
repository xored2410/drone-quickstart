#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID="Ov23lieCGKgjr1XVFvO6"
export DRONE_GITHUB_CLIENT_SECRET="13f09614fadb08a0ea4bf6d13020f5ecc011a21e"
export DRONE_GITHUB_ADMIN="xored2410"
export DRONE_SERVER_HOST=fdc4-93-86-167-235.ngrok-free.app

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d
