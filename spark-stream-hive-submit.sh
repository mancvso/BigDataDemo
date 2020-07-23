#!/bin/bash

./gradlew clean shadowJar

docker cp "$PWD/cart-stream-processing/build/libs/cart-stream-processing-1.0-SNAPSHOT-all.jar" spark-master:data

docker exec -ti spark-master sh -c  "cd data && /spark/bin/spark-submit --class com.bd.streaming.hive.CartStreamingHiveApp --master spark://spark-master:7077 cart-stream-processing-1.0-SNAPSHOT-all.jar"
