#!/bin/sh

service nginx restart
service fcgiwrap restart

cd /var/cgi-bin
wget $DOWNLOADLINK
