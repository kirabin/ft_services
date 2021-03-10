FROM alpine:latest


# php-fpm: "PHP fastCGI process manager"
# php-mysql: allows to write mysql queries in php script
RUN apt-get install -y php-fpm php-mysql

# wget - widget to open url and download file on url
RUN apt-get install -y wget

COPY ./wp-config.php ./

# change current working directory
WORKDIR /var/www/
# download latest version of wordpress
RUN wget https://wordpress.org/latest.tar.gz
# unarchive wordpress archive
RUN tar -xzvf latest.tar.gz