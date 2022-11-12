FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update; \
  apt-get install -y wget; \
  apt-get install -y git; \
  apt-get install -y ansible openjdk-19-jdk; \
  groupadd -g 1000 jenkins; \
  useradd -m -s /bin/bash -u 1000 -g 1000 jenkins

VOLUME ["/var/jenkins_home"]

WORKDIR "/home/jenkins"
USER jenkins
RUN \
  wget https://get.jenkins.io/war-stable/2.361.3/jenkins.war; \
  git clone http://gitbucket.mynet/git/private/ssh.git; \
  mv ssh .ssh; \
  chmod 600 .ssh/id_rsa
