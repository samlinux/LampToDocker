#!/bin/bash

BASE_PATH=/home/rbole/fh/app
PORT_MYSQL=7$1
PORT=8$1
PORT_PHP=9$1
DOMAIN=$2

echo "a new client will be installed immediately"

#ServerConfig
sed -e"s;%PORT%;$PORT;g" -e"s;%DOMAIN%;$DOMAIN;g" $BASE_PATH/template/host_server_block.tpl > /etc/nginx/sites-available/$DOMAIN
ln -s /etc/nginx/sites-available/$DOMAIN /etc/nginx/sites-enabled/$DOMAIN

#DockerPodConfig
mkdir $BASE_PATH/c$1
sed -e"s;%PORT%;$PORT;g" -e"s;%PORT_PHP%;$PORT_PHP;g" -e"s;%PORT_MYSQL%;$PORT_MYSQL;g" $BASE_PATH/template/docker-compose.tpl > $BASE_PATH/c$1/docker-compose.yml
cp $BASE_PATH/template/site.tpl $BASE_PATH/c$1/site.conf

#Reload http-proxy
service nginx reload

#Start docker-pod
docker-compose -f $BASE_PATH/c$1/docker-compose.yml up -d
