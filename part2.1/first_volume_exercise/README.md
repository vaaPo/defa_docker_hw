# Exercise 2.1 README

# FILES
```code
 tree
.
├── docker-compose.yml
├── logs.txt
└── README.md

0 directories, 3 files
```

# RUN and stop with ctrl-c
```code
docker-compose up
```

## check logs.txt
```code
tail logs.txt
```

# example
```code
paavo@silber:~/defa/defa_docker_hw/part2.1/first_volume_exercise$ docker-compose up
/usr/lib/python2.7/dist-packages/requests/__init__.py:80: RequestsDependencyWarning: urllib3 (1.22) or chardet (2.1.1) doesn't match a supported version!
  RequestsDependencyWarning)
Starting first_volume_exercise ... 
Starting first_volume_exercise ... done
Attaching to first_volume_exercise
first_volume_exercise    | (node:1) ExperimentalWarning: The fs.promises API is experimental
first_volume_exercise    | Wrote to file /usr/app/logs.txt
first_volume_exercise    | Wrote to file /usr/app/logs.txt
first_volume_exercise    | Wrote to file /usr/app/logs.txt
first_volume_exercise    | Wrote to file /usr/app/logs.txt
^Cfirst_volume_exercise    | Wrote to file /usr/app/logs.txt
^CGracefully stopping... (press Ctrl+C again to force)
Stopping first_volume_exercise ... done
paavo@silber:~/defa/defa_docker_hw/part2.1/first_volume_exercise$ tail logs.txt 
Wed, 08 Jan 2020 17:34:29 GMT
Wed, 08 Jan 2020 17:34:32 GMT
Wed, 08 Jan 2020 17:34:35 GMT
Wed, 08 Jan 2020 17:34:38 GMT
Secret message is:
"Volume bind mount is easy"
paavo@silber:~/defa/defa_docker_hw/part2.1/first_volume_exercise$ 
```
