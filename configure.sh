#!/bin/bash

echo listen $PORT default_server\; > /etc/nginx/conf.d/listen
service nginx restart
service fcgiwrap restart
