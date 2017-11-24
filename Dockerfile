FROM debian:jessie
MAINTAINER allan.simon@supinfo.com
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y rsyslog curl && \
    apt-get install -y \
        python \
        python3 \
        python3-pip \
        python-pip \
        aptitude \
        git-core \
        build-essential
        libyaml-dev \
        python-dev \
        python3-dev \
        libffi-dev \
        libssl-dev && \
    pip install --upgrade setuptools ansible && \
    pip install tox
