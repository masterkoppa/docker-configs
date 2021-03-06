#!/bin/bash

# Exit on build errors
set -e

for i in $(find . -type d)
do
    # Iterate over every folder
    if [ -f "$i/Dockerfile" ]; then
        cd $i && docker-compose config > /dev/null && docker-compose build && cd ..;
    elif [ -f "$i/docker-compose.yaml" ]; then
        cd $i && docker-compose config > /dev/null && docker-compose pull && cd ..;
    fi
done