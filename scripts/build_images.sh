#!/bin/bash

docker-compose stop

docker rm $(docker ps -a -q)

docker build -t michcald/app images/app
docker build -t michcald/php-fpm images/php-fpm
docker build -t michcald/nginx images/nginx
docker build -t michcald/beanstalkd images/beanstalkd
docker build -t michcald/redis images/redis

docker-compose up -d

#git clone https://github.com/michcald/website.git volumes/app/src
