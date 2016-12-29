FROM ubuntu:14.04

MAINTAINER Yeonghun Chae <proin@proinlab.com>

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

COPY config.json /
COPY n /

RUN chmod 755 /n

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        g++ \
        curl \
        git \
        wget \
        vim  \
        libfreetype6-dev \
        libpng12-dev \
        libzmq3-dev \
        pkg-config \
        python \
        python-dev \
        rsync \
        software-properties-common \
        unzip \
        r-base

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py

RUN pip install \
        numpy \
        scipy \
        sklearn \
        tensorflow

RUN /n v7.2.1

RUN npm install -g lwot bower

RUN git clone https://github.com/proin/saturn /saturn && \
    cd /saturn && \
    mv /config.json ./controller/express/config.json && \
    bower install --allow-root && \
    lwot install && \
    lwot build

EXPOSE 3000

WORKDIR "/"

CMD cd /saturn && lwot express forever start --silent && lwot express forever log
