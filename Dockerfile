FROM ubuntu:latest
MAINTAINER jcreynolds

ENV INSTALL="http://automationshack.com/Files/NodeLink.exe"

# Install Dependencies
#################
RUN wget -nd -nH -O /tmp/NodeLink "$INSTALL"
RUN apt-get update && apt-get install -y wget mono-vbnc

# Docker Settings
#################
EXPOSE 8090
VOLUME /config

mono /tmp/NodeLink/NodeLink.exe &
/bin/bash