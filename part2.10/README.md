# # Exercise 2.10 FIX BUTTONS

Cloned the following github repositories and used the answer from exercise 2.9. and 2.8 nginx

Glory for the backend and frontend goes to Helsinki https://github.com/docker-hy

And https://hub.docker.com/_/redis/
https://hub.docker.com/_/postgres/

# CORS challenge indeed - dont take this path

https://enable-cors.org/server_nginx.html

# FILES

```code
```

# Setup
Compose does the magic.
```code
docker-compose build
docker-compose up
docker-compose down
```
    
# RUN
```code
docker-compose up
```

# test

# Check with browser http://localhost:80/

Screenshot of working setup:
![see screenshotfile](./green-buttons_2.10.png?raw=true "./green-buttons_2.10.png")

# Check adminer with browser http://localhost:8080/
![see screenshotfile](./adminer-defadockerdb-210.png?raw=true "./../adminer-defadockerdb-210.png")

# exec sh in services

## backend exec sh
![screen](backend-exec-210.png)

## nginx proxy exec
![see screenshotfile](./nginx-proxy-exec-210.png)

## containers etc.
![shot](./docker-compose-containers-networks-volumes-210.png)

