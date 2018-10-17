FROM ubuntu:18.04

MAINTAINER KENICHI NAITO

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y

RUN apt-get install -y wget build-essential cmake libreadline-dev libssl-dev ncurses-dev libffi-dev zlib1g-dev libpcre3-dev libpng-dev libtiff5-dev libjpeg-dev python-dev libmysqlclient-dev libmemcached-dev libtokyocabinet-dev libsqlite3-dev libdbi0-dev libpq-dev libgmp3-dev libogg-dev libvorbis-dev libtaglib-cil-dev libtag1-dev libtheora-dev libsamplerate0-dev libloudmouth1-dev libsndfile1-dev libflac-dev libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev libxmu-dev libxi-dev libxml2-dev libyajl-dev uuid-dev liblzo2-dev zlib1g-dev libevent-dev

ENV IO_LANG IoLanguage-2013.11.04-Linux-x64.deb

COPY files/${IO_LANG} /usr/local/src/${IO_LANG}

WORKDIR /usr/local/src

RUN dpkg -i ${IO_LANG}

RUN ldconfig

RUN echo export PATH='/root/bin:$PATH' >> ~/.bashrc
RUN echo export LANG=C.UTF-8 >> ~/.bashrc

WORKDIR /

