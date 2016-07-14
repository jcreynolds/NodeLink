FROM ubuntu:latest
MAINTAINER jcreynolds

# Docker Settings
##################
EXPOSE 8090
VOLUME /config

# Install Dependencies
##################
RUN mkdir /NodeLink
RUN apt-get update && apt-get install -y wget mono-vbnc

# Adding Custom files
##################
COPY startup.sh /tmp/
RUN chmod -x /tmp/startup.sh && sleep 1 && /tmp/startup.sh && rm /tmp/startup.sh