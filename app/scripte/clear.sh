#!/bin/bash
# 001 c1.r2o
docker-compose -f /home/rbole/fh/app/c$1/docker-compose.yml down

rm -R /home/rbole/fh/app/c$1 
rm /etc/nginx/sites-available/$2 
rm /etc/nginx/sites-enabled/$2 

docker volume rm c$1_data-volume-db

