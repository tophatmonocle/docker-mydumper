FROM ubuntu:xenial

ENV MYDUMPER_VERSION 0.9.5

RUN apt-get update && apt-get install -y \
    wget \
    build-essential \
    cmake \
    libglib2.0-dev \
    zlib1g-dev \
    libpcre3-dev \
    python-sphinx

RUN wget https://github.com/maxbube/mydumper/releases/download/v0.9.5/mydumper_0.9.5-2.xenial_amd64.deb && \
    dpkg -i mydumper_0.9.5-2.xenial_amd64.deb