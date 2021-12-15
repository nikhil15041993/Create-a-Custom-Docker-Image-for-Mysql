# Create-a-Custom-Docker-Image-for-Mysql


## STEP 1

Create a Docker file 
```
FROM mysql:8.0.2
ENV MYSQL_DATABASE country
COPY ./scripts/ /docker-entrypoint-initdb.d/

```
## STEP 2

Build it

```
docker build -t my-mysql-image /path-of-docker-file

```
## STEP 3

Create a docker-compose.yaml file and run it using 
```
<filename> up 
```

```
version: '3.7'
services:
   my-mysql-image:
      image: my-mysql
      environment: 
         MYSQL_ROOT_PASSWORD: password
      ports:
         - "3316:3306"        
```


## STEP 4

Use the command ``` docker exec -it <container name> /bin/bash ``` to get a bash shell in the container.
