#!/bin/bash

for i in $(find . -type d)
do
    # Iterate over every folder
    if [ -f "$i/Dockerfile" ]; then
        cd $i && docker-compose config > /dev/null && docker-compose build && cd ..
    elif [ -f "$i/docker-compose.yaml" ]
        cd $i && docker-compose config > /dev/null && docker-compose pull && cd ..
    fi
done