FROM ubuntu:focal
RUN apt-get update && apt-get install -y git sudo python python3-click
RUN cd opt; git clone https://github.com/sathibault/oss-cad-suite-build.git
WORKDIR /opt/oss-cad-suite-build
RUN git checkout reify
RUN chmod +x build-packages.sh; ./build-packages.sh
