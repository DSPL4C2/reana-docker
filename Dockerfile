FROM ubuntu:latest
MAINTAINER brenoafb

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install git curl unzip build-essential openjdk-8-jre-headless

RUN curl https://depend.cs.uni-saarland.de/tools/param/downloads/param-2-3-64 --output /opt/param-2-3-64
RUN chmod +x /opt/param-2-3-64

RUN git clone https://github.com/SPLMC/reana-spl
