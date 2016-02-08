# php-fpm-link-nginx

用于在docker容器中创建

##nginx:
*容器映射*  
*映射容器 `/usr/share/nginx/html` 目录 到 主机 `/webdata/web` 目录.  
*映射容器 `/etc/nginx/conf.d` 目录 到 主机 `/webdata/vhost` 目录.  

##php-fpm：

*映射容器 `/var/www/vhost` 目录 到 主机 `/webdata/vhost` 目录

apt-get update
apt-get install curl

curl -sSL http://acs-public-mirror.oss-cn-hangzhou.aliyuncs.com/docker-engine/internet | sh -

echo "DOCKER_OPTS=\"--registry-mirror=https://hbw7q42j.mirror.aliyuncs.com\"" | sudo tee -a /etc/default/docker
sudo service docker restart


echo '/dev/xvdb1  /data ext4    defaults    0  0' >> /etc/fstab
mkdir /data
mount -a


docker run --name nginx -p 80:80  -v /data/nginx/conf.d:/etc/nginx/conf.d -d nginx:1.9.10
