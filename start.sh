#!/bin/bash

cd backend-dev && mvn clean install && cd ..

docker-compose down
docker-compose build
docker-compose up