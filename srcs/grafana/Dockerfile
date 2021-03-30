FROM	alpine:3.12

RUN		apk update
RUN		apk add libc6-compat wget supervisor
RUN		apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted

RUN 	wget -q		https://dl.grafana.com/oss/release/grafana-7.2.0.linux-amd64.tar.gz
RUN		tar -zxf	grafana-7.2.0.linux-amd64.tar.gz
RUN		rm -rf		grafana-7.2.0.linux-amd64.tar.gz
RUN		mv			grafana-7.2.0 /grafana

COPY	grafana.db			/grafana/data/grafana.db
COPY	telegraf.conf		/etc/telegraf/
COPY	supervisord.conf	/etc/

EXPOSE	3000
CMD		["/usr/bin/supervisord"]