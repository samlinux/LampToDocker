# Create docker-pods

## Docker Host requirements
- ubuntu 16.04 
- ssh server configured and running
- nginx server running 
- docker-CE running 

## Used Docker images
- nginx:alpine offical image 
- mysql offical image 
- phpmyadmin official image 
- php7 custom image because of the need of PDO database driver (MySql), to build the docker image use the Dockerfile into the php7 folder

## Create a new docker-pod 
```
sudo ./scripte/newClient.sh 001 c001.r2o 
```

## Start and Stop the new docker-pod
Stop a client docker-pod
```
sudo docker-compose -f c001/docker-compose.yml stop
```

Start a client docker-pod
```
sudo docker-compose -f c001/docker-compose.yml start
```

## Delete a docker-pod 
Delete all containers including the database volume
```
sudo ./scripte/clear.sh 001 c001.r2o 
```

Delete all unused container 
```
sudo docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs sudo docker rm
```




