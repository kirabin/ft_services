/usr/bin/supervisord

influx -execute "CREATE DATABASE telegraf"
influx -execute "CREATE USER telegraf WITH PASSWORD 'password'"