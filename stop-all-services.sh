#!/bin/bash

docker-compose -f docker/docker-compose-distributed-local.yml down
docker volume prune