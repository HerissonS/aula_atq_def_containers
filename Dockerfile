FROM alpine:3.20
RUN apk add --no-cache mariadb mariadb-client
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql
USER mysql
EXPOSE 3306
CMD ["mysqld", "--user=mysql", "--datadir=/var/lib/mysql"]