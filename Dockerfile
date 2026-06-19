FROM debian:12-slim

RUN apt-get update && \
    apt-get install -y default-mysql-server && \
    rm -rf /var/lib/apt/lists/*

CMD ["mysqld"]