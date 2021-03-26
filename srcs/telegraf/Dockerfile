FROM	alpine:3.12

RUN		apk update
RUN		apk add telegraf supervisor


RUN		mkdir etc/telegraf
# COPY	telegraf.conf etc/telegraf/telegraf.conf
COPY	supervisord.conf		/etc/


VOLUME	["/var/lib/influx"]
CMD		["/usr/bin/supervisord"]


# https://docs.influxdata.com/telegraf/v1.18/introduction/getting-started/