FROM centos:latest
MAINTAINER Dapeng Jiao <harper1011@gmail.com>

WORKDIR /helvar_devops

ADD . /helvar_devops
RUN yum -y install epel-release && yum -y update && yum install -y python python-pip
RUN pip install --upgrade pip && pip install bottle

EXPOSE 3000
CMD python /helvar_devops/src/simple_web/helloworld.py