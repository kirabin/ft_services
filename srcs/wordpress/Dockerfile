FROM alpine:3.12

RUN		apk update
RUN		apk add nginx openssl wget mysql mysql-client supervisor vim
RUN		apk add php7-common php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php7-fpm

RUN		mkdir -p /run/nginx

COPY	supervisord.conf	/etc/
COPY	nginx.conf			/etc/nginx/

RUN		wget https://wordpress.org/latest.tar.gz
RUN		tar -xzvf latest.tar.gz && rm -rf latest.tar.gz
RUN		mv wordpress		/var/www/wordpress
COPY	wp-config.php		/var/www/wordpress
RUN		chmod 777			/var/www/wordpress

EXPOSE	5050
CMD		["/usr/bin/supervisord"]


# Links
# - https://wiki.alpinelinux.org/wiki/WordPress