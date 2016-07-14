FROM ubuntu:latest
MAINTAINER jcreynolds

# Docker Settings
##################
EXPOSE 8090
VOLUME /config

# Install Dependencies
##################
RUN mkdir /NodeLink
RUN chmod -v +x /NodeLink
RUN apt-get update && apt-get install -y wget mono-vbnc

# Adding Custom files
##################
COPY startup.sh /tmp/mystart.sh
RUN chmod  -v +x /tmp/mystart.sh
CMD ["/bin/bash", "/tmp/mystart.sh"] 