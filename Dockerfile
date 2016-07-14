FROM ubuntu:latest
MAINTAINER jcreynolds

# Install Dependencies
##################
RUN mkdir /NodeLink
RUN apt-get update && apt-get install -y wget mono-vbnc

#Adding Custom files
##################
ADD startup.sh
RUN chmod -v +x startup.sh

# Docker Settings
#################
EXPOSE 8090
VOLUME /config