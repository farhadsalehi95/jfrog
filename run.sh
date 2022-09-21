#!/bin/bash

mkdir -p /opt/jfrog/{jfrog,nginx,postgres}

docker-compose up -d --build

chow -R 777 /opt/jfrog

docker-compose restart
