#!/bin/bash -l

set -e

sudo docker build -t $DOCKER_IMAGE .
sudo docker run --name $DOCKER_CONTAINER -d -p 8080:8080 $DOCKER_IMAGE
