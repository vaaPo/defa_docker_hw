# Part 1.8 
In this exercise we won’t create a new Dockerfile. Image devopsdockeruh/first_volume_exercise has instructions to create a log into /usr/app/logs.txt. Start the container with bind mount so that the logs are created into your filesystem.

Submit your used commands for this exercise.

# build or pull
docker pull devopsdockeruh/first_volume_exercise

# configure
```code
mkdir log
touch log/logs.txt
```

# run
```code
docker run --detach --name defapart18v2 --mount type=bind,source="$(pwd)"/log/logs.txt,target=/usr/app/logs.txt devopsdockeruh/first_volume_exercise
```

# inspect log
```code
tail -f log/logs.txt
```

# stop and remove container

Check running containers and stop the defapart18v2
```code
docker container ls
docker stop defapart18v2
docker rm defapart18v2
```


# example
```code
paavo@silber:~/defa/defa_docker_hw/part1.8$ docker pull devopsdockeruh/first_volume_exercise
Using default tag: latest
latest: Pulling from devopsdockeruh/first_volume_exercise
Digest: sha256:0fe91ae116a340214cf013541bd311da7196d34a468e9daf74a8d0fdd3419c78
Status: Image is up to date for devopsdockeruh/first_volume_exercise:latest
docker.io/devopsdockeruh/first_volume_exercise:latest
paavo@silber:~/defa/defa_docker_hw/part1.8$ date
ma 6.1.2020 19.24.26 +0200
paavo@silber:~/defa/defa_docker_hw/part1.8$ docker run --detach --name defapart18v2 --mount type=bind,source="$(pwd)"/log/logs.txt,target=/usr/app/logs.txt devopsdockeruh/first_volume_exercise
4dba9b6d8a6bfdf6c5b346d0a7b0153f30958dc291061e41cc365107f3b7d8c4
paavo@silber:~/defa/defa_docker_hw/part1.8$ tail -f log/logs.txt 
Mon, 06 Jan 2020 17:24:31 GMT
Mon, 06 Jan 2020 17:24:34 GMT
Mon, 06 Jan 2020 17:24:37 GMT
Mon, 06 Jan 2020 17:24:40 GMT
Secret message is:
"Volume bind mount is easy"
Mon, 06 Jan 2020 17:24:46 GMT
Mon, 06 Jan 2020 17:24:49 GMT
^C
paavo@silber:~/defa/defa_docker_hw/part1.8$ docker container ls
CONTAINER ID        IMAGE                                  COMMAND             CREATED             STATUS              PORTS               NAMES
4dba9b6d8a6b        devopsdockeruh/first_volume_exercise   "node index"        34 seconds ago      Up 32 seconds                           defapart18v2
paavo@silber:~/defa/defa_docker_hw/part1.8$ docker rm defapart18v2
Error response from daemon: You cannot remove a running container 4dba9b6d8a6bfdf6c5b346d0a7b0153f30958dc291061e41cc365107f3b7d8c4. Stop the container before attempting removal or force remove
paavo@silber:~/defa/defa_docker_hw/part1.8$ docker stop defapart18v2
defapart18v2
paavo@silber:~/defa/defa_docker_hw/part1.8$ docker rm defapart18v2
defapart18v2
paavo@silber:~/defa/defa_docker_hw/part1.8$ docker container ls
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
paavo@silber:~/defa/defa_docker_hw/part1.8$ 
```

