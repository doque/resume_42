FROM ubuntu
MAINTAINER Dominique Busser

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# Poppler Utils
RUN apt-get install -y poppler-utils

# Install python dependencies

RUN pip install Jinja2