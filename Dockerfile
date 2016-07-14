FROM ubuntu:latest
MAINTAINER jcreynolds

# Install Dependencies
##################
RUN mkdir /NodeLink
RUN apt-get update && apt-get install -y wget mono-vbnc

# Docker Settings
#################
EXPOSE 8090
VOLUME /config

#Adding Custom files
##################
ADD startup.sh
CMD ["/bin/bash", "startup.sh"]