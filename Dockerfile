# Dockerfile for building jenkins environment, include Jenkins, Maven, Git

FROM jenkins

MAINTAINER Zhang Peihao (zhangpeihao@gmail.com)

# Maven
RUN wget -O /tmp/apache-maven-3.1.1-bin.tar.gz http://ftp.jaist.ac.jp/pub/apache/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.tar.gz
RUN cd /usr/local && tar xzf /tmp/apache-maven-3.1.1-bin.tar.gz
RUN ln -s /usr/local/apache-maven-3.1.1 /usr/local/maven
RUN rm /tmp/apache-maven-3.1.1-bin.tar.gz

ENV MAVEN_HOME /usr/local/maven

