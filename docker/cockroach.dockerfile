FROM cockroachdb/cockroach:v24.3.1

COPY docker/entrypoint.sh /binnbe-entrypoint.sh

ENTRYPOINT [ "/binnbe-entrypoint.sh", "/cockroach/cockroach.sh" ]