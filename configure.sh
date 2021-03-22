#!/bin/sh

/bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/v2gen.template > /etc/nginx/conf.d/v2gen.conf" && nginx -g 'daemon off;'
#service nginx restart
service fcgiwrap restart
