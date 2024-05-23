FROM minio/minio:latest

COPY docker/entrypoint.sh /binnbe-entrypoint.sh

ENTRYPOINT [ "/binnbe-entrypoint.sh", "/usr/bin/docker-entrypoint.sh" ]
CMD [ "minio" ]