FROM alpine:3.12

RUN		apk update
RUN		apk add libc6-compat wget supervisor
RUN		apk add --allow-untrusted --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ telegraf

RUN 	wget https://dl.grafana.com/oss/release/grafana-7.2.0.linux-amd64.tar.gz
RUN		tar -zfx grafana-7.2.0.linux-amd64.tar.gz -C grafana
RUN		rm -rf grafana-7.2.0.linux-amd64.tar.gz


CMD		["/usr/bin/supervisord"]