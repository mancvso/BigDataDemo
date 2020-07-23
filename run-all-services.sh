#!/bin/bash

docker-compose -f docker/docker-compose-distributed-local.yml up -d namenode datanode resourcemanager nodemanager1 hive-server hive-metastore hive-metastore-postgresql historyserver zoo spark-master spark-worker-1 kafka kafka_manager cassandra postgres jupyter huedatabase
echo "Giving time to Mysql..."
sleep 60
docker-compose -f docker/docker-compose-distributed-local.yml up -d hue