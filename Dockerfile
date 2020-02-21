FROM v2fly/v2fly-core
LABEL maintainer="cocakuma"

USER root

RUN apk add --no-cache privoxy

COPY ./docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh && \
    chmod +x usr/local/bin/docker-entrypoint.sh

CMD ["docker-entrypoint.sh"]