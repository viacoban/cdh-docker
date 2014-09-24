#!/bin/bash

repo_file="/etc/apt/sources.list.d/cloudera.list"

touch ${repo_file}
echo "deb [arch=amd64] http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh precise-cdh4.5.0 contrib" >> ${repo_file}
echo "deb-src http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh precise-cdh4.5.0 contrib" >> ${repo_file}

curl -s http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh/archive.key | apt-key add -

