# Initialize main database and directory to store data
mysql_install_db --datadir=/var/lib/mysql

mysqld --init_file=/create_db
# rc-service mariadb start && rc-update add mariadb default
# /usr/bin/mysqladmin -u root password 'password'

sh