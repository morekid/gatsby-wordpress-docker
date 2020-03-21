#!/bin/bash

CONTAINER_ID=$1

if [ -n "$CONTAINER_ID" ]
    then
        docker exec -it $CONTAINER_ID /bin/sh
else
    echo "Please provide a container ID."
    echo " "
    echo "Current running containers:"
    docker container ls
fi


