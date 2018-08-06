FROM mono:latest

MAINTAINER Weissteiner Hannes <h.weissteiner@gmail.com>

RUN apt-get update && apt-get -y install git && git clone https://github.com/godarklight/DarkMultiPlayer.git

WORKDIR DarkMultiPlayer

COPY libs/* ./

RUN xbuild

RUN mkdir /opt/DMP && mkdir /opt/DMP/Config && mkdir /opt/DMP/logs && mkdir /opt/DMP/Plugins && mkdir /opt/DMP/Universe && cp Server/bin/Debug/* /opt/DMP

WORKDIR /opt/DMP

CMD mono DMPServer.exe

