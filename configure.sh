#!/bin/sh

rm -rf /etc/nginx/sites-enabled
/bin/bash -c "echo listen $PORT default_server\; > /etc/nginx/conf.d/listen"
service nginx restart
service fcgiwrap restart
