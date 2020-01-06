# defa_docker_hw
Defa docker Homeworks, by Paavo Muranen

# PART 1

[x] 1.1 Prove that you have completed this part of exercise by delivering the output for docker ps -a.
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
[x] 1.2 Prove that you have completed this part of exercise by delivering the output for docker ps -a and docker images
```code
paavo@silber:~/defa/docker$ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
paavo@silber:~/defa/docker$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
...
```

