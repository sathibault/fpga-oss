FROM ubuntu:focal
RUN apt-get update && apt-get install -y git sudo
RUN cd opt; git clone https://github.com/sathibault/fpga-toolchain.git
WORKDIR /opt/fpga-toolchain
RUN ARCH=linux_x86_64 WORK_DIR=`pwd` ./scripts/install_dependencies.sh
RUN INSTALL_DEPS=0 ./build.sh linux_x86_64
RUN cd packages/build_linux_x86_64/fpga-toolchain; cp -rf bin include lib share /usr/local/
