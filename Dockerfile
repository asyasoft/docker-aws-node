FROM amazonlinux:latest
ENV HOME .
RUN curl -sL https://rpm.nodesource.com/setup_8.x | bash -
RUN yum update -y
RUN yum install -y aws-cli nodejs zip
