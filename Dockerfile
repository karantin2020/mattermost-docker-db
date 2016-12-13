FROM postgres:alpine

RUN apk update && apk upgrade \
    && apk add --no-cache ca-certificates \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD make_db.sh /docker-entrypoint-initdb.d/

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["postgres"]
