#!/bin/bash

mkdir -p /usr/java

pushd /usr/java

if [ ! -f jdk-7u67-linux-x64.tar.gz ]; then
  wget --no-verbose --no-cookies --no-check-certificate \
    --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jdk-7u67-linux-x64.tar.gz
fi

if [ ! -d jdk1.7.0_67 ]; then
  tar xzvf jdk-7u67-linux-x64.tar.gz
fi

ln -sfn /usr/java/jdk.1.7.0_67 /usr/java/default

popd