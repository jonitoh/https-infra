#!/bin/bash
# ----------------------------------------------
# DEVOPS --
# Script to deploy the reverse proxy container
# ----------------------------------------------
# Required from .env
ENV_FILE=".env"
if [ ! -f ${ENV_FILE} ]
then
    echo "${ENV_FILE} is missing!"
    exit 1
fi

USERS_FILE="secrets/users_file"
if [ ! -f ${USERS_FILE} ]
then
    echo "${USERS_FILE} is missing!"
    exit 1
fi

# shellcheck disable=SC2046
export $(grep -v '^#' ${ENV_FILE} | xargs)

# Start Container
docker-compose up -d
