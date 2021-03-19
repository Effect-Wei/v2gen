#!/bin/sh

service nginx restart
service fcgiwrap restart

apt install wget -y

cd /var/cgi-bin
wget $DOWNLOADLINK
