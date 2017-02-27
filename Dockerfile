FROM ubuntu:14.04.3
MAINTAINER malaohu <tua@live.cn>

RUN apt-get update && \
apt-get clean  && \
apt-get install -y aria2 screen && \
apt-get clean

RUN wget --no-check-certificate -O http://webdir.cc/aria2.conf .aria2/aria2.conf

wget http://webdir.cc/aria2.conf /root/.aria2/aria2.conf


wget http://webdir.cc/dht.dat /root/.aria2/dht.dat


