FROM amazonlinux:latest
WORKDIR .

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum update -y
RUN yum install -y sudo shadow-utils aws-cli nodejs zip

RUN adduser -m user
USER user
ENV HOME /home/user
ENV NPM_CONFIG_PREFIX=~/.npm
