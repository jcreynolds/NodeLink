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
COPY startup.sh /usr/local/myscripts/mystart.sh
CMD ["/bin/bash", "/usr/local/myscripts/mystart.sh"]