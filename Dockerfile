FROM ubuntu:latest
MAINTAINER Luca Mattivi <luca@smartdomotik.com>

ADD https://s3.amazonaws.com/aws-cli/awscli-bundle.zip /

RUN \
	apt-get update && \
	apt-get install -y python unzip git curl && \
	unzip awscli-bundle.zip && \
	/awscli-bundle/install -i /usr/local/aws -b /usr/bin/aws

WORKDIR /home/aws/aws/env/bin/
