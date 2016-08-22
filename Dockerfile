FROM jwilder/docker-gen

ADD nginx.tmpl /etc/docker-gen/templates/nginx.tmpl
ADD run.sh /usr/local/bin/run.sh
RUN chmod ugo+x /usr/local/bin/run.sh


CMD ["/usr/local/bin/run.sh"]
