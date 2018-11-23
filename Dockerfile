FROM amazonlinux:latest

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum update -y
RUN yum install -y aws-cli nodejs zip

RUN useradd -c 'Default User' -m -d /home/user -s /bin/bash user
USER user
ENV HOME /home/user
