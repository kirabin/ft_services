FROM	alpine:3.12

RUN		apk update
RUN		apk add --no-cache vsftpd supervisor openssl

COPY	supervisord.conf	/etc/
COPY	vsftpd.conf			/etc/

RUN		openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -subj '/CN=localhost' -nodes

RUN		echo "password\npassword" | adduser ftps

EXPOSE	21
# CMD		["/usr/bin/supervisord"]
CMD		["sh"]