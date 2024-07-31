FROM redis:7.4.0-alpine

COPY docker/entrypoint.sh /binnbe-entrypoint.sh

ENTRYPOINT [ "/binnbe-entrypoint.sh", "docker-entrypoint.sh" ]
CMD [ "redis-server" ]