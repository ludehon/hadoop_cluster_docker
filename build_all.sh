#!/bin/bash 

path=$(pwd)
current_date=$(date '+%Y-%m-%d')

cd $path/docker-hadoop-master
make build > $path/build_hadoop_$current_date.log

cd $path/docker-spark-master
build.sh > $path/build_spark_$current_date.log

docker network create hadoop_net