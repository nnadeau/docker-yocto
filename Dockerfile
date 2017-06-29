FROM ubuntu:16.04

RUN apt update -y && apt install -y \
    gawk \
    wget \
    git-core \
    diffstat \
    unzip \
    texinfo \
    gcc-multilib \
    build-essential \
    chrpath \
    socat \
    libsdl1.2-dev \
    xterm \
    sudo \
    cpio \
    cvs \
    subversion \
    tree \
    libxt-dev \
    bmap-tools \
    openssh-client
