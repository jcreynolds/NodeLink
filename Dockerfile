FROM ubuntu:latest
MAINTAINER jcreynolds

# additional files
##################

ADD startup.sh

# install app
#############

RUN mkdir /NodeLink

RUN apt-get update && apt-get install -y wget mono-vbnc

# docker settings
#################

# map /config to host defined config path (used to store configuration from app)
VOLUME /config

# expose port for http
EXPOSE 8090

# set permissions
#################

RUN chmod -v +x startup.sh