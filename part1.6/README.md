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
## run with starttime e.g. here 11
```code
 docker run -it vaapo/docker-clock 11
```

# example
```code
paavo@silber:~/defa/defa_docker_hw/part1.6$ docker build -t vaapo/docker-clock .
Sending build context to Docker daemon   5.12kB
Step 1/6 : FROM devopsdockeruh/overwrite_cmd_exercise
 ---> 3d2b622b1849
Step 2/6 : LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"
 ---> Using cache
 ---> c0c02685d496
Step 3/6 : WORKDIR /usr/app
 ---> Using cache
 ---> 4946bee369eb
Step 4/6 : COPY . .
 ---> Using cache
 ---> b8bb956af946
Step 5/6 : RUN chmod +x ./start.sh
 ---> Using cache
 ---> 95c0143aa9e4
Step 6/6 : ENTRYPOINT ["./start.sh","--clock"]
 ---> Using cache
 ---> 2ab91d89bd29
Successfully built 2ab91d89bd29
Successfully tagged vaapo/docker-clock:latest
paavo@silber:~/defa/defa_docker_hw/part1.6$ 
paavo@silber:~/defa/defa_docker_hw/part1.6$ docker run -it vaapo/docker-clock 
1
2
3
4
^Cpaavo@silber:~/defa/defa_docker_hw/part1.6$ docker run -it vaapo/docker-clock 555
556
557
558
559
^Cpaavo@silber:~/defa/defa_docker_hw/part1.6$ 
```
