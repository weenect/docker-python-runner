FROM debian:jessie
MAINTAINER allan.simon@supinfo.com
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y rsyslog && \
    apt-get install -y \
        python \
        python-pip && \
    apt-get install -y \
        git-core \
        python-dev \
        libffi-dev \
        libssl-dev && \
    pip install tox
