mysql_install_db --datadir=/var/lib/mysql;

mysqld --user=root & sleep 5;

# mysql -u root mysql < /create_wordpress_db.sql;
mysql < /wordpress.sql;


/usr/bin/supervisord;