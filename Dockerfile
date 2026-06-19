FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y mysql-server
ENV MYSQL_USER: root
ENV MYSQL_PASSWORD: root

CMD /usr/bin/mysql