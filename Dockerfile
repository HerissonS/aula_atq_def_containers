FROM ubuntu:22.04
RUN apt update & \
    apt install mysql -y
ENV MYSQL_USER: root
ENV MYSQL_PASSWORD: root

CMD /usr/bin/mysql