FROM ubuntu:focal
RUN apt-get update && apt-get install -y git sudo python pip
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 10
RUN pip install click
RUN cd opt; git clone https://github.com/sathibault/oss-cad-suite-build.git
WORKDIR /opt/oss-cad-suite-build
RUN git checkout reify
RUN chmod +x build-packages.sh; ./build-packages.sh
