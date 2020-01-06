# Part 1.6
Answer to 
1.6

Create a Dockerfile that starts with FROM devopsdockeruh/overwrite_cmd_exercise and works only as a clock.

The developer has poorly documented how the application works. Passing flags will open different functionalities, but we’d like to create a simplified version of it.

Add a CMD line to the Dockerfile and tag it as “docker-clock” so that docker run docker-clock starts the application and the clock output

# Files
```code
tree
.
├── Dockerfile
└── README.md

0 directories, 2 files
```
# build
```code
docker build -t vaapo/docker-clock .
```

# run
```code
 docker run -it vaapo/docker-clock 
```

# example
```code
paavo@silber:~/defa/defa_docker_hw/part1.6$ docker build -t vaapo/docker-clock .
Sending build context to Docker daemon  3.072kB
Step 1/3 : FROM devopsdockeruh/overwrite_cmd_exercise
 ---> 3d2b622b1849
Step 2/3 : LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"
 ---> Using cache
 ---> c0c02685d496
Step 3/3 : CMD ["--clock"]
 ---> Running in 33288d92d2d6
Removing intermediate container 33288d92d2d6
 ---> 680a447f240e
Successfully built 680a447f240e
Successfully tagged vaapo/docker-clock:latest
paavo@silber:~/defa/defa_docker_hw/part1.6$ docker run -it vaapo/docker-clock 
1
2
3
^C
```
