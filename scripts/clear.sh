#!/bin/bash

# stops all the containers
docker stop $(docker ps -a -q)

# removes all the containers
docker rm $(docker ps -a -q)
