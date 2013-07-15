# The DUN stack: Docker, Ubuntu, Node.js

# VERSION           0.0.2
# MAINTAINER        cmfatih
# DOCKER-VERSION    0.4.8

# Install docker (http://docker.io)
#
#   Ubuntu:
#     sudo apt-get update
#     sudo apt-get install software-properties-common
#     sudo add-apt-repository ppa:dotcloud/lxc-docker
#     sudo apt-get update
#     sudo apt-get install lxc-docker
#
#   Mac, Linux, Windows, Amazon EC2, Rackspace Cloud. etc.:
#     http://docs.docker.io/en/latest/installation/
#
#
# Test docker
#
#   docker run base /bin/echo dockerized!
#   docker images
#
#
# Build dun
#
#   docker build -t dun .
#
#
# Test dun
#
#   docker run dun /usr/bin/node -p 'console.log("dockerized!");process.exit(0);'
#

FROM ubuntu:12.10

# Init node.js
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y software-properties-common python g++ make
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs