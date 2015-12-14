FROM debian:jessie
MAINTAINER William Durand <will+git@drnd.me> 

RUN apt-get update && apt-get install --no-install-recommends --yes texlive-full

WORKDIR /data
