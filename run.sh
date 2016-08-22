#!/bin/bash

/usr/local/bin/docker-gen -notify-sighup $NGINX_CONTAINER_ID -watch -only-exposed -wait 5s:30s /etc/docker-gen/templates/nginx.tmpl /etc/nginx/conf.d/default.conf
