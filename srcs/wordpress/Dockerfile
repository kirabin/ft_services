FROM alpine:3.12


# php-fpm: "PHP fastCGI process manager"
# php-mysql: allows to write mysql queries in php script
RUN		apk update
RUN		apk add nginx openssl php-fpm php-mysqli wget mysql mysql-client supervisor

COPY	wp-config.php	./www/
COPY	nginx.conf		./etc/nginx/nginx.conf
COPY	setup.sh 		./

# change current working directory
# WORKDIR /var/www/
# download latest version of wordpress
RUN wget https://wordpress.org/latest.tar.gz
# unarchive wordpress archive
RUN tar -xzvf latest.tar.gz && rm -rf latest.tar.gz
RUN mv wordpress /www/


RUN		chmod +x	setup.sh
CMD		./setup.sh


# Links
# - https://wiki.alpinelinux.org/wiki/WordPress