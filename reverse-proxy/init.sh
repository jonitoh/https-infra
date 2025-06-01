#!/bin/bash
# ----------------------------------------------
# DEVOPS --
# Script to prepare the container reverse-proxy
# ----------------------------------------------
# CREATE the acme.json file
FILE="config/acme.json"
if [ ! -f "$FILE" ]; then
    echo "File $FILE needs to be created."
    mkdir -p "$(dirname "$FILE")" && touch "$FILE"
fi
sudo chmod 600 "$FILE";

# CREATE the user_file file
FILE="secrets/users_file"
if [ ! -f "$FILE" ]; then
    echo "File $FILE needs to be created."
    mkdir -p "$(dirname "$FILE")" && touch "$FILE"
fi
sudo chmod 600 "$FILE";