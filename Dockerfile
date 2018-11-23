FROM amazonlinux:latest
ENV HOME /root
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum update -y
RUN yum install -y aws-cli nodejs zip
