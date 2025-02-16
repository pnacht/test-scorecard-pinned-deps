# Dockerfile with notpinned dependencies

# # Not pinned container image
FROM ubuntu:18.04@sha256:14f1045816502e16fcbfc0b2a76747e9f5e40bc3899f8cfe20745abaafeaeab3    

# Pinned container image
# FROM ubuntu@sha256:27cb6e6ccef575a4698b66f5de06c7ecd61589132d5a91d098f7f3f9285415a9

# Environment
ENV DEBIAN_FRONTEND noninteractive
SHELL ["/bin/bash", "-c"]   # Use Bash as shell

# Not pinned download then run package
# Install and run anaconda miniconda3 with wget
# RUN \
#     # Python
#     wget -nv -nc -O Miniconda3.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
#     bash Miniconda3.sh -b -p /opt/python

# pip command
RUN \
    apt-get update && \
    apt-get install python3-pip && \
    pip3 install pyyaml --require-hashes # Not pinned pip install
RUN \
    apt-get install python3-pip && \
    pip3 install pyyaml@6.0  --require-hashes # Not pinned pip install
RUN \
    apt-get install python3-pip && \
    pip3 install pyyaml@8cdff2c80573b8be8e8ad28929264a913a63aa33 --require-hashes # Pinned pip install
RUN \
    apt-get install python3-pip@368c7b4c557e673b05b0f8cffc967d3e333eee19 && \
    pip3 install pyyaml@8cdff2c80573b8be8e8ad28929264a913a63aa33 # Pinned pip install
RUN \
    apt-get install python3-pip && \
    pip3 install pyyaml --require-hashes # Pinned pip install
RUN \
    apt-get install python3-pip && \
    pip3 install pandas numpy # Double not pinned pip install

# go command
# Install go
RUN \
    apt-get update && \
    apt-get install golang-go && \
    go install github.com/appscode/jsonpatch # Not pinned go install
RUN \
    apt-get install golang-go && \
    go install github.com/appscode/jsonpatch@v4.12.0 # Not pinned go install
RUN \
    apt-get install golang-go && \
    go install -insecure github.com/appscode/jsonpatch@v4.12.0 # Not pinned go install
RUN \
    apt-get install golang-go && \
    go install github.com/appscode/jsonpatch@50fdc0b4c9ab36933e6a0c9288fef3ac5df2b907 # Pinned go install
RUN \
    apt-get install golang-go && \
    go get github.com/json-iterator/go@v1.1.12 github.com/evanphx/json-patch@v0.5.2 # Double not pinned go install
RUN \
    apt-get install golang-go && \
    go get github.com/appscode/jsonpatch # Not pinned go get
RUN \
    apt-get install golang-go && \
    go get github.com/appscode/jsonpatch@v4.12.0 # Not pinned go get
RUN \
    apt-get install golang-go && \
    go get github.com/appscode/jsonpatch@50fdc0b4c9ab36933e6a0c9288fef3ac5df2b907 # Pinned go get
RUN \
    apt-get install golang-go && \
    go get github.com/json-iterator/go@v1.1.12 github.com/evanphx/json-patch@v0.5.2 # Double not pinned go get

# choco command
RUN \
    apt-get update && \
    apt-get install choco && \
    choco install tidyjson.portable # Not pinned choco install
RUN \
    apt-get install choco && \
    choco install tidyjson.portable@1.0.3 # Not pinned choco install
RUN \
    apt-get install choco && \
    choco install tidyjson.portable@27dcb6dd74de7955762d9bd498d6c3168960fc93 # Pinned choco install
RUN \
    apt-get install choco && \
    choco install tidyjson.portable@27dcb6dd74de7955762d9bd498d6c3168960fc93 --requirechecksum # Pinned choco install

