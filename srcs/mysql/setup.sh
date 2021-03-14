# Initialize main database and directory to store data
mysql_install_db --datadir=/var/lib/mysql

# mysqld &
mysqld --init_file=/create_db &

# /usr/bin/mysqladmin -u root password 'password'

# mysql -u root --skip-password -e "CREATE DATABASE wordpress;"
# mysql -u root --skip-password -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost';"
# mysql -u root --skip-password -e "UPDATE mysql.user SET plugin='mysql_native_password' WHERE user='root';"
# mysql -u root --skip-password -e "FLUSH PRIVILEGES;"

sleep infinity