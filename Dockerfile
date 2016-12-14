FROM postgres:9.5-alpine

ADD make_db.sh /docker-entrypoint-initdb.d/

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["postgres"]
