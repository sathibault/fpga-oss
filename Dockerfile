FROM ubuntu:focal
RUN apt-get update && apt-get install -y git sudo
RUN cd opt; git clone https://github.com/sathibault/oss-cad-suite-build.git
WORKDIR /opt/oss-cad-suite-build
RUN git checkout reify
RUN ./build-packages.sh
