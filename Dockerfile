FROM postgres:alpine

ADD make_db.sh /docker-entrypoint-initdb.d/

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["postgres"]
