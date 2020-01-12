# defa_docker_hw
Defa docker Homeworks, by Paavo Muranen

# Tree - larger exercises have own directory or repository

```code
$ tree
.
├── part1.5
│   ├── Dockerfile
│   ├── README.md
│   └── src
│       └── run_part1.5.sh
├── part1.6
│   ├── Dockerfile
│   ├── Dockerfile~
│   └── README.md
├── part1.7
│   ├── Dockerfile
│   ├── README.md
│   └── src
│       └── run_part1.7.sh
├── part1.8
│   ├── log
│   │   └── logs.txt
│   └── README.md
└── README.md

7 directories, 12 files
```

# PART 1

## [x] 1.1 Prove that you have completed this part of exercise by delivering the output for docker ps -a.
```code
paavo@silber:~/defa/docker$ docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS                   NAMES
5a581a67540f        nginx               "nginx -g 'daemon of…"   59 seconds ago      Exited (0) 19 seconds ago                           muranen_docker_1.1_001
4a21f48d5317        nginx               "nginx -g 'daemon of…"   3 minutes ago       Up 3 minutes                0.0.0.0:11113->80/tcp   muranen_docker_1.1_003
970fa53e0342        nginx               "nginx -g 'daemon of…"   5 minutes ago       Exited (0) 15 seconds ago                           muranen_docker_1.1_002
3949610bb4a5        hello-world         "/hello"                 15 minutes ago      Exited (0) 15 minutes ago                           sleepy_gates
c2ad12393dc2        hello-world         "/hello"                 30 minutes ago      Exited (0) 30 minutes ago                           compassionate_chatelet
paavo@silber:~/defa/docker$ curl localhost:11113
<!DOCTYPE html>
<html>
<head>
...
```
## [x] 1.2 Prove that you have completed this part of exercise by delivering the output for docker ps -a and docker images
```code
paavo@silber:~/defa/docker$ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
paavo@silber:~/defa/docker$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
```
## [x] 1.3 Submit the secret message and command(s) given to get it as your answer.
```code
paavo@silber:~/defa/docker$ git clone https://github.com/docker-hy/docs-exercise.git
paavo@silber:~/defa/docker$ docker pull devopsdockeruh/pull_exercise
paavo@silber:~/defa/docker$ ls docs-exercise/
Dockerfile  index.js  README.md
paavo@silber:~/defa/docker$ cat docs-exercise/README.md 
This is the readme, use input "basics" to complete this exercise.
paavo@silber:~/defa/docker$ docker run -it devopsdockeruh/pull_exercise
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```
## [x] 1.4 Submit the secret message and command(s) given as your answer.
```code
paavo@silber:~/defa/docker$ docker run devopsdockeruh/exec_bash_exercise
(node:1) ExperimentalWarning: The fs.promises API is experimental
Wrote to file /usr/app/logs.txt
...clips..
^CClosing file
paavo@silber:~/defa/docker$ date
ma 30.12.2019 20.48.42 +0200
```
Meanwhile in another shell 
```code
root@silber:/var/lib/docker# find . -name logs.txt -print
./overlay2/85ed93555427314e88d8df84804ff4f54e47592d378b7b318c41384baef00893/diff/usr/app/logs.txt
./overlay2/85ed93555427314e88d8df84804ff4f54e47592d378b7b318c41384baef00893/merged/usr/app/logs.txt
root@silber:/var/lib/docker# tail -f ./overlay2/85ed93555427314e88d8df84804ff4f54e47592d378b7b318c41384baef00893/merged/usr/app/logs.txt
...clips..
Mon, 30 Dec 2019 18:48:10 GMT
Mon, 30 Dec 2019 18:48:13 GMT
Secret message is:
"Docker is easy"
Mon, 30 Dec 2019 18:48:19 GMT
^C

root@silber:/var/lib/docker# date
ma 30.12.2019 20.48.30 +0200
```
## [x] 1.5 Dockerfile(s) and the command 
    
    See part1.5 directory for README.md containing answer.


## [x] 1.6 Add a CMD line to the Dockerfile and tag it as “docker-clock” so that docker run docker-clock starts the application and the clock output

    See part1.6 directory for README containing answer.

## [x] 1.7 Run command docker run [options] curler (with correct flags again, as in 1.5) and input helsinki.fi into it. Output should match the 1.5 one.

    Actually this is having the same answer as I had in 1.5 but see part1.7 directory for solution.

## [x] 1.8 Submit your used commands for this exercise.

    See part1.8 directory for README containing answer.

## [x] 1.9 Submit your used commands for this exercise.

```code
docker pull devopsdockeruh/ports_exercise
paavo@silber:~/defa/docker$ docker run -d --name defapart1.9 -p11119:80 devopsdockeruh/ports_exercise
160864aa69633464c7466d85f7c537c79bd4d0ab9b2ca14ee6227a9ab769d285
paavo@silber:~/defa/docker$ curl http://localhost:11119/
Ports configured correctly!!
```
## [x] 1.10 Submit the Dockerfile. your used commands for this exercise.

    See part1.10 for Dockerfile
```code
docker build -t vaapo/frontend-example-docker .
docker run -p5000:5000 vaapo/frontend-example-docker
```
And browse to http://localhost:5000

Exercise 1.10: Congratulations! You configured your ports correctly!

## [x] 1.11 Submit the Dockerfile. your used commands for this exercise.
    See part1.11 for Dockerfile

```code
docker run -it -v $(pwd)/logs.txt:/usr/src/app/logs.txt -p8000:8000 vaapo/backend-example-docker
```
Check the logs.txt by curling the address
```code
$ curl http://localhost:8000
Port configured correctly, generated message in logs.txt


$ tail -f logs.txt 
1/6/2020, 7:00:48 PM: Connection received in root
1/6/2020, 7:01:04 PM: Connection received in root
```
## [x] 1.12 Submit the Dockerfiles. your used commands for this exercise.
No change for the backend.
```
 tree
.
├── backend
│   └── Dockerfile
├── frontend
│   └── Dockerfile
└── frontend-112-test.png

2 directories, 3 files
```

Backend build and run - as in previous 1.11 exercise, no change:
```code

sudo /etc/init.d/webfs stop
docker run -it -v $(pwd)/logs.txt:/usr/src/app/logs.txt -p8000:8000 vaapo/backend-example-docker
```

Frontend build and run
```code
docker build -t vaapo/frontend-example-docker .
docker run -p5000:5000 vaapo/frontend-example-docker
```
Then browse to http://localhost:5000/  
see visual evidence frontend-112-test.png

## [x] 1.13 You’ve completed the exercise when you see a ‘Success’ message in your browser.
```code
$ tree
.
├── Dockerfile
└── spring_113_build_run_test.png

0 directories, 2 files
```

## [x] 1.14 You’ve completed the exercise when the application works in your browser.

Must admit that this was pretty hard to get done, several trials and fighting with ruby version dependencies.
It was also annoying to notice that the server name was not consistently named per version.
Furious googling was needed.

```code
tree part1.14
part1.14
├── Dockerfile
└── rails-build-run-test.png

0 directories, 2 files
```

## [x] 1.15 provide the link to the project in docker hub,  how to run the application in a README

https://hub.docker.com/repository/docker/vaapo/youtube-dl

## [x] 1.16 For this exercise return the url in which the released application is.

https://defadock116.herokuapp.com/

## [x] 1.17 Explain what you created and publish it to Docker Hub.
I am pretty excited about the anaconda jupyter notebooks, so created this small docker with notebook on it.
Because it takes lots of energy to install the notebook to certain environments, thought maybe this could make it easier.

```code
docker pull vaapo/defa_docker_part117
mkdir notebooks
docker run -it -v $(pwd)/notebooks:/notebooks -p 8888:8888 vaapo/defa_docker_part117
```

# PART 2

## [x] 2.1 Submit the docker-compose.yml, make sure that it works simply by running docker-compose up
See part2.1/first_volume_exercise for answer
```
    Secret message is:
    "Volume bind mount is easy"
```

## [x] 2.2 Submit the docker-compose.yml, make sure that it works simply by running docker-compose up
See part2.2/ports_exercises for answer
![see screenshotfile](./part2.2/ports_exercise/ports_2.2-test.png?raw=true "ports_2.2-test.png")

## [x] 2.3 Submit the docker-compose.yml
Based on 1.12 backend and frontend Dockerfiles constructed part2.3 directory

![see screenshotfile](./part2.3/compose-frontend-backend-2.3-test.png?raw=true "compose-frontend-backend-2.3-test.png")

## [x] 2.4 Your task is to scale the compute containers so that the button in the application turns green.

Scaling to 200 is not good idea :)

![see screenshotfile](./part2.4/AFTER-scaled-10-compute.png?raw=true "AFTER-scaled-10-compute.png?")

## [x] 2.5 Add redis to example backend. Submit the docker-compose.yml

See part2.5-directory. Screenshot of working setup:

![see screenshotfile](./part2.5/redis-2.5.png?raw=true "./redis-2.5.png")

## [x] 2.6 Add database to example backend.
    The button won’t turn green but you can send messages to yourself.
    Submit the docker-compose.yml
![see screenshotfile](./part2.6/db-2.6.png?raw=true "./db-2.6.png")
![see screenshotfile](./part2.6/adminer-select-messages-2.6.png?raw=true "adminer-select-messages-2.6.png")
![see screenshotfile](./part2.6/psql-vs-adminer.png?raw=true "./../psql-vs-adminer.png")
