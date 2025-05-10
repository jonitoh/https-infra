#!/bin/bash
# ----------------------------------------------
# DEVOPS --
# Script to make the VM work with the 
# reverse-proxy and the services
# ----------------------------------------------
# CREATE the network web
# https://www.linuxbash.sh/post/managing-docker-networks-with-bash-scripts
if [ "$(docker network ls | grep web)" ]; then
    echo "Network web already exists."
else
    docker network create web
    echo "Network web created."
fi