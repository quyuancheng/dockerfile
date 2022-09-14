FROM centos:latest 
MAINTAINER wkcto
RUN yum install epel-release -y &&\
	 yum install redis -y && yum install net-tools -y 
EXPOSE 6379
// –protected-mode no是关闭redis的保护模式
CMD /usr/bin/redis-server –protected-mode no
