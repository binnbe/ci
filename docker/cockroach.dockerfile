FROM cockroachdb/cockroach:v25.1.2

COPY docker/entrypoint.sh /binnbe-entrypoint.sh

ENTRYPOINT [ "/binnbe-entrypoint.sh", "/cockroach/cockroach.sh" ]