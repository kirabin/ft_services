CREATE USER 'wordpress'@'%' IDENTIFIED BY 'password';
CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON *.* TO 'wordpress'@'%' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;