FROM jwilder/docker-gen

ADD nginx.tmpl /etc/docker-gen/templates/nginx.tmpl


CMD ["-notify-sighup","nginx","-watch","-only-exposed","-wait","5s:30s","/etc/docker-gen/templates/nginx.tmpl","/etc/nginx/conf.d/default.conf"]
