
FROM ubuntu:16.04

MAINTAINER Corprew Reed <github-public-incoming@corprew.org>

#
# this uses the ubuntu 16.04 version of ffmpeg, which is older than the ones in my other dockerfiles.
# this shouldn't cause you any problems but definitely *DO NOT* use this for generating audiofiles / movies for redistribution.
#
# it is somewhat less capable than the ones in the ffmpeg containers.
#

RUN apt-get update
RUN apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev unzip

RUN apt-get install -y wget

RUN cd \
    && wget https://github.com/opencv/opencv/archive/3.1.0.zip \
    && unzip 3.1.0.zip \				       
    && cd opencv-3.1.0 \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make -j3 \
    && make install \
    && cd \
    && rm 3.1.0.zip
			       
CMD python


