FROM mysql:8.0
ENV MYSQL_DATABASE=pipeline_segura
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD mysqladmin ping -h localhost || exit 1
USER mysql
EXPOSE 3306