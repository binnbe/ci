FROM cockroachdb/cockroach:v24.2.5

COPY docker/entrypoint.sh /binnbe-entrypoint.sh

ENTRYPOINT [ "/binnbe-entrypoint.sh", "/cockroach/cockroach.sh" ]