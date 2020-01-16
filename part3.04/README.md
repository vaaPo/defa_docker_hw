# 3.04 [x] Switch to node docker packages and document before and after sizes of frontend and backend

   Based on 2.10 setup move to app-user from root. I am using this to be able to exec to shell and see.
    Otherwise could do it based on 3.01.

Glory for the backend and frontend goes to Helsinki https://github.com/docker-hy

## BEFORE 
    paavo@silber:~/defa/defa_docker_hw$ docker image ls | grep 304i
    nginx304i                               latest              8328d0db78c9        3 hours ago         57.6MB
    frontend304i                            latest              5a7d74c4b158        5 hours ago         662MB
    backend304i                             latest              de71eb6f8b5b        5 hours ago         661MB
    paavo@silber:~/defa/defa_docker_hw$ docker container ls -s
    CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS                          NAMES               SIZE
    4cecb20a071b        nginx304i           "nginx -g 'daemon of…"   About a minute ago   Up About a minute   80/tcp, 0.0.0.0:80->8080/tcp   nginx304c           2B (virtual 57.6MB)
    0928a6db70ac        frontend304i        "/bin/sh -c 'npm sta…"   About a minute ago   Up About a minute   5000/tcp                       frontend304c        23.9MB (virtual 686MB)
    62af9abd535a        backend304i         "/bin/sh -c 'npm sta…"   About a minute ago   Up About a minute   8000/tcp                       backend304c         250kB (virtual 662MB)
    311c596f6d9a        adminer             "entrypoint.sh docke…"   About a minute ago   Up About a minute   0.0.0.0:8080->8080/tcp         adminer304c         0B (virtual 91.1MB)
    2ff5a9837a58        redis:alpine        "docker-entrypoint.s…"   About a minute ago   Up About a minute   0.0.0.0:6379->6379/tcp         redis304c           0B (virtual 33MB)
    b8c602ee2eb5        postgres            "docker-entrypoint.s…"   About a minute ago   Up About a minute   5432/tcp                       postgres304c        63B (virtual 394MB)
    paavo@silber:~/defa/defa_docker_hw$ 

configured for proxy, frontend, backend:
    Non-root user: app
    Non-rootl group: dockerapp

## screenshots
![shot](./before-ubuntu-based-304.png)



