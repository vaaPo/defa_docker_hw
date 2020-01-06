# Exercise 1.7 README
For the following exercises, return both Dockerfile(s) and the command you used to run the container(s)

Actually solved this in 1.5 with the same style :)

# Files
```
tree
.
├── Dockerfile
├── README.md
└── src
    └── run_part1.7.sh

1 directory, 3 files

```

# commands
```code
docker build --no-cache -t curler .
docker images
docker run -i --volume=$(pwd)/src:/scripts curler

```

# example run
```code
paavo@silber:~/defa/defa_docker_hw/part1.7$ docker build -t vaapo/curler .
Sending build context to Docker daemon  5.632kB
Step 1/6 : FROM ubuntu:18.04
 ---> 549b9b86cb8d
Step 2/6 : LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"
 ---> Using cache
 ---> 98322bf5d8d8
Step 3/6 : run apt-get update
 ---> Using cache
 ---> 1997808f7f8b
Step 4/6 : run apt-get --yes install curl
 ---> Using cache
 ---> 7b0460a8b180
Step 5/6 : VOLUME /scripts
 ---> Using cache
 ---> 5c17e96d40d4
Step 6/6 : CMD /scripts/run_part1.7.sh
 ---> Using cache
 ---> eac4cf11d568
Successfully built eac4cf11d568
Successfully tagged vaapo/curler:latest
paavo@silber:~/defa/defa_docker_hw/part1.7$ docker run -i --volume=$(pwd)/src:/scripts vaapo/curler
Input website fqdn like helsinki.fi :
helsinki.fi
Searching..
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   231  100   231    0     0   2119      0 --:--:-- --:--:-- --:--:--  2100
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
</body></html>
paavo@silber:~/defa/defa_docker_hw/part1.7$ 
+++ the mounted src volume was good to have because the script was easy to edit and then just rerun
+++ the run -i was necessary to get the input in terminal
+++
```
