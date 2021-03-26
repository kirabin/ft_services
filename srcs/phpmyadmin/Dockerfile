FROM	alpine:3.12

RUN		apk update
RUN		apk add nginx openssl wget mysql mysql-client supervisor vim
RUN		apk add php7-common php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php7-fpm

RUN		mkdir -p /run/nginx

COPY	supervisord.conf	/etc/
COPY	nginx.conf			/etc/nginx/

RUN		wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-english.tar.gz
#		I learned that -z flag is for unarchiving tarballs archived with gzip command
RUN		tar -xzf phpMyAdmin-5.0.4-english.tar.gz && rm -rf phpMyAdmin-5.0.4-english.tar.gz
RUN		mv phpMyAdmin-5.0.4-english /var/www/phpmyadmin

RUN		chmod 777			/var/www/phpmyadmin
COPY	config.inc.php		/var/www/phpmyadmin/
RUN		mkdir -p 			/var/www/phpmyadmin/tmp
RUN		chmod 777			/var/www/phpmyadmin/tmp

EXPOSE	5000
CMD		["/usr/bin/supervisord"]


# Links
# - https://wiki.alpinelinux.org/wiki/PhpMyAdmin