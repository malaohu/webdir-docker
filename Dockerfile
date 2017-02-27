FROM ubuntu:14.04.3
MAINTAINER malaohu <tua@live.cn>

RUN apt-get update && \
apt-get clean  && \
apt-get install -y aria2 screen python php&& \
apt-get clean

#Start aria2
RUN screen -dmS aria2 aria2c --conf-path="aria2.conf"

#RUN wget --no-check-certificate https://raw.githubusercontent.com/maysrp/webdir/master/wadir.php  wadir.php

python -m SimpleHTTPServer 9999


