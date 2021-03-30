influxd & sleep 5;

influx -execute "CREATE DATABASE telegraf; CREATE USER telegraf WITH PASSWORD 'password'"

/usr/bin/supervisord