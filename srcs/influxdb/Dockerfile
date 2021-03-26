FROM	alpine:3.12

RUN		apk update
RUN		apk add influxdb supervisor
RUN		apk add --allow-untrusted --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ telegraf

RUN		mkdir etc/telegraf

COPY	telegraf.conf		/etc/telegraf/telegraf.conf
# COPY	influxdb.conf		/etc/influxdb.conf
COPY	supervisord.conf	/etc/
COPY	setup.sh			/

EXPOSE	8086 8088
VOLUME	["/var/lib/influx"]
# CMD		["/usr/bin/supervisord"]
CMD		["./setup.sh"]
