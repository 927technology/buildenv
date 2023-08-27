#author: chris murray
#version: 0.1.0
#date 20210802

FROM oraclelinux:9
LABEL maintainer="cmurray@927.technology"

#update os
RUN yum check-update
RUN yum update -y

#install development packages
yum groupinstall -y "Development Tools"

