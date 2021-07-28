FROM ubuntu:latest
MAINTAINER brenoafb

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install git curl unzip build-essential openjdk-8-jre-headless python3 python3-pip
RUN pip install numpy pandas tabulate matplotlib scipy

RUN curl https://depend.cs.uni-saarland.de/tools/param/downloads/param-2-3-64 --output /opt/param-2-3-64
RUN chmod +x /opt/param-2-3-64

RUN git clone https://github.com/DSPL4C2/reana-evaluation
RUN git clone https://github.com/DSPL4C2/reana-data
