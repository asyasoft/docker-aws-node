FROM amazonlinux:latest
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum update -y
RUN yum install -y sudo shadow-utils aws-cli nodejs zip
RUN adduser -c "Default User" -ms /bin/bash -g root -d /home/user --disabled-password user
USER user
WORKDIR /home/user
