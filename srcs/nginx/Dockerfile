FROM	alpine:3.12

RUN		apk update
RUN		apk add nginx openssl supervisor
RUN		apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted

COPY	telegraf.conf		/etc/telegraf/
RUN		mkdir run/nginx
RUN		openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -subj '/CN=localhost' -nodes

COPY	supervisord.conf	/etc/
COPY	nginx.conf			/etc/nginx/
COPY	index.html			/var/www/

EXPOSE	80 443
CMD		["/usr/bin/supervisord"]



# Usefull links
# - https://www.cyberciti.biz/faq/how-to-install-nginx-web-server-on-alpine-linux/
# - https://wiki.alpinelinux.org/wiki/Nginx
# - https://collabnix.github.io/kubelabs/pods101/deploy-your-first-nginx-pod.html
# - Lecture: https://www.notion.so/ft_services-e0700a527d0d45039388f65087c23b21


# Notes
# - `apk` is analog of `apt-get` of debian:buster