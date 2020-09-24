FROM ubuntu:18.04
MAINTAINER Lea Celiku

RUN apt-get update &&  apt-get install -y apache2 libapache2-mod-php php-mysql git php-memcache curl php-cli php-mbstring unzip php-pgsql

RUN rm /var/www/html/index.html
RUN mkdir /var/www/html/images
ADD /var/www/html/
ADD index.php /var/www/html
ADD init.sh /
EXPOSE 80

ENTRYPOINT ["/init.sh"]
