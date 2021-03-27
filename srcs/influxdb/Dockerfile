FROM	alpine:3.12

RUN		apk update
RUN		apk add influxdb supervisor
RUN		apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted

RUN		mkdir etc/telegraf
RUN		mkdir etc/influxdb

COPY	telegraf.conf		/etc/telegraf/
COPY	supervisord.conf	/etc/
COPY	setup.sh			/
RUN		chmod +x			/setup.sh
RUN		cp					/etc/influxdb.conf /etc/influxdb/

EXPOSE	8086 8088
# VOLUME	["/var/lib/influx"]
# CMD		["/usr/bin/supervisord"]
CMD		./setup.sh
