FROM	alpine:3.12

RUN		apk update && apk upgrade
RUN		apk add mysql mariadb mariadb-common mariadb-client mysql-client openrc supervisor
RUN		apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted

COPY	telegraf.conf			/etc/telegraf/
COPY	my.cnf					/etc/
COPY	supervisord.conf		/etc/
COPY	wordpress.sql			/
COPY	mysql_setup.sh			/

RUN		mkdir			/run/mysqld
RUN		chmod +x		/run/mysqld
RUN		chmod +x		/mysql_setup.sh

EXPOSE	3306
VOLUME	["/var/lib/mysql"]
CMD		./mysql_setup.sh


# Links
# - https://wiki.alpinelinux.org/wiki/Mysql

# Notes
# - MariaDB is a fork of MySQL maintained by community and original developers.