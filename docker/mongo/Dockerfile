FROM centos 

MAINTAINER Wei Zhao <wzhao@palmtao.com>

RUN useradd mongod
RUN echo -e "[mongodb]\nname=MongoDB Repository\nbaseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/3.0/`uname -m`/\ngpgcheck=0\nenabled=1" > /etc/yum.repos.d/mongodb.repo
RUN yum install mongodb-org -y
RUN yum clean all

USER mongod

EXPOSE 27017
