#!/bin/bash 

path=$(pwd)
current_date=$(date '+%Y-%m-%d')

cd $path/docker-hadoop-master
docker-compose up > $path/hadoop_$current_date.log

cd $path/docker-spark-master
docker-compose up > $path/spark_$current_date.log