FROM	alpine:3.12

RUN		apk update
RUN		apk add --no-cache mysql mysql-client supervisor
# --no-cache is used to lower container size



COPY	create_db	./
COPY	my.cnf		./etc/
COPY	setup.sh	./

RUN		chmod +x	setup.sh
RUN		mkdir		/run/mysqld
# RUN		chmod +x	/run/mysqld


EXPOSE	3306
CMD		./setup.sh


# Links
# - https://wiki.alpinelinux.org/wiki/Mysql

# Notes
# - MariaDB is a fork of MySQL maintained by community and original developers.