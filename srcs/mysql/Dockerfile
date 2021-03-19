FROM	alpine:3.12

RUN		apk update
RUN		apk add --no-cache mysql mysql-client supervisor

COPY	create_wordpress_db.sql	/
COPY	my.cnf					/etc/
COPY	supervisord.conf		/etc/

RUN		mkdir		/run/mysqld
RUN		chmod +x	/run/mysqld

EXPOSE	3306
CMD		["/usr/bin/supervisord"]


# Links
# - https://wiki.alpinelinux.org/wiki/Mysql

# Notes
# - MariaDB is a fork of MySQL maintained by community and original developers.