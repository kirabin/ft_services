FROM alpine:latest


# php-fpm: "PHP fastCGI process manager"
# php-mysql: allows to write mysql queries in php script
RUN apt-get install -y php-fpm php-mysql

RUN apt-get install -y wget

COPY ./config.inc.php ./


WORKDIR /var/www/wordpress
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-english.tar.gz
RUN tar -xzvf phpMyAdmin-5.0.4-english.tar.gz && mv phpMyAdmin-5.0.4-english/ phpmyadmin
