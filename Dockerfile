FROM ubuntu:latest
MAINTAINER jcreynolds

# Docker Settings
##################
EXPOSE 8090
VOLUME /config

# Install Dependencies
##################
RUN mkdir /NodeLink
RUN chmod a+rwX /NodeLink
RUN apt-get update && apt-get install -y wget mono-vbnc

# Adding Custom files
##################
ADD startup.sh /tmp/startup.sh
RUN chmod  -v +x /tmp/startup.sh
CMD ["/bin/bash", "/tmp/startup.sh"] 