# php-fpm-link-nginx

用于在docker容器中创建

##nginx:
*容器映射*
*映射容器 `/usr/share/nginx/html` 目录 到 主机 `/webdata/web` 目录.  
*映射容器 `/etc/nginx/conf.d` 目录 到 主机 `/webdata/vhost` 目录.  

##php-fpm：

*映射容器 `/var/www/vhost` 目录 到 主机 `/webdata/vhost` 目录
