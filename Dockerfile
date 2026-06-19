FROM alpine:3.20
RUN apk add --no-cache mariadb mariadb-client
RUN mysql_install_db --datadir=/var/lib/mysql
USER mysql
EXPOSE 3306
CMD ["mysqld", "--datadir=/var/lib/mysql"]