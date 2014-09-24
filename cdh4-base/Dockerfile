FROM ubuntu:precise
MAINTAINER Victor Iacoban <viacoban@adobe.com>

RUN apt-get update
RUN apt-get -y install curl wget

COPY install_jdk.sh install_jdk.sh
RUN ["/bin/bash", "install_jdk.sh"]

ENV JAVA_HOME "/usr/local/default"

COPY cloudera4.list /etc/apt/sources.list.d/
RUN curl -s http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh/archive.key | apt-key add -
