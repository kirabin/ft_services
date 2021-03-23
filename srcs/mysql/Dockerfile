FROM	alpine:3.12

RUN		apk update
RUN		apk add mysql mysql-client openrc supervisor

COPY	create_wordpress_db.sql	/
COPY	my.cnf					/etc/
COPY	supervisord.conf		/etc/

RUN		mkdir			/run/mysqld
RUN		chmod +x		/run/mysqld
# RUN		chown -R mysql	/run/mysqld

EXPOSE 3306
VOLUME	["/var/lib/mysql"]
CMD		["/usr/bin/supervisord"]


# Links
# - https://wiki.alpinelinux.org/wiki/Mysql

# Notes
# - MariaDB is a fork of MySQL maintained by community and original developers.