#!/bin/bash

script_home=$(dirname $0)

${script_home}/hdfs-service.sh start
#/hdfs/bin/mapred-service.sh start
#/hbase-service.sh start
