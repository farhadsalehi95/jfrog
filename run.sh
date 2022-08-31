#!/bin/bash

mkdir -p /opt/jfrog/{jfrog,nginx,postgres}

docker-compose up -d --build
