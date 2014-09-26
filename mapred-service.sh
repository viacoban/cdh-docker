#!/bin/bash

action=${1:-"action required"}

for s in /etc/init.d/hadoop-0.20-mapreduce-*
do
  echo "starting $s"
  service $(basename $s) ${action}
done

exit 0
