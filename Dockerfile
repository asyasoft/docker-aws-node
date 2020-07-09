FROM amazonlinux:latest
ENV HOME .
RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash -
RUN yum update -y
RUN yum install -y git nano aws-cli nodejs zip
RUN amazon-linux-extras install -y postgresql10 vim epel
RUN yum install -y postgresql-server postgresql-devel
