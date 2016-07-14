FROM ubuntu:latest
EXPOSE 8090
RUN mkdir /NodeLink
RUN apt-get update && apt-get install -y wget mono-vbnc
RUN chmod -v +x /tmp/startup.sh
ENTRYPOINT /tmp/startup.sh