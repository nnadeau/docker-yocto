# Start from an Ubuntu 16.04 image
FROM ubuntu:16.04

MAINTAINER Nicolas Bigaouette <nbigaouette@rogue-research.com>

# Update apt-get's database
RUN apt-get --quiet --yes update

# Install Yocto's dependencies
RUN apt-get --quiet --yes install \
    gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev xterm

# Install our dependencies
RUN apt-get --quiet --yes install \
    sudo cpio cvs subversion tree libxt-dev bmap-tools openssh-client gawk

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Create a 'docker' user, and switch to it
RUN /usr/sbin/useradd --no-create-home --shell /bin/bash docker

# Switch to our docker user
USER docker
