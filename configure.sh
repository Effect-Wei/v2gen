#!/bin/sh

/bin/bash -c "envsubst < /etc/nginx/conf.d/v2gen.template > /etc/nginx/conf.d/v2gen.conf"
service nginx restart
service fcgiwrap restart
