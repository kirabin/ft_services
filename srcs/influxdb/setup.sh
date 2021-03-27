influxd &;

influx -execute "CREATE DATABASE telegraf; CREATE USER telegraf WITH PASSWORD 'password'"