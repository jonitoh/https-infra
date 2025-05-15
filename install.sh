#!/bin/bash
# ----------------------------------------------
# DEVOPS --
# Script to make the VM work with the 
# reverse-proxy and the services
# ----------------------------------------------
# CREATE the network infra-web
# https://www.linuxbash.sh/post/managing-docker-networks-with-bash-scripts
if [ "$(docker network ls | grep infra-web)" ]; then
    echo "Network infra-web already exists."
else
    docker network create infra-web
    echo "Network infra-web created."
fi