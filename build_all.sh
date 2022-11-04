#!/bin/bash 

path=$(pwd)
current_date=$(date '+%Y-%m-%d')

cd $path/docker-hadoop-master
echo "Building Hadoop images"
make build > $path/build_hadoop_$current_date.log
echo "Hadoop ok"

cd $path/docker-spark-master
echo "Building Spark images"
./build.sh > $path/build_spark_$current_date.log
echo "Spark ok"

docker network create hadoop_net