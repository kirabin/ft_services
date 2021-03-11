FROM alpine:latest


# php-fpm: "PHP fastCGI process manager"
# php-mysql: allows to write mysql queries in php script
RUN		apk update
RUN		apk add nginx openssl php-fpm php-mysql wget mysql mysql-client

COPY ./wp-config.php ./

# change current working directory
WORKDIR /var/www/
# download latest version of wordpress
RUN wget https://wordpress.org/latest.tar.gz
# unarchive wordpress archive
RUN tar -xzvf latest.tar.gz && rm latest.tar.gz
RUN mv wordpress /usr/share/webapps/
RUN ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress




# Links
# - https://wiki.alpinelinux.org/wiki/WordPress