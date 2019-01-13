FROM ubuntu:bionic

# basic packages
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y \
    bison \
    build-essential \
    clang-format \
    cmake \
    cscope \
    docker.io \
    exuberant-ctags \
    flex \
    git \
    htop \
    libboost-all-dev \
    net-tools \
    openssh-server \
    tmux \
    vim \
    wget \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

CMD ["/bin/bash"]

