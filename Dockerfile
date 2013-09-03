# The DUN stack: Docker, Ubuntu, Node.js
# Copyright (c) 2013 Fatih Cetinkaya (http://github.com/cmfatih/dun)
# For the full copyright and license information, please view the LICENSE.txt file.

# VERSION           0.0.5
# MAINTAINER        cmfatih

# Install docker (http://docker.io)
#
#   Ubuntu:
#     sudo sh -c "curl http://get.docker.io/gpg | apt-key add -"
#     sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
#     sudo apt-get update
#     sudo apt-get install lxc-docker
#
#   Linux, Mac, Windows, Amazon EC2, Rackspace Cloud. etc.:
#     http://www.docker.io/gettingstarted/
#
#
# Test docker
#
#   docker run ubuntu /bin/echo dockerized!
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

FROM ubuntu:12.04

# Update package repository
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Required packages
RUN apt-get install -y software-properties-common python python-software-properties g++ make

# Init node.js
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

# Removed unnecessary packages
RUN apt-get purge -y software-properties-common python python-software-properties g++ make
RUN apt-get autoremove -y

# Clear package repository cache
RUN apt-get clean all
