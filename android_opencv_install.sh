#!/bin/bash
### This script will build and install OpenCV 3.2.0
### for python 3

# Update
apt-get update && apt-get upgrade -y

# Install dependencies
apt-get -y install libopencv-dev curl build-essential cmake libgtk2.0-dev pkg-config python3-dev python3-numpy python-dev python-numpy libdc1394-22-dev libjpeg-dev libpng12-dev libtiff5-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utilsi

# Getting latest stable version:
# Right now 3.2.0
cd /tmp
curl -L https://github.com/opencv/opencv/archive/3.2.0.tar.gz | tar xz

# Extract and create build dir
mkdir opencv-build && cd opencv-build

# Configurate make
# I get some errors with 1394 and ffmpeg (needs additional libraries)
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_1394=OFF -D WITH_FFMPEG=OFF ../opencv-3.2.0

# Make and install
# This may take a while
# (-j set number of processors)
make -j $(nproc)
make install

if [ $? -eq 0 ]; then
    echo "****************"
    echo "OPENCV INSTALLED"
fi
