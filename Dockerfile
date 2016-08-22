FROM jwilder/docker-gen

ADD nginx.tmpl /etc/docker-gen/templates/nginx.tmpl
ADD run.sh /usr/local/bin/run.sh

CMD ["-notify-sighup","nginx","-watch","-only-exposed","-wait","5s:30s","/etc/docker-gen/templates/nginx.tmpl","/etc/nginx/conf.d/default.conf"]


ENTRYPOINT ["/usr/local/bin/run.sh"]
