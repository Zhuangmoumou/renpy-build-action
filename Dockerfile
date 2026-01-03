FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install --yes bzip2 wget libxext6 p7zip-full git libllvm6.0 mesa-utils unzip rsync

COPY build.sh /build.sh

ENTRYPOINT ["/build.sh"]
