FROM	alpine:3.12

RUN		apk update
RUN		apk add nginx openssl


RUN		mkdir www/
# RUN	adduser -D -g 'www' www
RUN		mkdir run/nginx
RUN		openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -subj '/CN=localhost' -nodes

COPY	nginx.conf	./etc/nginx/nginx.conf
COPY	index.html	./www/index.html
COPY	setup.sh	./
RUN		chmod +x	setup.sh

EXPOSE	80 443
CMD		./setup.sh



# Usefull links
# - https://www.cyberciti.biz/faq/how-to-install-nginx-web-server-on-alpine-linux/
# - https://wiki.alpinelinux.org/wiki/Nginx
# - https://collabnix.github.io/kubelabs/pods101/deploy-your-first-nginx-pod.html
# - Lecture: https://www.notion.so/ft_services-e0700a527d0d45039388f65087c23b21


# Notes
# - `apk` is analog of `apt-get` of debian:buster


# Questions
# - Why exposing ports ?
# - Pods vs Deployments
# - How do we determine which IP range give to metallb?
# - Why turning off daemon?
