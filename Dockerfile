FROM ubuntu:latest

EXPOSE 8090

RUN mkdir /NodeLink

RUN apt-get update && apt-get install -y wget mono-vbnc

COPY startup.sh /usr/local/myscripts/mystart.sh
CMD ["/bin/bash", "/usr/local/myscripts/mystart.sh"]