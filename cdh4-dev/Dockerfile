FROM cdh4-base
MAINTAINER Victor Iacoban <viacoban@adobe.com>

RUN apt-get update

RUN apt-get -y install zookeeper-server
RUN service zookeeper-server stop
RUN service zookeeper-server init --myid=1
RUN service zookeeper-server start

RUN mkdir -p /hdfs
RUN chmod -R 1777 /hdfs

COPY hadoop /etc/
COPY hbase /etc/
COPY cdh-scripts /usr/local/

RUN apt-get -y install hadoop-0.20-mapreduce-jobtracker
RUN apt-get -y install hadoop-hdfs-namenode

RUN apt-get -y install hadoop-0.20-mapreduce-tasktracker
RUN apt-get -y install hadoop-hdfs-datanode

RUN ["/bin/bash", "/usr/local/cdh-scripts/cdh-hdfs-service", "start"]
RUN ["/bin/bash", "/usr/local/cdh-scripts/cdh-mapred-service", "start"]

EXPOSE 2181
EXPOSE 2888
EXPOSE 3888

EXPOSE 8020
EXPOSE 8021

EXPOSE 50010
EXPOSE 50020
EXPOSE 50030
EXPOSE 50060
EXPOSE 50070
EXPOSE 50075

EXPOSE 60000
EXPOSE 60010
EXPOSE 60020
EXPOSE 60030



