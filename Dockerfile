FROM php:5.6-fpm

MAINTAINER taoxin<i@yesxin.com>

RUN mkdir /var/www/vhost
ADD vhost.conf /var/www/vhost

CMD ["php-fpm"]
