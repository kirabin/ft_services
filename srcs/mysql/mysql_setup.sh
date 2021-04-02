mysql_install_db --datadir=/var/lib/mysql;

mysqld & sleep 5;
mysql < /wordpress.sql;
pkill mysqld & sleep 3;

/usr/bin/supervisord;