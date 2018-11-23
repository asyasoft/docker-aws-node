FROM amazonlinux:latest
ENV HOME .
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install -y nodejs
