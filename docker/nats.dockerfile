FROM nats:2.10.25-alpine

RUN apk add --no-cache bash

COPY docker/entrypoint.sh /binnbe-entrypoint.sh

ENTRYPOINT [ "/binnbe-entrypoint.sh", "docker-entrypoint.sh" ]
CMD [ "nats-server", "--config", "/etc/nats/nats-server.conf" ]