FROM	alpine:3.12

RUN		apk update
RUN		apk add --no-cache vsftpd supervisor openssl
RUN		apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted

COPY	telegraf.conf		/etc/telegraf/
COPY	supervisord.conf	/etc/
COPY	vsftpd.conf			/etc/

RUN		openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -subj '/CN=localhost' -nodes

RUN		mkdir /var/ftps_user
RUN		adduser -D ftps_user && echo "ftps_user:password" | chpasswd
RUN		chmod 777 /var/ftps_user

EXPOSE	20 21 20021
CMD		["/usr/bin/supervisord"]