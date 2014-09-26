#!/bin/bash

action=${1:-"action required"}

for s in /etc/init.d/hbase-*
do
  echo "starting $s"
  service $(basename $s) start
done

exit 0
