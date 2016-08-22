FROM jwilder/docker-gen

RUN apk add --update bash && rm -rf /var/cache/apk/*
ADD nginx.tmpl /etc/docker-gen/templates/nginx.tmpl
ADD run.sh /usr/local/bin/run.sh
RUN chmod ugo+x /usr/local/bin/run.sh


CMD ["/usr/local/bin/run.sh"]
