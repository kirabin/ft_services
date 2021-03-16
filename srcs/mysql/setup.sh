# Initialize main database and directory to store data
mysql_install_db --datadir=/var/lib/mysql

# mysqld &
mysqld --init_file=/create_db

# /usr/bin/mysqladmin -u root password 'password'

sleep infinity