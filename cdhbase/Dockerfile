FROM ubuntu:precise
MAINTAINER Victor Iacoban <viacoban@adobe.com>

RUN apt-get update
RUN apt-get -y install curl wget

COPY install_jdk.sh install_jdk.sh
RUN ["/bin/bash", "install_jdk.sh"]

COPY install_cdh.sh install_cdh.sh
RUN ["/bin/bash", "install_cdh.sh"]
