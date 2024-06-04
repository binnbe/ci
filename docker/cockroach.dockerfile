FROM cockroachdb/cockroach:v24.1.0

COPY docker/entrypoint.sh /binnbe-entrypoint.sh

ENTRYPOINT [ "/binnbe-entrypoint.sh", "/cockroach/cockroach.sh" ]