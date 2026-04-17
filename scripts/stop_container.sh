#!/bin/bash

# Stop and remove all running containers
if [ -n "$(docker ps -q)" ]; then
  docker stop $(docker ps -q)
  docker rm $(docker ps -aq)
fi